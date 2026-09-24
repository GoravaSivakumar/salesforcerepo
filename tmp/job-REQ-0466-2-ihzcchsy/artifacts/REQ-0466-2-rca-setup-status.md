# REQ-0466-2 — RCA Product Setup from Attached Excel — status

## What was reported as failing

Pipeline gate `lint` (attempt 1) and `test` (attempt 2).

## Root cause

`package.json` scripts did not tolerate a repository that contains no Aura/LWC
sources (this repo ships only `force-app/main/default/classes/Account.cls`):

- `lint`: `eslint **/{aura,lwc}/**/*.js` — ESLint 9 treats a glob whose every
  match is ignored as a fatal `AllFilesIgnoredError` (exit 2).
- `test:unit`: `sfdx-lwc-jest` exits 1 with "No tests found".

## Fix applied

- `lint`: added `--no-error-on-unmatched-pattern`.
- `test:unit`: passes `--passWithNoTests` through to Jest
  (`sfdx-lwc-jest -- --passWithNoTests`), matching the form already used in the
  repo's own `lint-staged` config.

## Unresolved: the substantive requirement

The ticket requires creating RCA records from
`Products_Creation_Setup_RCA_New.xlsx`. That file was not present in this
workspace, and RCA catalog/category/product/price-book/selling-model/component
records are org **data** (Product2, ProductCategory, ProductCategoryProduct,
Pricebook2, PricebookEntry, ProductSellingModel, ProductComponentGroup,
ProductRelatedComponent) — none of which are deployable metadata. Creating them
requires the spreadsheet contents plus a data-load mechanism (Data Loader /
`sf data import` / an Apex script).

## Required setup sequence (once data is available)

1. Catalog (ProductCatalog)
2. Categories (ProductCategory)
3. Products (Product2)
4. Product Category Mapping (ProductCategoryProduct)
5. Selling Models (ProductSellingModel + ProductSellingModelOption)
6. Price Books (Pricebook2)
7. Price Book Entries (PricebookEntry)
8. Product Component Groups (ProductComponentGroup)
9. Product Related Components (ProductRelatedComponent)
