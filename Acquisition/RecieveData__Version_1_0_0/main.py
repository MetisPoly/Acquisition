import serial
import queue
import timeit
import matplotlib.pyplot as plt
import numpy as np


def acquireData(nameThread, filename, numberOfElectrodes, numberOfEncoders, stopEvent):
    ######################## Only lines to modify are right here ############################
    ## Define variables
    # Please note that encoders need to be 4 as of this version - 31 mars 2022
    nbElectrodes = numberOfElectrodes
    nbEncoders = numberOfEncoders
    #########################################################################################
    
    print("Thread has started.")
    print("Number of electrodes", nbElectrodes)
    print("Number of encoders", nbEncoders)
    
    # Create list of lists to contain all individual values of data acquired
    bigList=[]

    # Create 8 lists for the maximal 8 electrodes
    # Some lists will be empty if less than 8 electrodes are specified
    for i in range(0, 8):
        electrode=[]
        bigList.append(electrode)

    # Create 4 lists for the maximal 4 encoders
    # Some lists will be empty if less than 4 encoders are specified
    for i in range(0, 4):
        encodeur=[]
        bigList.append(encodeur)

    print("General list created")
    print(bigList)


    # Check if serial port is open
    # Put baud rate at 500k bits/s - 2 encoders and 1 electrode make up to 10 bytes per package
    portOpen = False
    while not portOpen:
        print("No serial port found")
        try:
            # Make sure COM port is correct (see in Gestionnaire de périphériques)
            arduino = serial.Serial(port='COM7', baudrate=1000000, timeout=None, xonxoff=False, rtscts=False,
                                    dsrdtr=False)
            # Clear the serial buffer (input and output)
            arduino.flushInput()
            arduino.flushOutput()
            portOpen = True
            print("Found serial port")
        except:
            pass

    # Create queue to hold in all the values sent over by the TeensyLC
    que1 = queue.Queue()
    print('Queue created, starting acquisition')

    # Get the data and insert it in que1
    start = timeit.default_timer()
    while not stopEvent.is_set(): #While the event flag is false
        #Get the number of bytes in the input buffer of the serial port
        bytesToRead = arduino.in_waiting
        if bytesToRead != 0:
            # Read the number of bytes in the input buffer
            data = arduino.read(bytesToRead)
            for i in range(len(data)):
                que1.put(data[i])
    else: # Flag is set to true - user wants to stop the data acquisition
        stopAcquisition(nameThread, filename, start, que1, nbElectrodes, nbEncoders, bigList)


def stopAcquisition(name, filename, timerStart, data_queue, numberOfElectrodes, numberOfEncoders, bigList):
    stop = timeit.default_timer()
    print(stop - timerStart)
    print(data_queue.qsize() / (numberOfElectrodes*2 + numberOfEncoders*4)) # Nb of packs of data sent

    #Retrieve data
    listData = list(data_queue.queue)
    values = []
    counter = 0
    for i in range(0, int(len(listData) / (numberOfElectrodes*2 + numberOfEncoders*4))):
        for j in range(numberOfElectrodes):
            values.append(listData[counter] + (listData[counter + 1] << 8))
            counter += 2

        for k in range(numberOfEncoders):
            values.append((listData[counter]) + (listData[counter + 1] << 8) + (listData[counter + 2] << 16) + (
                            listData[counter + 3] << 24))
            counter += 4

    # Plot all values obtained
    for i in range(0, len(values) - (len(bigList)-1), len(bigList)):
        for j in range(0, len(bigList)):
            bigList[j].append(values[i + j])

    # Transfer all lists into .npy file
    electrode1 = np.array(bigList[0])
    electrode2 = np.array(bigList[1])
    electrode3 = np.array(bigList[2])
    electrode4 = np.array(bigList[3])
    electrode5 = np.array(bigList[4])
    electrode6 = np.array(bigList[5])
    electrode7 = np.array(bigList[6])
    electrode8 = np.array(bigList[7])

    encoder1 = np.array(bigList[8])
    encoder2 = np.array(bigList[8])
    encoder3 = np.array(bigList[8])
    encoder4 = np.array(bigList[8])

    np.savez('C:/Users/truiz/OneDrive/Desktop/GUI_Acquisition_txt_file/' + filename, 
                electrode1=electrode1, electrode2=electrode2, electrode3=electrode3, electrode4=electrode4,
                electrode5=electrode5, electrode6=electrode6, electrode7=electrode7, electrode8=electrode8,
                encoder1=encoder1, encoder2=encoder2, encoder3=encoder3, encoder4=encoder4)



    fig, axs = plt.subplots(numberOfElectrodes)
    fig.suptitle('Resultats obtenus Electrodes')
    numeroElectrode = 0
    for i in range(0, numberOfElectrodes):
        axs[numeroElectrode].plot(bigList[i])
        axs[numeroElectrode].set_title(f'Electrode {numeroElectrode}')
        numeroElectrode+=1
    #plt.show()

    fig, axs = plt.subplots(numberOfEncoders)
    fig.suptitle('Resultats obtenus Encodeurs')
    numeroEncodeur = 0
    for i in range(numberOfElectrodes, len(bigList)):
        axs[numeroEncodeur].plot(bigList[i])
        axs[numeroEncodeur].set_title(f'Encodeur {numeroEncodeur}')
        numeroEncodeur += 1
    #plt.show()

    print('Acquisition done')