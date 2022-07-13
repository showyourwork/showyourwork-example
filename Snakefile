rule A2B:
    input:
        "src/data/A.tar.gz"
    output:
        "src/data/B.tar.gz"
    shell:
        "cp src/data/A.tar.gz src/data/B.tar.gz"