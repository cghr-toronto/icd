
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
SELECT 'icd10_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540502-04:00', 'published', 'icd', 'International Classification of Diseases Revision 10 (ICD-10) data from the World Health Organization (WHO).', 'main', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_v1');

--- icd11_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'icd11_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540611-04:00', 'published', 'icd', 'International Classification of Diseases Revision 11 (ICD-11) data from the World Health Organization (WHO).', 'main', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd11_v1');

--- icd10_icd11_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'icd10_icd11_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540639-04:00', 'published', 'icd', 'Mappings to convert from ICD-10 to ICD-11.', 'supplementary', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_icd11_v1');

            --- icd11_icd10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'icd11_icd10_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540665-04:00', 'published', 'icd', 'Mappings to convert from ICD-11 to ICD-10.

**Note**: ICD-11 codes may map to multiple ICD-10 codes.', 'supplementary', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd11_icd10_v1');

            --- wbd10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'wbd10_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540686-04:00', 'published', 'wbd', 'Wilson''s Burden of Disease for ICD-10 (WBD-10) data from the Centre for Global Health Research (CGHR).

Groups International Classification of Diseases (ICD) Revision 10 codes from the World Health Organization (WHO) into broader WBD-10 codes for three age groups (adult, child, and neonate).', 'main', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wbd10_v1');

--- icd10_wbd10_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'icd10_wbd10_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540709-04:00', 'published', 'icd,wbd', 'Mappings to convert from ICD-10 to WBD-10.', 'supplementary', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wbd10_v1');

            --- cmea10_v1 data record
            INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
            SELECT 'cmea10_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540733-04:00', 'published', 'cmea', 'Central Medical Evaluation Agreement for ICD-10 (CMEA-10) blocks from the Centre for Global Health Research (CGHR).

These blocks are used in the Central Medical Evaluation (CME) system to determine groups of ICD-10 codes considered to be in agreement for dual physician coding in Verbal Autopsies (VA).', 'main', 'support@openmortality.org'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'cmea10_v1');

--- icd10_cmea10_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'icd10_cmea10_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540758-04:00', 'published', 'icd,cmea', 'Mappings to convert from ICD-10 to CMEA-10.', 'supplementary', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_cmea10_v1');

--- wva2016_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'wva2016_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540783-04:00', 'published', 'wva', 'World Health Organization Verbal Autopsy 2016 (WVA-2016) codes that generalize ICD-10 codes for mortality.', 'main', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wva2016_v1');

--- icd10_wva2016_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'icd10_wva2016_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540808-04:00', 'published', 'icd,wva', 'Mappings to convert from ICD-10 to WVA-2016.', 'supplementary', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wva2016_v1');

--- wva2022_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'wva2022_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540830-04:00', 'published', 'wva', 'World Health Organization Verbal Autopsy 2022 (WVA-2022) codes that generalize ICD-10 codes for mortality.', 'main', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wva2022_v1');

--- icd10_wva2022_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'icd10_wva2022_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540853-04:00', 'published', 'icd,wva', 'Mappings to convert from ICD-10 to WVA-2022.', 'supplementary', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wva2022_v1');

--- cghr10_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'cghr10_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540876-04:00', 'published', 'cghr', 'Centre for Global Health Research for ICD-10 (CGHR-10) codes for physician coded verbal autopsies.', 'main', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'cghr10_v1');

--- icd10_cghr10_v1 data record
INSERT INTO public.dp_data (data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact)
SELECT 'icd10_cghr10_v1', 'csv', 'False', 'user', '2023-06-16 02:11:07.540899-04:00', 'published', 'icd,cghr', 'Mappings to convert from ICD-10 to CGHR-10.', 'supplementary', 'support@openmortality.org'
WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_cghr10_v1');
