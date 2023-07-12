--- icd10_v1 table comment
COMMENT ON TABLE icd10_v1 IS 'International Classification of Diseases Revision 10 (ICD-10) data from the World Health Organization (WHO).

Contains standardized codes for classifying diseases based on chapters, blocks, and categories.

For more details, see the [ICD-10 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd10_manual.pdf).';

--- icd10_v1 column comments (n=5)
COMMENT ON COLUMN icd10_v1.kind IS 'ICD-10 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10_v1.kind_depth IS 'ICD-10 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd10_v1.chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd10_v1.code IS 'ICD-10 code for the entity.';
COMMENT ON COLUMN icd10_v1.title IS 'ICD-10 title of the entity.';

--- icd11_v1 table comment
COMMENT ON TABLE icd11_v1 IS 'International Classification of Diseases Revision 11 (ICD-11) data from the World Health Organization (WHO).

Contains standardized codes for classifying diseases based on chapters, blocks, and categories.

For more details, see the [ICD-11 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd11_manual.pdf).';

--- icd11_v1 column comments (n=17)
COMMENT ON COLUMN icd11_v1.kind IS 'ICD-11 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd11_v1.kind_depth IS 'ICD-11 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd11_v1.chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd11_v1.code IS 'ICD-11 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd11_v1.title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd11_v1.block_id IS 'ICD-11 identifier for high level groupings that do not bear a code';
COMMENT ON COLUMN icd11_v1.is_residual IS 'True if the ICD-11 entity is a residual category (i.e. other specified or unspecified categories) and False if not.';
COMMENT ON COLUMN icd11_v1.is_leaf IS 'True if the ICD-11 entity does not have any children and False if it does.';
COMMENT ON COLUMN icd11_v1.is_primary_tabulation IS 'True if the ICD-11 entity is part of the primary tabulation and False if not.';
COMMENT ON COLUMN icd11_v1.group1 IS 'Grouping 1 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11_v1.group2 IS 'Grouping 2 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11_v1.group3 IS 'Grouping 3 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11_v1.group4 IS 'Grouping 4 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11_v1.group5 IS 'Grouping 5 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11_v1.browser_url IS 'Direct link to the ICD-11 entity in the web browser.';
COMMENT ON COLUMN icd11_v1.foundation_url IS 'Link to unique ICD-11 entity identifier.';
COMMENT ON COLUMN icd11_v1.linear_url IS 'Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';

