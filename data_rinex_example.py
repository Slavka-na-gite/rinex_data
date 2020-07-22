import csv
import matplotlib.pyplot as plt
with open(r'D:\data\dataC_B_transmitter.csv', 'r') as f:
    reader = csv.DictReader(f)
    m = []
    for row in reader:
        m.append(float(row['C02_S2I']))
plt.rcParams["figure.figsize"] = (14,6)
plt.figure(1)
plt.plot(range(0,len(m)), m)
plt.ylim([26, max(m)+2])
plt.show()