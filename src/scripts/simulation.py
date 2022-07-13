import numpy as np
import paths

np.random.seed(2)
np.savetxt(paths.data / "simulation.txt", np.random.randn(100))
