--- icd10 view

CREATE OR REPLACE VIEW icd10 AS (SELECT * FROM icd10_v1);

--- icd10 view comment

COMMENT ON VIEW icd10 IS 'International Classification of Diseases Revision 10 (ICD-10) data from the World Health Organization (WHO), processed for Centre for Global Health Research (CGHR) purposes. See https://github.com/cghr-toronto/icd for more details.';

--- icd10 view column comments (n=5)

COMMENT ON COLUMN icd10.kind IS 'ICD-10 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10.kind_depth IS 'ICD-10 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd10.chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd10.code IS 'ICD-10 code for the entity.';
COMMENT ON COLUMN icd10.title IS 'ICD-10 title of the entity.';

--- icd11 view

CREATE OR REPLACE VIEW icd11 AS (SELECT * FROM icd11_v1);

--- icd11 view comment

COMMENT ON VIEW icd11 IS 'International Classification of Diseases Revision 11 (ICD-11) data from the World Health Organization (WHO), processed for Centre for Global Health Research (CGHR) purposes. See https://github.com/cghr-toronto/icd for more details.';

--- icd11 view column comments (n=17)

COMMENT ON COLUMN icd11.kind IS 'ICD-11 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd11.kind_depth IS 'ICD-11 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd11.chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd11.code IS 'ICD-11 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd11.title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd11.block_id IS 'ICD-11 identifier for high level groupings that do not bear a code';
COMMENT ON COLUMN icd11.is_residual IS 'True if the ICD-11 entity is a residual category (i.e. other specified or unspecified categories) and False if not.';
COMMENT ON COLUMN icd11.is_leaf IS 'True if the ICD-11 entity does not have any children and False if it does.';
COMMENT ON COLUMN icd11.is_primary_tabulation IS 'True if the ICD-11 entity is part of the primary tabulation and False if not.';
COMMENT ON COLUMN icd11.group1 IS 'Grouping 1 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.group2 IS 'Grouping 2 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.group3 IS 'Grouping 3 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.group4 IS 'Grouping 4 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.group5 IS 'Grouping 5 that the ICD-11 entity is included in.';
COMMENT ON COLUMN icd11.browser_url IS 'Direct link to the ICD-11 entity in the web browser.';
COMMENT ON COLUMN icd11.foundation_url IS 'Link to unique ICD-11 entity identifier.';
COMMENT ON COLUMN icd11.linear_url IS 'Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';

--- icd10to11 view

CREATE OR REPLACE VIEW icd10to11 AS (SELECT * FROM icd10to11_v1);

--- icd10to11 view comment

COMMENT ON VIEW icd10to11 IS 'Mappings for International Classification of Diseases. Contains mappings from ICD Revision 10 (ICD-10) to ICD Revision 11 (ICD-11) from the World Health Organization (WHO), processed for Centre for Global Health Research (CGHR) purposes. See https://github.com/cghr-toronto/icd for more details.';

--- icd10to11 view column comments (n=12)

COMMENT ON COLUMN icd10to11.icd10_kind IS 'ICD-10 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10to11.icd10_kind_depth IS 'ICD-10 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd10to11.icd10_chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd10to11.icd10_code IS 'ICD-10 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd10to11.icd10_title IS 'ICD-10 title of the entity.';
COMMENT ON COLUMN icd10to11.icd11_kind IS 'ICD-11 entity kind. One of chapter, block, or category. Chapters are top level classification entities. Blocks are high level groupings that do not have a code. Categories are entities that have a code.';
COMMENT ON COLUMN icd10to11.icd11_kind_depth IS 'ICD-11 depth for kind. For example, a category with kind_depth=2 means it is category whose parent is also a category but grand parent is not.';
COMMENT ON COLUMN icd10to11.icd11_chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd10to11.icd11_code IS 'ICD-11 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd10to11.icd11_title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd10to11.icd11_foundation_url IS 'Link to unique ICD-11 entity identifier.';
COMMENT ON COLUMN icd10to11.icd11_linear_url IS 'ICD-11 Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';

