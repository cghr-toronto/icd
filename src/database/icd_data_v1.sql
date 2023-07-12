
--- Data records table
CREATE TABLE IF NOT EXISTS public.dp_data (
    data_id SERIAL PRIMARY KEY,
    title VARCHAR,
    data_name VARCHAR UNIQUE,
    format VARCHAR,
    is_spatial BOOLEAN,
    permission VARCHAR,
    publish_date TIMESTAMP WITH TIME ZONE,
    last_updated_date TIMESTAMP WITH TIME ZONE,
    status VARCHAR,
    tag VARCHAR,
    data_desc VARCHAR,
    last_update_date VARCHAR,
    contact VARCHAR,
    category VARCHAR,
    data_columns BIGINT,
    data_rows BIGINT
);

            --- icd10_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-10 Codes',
                data_name = 'icd10_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.525839-04:00',
                status = 'published',
                tag = 'icd',
                data_desc = 'International Classification of Diseases Revision 10 (ICD-10) data from the World Health Organization (WHO).

Contains standardized codes for classifying diseases based on chapters, blocks, and categories.

For more details, see the [ICD-10 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd10_manual.pdf).
* **File**: icd10_v1.csv
* **Dimensions**: 5 columns / 12,597 rows',
                category = 'main',
                contact = 'support@openmortality.org',
                data_columns = '5',
                data_rows = '12597' 
            WHERE data_name = 'icd10_v1';

            --- icd11_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-11 Codes',
                data_name = 'icd11_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.526575-04:00',
                status = 'published',
                tag = 'icd',
                data_desc = 'International Classification of Diseases Revision 11 (ICD-11) data from the World Health Organization (WHO).

Contains standardized codes for classifying diseases based on chapters, blocks, and categories.

