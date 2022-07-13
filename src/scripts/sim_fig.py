import numpy as np
import matplotlib.pyplot as plt
import paths

data = np.loadtxt(paths.data / "simulation.txt")
fig = plt.figure()
plt.plot(data)
fig.savefig(paths.figures / "sim_fig.pdf")