--- icd10_icd11_v1 table comment
COMMENT ON TABLE icd10_icd11_v1 IS 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [ICD-11](https://openmortality.org/data/icd11_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `icd11_code`.';

--- icd10_icd11_v1 column comments (n=12)
COMMENT ON COLUMN icd10_icd11_v1.icd10_kind IS 'ICD-10 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10_icd11_v1.icd10_kind_depth IS 'ICD-10 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd10_icd11_v1.icd10_chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd10_icd11_v1.icd10_code IS 'ICD-10 code for the entity.';
COMMENT ON COLUMN icd10_icd11_v1.icd10_title IS 'ICD-10 title of the entity.';
COMMENT ON COLUMN icd10_icd11_v1.icd11_kind IS 'ICD-11 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10_icd11_v1.icd11_kind_depth IS 'ICD-11 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd10_icd11_v1.icd11_chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd10_icd11_v1.icd11_code IS 'ICD-11 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd10_icd11_v1.icd11_title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd10_icd11_v1.icd11_foundation_url IS 'Link to unique ICD-11 entity identifier.';
COMMENT ON COLUMN icd10_icd11_v1.icd11_linear_url IS 'ICD-11 Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';

--- icd11_icd10_v1 table comment
COMMENT ON TABLE icd11_icd10_v1 IS 'Mappings to convert from [ICD-11](https://openmortality.org/data/icd11_v1) codes to [ICD-10](https://openmortality.org/data/icd10_v1) codes.

Join the column `icd11_code` to your data for the converted codes in column `icd10_code`.';

--- icd11_icd10_v1 column comments (n=7)
COMMENT ON COLUMN icd11_icd10_v1.icd11_chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd11_icd10_v1.icd11_code IS 'ICD-11 code for the entity.';
COMMENT ON COLUMN icd11_icd10_v1.icd11_title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd11_icd10_v1.icd10_chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd11_icd10_v1.icd10_code IS 'ICD-10 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd11_icd10_v1.icd10_title IS 'ICD-10 title of the entity.';
COMMENT ON COLUMN icd11_icd10_v1.icd11_linear_url IS 'ICD-11 Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';

--- wbd10_v1 table comment
COMMENT ON TABLE wbd10_v1 IS 'Wilson''s Burden of Disease for ICD-10 (WBD-10) data from the Centre for Global Health Research (CGHR).

Groups [ICD-10](https://openmortality.org/data/icd10_v1) codes into broader WBD-10 codes for three age groups: adult (12 years or older), child (28 days to 11 years), and neonate (under 28 days).

To correctly use these codes, account for the three age group values `adult`, `child`, and `neo` in the column `age`.

For more details, see the [relevant paper](https://doi.org/10.1186/1741-7015-12-21).';

--- wbd10_v1 column comments (n=10)
COMMENT ON COLUMN wbd10_v1.age IS 'Age group for the WBD-10 entity - adult (12-69 years old), child (1 month to 11 years old), and neo (under 1 month old).';
COMMENT ON COLUMN wbd10_v1.kind IS 'WBD-10 entity kind. One of codex4, codex2, or codex. Codex4 are top level classification entities, codex2 are high level groupings, and codex are the WBD-10 codes at the lowest level.';
COMMENT ON COLUMN wbd10_v1.kind_depth IS 'WBD-10 depth for kind. For example, a codex with kind_depth=3 means means it has 2 higher levels above it. Codex4 has depth of 1 (highest) and Codex2 has depth of 2 (middle).';
COMMENT ON COLUMN wbd10_v1.codex4 IS 'WBD-10 codex4 - a higher level classification of the WBD-10 codes.';
COMMENT ON COLUMN wbd10_v1.codex2 IS 'WBD-10 codex2 - a middle level classification that usually group several WBD-10 codes together.';
COMMENT ON COLUMN wbd10_v1.code IS 'WBD-10 codex or codes - the lowest level classification representing the WBD-10 codes themselves.';
COMMENT ON COLUMN wbd10_v1.codex4_title IS 'WBD-10 title for codex4.';
COMMENT ON COLUMN wbd10_v1.codex2_title IS 'WBD-10 title for codex2.';
COMMENT ON COLUMN wbd10_v1.title IS 'WBD-10 code/codex title.';
COMMENT ON COLUMN wbd10_v1.icd10_range IS 'Range of ICD-10 codes in the WBD-10 codex4/codex2 groupings or codex codes.';

--- icd10_wbd10_v1 table comment
COMMENT ON TABLE icd10_wbd10_v1 IS 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [WBD-10](https://openmortality.org/data/wbd10_v1) codes.

Join the column `icd10_code` and `wbd10_age` to your data for the converted codes in column `wbd10_code`.

To correctly map the ICD-10 codes, be sure to also match the age group values `adult`, `child`, and `neo` in the column `wbd10_age`.

It may help to add a column specifying whether a record in your data is `adult`, `child` or `neo` to do the matching.';

--- icd10_wbd10_v1 column comments (n=11)
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_age IS 'Age group for the WBD-10 entity - adult (12-69 years old), child (1 month to 11 years old), and neo (under 1 month old).';
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_kind IS 'WBD-10 entity kind. One of codex4, codex2, or codex. Codex4 are top level classification entities, codex2 are high level groupings, and codex are the WBD-10 codes at the lowest level.';
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_kind_depth IS 'WBD-10 depth for kind. For example, a codex with kind_depth=3 means means it has 2 higher levels above it. Codex4 has depth of 1 (highest) and Codex2 has depth of 2 (middle).';
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_codex4 IS 'WBD-10 codex4 - a higher level classification of the WBD-10 codes.';
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_codex2 IS 'WBD-10 codex2 - a middle level classification that usually group several WBD-10 codes together.';
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_code IS 'WBD-10 codex or codes - the lowest level classification representing the WBD-10 codes themselves.';
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_codex4_title IS 'WBD-10 title for codex4.';
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_codex2_title IS 'WBD-10 title for codex2.';
COMMENT ON COLUMN icd10_wbd10_v1.wbd10_title IS 'WBD-10 code/codex title.';
COMMENT ON COLUMN icd10_wbd10_v1.icd10_range IS 'Range of ICD-10 codes in the WBD-10 codex4/codex2 groupings or codex codes.';
COMMENT ON COLUMN icd10_wbd10_v1.icd10_code IS 'ICD-10 code for the entity.';

--- cmea10_v1 table comment
COMMENT ON TABLE cmea10_v1 IS 'Central Medical Evaluation Agreement for ICD-10 (CMEA-10) code blocks from the Centre for Global Health Research (CGHR).

These code blocks are used in the Central Medical Evaluation (CME) system to determine which groups of ICD-10 codes considered to be in agreement for dual physician coding in Verbal Autopsies (VA).

For more details, see the [relevant paper](https://doi.org/10.1186/1741-7015-12-21).';

--- cmea10_v1 column comments (n=3)
COMMENT ON COLUMN cmea10_v1.title IS 'CMEA-10 block title that represents a range of ICD-10 codes considered in agreement for assigning death codes in VAs.';
COMMENT ON COLUMN cmea10_v1.icd10_range IS 'Range of ICD-10 codes in the CMEA-10 block - each code is separated by a comma.';
COMMENT ON COLUMN cmea10_v1.icd10_range_short IS 'Range of ICD-10 codes in the CMEA-10 block - shortened to represent consecutive ranges with dashes for easier readability.';

--- icd10_cmea10_v1 table comment
COMMENT ON TABLE icd10_cmea10_v1 IS 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [CMEA-10](https://openmortality.org/data/cmea10_v1) code blocks.

Join the column `icd10_code` to your data for the converted codes in column `cmea10_title`.';

--- icd10_cmea10_v1 column comments (n=3)
COMMENT ON COLUMN icd10_cmea10_v1.cmea10_title IS 'CMEA-10 block that groups ICD-10 codes considered in agreement for assigning death codes in VAs.';
COMMENT ON COLUMN icd10_cmea10_v1.icd10_range IS 'Range of ICD-10 codes in the CMEA-10 block - each code is separated by a comma.';
COMMENT ON COLUMN icd10_cmea10_v1.icd10_code IS 'ICD-10 code for the CMEA-10 block.';

--- wva2016_v1 table comment
COMMENT ON TABLE wva2016_v1 IS 'World Health Organization Verbal Autopsy 2016 (WVA-2016) codes that generalize ICD-10 codes into mortality relevant codes.

For more details, see the [WVA-2016 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2016_manual_v15.pdf).';

--- wva2016_v1 column comments (n=10)
COMMENT ON COLUMN wva2016_v1.kind IS 'WVA-2016 entity kind. One of group or code.';
COMMENT ON COLUMN wva2016_v1.kind_depth IS 'WVA-2016 depth for kind. For example, a category with kind_depth=2 means it is a code whose parent is a group.';
COMMENT ON COLUMN wva2016_v1.group IS 'WVA-2016 group containing a range of codes.';
COMMENT ON COLUMN wva2016_v1.group_title IS 'Title for WVA-2016 group.';
COMMENT ON COLUMN wva2016_v1.group_orig IS 'Original WVA-2016 group with leading text VAs-.';
COMMENT ON COLUMN wva2016_v1.code IS 'WVA-2016 code from the 2016 WHO VA instrument.';
COMMENT ON COLUMN wva2016_v1.code_orig IS 'Original WVA-2016 code with leading text VAs-.';
COMMENT ON COLUMN wva2016_v1.title IS 'Title for the WVA-2016 code.';
COMMENT ON COLUMN wva2016_v1.icd10_range IS 'Range of ICD-10 codes that the WVA-2016 codes group together.';
COMMENT ON COLUMN wva2016_v1.icd10_code IS 'ICD-10 codes that the WVA-2016 codes can be converted to.';

--- icd10_wva2016_v1 table comment
COMMENT ON TABLE icd10_wva2016_v1 IS 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [WVA-2016](https://openmortality.org/data/wva2016_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `wva2016_code`.';

--- icd10_wva2016_v1 column comments (n=6)
COMMENT ON COLUMN icd10_wva2016_v1.wva2016_group IS 'WVA-2016 group containing a range of codes.';
COMMENT ON COLUMN icd10_wva2016_v1.wva2016_code IS 'WVA-2016 code from the 2016 WHO VA instrument.';
COMMENT ON COLUMN icd10_wva2016_v1.wva2016_group_title IS 'Title for WVA-2016 group.';
COMMENT ON COLUMN icd10_wva2016_v1.wva2016_title IS 'Title for the WVA-2016 code.';
COMMENT ON COLUMN icd10_wva2016_v1.icd10_range IS 'Range of ICD-10 codes that the WVA-2016 codes group together.';
COMMENT ON COLUMN icd10_wva2016_v1.icd10_code IS 'ICD-10 codes that the WVA-2016 codes can be converted to.';

--- wva2022_v1 table comment
COMMENT ON TABLE wva2022_v1 IS 'World Health Organization Verbal Autopsy 2022 (WVA-2022) codes that generalize ICD-10 codes into mortality relevant codes.

For more details, see the [WVA-2022 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2022_manual.pdf).';

--- wva2022_v1 column comments (n=3)
COMMENT ON COLUMN wva2022_v1.code IS 'WVA-2022 code from the 2022 WHO VA instrument.';
COMMENT ON COLUMN wva2022_v1.title IS 'Title for the WVA-2022 code.';
COMMENT ON COLUMN wva2022_v1.icd10_range IS 'Range of ICD-10 codes for the WVA-2022 codes.';

--- icd10_wva2022_v1 table comment
COMMENT ON TABLE icd10_wva2022_v1 IS 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) to [WVA-2022](https://openmortality.org/data/wva2022_v1).

Join the column `icd10_code` to your data for the converted codes in column `wva2022_code`.';

--- icd10_wva2022_v1 column comments (n=4)
COMMENT ON COLUMN icd10_wva2022_v1.wva2022_code IS 'WVA-2022 code from the 2022 WHO VA instrument.';
COMMENT ON COLUMN icd10_wva2022_v1.wva2022_title IS 'Title for the WVA-2022 code.';
COMMENT ON COLUMN icd10_wva2022_v1.icd10_range IS 'Range of ICD-10 codes for the WVA-2022 codes.';
COMMENT ON COLUMN icd10_wva2022_v1.icd10_code IS 'ICD-10 code for the WVA-2022 code.';

--- cghr10_v1 table comment
COMMENT ON TABLE cghr10_v1 IS 'Centre for Global Health Research for ICD-10 (CGHR-10) codes for physician coded verbal autopsies.

These codes group [ICD-10](https://openmortality.org/data/icd10_v1) codes into broader categories based on three age groups: adult (12 years or older), child (28 days to 11 years), and neonate (under 28 days).

To correctly use these codes, account for the three age group values `adult`, `child`, and `neo` in the column `age`.

For more details, see the [relevant paper](https://doi.org/10.1186/s12916-019-1353-2).';

--- cghr10_v1 column comments (n=3)
COMMENT ON COLUMN cghr10_v1.age IS 'CGHR-10 code age group. Age groups are divided into adult (12 to 69 years old), child (1 month to 11 years old), and neo (under 1 month old).';
COMMENT ON COLUMN cghr10_v1.title IS 'CGHR-10 title for the code.';
COMMENT ON COLUMN cghr10_v1.icd10_range IS 'ICD-10 range for the CGHR-10 code.';

--- icd10_cghr10_v1 table comment
COMMENT ON TABLE icd10_cghr10_v1 IS 'Mappings to convert from [ICD-10](https://openmortality.org/data/icd10_v1) codes to [CGHR-10](https://openmortality.org/data/cghr10_v1) codes.

Join the column `icd10_code` to your data for the converted codes in column `cghr10_title`.

To correctly map the ICD-10 codes, be sure to also match the age group values `adult`, `child`, and `neo` in the column `cghr10_age`.

It may help to add a column specifying whether a record in your data is `adult`, `child` or `neo` to do the matching.';

--- icd10_cghr10_v1 column comments (n=4)
COMMENT ON COLUMN icd10_cghr10_v1.cghr10_age IS 'CGHR-10 code age group. Age groups are divided into adult (12 to 69 years old), child (1 month to 11 years old), and neo (under 1 month old).';
COMMENT ON COLUMN icd10_cghr10_v1.cghr10_title IS 'CGHR-10 title for the code.';
COMMENT ON COLUMN icd10_cghr10_v1.icd10_code IS 'ICD-10 code for the CGHR-10 code.';
COMMENT ON COLUMN icd10_cghr10_v1.icd10_range IS 'ICD-10 range for the CGHR-10 code.';