# Processed ICD Data

* [Available Datasets](data)
* [Developer Notes](DEVELOPER.md)
* [Acknowledgements](ACKNOWLEDGEMENTS.md)

Documentation for CGHR's processed International Classification of Diseases (ICD) data from the World Health Organization (WHO).

*Last Updated: July 12, 2022*

## About

> The International Classification of Diseases (ICD) is a tool for recording, reporting and grouping conditions and factors that influence health. It contains categories for diseases and disorders, health related conditions, external causes of illness or death, anatomy, sites, activities, medicines, vaccines and more.
> 
> The purpose of the ICD is to allow the systematic recording, analysis, interpretation and comparison of mortality and morbidity data collected in different countries or regions and at different times.
> 
> \- World Health Organization (2022)

The following codes related to ICD are included:

* ICD Codes
  * [ICD-10 Manual](docs/icd10_manual.pdf)
  * [ICD-11 Manual](docs/icd11_manual.pdf)
* WHO Verbal Autopsy (WVA) codes
  * [WHO VA 2016 Manual](docs/wva2016_manual.pdf)
  * [WHO VA 2022 Manual](docs/wva2022_manual.pdf)
* Wilson's Burden of Disease (WBD) codes from the Centre for Global Health Research (CGHR)
* Central Medical Evaluation Agreement (CMEA) codes from CGHR

*For more information, refer to [WHO's ICD Website](https://www.who.int/standards/classifications/classification-of-diseases).*

**See [Available Datasets](data) for details on the data.**

## Access

For public access:

1. Download a zip file of this repository [[Download](https://github.com/cghr-toronto/icd/archive/refs/heads/main.zip)]
2. Unzip the downloaded zip file into a folder
3. All data files are available in the unzipped `icd-main` folder under the [data](data) subfolder

Alternatively, individual files can be downloaded by:

1. Navigating to [data](data) folder
2. Clicking on a `.csv` data file
3. Right clicking on `Raw` (top-right) or `Download`
4. Selecting `Save link as`
5. Adding `.csv` to the file extension and clicking `Ok` to download the file

For database access (CGHR staff only), please contact one of the following people:

* Richard Wen <rrwen.dev@gmail.com>
* Peter Rodriguez <Peter.Rodriguez@unityhealth.to>

## Citation

To cite the data, please cite the following depending on the codes and versions used:

### ICD-10

* World Health Organization. (2011). ICD-10: International statistical classifcation of diseases and related health problems (10th revision) (5th ed., Vol. 2). [[PDF](docs/icd10_manual.pdf)]

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

* World Health Organization. (2022). ICD-11: International Classifcation of Diseases for Mortality and Morbidity Statistics (11th revision). [[PDF](docs/icd11_manual.pdf)]

```bibtex
@manual{
  who2022,
  title={ICD-11: International Classifcation of Diseases for Mortality and Morbidity Statistics (11th revision)},
  author={{World Health Organization}},
  year={2022}
}
```

### WHO VA 2016

* World Health Organization. (2016). Verbal autopsy standards: The 2016 WHO verbal autopsy instrument v1.5.3. [[PDF](docs/wva2016_manual.pdf)]

```bibtex
@manual{
  who2016va,
  title={Verbal autopsy standards: The 2016 WHO verbal autopsy instrument v1.5.3},
  author={{World Health Organization}},
  year={2016}
}
```

### WHO VA 2022

* World Health Organization. (2017). Verbal autopsy standards: The 2022 WHO verbal autopsy instrument v1. [[PDF](docs/wva2022_manual.pdf)]

```bibtex
@manual{
  who2017va,
  title={Verbal autopsy standards: The 2022 WHO verbal autopsy instrument v1},
  author={{World Health Organization}},
  year={2017}
}
```

### WBD and CMEA

* Aleksandrowicz, L., Malhotra, V., Dikshit, R., Gupta, P. C., Kumar, R., Sheth, J., Rathi, K., Suraweera, W., Miasnikof, P., Jotkar, R., Sinha, D., Awasthi, S., Bhatia, P., & Jha, P. (2014). Performance criteria for verbal autopsy-based systems to estimate national causes of death: development and application to the Indian Million Death Study. BMC medicine, 12(1), 1-14. [doi:10.1186/1741-7015-12-21](https://doi.org/10.1186/1741-7015-12-21). [[PDF](docs/aleksandrowicz_et_al_2014_perf_va_cod_mds.pdf)]

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

## Contact

| Name | Email | Role |
|------|-------|------|
| Richard Wen | rrwen.dev@gmail.com | Primary contact for code and data access in this repo |
| Peter Rodriguez | Peter.Rodriguez@unityhealth.to | Contact for database access, CGHR staff only |
| Wilson Suraweera | Wilson.Suraweera@unityhealth.to | Contact for WBD code inquiries |
| Rajeev Kamadod | rajeevk@kentropy.com | Contact for ICD-10 equivalency codes for CMEA |
| Bryan Gascon | bryan.gascon@mail.utoronto.ca | Contact for WHO VA code processing |