--- icd11to10 view

CREATE OR REPLACE VIEW icd11to10 AS (SELECT * FROM icd11to10_v1);

--- icd11to10 view comment

COMMENT ON VIEW icd11to10 IS 'Mappings for International Classification of Diseases. Contains mappings from ICD Revision 11 (ICD-11) to ICD Revision 10 (ICD-10) from the World Health Organization (WHO), processed for Centre for Global Health Research (CGHR) purposes. ICD-11 codes may map to multiple ICD-10 codes. See https://github.com/cghr-toronto/icd for more details.';

--- icd11to10 view column comments (n=7)

COMMENT ON COLUMN icd11to10.icd11_chapter IS 'ICD-11 chapter for the entity.';
COMMENT ON COLUMN icd11to10.icd11_code IS 'ICD-11 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd11to10.icd11_title IS 'ICD-11 title of the entity.';
COMMENT ON COLUMN icd11to10.icd10_chapter IS 'ICD-10 chapter for the entity.';
COMMENT ON COLUMN icd11to10.icd10_code IS 'ICD-10 code for the entity. Note that the groupings do not have a code.';
COMMENT ON COLUMN icd11to10.icd10_title IS 'ICD-10 title of the entity.';
COMMENT ON COLUMN icd11to10.icd11_linear_url IS 'ICD-11 Link to unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it.';

--- wbd10 view

CREATE OR REPLACE VIEW wbd10 AS (SELECT * FROM wbd10_v1);

--- wbd10 view comment

COMMENT ON VIEW wbd10 IS 'Wilson''s Burden of Disease (WBD) data from the Centre for Global Health Research (CGHR). Groups International Classification of Diseases (ICD) Revision 10 codes from the World Health Organization (WHO) into broader WBD codes for three age groups (adult, child, and neonate). See https://github.com/cghr-toronto/icd for more details.';

--- wbd10 view column comments (n=10)

COMMENT ON COLUMN wbd10.age IS 'Age group for the WBD entity - adult (12-69 years old), child (1 month to 11 years old), and neo (under 1 month old).';
COMMENT ON COLUMN wbd10.kind IS 'WBD entity kind. One of codex4, codex2, or codex. Codex4 are top level classification entities, codex2 are high level groupings, and codex are the WBD codes at the lowest level.';
COMMENT ON COLUMN wbd10.kind_depth IS 'WBD depth for kind. For example, a codex with kind_depth=3 means means it has 2 higher levels above it. Codex4 has depth of 1 (highest) and Codex2 has depth of 2 (middle).';
COMMENT ON COLUMN wbd10.codex4 IS 'WBD codex4 - a higher level classification of the WBD codes.';
COMMENT ON COLUMN wbd10.codex2 IS 'WBD codex2 - a middle level classification that usually group several WBD codes together.';
COMMENT ON COLUMN wbd10.code IS 'WBD codex or codes - the lowest level classification representing the WBD codes themselves.';
COMMENT ON COLUMN wbd10.codex4_title IS 'WBD title for codex4.';
COMMENT ON COLUMN wbd10.codex2_title IS 'WBD title for codex2.';
COMMENT ON COLUMN wbd10.title IS 'WBD code/codex title.';
COMMENT ON COLUMN wbd10.icd10_range IS 'Range of ICD-10 codes in the WBD codex4/codex2 groupings or codex codes.';

--- icd10towbd10 view

CREATE OR REPLACE VIEW icd10towbd10 AS (SELECT * FROM icd10towbd10_v1);

--- icd10towbd10 view comment

COMMENT ON VIEW icd10towbd10 IS 'Mappings for each individual International Classification of Diseases (ICD) Revision 10 code from the World Health Organization (WHO) to Wilson''s Burden of Disease (WBD) codes from the Centre for Global Health Research (CGHR). See https://github.com/cghr-toronto/icd for more details.';

