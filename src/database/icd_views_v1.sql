--- icd10 view

DROP VIEW IF EXISTS icd10; CREATE OR REPLACE VIEW icd10 AS (SELECT * FROM icd10_v1);

--- icd10 view comment

COMMENT ON VIEW icd10 IS 'International Classification of Diseases Revision 10 (ICD-10) data from the World Health Organization (WHO).

See [ICD-10 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd10_manual.pdf).';

--- icd10 view column comments (n=5)

COMMENT ON COLUMN icd10.kind IS 'ICD-10 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10.kind_depth IS 'ICD-10 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd10.chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd10.code IS 'ICD-10 code for the entity.';
COMMENT ON COLUMN icd10.title IS 'ICD-10 title of the entity.';

--- icd11 view

DROP VIEW IF EXISTS icd11; CREATE OR REPLACE VIEW icd11 AS (SELECT * FROM icd11_v1);

--- icd11 view comment

COMMENT ON VIEW icd11 IS 'International Classification of Diseases Revision 11 (ICD-11) data from the World Health Organization (WHO).

See [ICD-11 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/icd11_manual.pdf).';

--- icd11 view column comments (n=17)

COMMENT ON COLUMN icd11.linear_url IS 'Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';
COMMENT ON COLUMN icd11.foundation_url IS 'Link to unique ICD-11 entity identifier.';
COMMENT ON COLUMN icd11.browser_url IS 'Direct link to the ICD-11 entity in the web browser.';
COMMENT ON COLUMN icd11.group5 IS 'Grouping 5 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.group4 IS 'Grouping 4 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.is_primary_tabulation IS 'True if the ICD-11 entity is part of the primary tabulation and False if not.';
COMMENT ON COLUMN icd11.group3 IS 'Grouping 3 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.group2 IS 'Grouping 2 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.group1 IS 'Grouping 1 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.kind IS 'ICD-11 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd11.kind_depth IS 'ICD-11 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd11.chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd11.code IS 'ICD-11 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd11.title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd11.block_id IS 'ICD-11 identifier for high level groupings that do not bear a code';
COMMENT ON COLUMN icd11.is_residual IS 'True if the ICD-11 entity is a residual category (i.e. other specified or unspecified categories) and False if not.';
COMMENT ON COLUMN icd11.is_leaf IS 'True if the ICD-11 entity does not have any children and False if it does.';

--- icd10_icd11 view

DROP VIEW IF EXISTS icd10_icd11; CREATE OR REPLACE VIEW icd10_icd11 AS (SELECT * FROM icd10_icd11_v1);

--- icd10_icd11 view comment

COMMENT ON VIEW icd10_icd11 IS 'Mappings to convert from ICD-10 to ICD-11.

Join the variable `icd10_code` to your data for the converted codes in variable `icd11_code`.';

--- icd10_icd11 view column comments (n=12)

COMMENT ON COLUMN icd10_icd11.icd10_chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd10_icd11.icd10_code IS 'ICD-10 code for the entity.';
COMMENT ON COLUMN icd10_icd11.icd10_kind IS 'ICD-10 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10_icd11.icd10_kind_depth IS 'ICD-10 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd10_icd11.icd10_title IS 'ICD-10 title of the entity.';
COMMENT ON COLUMN icd10_icd11.icd11_kind IS 'ICD-11 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10_icd11.icd11_chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd10_icd11.icd11_code IS 'ICD-11 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd10_icd11.icd11_title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd10_icd11.icd11_foundation_url IS 'Link to unique ICD-11 entity identifier.';
COMMENT ON COLUMN icd10_icd11.icd11_linear_url IS 'ICD-11 Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';
COMMENT ON COLUMN icd10_icd11.icd11_kind_depth IS 'ICD-11 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';

--- icd11_icd10 view

DROP VIEW IF EXISTS icd11_icd10; CREATE OR REPLACE VIEW icd11_icd10 AS (SELECT * FROM icd11_icd10_v1);

--- icd11_icd10 view comment

COMMENT ON VIEW icd11_icd10 IS 'Mappings to convert from ICD-11 to ICD-10.

Join the variable `icd11_code` to your data for the converted codes in variable `icd10_code`.

**Note**: ICD-11 codes may map to multiple ICD-10 codes.';

--- icd11_icd10 view column comments (n=7)

COMMENT ON COLUMN icd11_icd10.icd11_title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd11_icd10.icd10_chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd11_icd10.icd11_chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd11_icd10.icd11_code IS 'ICD-11 code for the entity.';
COMMENT ON COLUMN icd11_icd10.icd10_title IS 'ICD-10 title of the entity.';
COMMENT ON COLUMN icd11_icd10.icd10_code IS 'ICD-10 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd11_icd10.icd11_linear_url IS 'ICD-11 Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';

