
--- Dataset records table
CREATE TABLE IF NOT EXISTS public.dp_dataset (
    dataset_id SERIAL PRIMARY KEY,
    title VARCHAR UNIQUE,
    title_abbr VARCHAR UNIQUE,
    status VARCHAR,
    data_id VARCHAR,
    publish_date TIMESTAMP WITH TIME ZONE,
    tag VARCHAR,
    dataset_desc VARCHAR,
    contact VARCHAR,
    last_update_date TIMESTAMP WITH TIME ZONE,
    permission VARCHAR
);

        --- icd dataset record
        INSERT INTO public.dp_dataset (title, title_abbr, status, data_id, contact, publish_date, tag, dataset_desc, "permission")
        SELECT 'ICD Codes and Mappings', 'icd', 'published', '49,50,51,52,53,54,55,56,57,58,59,60,61,62', 'support@openmortality.org', '2023-06-16 02:11:07.985809-04:00', 'icd,wbd,cmea,wva,cghr', 'ICD-related codes and mappings used at CGHR.

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
  * [WVA-2016 Manual](docs/wva2016_manual_v15.pdf)
  * [WVA-2022 Manual](docs/wva2022_manual.pdf)
* Wilson''s Burden of Disease for ICD-10 (WBD-10) codes from the Centre for Global Health Research (CGHR)
* CGHR codes for ICD-10 (CGHR-10) from the [Automated Versus Physician](https://doi.org/10.1186/s12916-019-1353-2) study
* Central Medical Evaluation Agreement for ICD-10 (CMEA-10) codes from CGHR

*For more information, refer to [WHO''s ICD Website](https://www.who.int/standards/classifications/classification-of-diseases).*


## Citation

To cite the data, please cite the following depending on the codes and versions used:
', 'user'
        WHERE NOT EXISTS (SELECT 1 FROM public.dp_dataset WHERE title = 'ICD Codes and Mappings');

