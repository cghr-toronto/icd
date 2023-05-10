Wilson’s Burden of Disease (WBD) Codes
================

Expands Wilson’s Burden of Disease (WBD) classification groups from the
raw Excel file using the
[cghrCodes](https://github.com/cghr-toronto/cghrCodes) package at CGHR.

## Libraries

``` r
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
    ## ✔ ggplot2 3.3.6      ✔ purrr   0.3.4 
    ## ✔ tibble  3.1.8      ✔ dplyr   1.0.10
    ## ✔ tidyr   1.2.1      ✔ stringr 1.5.0 
    ## ✔ readr   2.1.2      ✔ forcats 0.5.2 
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(readxl)
library(cghrCodes)
```

## Read Data

Read data from `../data` folder:

- `Version 10 - Final CGHR-GBD list 18 April 2013.xls`: original WBD
  file mappings provided by Wilson Suraweera
- `Version 10 - Final CGHR-GBD list 18 April 2013 RW.xls` manually
  cleaned WBD file by Richard Wen to be in a tabular structure

``` r
raw_file <- "../data/Version 10 - Final CGHR-GBD list 18 April 2013_Updated 12Jan2023 RW.xls"

# Read sheets 4-7 for ddict, adult, neo, child sheets in order
raw_wbd <- list(
  ddict=read_excel(raw_file, sheet=4),
  adult=read_excel(raw_file, sheet=5),
  neo=read_excel(raw_file, sheet=6),
  child=read_excel(raw_file, sheet=7)
)
```

### Data Dictionary Preview

This sheet contains the column descriptions for each of the adult,
neonate, and child sheets that contain the WBD codes.

``` r
raw_wbd[["ddict"]]
```

    ## # A tibble: 10 × 2
    ##    Column       Description                                                     
    ##    <chr>        <chr>                                                           
    ##  1 Age_Group    Age group for the WBD entity.                                   
    ##  2 Kind         WBD entity kind. One of codex4, codex2, or codex. Codex4 are to…
    ##  3 Kind_Depth   WBD depth for kind. For example, a codex with kind_depth=3 mean…
    ##  4 Codex4       WBD codex4 - a higher level classification of the WBD codes.    
    ##  5 Codex2       WBD codex2 - a middle level classification that usually group s…
    ##  6 Codex        WBD codex or codes - the lowest level classification representi…
    ##  7 Codex4_Title WBD title for codex4.                                           
    ##  8 Codex2_Title WBD title for codex2.                                           
    ##  9 Codex_Title  WBD code/codex title.                                           
    ## 10 ICD10_Range  Range of ICD-10 codes in the WBD codex4/codex2 groupings or cod…

### Adult WBD Codes Preview

This sheet contains the adult WBD codes.

``` r
raw_wbd[["adult"]]
```

    ## # A tibble: 128 × 10
    ##    Age_Group Kind   Kind_D…¹ Codex4 Codex2 Codex Codex…² Codex…³ Codex…⁴ ICD10…⁵
    ##    <chr>     <chr>     <dbl>  <dbl> <chr>  <chr> <chr>   <chr>   <chr>   <chr>  
    ##  1 adult     codex4        1      1 <NA>   <NA>  Commun… <NA>    <NA>    A00-A9…
    ##  2 adult     codex2        2      1 1A     <NA>  Commun… Tuberc… <NA>    A15-A1…
    ##  3 adult     codex         3      1 1A     1A01  Commun… Tuberc… Tuberc… A15-A1…
    ##  4 adult     codex2        2      1 1B     <NA>  Commun… HIV/AI… <NA>    B20-B2…
    ##  5 adult     codex         3      1 1B     1B01  Commun… HIV/AI… HIV/AI… B20-B2…
    ##  6 adult     codex2        2      1 1C     <NA>  Commun… Sexual… <NA>    A51-A6…
    ##  7 adult     codex         3      1 1C     1C01  Commun… Sexual… Syphil… A51-A53
    ##  8 adult     codex         3      1 1C     1C02  Commun… Sexual… Other … A54-A6…
    ##  9 adult     codex2        2      1 1D     <NA>  Commun… Diarrh… <NA>    A00-A09
    ## 10 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ## # … with 118 more rows, and abbreviated variable names ¹​Kind_Depth,
    ## #   ²​Codex4_Title, ³​Codex2_Title, ⁴​Codex_Title, ⁵​ICD10_Range

### Child WBD Codes Preview

This sheet contains the child WBD codes.

``` r
raw_wbd[["child"]]
```

    ## # A tibble: 30 × 10
    ##    Age_Group Kind   Kind_D…¹ Codex4 Codex2 Codex Codex…² Codex…³ Codex…⁴ ICD10…⁵
    ##    <chr>     <chr>     <dbl>  <dbl> <chr>  <chr> <chr>   <chr>   <chr>   <chr>  
    ##  1 child     codex4        1      1 <NA>   <NA>  Commun… <NA>    <NA>    A37,H6…
    ##  2 child     codex2        2      1 1A     <NA>  Commun… Early … <NA>    A37,H6…
    ##  3 child     codex         3      1 1A     1A01  Commun… Early … Pneumo… A37,H6…
    ##  4 child     codex         3      1 1A     1A02  Commun… Early … Acute … A20-A2…
    ##  5 child     codex         3      1 1A     1A03  Commun… Early … Mening… A39,A8…
    ##  6 child     codex2        2      1 1B     <NA>  Commun… Other … <NA>    A00-A0…
    ##  7 child     codex         3      1 1B     1B01  Commun… Other … Diarrh… A00-A09
    ##  8 child     codex         3      1 1B     1B02  Commun… Other … Tuberc… A15-A1…
    ##  9 child     codex         3      1 1B     1B03  Commun… Other … Tetanus A33-A35
    ## 10 child     codex         3      1 1B     1B04  Commun… Other … Poliom… A80,B91
    ## # … with 20 more rows, and abbreviated variable names ¹​Kind_Depth,
    ## #   ²​Codex4_Title, ³​Codex2_Title, ⁴​Codex_Title, ⁵​ICD10_Range

### Neonate WBD Codes Preview

This sheet contains the neonate WBD codes.

``` r
raw_wbd[["neo"]]
```

    ## # A tibble: 28 × 10
    ##    Age_Group Kind   Kind_D…¹ Codex4 Codex2 Codex Codex…² Codex…³ Codex…⁴ ICD10…⁵
    ##    <chr>     <chr>     <dbl>  <dbl> <chr>  <chr> <chr>   <chr>   <chr>   <chr>  
    ##  1 neo       codex4        1      1 <NA>   <NA>  Commun… <NA>    <NA>    A37,H6…
    ##  2 neo       codex2        2      1 1A     <NA>  Commun… Neonat… <NA>    A37,H6…
    ##  3 neo       codex         3      1 1A     1A01  Commun… Neonat… Neonat… A37,H6…
    ##  4 neo       codex         3      1 1A     1A02  Commun… Neonat… Sepsis  A20-A2…
    ##  5 neo       codex         3      1 1A     1A03  Commun… Neonat… Mening… A39,A8…
    ##  6 neo       codex2        2      1 1B     <NA>  Commun… Other … <NA>    A00-A0…
    ##  7 neo       codex         3      1 1B     1B01  Commun… Other … Diarrh… A00-A09
    ##  8 neo       codex         3      1 1B     1B02  Commun… Other … Tetanus A33-A35
    ##  9 neo       codex         3      1 1B     1B03  Commun… Other … Poliom… A80,B91
    ## 10 neo       codex         3      1 1B     1B04  Commun… Other … Measles B01,B05
    ## # … with 18 more rows, and abbreviated variable names ¹​Kind_Depth,
    ## #   ²​Codex4_Title, ³​Codex2_Title, ⁴​Codex_Title, ⁵​ICD10_Range

## Combine WBD Codes

Combine WBD code sheets data for all age groups into a common dataframe
by lower casing all column names to match.

``` r
wbd <- list()

# Lower case col names
wbd[["adult"]] <- raw_wbd[["adult"]] %>% rename_all(tolower)
wbd[["child"]] <- raw_wbd[["child"]] %>% rename_all(tolower)
wbd[["neo"]] <- raw_wbd[["neo"]] %>% rename_all(tolower)

# Combine into common dataframe
wbd <- bind_rows(wbd)
wbd
```

    ## # A tibble: 186 × 10
    ##    age_group kind   kind_d…¹ codex4 codex2 codex codex…² codex…³ codex…⁴ icd10…⁵
    ##    <chr>     <chr>     <dbl>  <dbl> <chr>  <chr> <chr>   <chr>   <chr>   <chr>  
    ##  1 adult     codex4        1      1 <NA>   <NA>  Commun… <NA>    <NA>    A00-A9…
    ##  2 adult     codex2        2      1 1A     <NA>  Commun… Tuberc… <NA>    A15-A1…
    ##  3 adult     codex         3      1 1A     1A01  Commun… Tuberc… Tuberc… A15-A1…
    ##  4 adult     codex2        2      1 1B     <NA>  Commun… HIV/AI… <NA>    B20-B2…
    ##  5 adult     codex         3      1 1B     1B01  Commun… HIV/AI… HIV/AI… B20-B2…
    ##  6 adult     codex2        2      1 1C     <NA>  Commun… Sexual… <NA>    A51-A6…
    ##  7 adult     codex         3      1 1C     1C01  Commun… Sexual… Syphil… A51-A53
    ##  8 adult     codex         3      1 1C     1C02  Commun… Sexual… Other … A54-A6…
    ##  9 adult     codex2        2      1 1D     <NA>  Commun… Diarrh… <NA>    A00-A09
    ## 10 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ## # … with 176 more rows, and abbreviated variable names ¹​kind_depth,
    ## #   ²​codex4_title, ³​codex2_title, ⁴​codex_title, ⁵​icd10_range

## Expand ICD-10 Ranges

Expands the ICD-10 codes from the `icd10_range` column to create an
ICD-10 code for each WBD code.

``` r
# Filter for codex only
icd10towbda <- raw_wbd[["adult"]] %>% rename_all(tolower) %>% filter(kind == "codex")
icd10towbdc <- raw_wbd[["child"]] %>% rename_all(tolower) %>% filter(kind == "codex")
icd10towbdn <- raw_wbd[["neo"]] %>% rename_all(tolower) %>% filter(kind == "codex")

# Expand ICD 10 ranges
icd10towbda <- expandICD10Data(icd10towbda, icd10Column="icd10_range", expandColumn="icd10")
icd10towbdc <- expandICD10Data(icd10towbdc, icd10Column="icd10_range", expandColumn="icd10")
icd10towbdn <- expandICD10Data(icd10towbdn, icd10Column="icd10_range", expandColumn="icd10")

# Combine dataframes
icd10towbd <- bind_rows(icd10towbda, icd10towbdc, icd10towbdn)
as_tibble(icd10towbd)
```

    ## # A tibble: 6,502 × 11
    ##    age_group kind  kind_de…¹ codex4 codex2 codex codex…² codex…³ codex…⁴ icd10…⁵
    ##    <chr>     <chr>     <dbl>  <dbl> <chr>  <chr> <chr>   <chr>   <chr>   <chr>  
    ##  1 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ##  2 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ##  3 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ##  4 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ##  5 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ##  6 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ##  7 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ##  8 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ##  9 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ## 10 adult     codex         3      1 1D     1D01  Commun… Diarrh… Diarrh… A00-A09
    ## # … with 6,492 more rows, 1 more variable: icd10 <chr>, and abbreviated
    ## #   variable names ¹​kind_depth, ²​codex4_title, ³​codex2_title, ⁴​codex_title,
    ## #   ⁵​icd10_range

## Data Dictionary

Preprocesses the data dictionary by lower casing the column names and
values.

``` r
ddict <- raw_wbd[["ddict"]] %>%
  rename_all(tolower) %>%
  mutate(column=tolower(column)) %>%
  add_row(column="icd10", description="ICD-10 code for the entity.")
ddict
```

    ## # A tibble: 11 × 2
    ##    column       description                                                     
    ##    <chr>        <chr>                                                           
    ##  1 age_group    Age group for the WBD entity.                                   
    ##  2 kind         WBD entity kind. One of codex4, codex2, or codex. Codex4 are to…
    ##  3 kind_depth   WBD depth for kind. For example, a codex with kind_depth=3 mean…
    ##  4 codex4       WBD codex4 - a higher level classification of the WBD codes.    
    ##  5 codex2       WBD codex2 - a middle level classification that usually group s…
    ##  6 codex        WBD codex or codes - the lowest level classification representi…
    ##  7 codex4_title WBD title for codex4.                                           
    ##  8 codex2_title WBD title for codex2.                                           
    ##  9 codex_title  WBD code/codex title.                                           
    ## 10 icd10_range  Range of ICD-10 codes in the WBD codex4/codex2 groupings or cod…
    ## 11 icd10        ICD-10 code for the entity.

## Save Data

Writes the original WBD data, expanded WBD data, and data dictionary to
the `../data` folder.

``` r
write_csv(ddict, "../data/wbd10_raw_ddict.csv", na="")
write_csv(wbd, "../data/wbd10_raw.csv", na="")
write_csv(icd10towbd, "../data/icd10towbd10_raw.csv", na="")
```