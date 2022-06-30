# Processed ICD Datasets

* [Descriptions](icd_data.csv)
* [Dictionary](icd_ddict.csv)

This document details the data dictionary and descriptions of the processed ICD datasets.

## Overview

```mermaid
flowchart LR;

cmea10["cmea10<br>(n=143)"]
wbd10["wbd10<br>(n=180)"]
icd10["icd10<br>(n=12,597)"]
icd11["icd11<br>(n=35,459)"]

icd10 --> |icd10to11| icd11
icd11 --> |icd11to10| icd10
icd10 <--> |wbd10xicd10| wbd10
icd10 <--> |cmea10xicd10| cmea10
```

The data contain four groups of datasets:

1. ICD codes with their titles and structures (chapter, entity, etc)
2. ICD/WBD/CMEA mappings for translating between ICD and WBD revisions
3. WBD codes with their titles and structures (codex4, codex2, etc)
4. CMEA codes with their titles and ICD-10 agreement code ranges

Refer to the following files for more information:

* [icd_data.csv](icd_data.csv): Descriptions for each dataset
* [icd_ddict.csv](icd_ddict.csv): Column descriptions for each dataset

## Contact

Richard Wen <rrwen.dev@gmail.com>