--- wbd10 view

DROP VIEW IF EXISTS wbd10; CREATE OR REPLACE VIEW wbd10 AS (SELECT * FROM wbd10_v1);

--- wbd10 view comment

COMMENT ON VIEW wbd10 IS 'Wilson''s Burden of Disease for ICD-10 (WBD-10) data from the Centre for Global Health Research (CGHR).

Groups International Classification of Diseases (ICD) Revision 10 codes from the World Health Organization (WHO) into broader WBD-10 codes for three age groups (adult, child, and neonate).

See [relevant paper](https://doi.org/10.1186/1741-7015-12-21).';

--- wbd10 view column comments (n=10)

COMMENT ON COLUMN wbd10.codex4 IS 'WBD-10 codex4 - a higher level classification of the WBD-10 codes.';
COMMENT ON COLUMN wbd10.codex2 IS 'WBD-10 codex2 - a middle level classification that usually group several WBD-10 codes together.';
COMMENT ON COLUMN wbd10.code IS 'WBD-10 codex or codes - the lowest level classification representing the WBD-10 codes themselves.';
COMMENT ON COLUMN wbd10.codex4_title IS 'WBD-10 title for codex4.';
COMMENT ON COLUMN wbd10.kind_depth IS 'WBD-10 depth for kind. For example, a codex with kind_depth=3 means means it has 2 higher levels above it. Codex4 has depth of 1 (highest) and Codex2 has depth of 2 (middle).';
COMMENT ON COLUMN wbd10.codex2_title IS 'WBD-10 title for codex2.';
COMMENT ON COLUMN wbd10.kind IS 'WBD-10 entity kind. One of codex4, codex2, or codex. Codex4 are top level classification entities, codex2 are high level groupings, and codex are the WBD-10 codes at the lowest level.';
COMMENT ON COLUMN wbd10.icd10_range IS 'Range of ICD-10 codes in the WBD-10 codex4/codex2 groupings or codex codes.';
COMMENT ON COLUMN wbd10.age IS 'Age group for the WBD-10 entity - adult (12-69 years old), child (1 month to 11 years old), and neo (under 1 month old).';
COMMENT ON COLUMN wbd10.title IS 'WBD-10 code/codex title.';

--- icd10_wbd10 view

DROP VIEW IF EXISTS icd10_wbd10; CREATE OR REPLACE VIEW icd10_wbd10 AS (SELECT * FROM icd10_wbd10_v1);

--- icd10_wbd10 view comment

COMMENT ON VIEW icd10_wbd10 IS 'Mappings to convert from ICD-10 to WBD-10.

Join the variable `icd10_code` to your data for the converted codes in variable `wbd10_code`.';

--- icd10_wbd10 view column comments (n=11)

COMMENT ON COLUMN icd10_wbd10.icd10_code IS 'ICD-10 code for the entity.';
COMMENT ON COLUMN icd10_wbd10.wbd10_codex4_title IS 'WBD-10 title for codex4.';
COMMENT ON COLUMN icd10_wbd10.wbd10_codex2_title IS 'WBD-10 title for codex2.';
COMMENT ON COLUMN icd10_wbd10.wbd10_code IS 'WBD-10 codex or codes - the lowest level classification representing the WBD-10 codes themselves.';
COMMENT ON COLUMN icd10_wbd10.wbd10_title IS 'WBD-10 code/codex title.';
COMMENT ON COLUMN icd10_wbd10.icd10_range IS 'Range of ICD-10 codes in the WBD-10 codex4/codex2 groupings or codex codes.';
COMMENT ON COLUMN icd10_wbd10.wbd10_codex2 IS 'WBD-10 codex2 - a middle level classification that usually group several WBD-10 codes together.';
COMMENT ON COLUMN icd10_wbd10.wbd10_codex4 IS 'WBD-10 codex4 - a higher level classification of the WBD-10 codes.';
COMMENT ON COLUMN icd10_wbd10.wbd10_kind_depth IS 'WBD-10 depth for kind. For example, a codex with kind_depth=3 means means it has 2 higher levels above it. Codex4 has depth of 1 (highest) and Codex2 has depth of 2 (middle).';
COMMENT ON COLUMN icd10_wbd10.wbd10_kind IS 'WBD-10 entity kind. One of codex4, codex2, or codex. Codex4 are top level classification entities, codex2 are high level groupings, and codex are the WBD-10 codes at the lowest level.';
COMMENT ON COLUMN icd10_wbd10.wbd10_age IS 'Age group for the WBD-10 entity - adult (12-69 years old), child (1 month to 11 years old), and neo (under 1 month old).';

--- cmea10 view

DROP VIEW IF EXISTS cmea10; CREATE OR REPLACE VIEW cmea10 AS (SELECT * FROM cmea10_v1);

--- cmea10 view comment

COMMENT ON VIEW cmea10 IS 'Central Medical Evaluation Agreement for ICD-10 (CMEA-10) blocks from the Centre for Global Health Research (CGHR).

These blocks are used in the Central Medical Evaluation (CME) system to determine groups of ICD-10 codes considered to be in agreement for dual physician coding in Verbal Autopsies (VA).

See [relevant paper](https://doi.org/10.1186/1741-7015-12-21).';

--- cmea10 view column comments (n=3)

COMMENT ON COLUMN cmea10.icd10_range_short IS 'Range of ICD-10 codes in the CMEA-10 block - shortened to represent consecutive ranges with dashes for easier readability.';
COMMENT ON COLUMN cmea10.icd10_range IS 'Range of ICD-10 codes in the CMEA-10 block - each code is separated by a comma.';
COMMENT ON COLUMN cmea10.title IS 'CMEA-10 block title that represents a range of ICD-10 codes considered in agreement for assigning death codes in VAs.';

--- icd10_cmea10 view

DROP VIEW IF EXISTS icd10_cmea10; CREATE OR REPLACE VIEW icd10_cmea10 AS (SELECT * FROM icd10_cmea10_v1);

--- icd10_cmea10 view comment

COMMENT ON VIEW icd10_cmea10 IS 'Mappings to convert from ICD-10 to CMEA-10.

Join the variable `icd10_code` to your data for the converted codes in variable `cmea10_title`.';

--- icd10_cmea10 view column comments (n=3)

COMMENT ON COLUMN icd10_cmea10.icd10_code IS 'ICD-10 code for the CMEA-10 block.';
COMMENT ON COLUMN icd10_cmea10.cmea10_title IS 'CMEA-10 block that groups ICD-10 codes considered in agreement for assigning death codes in VAs.';
COMMENT ON COLUMN icd10_cmea10.icd10_range IS 'Range of ICD-10 codes in the CMEA-10 block - each code is separated by a comma.';

--- wva2016 view

DROP VIEW IF EXISTS wva2016; CREATE OR REPLACE VIEW wva2016 AS (SELECT * FROM wva2016_v1);

--- wva2016 view comment

COMMENT ON VIEW wva2016 IS 'World Health Organization Verbal Autopsy 2016 (WVA-2016) codes that generalize ICD-10 codes for mortality.

See [WVA-2016 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2016_manual_v15.pdf).';

--- wva2016 view column comments (n=10)

COMMENT ON COLUMN wva2016.group IS 'WVA-2016 group containing a range of codes.';
COMMENT ON COLUMN wva2016.icd10_code IS 'ICD-10 codes that the WVA-2016 codes can be converted to.';
COMMENT ON COLUMN wva2016.title IS 'Title for the WVA-2016 code.';
COMMENT ON COLUMN wva2016.code_orig IS 'Original WVA-2016 code with leading text VAs-.';
COMMENT ON COLUMN wva2016.code IS 'WVA-2016 code from the 2016 WHO VA instrument.';
COMMENT ON COLUMN wva2016.group_title IS 'Title for WVA-2016 group.';
COMMENT ON COLUMN wva2016.icd10_range IS 'Range of ICD-10 codes that the WVA-2016 codes group together.';
COMMENT ON COLUMN wva2016.kind_depth IS 'WVA-2016 depth for kind. For example, a category with kind_depth=2 means it is a code whose parent is a group.';
COMMENT ON COLUMN wva2016.kind IS 'WVA-2016 entity kind. One of group or code.';
COMMENT ON COLUMN wva2016.group_orig IS 'Original WVA-2016 group with leading text VAs-.';

--- icd10_wva2016 view

DROP VIEW IF EXISTS icd10_wva2016; CREATE OR REPLACE VIEW icd10_wva2016 AS (SELECT * FROM icd10_wva2016_v1);

--- icd10_wva2016 view comment

COMMENT ON VIEW icd10_wva2016 IS 'Mappings to convert from ICD-10 to WVA-2016.

Join the variable `icd10_code` to your data for the converted codes in variable `wva2016_code`.';

--- icd10_wva2016 view column comments (n=6)

COMMENT ON COLUMN icd10_wva2016.wva2016_group_title IS 'Title for WVA-2016 group.';
COMMENT ON COLUMN icd10_wva2016.wva2016_code IS 'WVA-2016 code from the 2016 WHO VA instrument.';
COMMENT ON COLUMN icd10_wva2016.wva2016_group IS 'WVA-2016 group containing a range of codes.';
COMMENT ON COLUMN icd10_wva2016.icd10_range IS 'Range of ICD-10 codes that the WVA-2016 codes group together.';
COMMENT ON COLUMN icd10_wva2016.icd10_code IS 'ICD-10 codes that the WVA-2016 codes can be converted to.';
COMMENT ON COLUMN icd10_wva2016.wva2016_title IS 'Title for the WVA-2016 code.';

--- wva2022 view

DROP VIEW IF EXISTS wva2022; CREATE OR REPLACE VIEW wva2022 AS (SELECT * FROM wva2022_v1);

--- wva2022 view comment

COMMENT ON VIEW wva2022 IS 'World Health Organization Verbal Autopsy 2022 (WVA-2022) codes that generalize ICD-10 codes for mortality.

See [WVA-2022 Manual](https://github.com/cghr-toronto/icd/blob/main/docs/wva2022_manual.pdf).';

--- wva2022 view column comments (n=3)

COMMENT ON COLUMN wva2022.title IS 'Title for the WVA-2022 code.';
COMMENT ON COLUMN wva2022.icd10_range IS 'Range of ICD-10 codes for the WVA-2022 codes.';
COMMENT ON COLUMN wva2022.code IS 'WVA-2022 code from the 2022 WHO VA instrument.';

--- icd10_wva2022 view

DROP VIEW IF EXISTS icd10_wva2022; CREATE OR REPLACE VIEW icd10_wva2022 AS (SELECT * FROM icd10_wva2022_v1);

--- icd10_wva2022 view comment

COMMENT ON VIEW icd10_wva2022 IS 'Mappings to convert from ICD-10 to WVA-2022.

Join the variable `icd10_code` to your data for the converted codes in variable `wva2022_code`.';

--- icd10_wva2022 view column comments (n=4)

COMMENT ON COLUMN icd10_wva2022.wva2022_code IS 'WVA-2022 code from the 2022 WHO VA instrument.';
COMMENT ON COLUMN icd10_wva2022.wva2022_title IS 'Title for the WVA-2022 code.';
COMMENT ON COLUMN icd10_wva2022.icd10_range IS 'Range of ICD-10 codes for the WVA-2022 codes.';
COMMENT ON COLUMN icd10_wva2022.icd10_code IS 'ICD-10 code for the WVA-2022 code.';

--- cghr10 view

DROP VIEW IF EXISTS cghr10; CREATE OR REPLACE VIEW cghr10 AS (SELECT * FROM cghr10_v1);

--- cghr10 view comment

COMMENT ON VIEW cghr10 IS 'Centre for Global Health Research for ICD-10 (CGHR-10) codes for physician coded verbal autopsies.

 See [relevant paper](https://doi.org/10.1186/s12916-019-1353-2).';

--- cghr10 view column comments (n=3)

COMMENT ON COLUMN cghr10.icd10_range IS 'ICD-10 range for the CGHR-10 code.';
COMMENT ON COLUMN cghr10.title IS 'CGHR-10 title for the code.';
COMMENT ON COLUMN cghr10.age IS 'CGHR-10 code age group. Age groups are divided into adult (12 to 69 years old), child (1 month to 11 years old), and neo (under 1 month old).';

--- icd10_cghr10 view

DROP VIEW IF EXISTS icd10_cghr10; CREATE OR REPLACE VIEW icd10_cghr10 AS (SELECT * FROM icd10_cghr10_v1);

--- icd10_cghr10 view comment

COMMENT ON VIEW icd10_cghr10 IS 'Mappings to convert from ICD-10 to CGHR-10.

Join the variable `icd10_code` to your data for the converted codes in variable `cghr10_title`.';

--- icd10_cghr10 view column comments (n=4)

COMMENT ON COLUMN icd10_cghr10.icd10_range IS 'ICD-10 range for the CGHR-10 code.';
COMMENT ON COLUMN icd10_cghr10.icd10_code IS 'ICD-10 code for the CGHR-10 code.';
COMMENT ON COLUMN icd10_cghr10.cghr10_title IS 'CGHR-10 title for the code.';
COMMENT ON COLUMN icd10_cghr10.cghr10_age IS 'CGHR-10 code age group. Age groups are divided into adult (12 to 69 years old), child (1 month to 11 years old), and neo (under 1 month old).';