--- icd10towbd10 view column comments (n=11)

COMMENT ON COLUMN icd10towbd10.wbd10_age IS 'Age group for the WBD entity - adult (12-69 years old), child (1 month to 11 years old), and neo (under 1 month old).';
COMMENT ON COLUMN icd10towbd10.wbd10_kind IS 'WBD entity kind. One of codex4, codex2, or codex. Codex4 are top level classification entities, codex2 are high level groupings, and codex are the WBD codes at the lowest level.';
COMMENT ON COLUMN icd10towbd10.wbd10_kind_depth IS 'WBD depth for kind. For example, a codex with kind_depth=3 means means it has 2 higher levels above it. Codex4 has depth of 1 (highest) and Codex2 has depth of 2 (middle).';
COMMENT ON COLUMN icd10towbd10.wbd10_codex4 IS 'WBD codex4 - a higher level classification of the WBD codes.';
COMMENT ON COLUMN icd10towbd10.wbd10_codex2 IS 'WBD codex2 - a middle level classification that usually group several WBD codes together.';
COMMENT ON COLUMN icd10towbd10.wbd10_code IS 'WBD codex or codes - the lowest level classification representing the WBD codes themselves.';
COMMENT ON COLUMN icd10towbd10.wbd10_codex4_title IS 'WBD title for codex4.';
COMMENT ON COLUMN icd10towbd10.wbd10_codex2_title IS 'WBD title for codex2.';
COMMENT ON COLUMN icd10towbd10.wbd10_title IS 'WBD code/codex title.';
COMMENT ON COLUMN icd10towbd10.icd10_range IS 'Range of ICD-10 codes in the WBD codex4/codex2 groupings or codex codes.';
COMMENT ON COLUMN icd10towbd10.icd10_code IS 'ICD-10 code for the entity.';

--- cmea10 view

CREATE OR REPLACE VIEW cmea10 AS (SELECT * FROM cmea10_v1);

--- cmea10 view comment

COMMENT ON VIEW cmea10 IS 'Central Medical Evaluation Agreement (CMEA) blocks from the Centre for Global Health Research (CGHR) for International Classification of Diseases (ICD) Revision 10 codes from the World Health Organization (WHO). These blocks are used in the Central Medical Evaluation (CME) system to determine groups of ICD-10 codes considered to be in agreement. ICD-10 codes are assigned by physicians to code death records in Verbal Autopsies (VA). See https://github.com/cghr-toronto/icd for more details.';

--- cmea10 view column comments (n=3)

COMMENT ON COLUMN cmea10.title IS 'CMEA block title that represents a range of ICD-10 codes considered in agreement for assigning death codes in VAs.';
COMMENT ON COLUMN cmea10.icd10_range IS 'Range of ICD-10 codes in the CMEA block - each code is separated by a comma.';
COMMENT ON COLUMN cmea10.icd10_range_short IS 'Range of ICD-10 codes in the CMEA block - shortened to represent consecutive ranges with dashes for easier readability.';

--- icd10tocmea10 view

CREATE OR REPLACE VIEW icd10tocmea10 AS (SELECT * FROM icd10tocmea10_v1);

--- icd10tocmea10 view comment

COMMENT ON VIEW icd10tocmea10 IS 'Mappings for each individual International Classification of Diseases (ICD) Revision 10 code from the World Health Organization (WHO) to Central Medical Evaluation Agreement (CMEA) blocks from the Centre for Global Health Research (CGHR). These blocks are used in the Central Medical Evaluation (CME) system to determine groups of ICD-10 codes considered to be in agreement. ICD-10 codes are assigned by physicians to code death records in Verbal Autopsies (VA). See https://github.com/cghr-toronto/icd for more details.';

--- icd10tocmea10 view column comments (n=3)

