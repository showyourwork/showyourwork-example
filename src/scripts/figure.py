import matplotlib.pyplot as plt
import numpy as np
import paths

assert (paths.data / "B.tar.gz").exists()

fig = plt.figure()
plt.plot(np.random.randn(1000))
fig.savefig(paths.figures / "figure.pdf")
