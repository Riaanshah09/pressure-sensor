import serial
import csv
from datetime import datetime

ser = serial.Serial('COM3', 9600)

filename = f"pressure_data_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv"

with open(filename, 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Time', 'Sensor1', 'Sensor2', 'Sensor3'])
    
    print(f"Saving to {filename}... Press Ctrl+C to stop.")
    
    while True:
        line = ser.readline().decode('utf-8').strip()
        print(line)
        
        data = {}
        for part in line.split(','):
            if ':' in part:
                key, value = part.split(':')
                data[key.strip()] = value.strip()
        
        if 'Sensor1' in data and 'Sensor2' in data and 'Sensor3' in data:
            writer.writerow([
                datetime.now().strftime('%H:%M:%S'),
                data['Sensor1'],
                data['Sensor2'],
                data['Sensor3']
            ])
            file.flush()