COMMENT ON COLUMN icd10tocmea10.cmea_title IS 'CMEA block that groups ICD-10 codes considered in agreement for assigning death codes in VAs.';
COMMENT ON COLUMN icd10tocmea10.icd10_range IS 'Range of ICD-10 codes in the CMEA block - each code is separated by a comma.';
COMMENT ON COLUMN icd10tocmea10.icd10_code IS 'ICD-10 code for the CMEA block.';

--- icd10towva2016 view

CREATE OR REPLACE VIEW icd10towva2016 AS (SELECT * FROM icd10towva2016_v1);

--- icd10towva2016 view comment

COMMENT ON VIEW icd10towva2016 IS 'Mappings for each individual International Classification of Diseases (ICD) Revision 10 code from the World Health Organization (WHO) to WHO Verbal Autopsy (VA) 2016 codes. See https://github.com/cghr-toronto/icd for more details.';

--- icd10towva2016 view column comments (n=4)

COMMENT ON COLUMN icd10towva2016.wva2016_code IS 'WHO VA code from the 2016 WHO VA instrument.';
COMMENT ON COLUMN icd10towva2016.wva2016_title IS 'Title for the WHO VA 2016 code.';
COMMENT ON COLUMN icd10towva2016.icd10_range IS 'Range of ICD-10 codes for the WHO VA 2016 codes.';
COMMENT ON COLUMN icd10towva2016.icd10_code IS 'ICD-10 code for the WHO VA 2016 code.';

--- wva2016 view

CREATE OR REPLACE VIEW wva2016 AS (SELECT * FROM wva2016_v1);

--- wva2016 view comment

COMMENT ON VIEW wva2016 IS 'World Health Organization (WHO) Verbal Autopsy (VA) 2016 codes for International Classification of Diseases (ICD) Revision 10 codes. See https://github.com/cghr-toronto/icd for more details.';

--- wva2016 view column comments (n=3)

COMMENT ON COLUMN wva2016.wva2016_code IS 'WHO VA code from the 2016 WHO VA instrument.';
COMMENT ON COLUMN wva2016.wva2016_title IS 'Title for the WHO VA 2016 code.';
COMMENT ON COLUMN wva2016.icd10_range IS 'Range of ICD-10 codes for the WHO VA 2016 codes.';

--- icd10towva2022 view

CREATE OR REPLACE VIEW icd10towva2022 AS (SELECT * FROM icd10towva2022_v1);

--- icd10towva2022 view comment

COMMENT ON VIEW icd10towva2022 IS 'Mappings for each individual International Classification of Diseases (ICD) Revision 10 code from the World Health Organization (WHO) to WHO Verbal Autopsy (VA) 2022 codes. See https://github.com/cghr-toronto/icd for more details.';

--- icd10towva2022 view column comments (n=4)

COMMENT ON COLUMN icd10towva2022.wva2022_code IS 'WHO VA code from the 2022 WHO VA instrument.';
COMMENT ON COLUMN icd10towva2022.wva2022_title IS 'Title for the WHO VA 2022 code.';
COMMENT ON COLUMN icd10towva2022.icd10_range IS 'Range of ICD-10 codes for the WHO VA 2022 codes.';
COMMENT ON COLUMN icd10towva2022.icd10_code IS 'ICD-10 code for the WHO VA 2022 code.';

--- wva2022 view

CREATE OR REPLACE VIEW wva2022 AS (SELECT * FROM wva2022_v1);

--- wva2022 view comment

COMMENT ON VIEW wva2022 IS 'World Health Organization (WHO) Verbal Autopsy (VA) 2022 codes for International Classification of Diseases (ICD) Revision 10 codes. See https://github.com/cghr-toronto/icd for more details.';

--- wva2022 view column comments (n=3)

COMMENT ON COLUMN wva2022.wva2022_code IS 'WHO VA code from the 2022 WHO VA instrument.';
COMMENT ON COLUMN wva2022.wva2022_title IS 'Title for the WHO VA 2022 code.';
COMMENT ON COLUMN wva2022.icd10_range IS 'Range of ICD-10 codes for the WHO VA 2022 codes.';