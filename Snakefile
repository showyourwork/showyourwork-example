rule A2B:
    """
    Convert dataset `A.dat` to dataset `B.dat` (just a copy).
    `A.dat` is downloaded from a static Zenodo dataset.

    """
    input:
        "src/data/A.dat"
    output:
        "src/data/B.dat"
    shell:
        "cp src/data/A.dat src/data/B.dat"

rule C:
    """
    Generate dataset `C.dat` (a 1KB file of 0's).
    Dataset is cached.
    
    """
    output:
        "src/data/C.dat"
    cache:
        True
    shell:
        "dd if=/dev/zero of=src/data/C.dat bs=1K count=1"

rule C2D:
    """
    Convert dataset `C.dat` to dataset `D.dat` (just a copy).

    """
    input:
        "src/data/C.dat"
    output:
        "src/data/D.dat"
    shell:
        "cp src/data/C.dat src/data/D.dat"