rule dataset:
    input:
        "src/data/images.tar.gz"
    output:
        "src/data/dataset.txt"
    shell:
        "echo 0 0 1 1 0 0 1 1 0 0 1 1 0 0 > src/data/dataset.txt"

rule copy:
    input:
        "src/data/{i}.txt"
    output:
        "src/data/{i}_copy.txt"
    shell:
        "cp src/data/{wildcards.i}.txt src/data/{wildcards.i}_copy.txt"

rule simulation:
    output:
        "src/data/simulation.txt"
    cache:
        True
    script:
        "src/scripts/simulation.py"