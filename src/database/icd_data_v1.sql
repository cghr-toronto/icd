
--- Data records table
CREATE TABLE IF NOT EXISTS public.dp_data (
    data_id SERIAL PRIMARY KEY,
    data_name VARCHAR UNIQUE,
    format VARCHAR,
    is_spatial BOOLEAN,
    permission VARCHAR,
    publish_date TIMESTAMP WITH TIME ZONE,
    status VARCHAR,
    tag VARCHAR,
    data_desc VARCHAR,
    last_update_date VARCHAR,
    contact VARCHAR,
    category VARCHAR
);

            --- icd10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd10_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628354-04:00', 'published', 'icd', 'International Classification of Diseases Revision 10 (ICD-10) data from the World Health Organization (WHO).

See [ICD-10 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd10_manual.pdf).', 'main', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_v1');

            --- icd11_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd11_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628407-04:00', 'published', 'icd', 'International Classification of Diseases Revision 11 (ICD-11) data from the World Health Organization (WHO).

See [ICD-11 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd11_manual.pdf).', 'main', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd11_v1');

            --- icd10_icd11_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd10_icd11_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628431-04:00', 'published', 'icd', 'Mappings to convert from ICD-10 to ICD-11.

Join the variable `icd10_code` to your data for the converted codes in variable `icd11_code`.', 'supplementary', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_icd11_v1');

            --- icd11_icd10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd11_icd10_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628453-04:00', 'published', 'icd', 'Mappings to convert from ICD-11 to ICD-10.

Join the variable `icd11_code` to your data for the converted codes in variable `icd10_code`.

**Note**: ICD-11 codes may map to multiple ICD-10 codes.', 'supplementary', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd11_icd10_v1');

            --- wbd10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'wbd10_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628475-04:00', 'published', 'wbd', 'Wilson''s Burden of Disease for ICD-10 (WBD-10) data from the Centre for Global Health Research (CGHR).

Groups International Classification of Diseases (ICD) Revision 10 codes from the World Health Organization (WHO) into broader WBD-10 codes for three age groups (adult, child, and neonate).

See [relevant paper](https://doi.org/10.1186/1741-7015-12-21).', 'main', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wbd10_v1');

            --- icd10_wbd10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd10_wbd10_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628499-04:00', 'published', 'icd,wbd', 'Mappings to convert from ICD-10 to WBD-10.

Join the variable `icd10_code` to your data for the converted codes in variable `wbd10_code`.', 'supplementary', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wbd10_v1');

            --- cmea10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'cmea10_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628520-04:00', 'published', 'cmea', 'Central Medical Evaluation Agreement for ICD-10 (CMEA-10) blocks from the Centre for Global Health Research (CGHR).

These blocks are used in the Central Medical Evaluation (CME) system to determine groups of ICD-10 codes considered to be in agreement for dual physician coding in Verbal Autopsies (VA).

See [relevant paper](https://doi.org/10.1186/1741-7015-12-21).', 'main', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'cmea10_v1');

            --- icd10_cmea10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd10_cmea10_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628547-04:00', 'published', 'icd,cmea', 'Mappings to convert from ICD-10 to CMEA-10.

Join the variable `icd10_code` to your data for the converted codes in variable `cmea10_title`.', 'supplementary', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_cmea10_v1');

            --- wva2016_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'wva2016_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628570-04:00', 'published', 'wva', 'World Health Organization Verbal Autopsy 2016 (WVA-2016) codes that generalize ICD-10 codes for mortality.

See [WVA-2016 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2016_manual_v15.pdf).', 'main', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wva2016_v1');

            --- icd10_wva2016_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd10_wva2016_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628592-04:00', 'published', 'icd,wva', 'Mappings to convert from ICD-10 to WVA-2016.

Join the variable `icd10_code` to your data for the converted codes in variable `wva2016_code`.', 'supplementary', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wva2016_v1');

            --- wva2022_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'wva2022_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628612-04:00', 'published', 'wva', 'World Health Organization Verbal Autopsy 2022 (WVA-2022) codes that generalize ICD-10 codes for mortality.

See [WVA-2022 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2022_manual.pdf).', 'main', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wva2022_v1');

            --- icd10_wva2022_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd10_wva2022_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628633-04:00', 'published', 'icd,wva', 'Mappings to convert from ICD-10 to WVA-2022.

Join the variable `icd10_code` to your data for the converted codes in variable `wva2022_code`.', 'supplementary', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wva2022_v1');

           --- cghr10_v1 data record
           INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
           SELECT 'cghr10_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628654-04:00', 'published', 'cghr', 'Centre for Global Health Research for ICD-10 (CGHR-10) codes for physician coded verbal autopsies.

See [relevant paper](https://doi.org/10.1186/s12916-019-1353-2).', 'main', 'support@openmortality.org'
           WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'cghr10_v1');

            --- icd10_cghr10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd10_cghr10_v1', 'csv', 'False', 'user', '2023-06-16 03:26:26.628720-04:00', 'published', 'icd,cghr', 'Mappings to convert from ICD-10 to CGHR-10.

Join the variable `icd10_code` to your data for the converted codes in variable `cghr10_title`.', 'supplementary', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_cghr10_v1');

--- Grant select on data for OM user
GRANT SELECT ON TABLE public.icd10_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.icd11_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.icd10_icd11_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.icd11_icd10_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.wbd10_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.icd10_wbd10_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.cmea10_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.icd10_cmea10_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.wva2016_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.icd10_wva2016_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.wva2022_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.icd10_wva2022_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.cghr10_v1 TO omdevdbuser;
GRANT SELECT ON TABLE public.icd10_cghr10_v1 TO omdevdbuser;