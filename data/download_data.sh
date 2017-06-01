#!/bin/bash

wget ftp://ftp.1000genomes.ebi.ac.uk//vol1/ftp/technical/reference/phase2_reference_assembly_sequence/hs37d5.fa.gz
gunzip hs37d5.fa.gz
bgzip hs37d5.fa
wget https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/master/so-xp-dec.obo
wget -m ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ -nd -l 1
rm ALL.wgs.phase3_shapeit2_mvncall_integrated_v5b.20130502.sites.vcf.gz \
  ALL.wgs.phase3_shapeit2_mvncall_integrated_v5b.20130502.sites.vcf.gz.tbi \
  integrated_call_male_samples_v3.20130502.ALL.panel \
  integrated_call_samples_v2.20130502.ALL.ped integrated_call_samples_v3.20130502.ALL.panel \
  README_chrMT_phase3_callmom.md README_known_issues_20160715 \
  README_phase3_callset_20150220 README_phase3_chrY_calls_20141104 \
  README_vcf_info_annotation.20141104 20140625_related_individuals.txt
