# Processed ICD Data

* [Available Datasets](data)
* [Developer Notes](DEVELOPER.md)
* [Acknowledgements](ACKNOWLEDGEMENTS.md)

Documentation for CGHR's processed International Classification of Diseases (ICD) data from the World Health Organization (WHO).

*Last Updated: July 11, 2023*

## About

ICD-related codes and mappings used at CGHR.

"The International Classification of Diseases (ICD) is a tool for recording, reporting and grouping conditions and factors that influence health. It contains categories for diseases and disorders, health related conditions, external causes of illness or death, anatomy, sites, activities, medicines, vaccines and more.
 
The purpose of the ICD is to allow the systematic recording, analysis, interpretation and comparison of mortality and morbidity data collected in different countries or regions and at different times."
 
\- World Health Organization (2022)

The following codes related to ICD are included:

* ICD Codes
  * [ICD-10 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd10_manual.pdf)
  * [ICD-11 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd11_manual.pdf)
* WHO Verbal Autopsy (WVA) codes
  * [WVA-2016 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2016_manual_v15.pdf)
  * [WVA-2022 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2022_manual.pdf)
* Wilson's Burden of Disease for ICD-10 (WBD-10) codes from the Centre for Global Health Research (CGHR)
* CGHR codes for ICD-10 (CGHR-10) from the [Automated Versus Physician](https://doi.org/10.1186/s12916-019-1353-2) study
* Central Medical Evaluation Agreement for ICD-10 (CMEA-10) codes from CGHR

*For more information, refer to [WHO's ICD Website](https://www.who.int/standards/classifications/classification-of-diseases).*

**Note**: Data files are also available for open access [on Github](https://github.com/cghr-toronto/icd/tree/main/data).

## Citation

To cite the data, please cite the following depending on the codes and versions used:

### ICD-10

* World Health Organization. (2011). ICD-10: International statistical classification of diseases and related health problems (10th revision) (5th ed., Vol. 2).

```bibtex
@manual{
  who2011,
  title={ICD-10: International statistical classification of diseases and related health problems (10th revision)},
  author={{World Health Organization}},
  year={2011},
  volume={2},
  edition={5}
}
```

### ICD-11

* World Health Organization. (2022). ICD-11: International Classification of Diseases for Mortality and Morbidity Statistics (11th revision).

```bibtex
@manual{
  who2022,
  title={ICD-11: International Classifcation of Diseases for Mortality and Morbidity Statistics (11th revision)},
  author={{World Health Organization}},
  year={2022}
}
```

### WVA-2016

* World Health Organization. (2016). Verbal autopsy standards: The 2016 WHO verbal autopsy instrument v1.5.3.

```bibtex
@manual{
  who2016va,
  title={Verbal autopsy standards: The 2016 WHO verbal autopsy instrument v1.5.3},
  author={{World Health Organization}},
  year={2016}
}
```

### WVA-2022

* World Health Organization. (2017). Verbal autopsy standards: The 2022 WHO verbal autopsy instrument v1.

```bibtex
@manual{
  who2017va,
  title={Verbal autopsy standards: The 2022 WHO verbal autopsy instrument v1},
  author={{World Health Organization}},
  year={2017}
}
```

### WBD-10 and CMEA-10

* Aleksandrowicz, L., Malhotra, V., Dikshit, R., Gupta, P. C., Kumar, R., Sheth, J., Rathi, K., Suraweera, W., Miasnikof, P., Jotkar, R., Sinha, D., Awasthi, S., Bhatia, P., & Jha, P. (2014). Performance criteria for verbal autopsy-based systems to estimate national causes of death: development and application to the Indian Million Death Study. BMC medicine, 12(1), 1-14. [doi:10.1186/1741-7015-12-21](https://doi.org/10.1186/1741-7015-12-21).

```bibtex
@article{
  aleksandrowiczetal2014,
  title={Performance criteria for verbal autopsy-based systems to estimate national causes of death: development and application to the Indian Million Death Study},
  author={Aleksandrowicz, Lukasz and Malhotra, Varun and Dikshit, Rajesh and Gupta, Prakash C and Kumar, Rajesh and Sheth, Jay and Rathi, Suresh Kumar and Suraweera, Wilson and Miasnikof, Pierre and Jotkar, Raju and others},
  journal={BMC medicine},
  volume={12},
  number={1},
  pages={1--14},
  year={2014},
  DOI={10.1186/1741-7015-12-21},
  publisher={BioMed Central}
}
```

### CGHR-10

* Jha, P., Kumar, D., Dikshit, R., Budukh, A., Begum, R., Sati, P., Kolpak, P., Wen, R., Raithatha, S.J., Shah, U., Li, Z.R., Aleksandrowicz, L., Shah, P., Piyasena, K., McCormick, T. H., Gelband, H., and Clark, S. J. (2019). Automated versus physician assignment of cause of death for verbal autopsies: randomized trial of 9374 deaths in 117 villages in India. BMC medicine, 17(1), 1-11. [doi:10.1186/s12916-019-1353-2](https://doi.org/10.1186/s12916-019-1353-2).

```bibtex
@article{
    jha2019,
    title={Automated versus physician assignment of cause of death for verbal autopsies: randomized trial of 9374 deaths in 117 villages in India},
    author={Jha, Prabhat and Kumar, Dinesh and Dikshit, Rajesh and Budukh, Atul and Begum, Rehana and Sati, Prabha and Kolpak, Patrycja and Wen, Richard and Raithatha, Shyamsundar J and Shah, Utkarsh, Li, Zehang Richard and Aleksandrowicz, Lukasz and Shah, Prakash and Piyasena, Kapila and McCormick, Tyler H and Gelband, Hellen and Clark, Samuel J},
    journal={BMC medicine},
    volume={17},
    number={1},
    pages={1--11},
    year={2019},
    publisher={BioMed Central}
}
```

## Contact

| Name | Email | Role |
|------|-------|------|
| Richard Wen | rrwen.dev@gmail.com | Primary contact for code and data access in this repo |
| Peter Rodriguez | Peter.Rodriguez@unityhealth.to | Contact for database access, CGHR staff only |
| Wilson Suraweera | Wilson.Suraweera@unityhealth.to | Contact for WBD code inquiries |
| Rajeev Kamadod | rajeevk@kentropy.com | Contact for ICD-10 equivalency codes for CMEA |
| Bryan Gascon | bryan.gascon@mail.utoronto.ca | Contact for WHO VA and CGHR 2019 code processing |
| Patrycja Kolpak | Patrycja.Kolpak@unityhealth.to  | Contact for details on AVP raw data and CGHR 2019 codes |
