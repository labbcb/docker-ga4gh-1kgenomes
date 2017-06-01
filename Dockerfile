# welliton/ga4gh-1kgenomes:0.3.6

FROM welliton/ga4gh-server:v0.3.6

MAINTAINER Welliton Souza <well309@gmail.com>

COPY data /data/

WORKDIR /data
RUN ga4gh_repo init --force /data/registry.db && \
    ga4gh_repo add-dataset /data/registry.db 1kgenomes \
        --description "Variants from the 1000 Genomes project" && \
    ga4gh_repo add-referenceset /data/registry.db /data/hs37d5.fa.gz \
        -d "GRCh37 assembly of the human genome" \
        --name GRCh37 \
        --sourceUri "ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/phase2_reference_assembly_sequence/hs37d5.fa.gz" && \
    ga4gh_repo add-ontology /data/registry.db /data/so-xp-dec.obo -n so-xp && \
    ga4gh_repo add-variantset /data/registry.db 1kgenomes /data/ \
        --name phase3-release --referenceSetName GRCh37