For more details, see the [ICD-11 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd11_manual.pdf).
* **File**: icd11_v1.csv
* **Dimensions**: 17 columns / 35,459 rows',
                category = 'main',
                contact = 'support@openmortality.org',
                data_columns = '17',
                data_rows = '35459' 
            WHERE data_name = 'icd11_v1';

            --- icd10_icd11_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-10 to ICD-11 Code Mappings',
                data_name = 'icd10_icd11_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.526940-04:00',
                status = 'published',
                tag = 'icd',
                data_desc = 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [ICD-11](https://openmortality.org/data/icd11_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `icd11_code`.
* **File**: icd10_icd11_v1.csv
* **Dimensions**: 12 columns / 12,597 rows',
                category = 'supplementary',
                contact = 'support@openmortality.org',
                data_columns = '12',
                data_rows = '12597' 
            WHERE data_name = 'icd10_icd11_v1';

            --- icd11_icd10_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-11 to ICD-10 Code Mappings',
                data_name = 'icd11_icd10_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.527286-04:00',
                status = 'published',
                tag = 'icd',
                data_desc = 'Mappings to convert from [ICD-11](https://openmortality.org/data/icd11_v1) codes to [ICD-10](https://openmortality.org/data/icd10_v1) codes.

Join the column `icd11_code` to your data for the converted codes in column `icd10_code`.
* **Note**: ICD-11 codes can map to multiple ICD-10 codes
* **File**: icd11_icd10_v1.csv
* **Dimensions**: 7 columns / 17,799 rows',
                category = 'supplementary',
                contact = 'support@openmortality.org',
                data_columns = '7',
                data_rows = '17799' 
            WHERE data_name = 'icd11_icd10_v1';

            --- wbd10_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'WBD-10 Codes',
                data_name = 'wbd10_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.527634-04:00',
                status = 'published',
                tag = 'wbd',
                data_desc = 'Wilson''s Burden of Disease for ICD-10 (WBD-10) data from the Centre for Global Health Research (CGHR).

Groups [ICD-10](https://openmortality.org/data/icd10_v1) codes into broader WBD-10 codes for three age groups: adult (12 years or older), child (28 days to 11 years), and neonate (under 28 days).

To correctly use these codes, account for the three age group values `adult`, `child`, and `neo` in the column `age`.

For more details, see the [relevant paper](https://doi.org/10.1186/1741-7015-12-21).
* **File**: wbd10_v1.csv
* **Dimensions**: 10 columns / 182 rows',
                category = 'main',
                contact = 'support@openmortality.org',
                data_columns = '10',
                data_rows = '182' 
            WHERE data_name = 'wbd10_v1';

            --- icd10_wbd10_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-10 to WBD-10 Code Mappings',
                data_name = 'icd10_wbd10_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.527975-04:00',
                status = 'published',
                tag = 'icd,wbd',
                data_desc = 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [WBD-10](https://openmortality.org/data/wbd10_v1) codes.

Join the column `icd10_code` and `wbd10_age` to your data for the converted codes in column `wbd10_code`.

To correctly map the ICD-10 codes, be sure to also match the age group values `adult`, `child`, and `neo` in the column `wbd10_age`.

It may help to add a column specifying whether a record in your data is `adult`, `child` or `neo` to do the matching.
* **File**: icd10_wbd10_v1.csv
* **Dimensions**: 11 columns / 6,502 rows',
                category = 'supplementary',
                contact = 'support@openmortality.org',
                data_columns = '11',
                data_rows = '6502' 
            WHERE data_name = 'icd10_wbd10_v1';

            --- cmea10_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'CMEA-10 Codes',
                data_name = 'cmea10_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.528324-04:00',
                status = 'published',
                tag = 'cmea',
                data_desc = 'Central Medical Evaluation Agreement for ICD-10 (CMEA-10) code blocks from the Centre for Global Health Research (CGHR).

These code blocks are used in the Central Medical Evaluation (CME) system to determine which groups of ICD-10 codes considered to be in agreement for dual physician coding in Verbal Autopsies (VA).

For more details, see the [relevant paper](https://doi.org/10.1186/1741-7015-12-21).
* **File**: cmea10_v1.csv
* **Dimensions**: 3 columns / 143 rows',
                category = 'main',
                contact = 'support@openmortality.org',
                data_columns = '3',
                data_rows = '143' 
            WHERE data_name = 'cmea10_v1';

            --- icd10_cmea10_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-10 to CMEA-10 Mappings',
                data_name = 'icd10_cmea10_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.528679-04:00',
                status = 'published',
                tag = 'icd,cmea',
                data_desc = 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [CMEA-10](https://openmortality.org/data/cmea10_v1) code blocks.

Join the column `icd10_code` to your data for the converted codes in column `cmea10_title`.
* **File**: icd10_cmea10_v1.csv
* **Dimensions**: 3 columns / 1,653 rows',
                category = 'supplementary',
                contact = 'support@openmortality.org',
                data_columns = '3',
                data_rows = '1653' 
            WHERE data_name = 'icd10_cmea10_v1';

            --- wva2016_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'WVA-2016 Codes',
                data_name = 'wva2016_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.529006-04:00',
                status = 'published',
                tag = 'wva',
                data_desc = 'World Health Organization Verbal Autopsy 2016 (WVA-2016) codes that generalize ICD-10 codes into mortality relevant codes.

For more details, see the [WVA-2016 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2016_manual_v15.pdf).
* **File**: wva2016_v1.csv
* **Dimensions**: 10 columns / 85 rows',
                category = 'main',
                contact = 'support@openmortality.org',
                data_columns = '10',
                data_rows = '85' 
            WHERE data_name = 'wva2016_v1';

            --- icd10_wva2016_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-10 to WVA-2016 Code Mappings',
                data_name = 'icd10_wva2016_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.529329-04:00',
                status = 'published',
                tag = 'icd,wva',
                data_desc = 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [WVA-2016](https://openmortality.org/data/wva2016_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `wva2016_code`.
* **File**: icd10_wva2016_v1.csv
* **Dimensions**: 6 columns / 2,384 rows',
                category = 'supplementary',
                contact = 'support@openmortality.org',
                data_columns = '6',
                data_rows = '2384' 
            WHERE data_name = 'icd10_wva2016_v1';

            --- wva2022_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'WVA-2022 Codes',
                data_name = 'wva2022_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.529658-04:00',
                status = 'published',
                tag = 'wva',
                data_desc = 'World Health Organization Verbal Autopsy 2022 (WVA-2022) codes that generalize ICD-10 codes into mortality relevant codes.

For more details, see the [WVA-2022 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2022_manual.pdf).
* **File**: wva2022_v1.csv
* **Dimensions**: 3 columns / 65 rows',
                category = 'main',
                contact = 'support@openmortality.org',
                data_columns = '3',
                data_rows = '65' 
            WHERE data_name = 'wva2022_v1';

            --- icd10_wva2022_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-10 to WVA-2022 Code Mappings',
                data_name = 'icd10_wva2022_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.529986-04:00',
                status = 'published',
                tag = 'icd,wva',
                data_desc = 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) to [WVA-2022](https://openmortality.org/data/wva2022_v1).

Join the column `icd10_code` to your data for the converted codes in column `wva2022_code`.
* **File**: icd10_wva2022_v1.csv
* **Dimensions**: 4 columns / 4,442 rows',
                category = 'supplementary',
                contact = 'support@openmortality.org',
                data_columns = '4',
                data_rows = '4442' 
            WHERE data_name = 'icd10_wva2022_v1';

            --- cghr10_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'CGHR-10 Codes',
                data_name = 'cghr10_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.530326-04:00',
                status = 'published',
                tag = 'cghr',
                data_desc = 'Centre for Global Health Research for ICD-10 (CGHR-10) codes for physician coded verbal autopsies.

These codes group [ICD-10](https://openmortality.org/data/icd10_v1) codes into broader categories based on three age groups: adult (12 years or older), child (28 days to 11 years), and neonate (under 28 days).

To correctly use these codes, account for the three age group values `adult`, `child`, and `neo` in the column `age`.

For more details, see the [relevant paper](https://doi.org/10.1186/s12916-019-1353-2).
* **File**: cghr10_v1.csv
* **Dimensions**: 3 columns / 36 rows',
                category = 'main',
                contact = 'support@openmortality.org',
                data_columns = '3',
                data_rows = '36' 
            WHERE data_name = 'cghr10_v1';

            --- icd10_cghr10_v1 dataset record
            UPDATE public.dp_data
            SET
                title = 'ICD-10 to CGHR-10 Code Mappings',
                data_name = 'icd10_cghr10_v1',
                "format" = 'csv',
                is_spatial = 'False',
                "permission" = 'user',
                last_updated_date = '2023-07-11 23:51:15.530657-04:00',
                status = 'published',
                tag = 'icd,cghr',
                data_desc = 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [CGHR-10](https://openmortality.org/data/cghr10_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `cghr10_title`.

To correctly map the ICD-10 codes, be sure to also match the age group values `adult`, `child`, and `neo` in the column `cghr10_age`.

It may help to add a column specifying whether a record in your data is `adult`, `child` or `neo` to do the matching.
* **File**: icd10_cghr10_v1.csv
* **Dimensions**: 4 columns / 6,411 rows',
                category = 'supplementary',
                contact = 'support@openmortality.org',
                data_columns = '4',
                data_rows = '6411' 
            WHERE data_name = 'icd10_cghr10_v1';

            --- icd10_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-10 Codes', 'icd10_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.525839-04:00', 'published', 'icd', 'International Classification of Diseases Revision 10 (ICD-10) data from the World Health Organization (WHO).

Contains standardized codes for classifying diseases based on chapters, blocks, and categories.

For more details, see the [ICD-10 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd10_manual.pdf).
* **File**: icd10_v1.csv
* **Dimensions**: 5 columns / 12,597 rows', 'main', 'support@openmortality.org', '5', '12597'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_v1');

            --- icd11_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-11 Codes', 'icd11_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.526575-04:00', 'published', 'icd', 'International Classification of Diseases Revision 11 (ICD-11) data from the World Health Organization (WHO).

Contains standardized codes for classifying diseases based on chapters, blocks, and categories.

For more details, see the [ICD-11 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd11_manual.pdf).
* **File**: icd11_v1.csv
* **Dimensions**: 17 columns / 35,459 rows', 'main', 'support@openmortality.org', '17', '35459'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd11_v1');

            --- icd10_icd11_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-10 to ICD-11 Code Mappings', 'icd10_icd11_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.526940-04:00', 'published', 'icd', 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [ICD-11](https://openmortality.org/data/icd11_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `icd11_code`.
* **File**: icd10_icd11_v1.csv
* **Dimensions**: 12 columns / 12,597 rows', 'supplementary', 'support@openmortality.org', '12', '12597'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_icd11_v1');

            --- icd11_icd10_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-11 to ICD-10 Code Mappings', 'icd11_icd10_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.527286-04:00', 'published', 'icd', 'Mappings to convert from [ICD-11](https://openmortality.org/data/icd11_v1) codes to [ICD-10](https://openmortality.org/data/icd10_v1) codes.

Join the column `icd11_code` to your data for the converted codes in column `icd10_code`.
* **Note**: ICD-11 codes can map to multiple ICD-10 codes
* **File**: icd11_icd10_v1.csv
* **Dimensions**: 7 columns / 17,799 rows', 'supplementary', 'support@openmortality.org', '7', '17799'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd11_icd10_v1');

            --- wbd10_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'WBD-10 Codes', 'wbd10_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.527634-04:00', 'published', 'wbd', 'Wilson''s Burden of Disease for ICD-10 (WBD-10) data from the Centre for Global Health Research (CGHR).

Groups [ICD-10](https://openmortality.org/data/icd10_v1) codes into broader WBD-10 codes for three age groups: adult (12 years or older), child (28 days to 11 years), and neonate (under 28 days).

To correctly use these codes, account for the three age group values `adult`, `child`, and `neo` in the column `age`.

For more details, see the [relevant paper](https://doi.org/10.1186/1741-7015-12-21).
* **File**: wbd10_v1.csv
* **Dimensions**: 10 columns / 182 rows', 'main', 'support@openmortality.org', '10', '182'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wbd10_v1');

            --- icd10_wbd10_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-10 to WBD-10 Code Mappings', 'icd10_wbd10_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.527975-04:00', 'published', 'icd,wbd', 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [WBD-10](https://openmortality.org/data/wbd10_v1) codes.

Join the column `icd10_code` and `wbd10_age` to your data for the converted codes in column `wbd10_code`.

To correctly map the ICD-10 codes, be sure to also match the age group values `adult`, `child`, and `neo` in the column `wbd10_age`.

It may help to add a column specifying whether a record in your data is `adult`, `child` or `neo` to do the matching.
* **File**: icd10_wbd10_v1.csv
* **Dimensions**: 11 columns / 6,502 rows', 'supplementary', 'support@openmortality.org', '11', '6502'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wbd10_v1');

            --- cmea10_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'CMEA-10 Codes', 'cmea10_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.528324-04:00', 'published', 'cmea', 'Central Medical Evaluation Agreement for ICD-10 (CMEA-10) code blocks from the Centre for Global Health Research (CGHR).

These code blocks are used in the Central Medical Evaluation (CME) system to determine which groups of ICD-10 codes considered to be in agreement for dual physician coding in Verbal Autopsies (VA).

For more details, see the [relevant paper](https://doi.org/10.1186/1741-7015-12-21).
* **File**: cmea10_v1.csv
* **Dimensions**: 3 columns / 143 rows', 'main', 'support@openmortality.org', '3', '143'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'cmea10_v1');

            --- icd10_cmea10_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-10 to CMEA-10 Mappings', 'icd10_cmea10_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.528679-04:00', 'published', 'icd,cmea', 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [CMEA-10](https://openmortality.org/data/cmea10_v1) code blocks.

Join the column `icd10_code` to your data for the converted codes in column `cmea10_title`.
* **File**: icd10_cmea10_v1.csv
* **Dimensions**: 3 columns / 1,653 rows', 'supplementary', 'support@openmortality.org', '3', '1653'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_cmea10_v1');

            --- wva2016_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'WVA-2016 Codes', 'wva2016_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.529006-04:00', 'published', 'wva', 'World Health Organization Verbal Autopsy 2016 (WVA-2016) codes that generalize ICD-10 codes into mortality relevant codes.

For more details, see the [WVA-2016 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2016_manual_v15.pdf).
* **File**: wva2016_v1.csv
* **Dimensions**: 10 columns / 85 rows', 'main', 'support@openmortality.org', '10', '85'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wva2016_v1');

            --- icd10_wva2016_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-10 to WVA-2016 Code Mappings', 'icd10_wva2016_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.529329-04:00', 'published', 'icd,wva', 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [WVA-2016](https://openmortality.org/data/wva2016_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `wva2016_code`.
* **File**: icd10_wva2016_v1.csv
* **Dimensions**: 6 columns / 2,384 rows', 'supplementary', 'support@openmortality.org', '6', '2384'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wva2016_v1');

            --- wva2022_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'WVA-2022 Codes', 'wva2022_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.529658-04:00', 'published', 'wva', 'World Health Organization Verbal Autopsy 2022 (WVA-2022) codes that generalize ICD-10 codes into mortality relevant codes.

For more details, see the [WVA-2022 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2022_manual.pdf).
* **File**: wva2022_v1.csv
* **Dimensions**: 3 columns / 65 rows', 'main', 'support@openmortality.org', '3', '65'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'wva2022_v1');

            --- icd10_wva2022_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-10 to WVA-2022 Code Mappings', 'icd10_wva2022_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.529986-04:00', 'published', 'icd,wva', 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) to [WVA-2022](https://openmortality.org/data/wva2022_v1).

Join the column `icd10_code` to your data for the converted codes in column `wva2022_code`.
* **File**: icd10_wva2022_v1.csv
* **Dimensions**: 4 columns / 4,442 rows', 'supplementary', 'support@openmortality.org', '4', '4442'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'icd10_wva2022_v1');

            --- cghr10_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'CGHR-10 Codes', 'cghr10_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.530326-04:00', 'published', 'cghr', 'Centre for Global Health Research for ICD-10 (CGHR-10) codes for physician coded verbal autopsies.

These codes group [ICD-10](https://openmortality.org/data/icd10_v1) codes into broader categories based on three age groups: adult (12 years or older), child (28 days to 11 years), and neonate (under 28 days).

To correctly use these codes, account for the three age group values `adult`, `child`, and `neo` in the column `age`.

For more details, see the [relevant paper](https://doi.org/10.1186/s12916-019-1353-2).
* **File**: cghr10_v1.csv
* **Dimensions**: 3 columns / 36 rows', 'main', 'support@openmortality.org', '3', '36'
            WHERE NOT EXISTS (SELECT 1 FROM public.dp_data WHERE data_name = 'cghr10_v1');

            --- icd10_cghr10_v1 data record
            INSERT INTO public.dp_data (title, data_name, "format", is_spatial, "permission", publish_date, status, tag, data_desc, category, contact, data_columns, data_rows)
            SELECT 'ICD-10 to CGHR-10 Code Mappings', 'icd10_cghr10_v1', 'csv', 'False', 'user', '2023-07-11 23:51:15.530657-04:00', 'published', 'icd,cghr', 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [CGHR-10](https://openmortality.org/data/cghr10_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `cghr10_title`.

To correctly map the ICD-10 codes, be sure to also match the age group values `adult`, `child`, and `neo` in the column `cghr10_age`.

It may help to add a column specifying whether a record in your data is `adult`, `child` or `neo` to do the matching.
* **File**: icd10_cghr10_v1.csv
* **Dimensions**: 4 columns / 6,411 rows', 'supplementary', 'support@openmortality.org', '4', '6411'
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