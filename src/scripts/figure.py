import matplotlib.pyplot as plt
import numpy as np
import paths

fig = plt.figure()
data = np.loadtxt(paths.data / "dataset_copy.txt", delimiter=" ")
plt.plot(data)
fig.savefig(paths.figures / "figure.pdf")
