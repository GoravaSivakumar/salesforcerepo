# REQ-C0042-1 — Lead Setup Confirmation Report

## Environment limitation (read first)
This run had **no shell/command execution** and **no authenticated org**. `sf` was
not invocable, so:
- The ticket's mandatory **"check first"** step could not be performed.
- The required gate `sf project deploy start --dry-run --test-level NoTestRun`
  could **not** be run.

Everything below is therefore the **intended end state authored as metadata**, not
a verified result from the org.

## Confirm back (requested by the ticket)

| # | Item | Status |
|---|------|--------|
| 1 | Status values set (Open, Contacted, Qualified, Unqualified, Converted) | Authored in `standardValueSets/LeadStatus.standardValueSet-meta.xml`. The 4 stock org values (Open - Not Contacted, Working - Contacted, Closed - Converted, Closed - Not Converted) are **retained** so nothing in use is removed. **Unverified.** |
| 2 | Default confirmed (Open) | `<default>true</default>` set on `Open`, `false` on every other value. **Unverified.** |
| 3 | Converted status assigned | `<converted>true</converted>` set on `Converted` only; `false` on all others (exactly one converted status). **Unverified.** |
| 4 | Lead Process created | `objects/Lead/businessProcesses/Standard_Lead_Process.businessProcess-meta.xml`, values in order Open → Contacted → Qualified → Unqualified → Converted. **Unverified.** |
| 5 | Record Type used/created | Created **Standard Lead Process** (`Standard_Lead_Process`), linked to the process via `<businessProcess>Standard_Lead_Process</businessProcess>`. This is the ticket's fallback branch ("if none exists beyond Master"). Whether an explicit record type already existed could not be checked. **Unverified.** |
| 6 | Path built | `pathAssistants/Lead_Path.pathAssistant-meta.xml` — Lead / `Status`, stages Open, Contacted, Qualified, Unqualified, Converted. **Unverified.** |
| 7 | Convert button status | **NOT CONFIRMED.** Requires reading the Lead page layout in the org. The layout was deliberately not rewritten (see below). |

## Deliberately not changed
- **Lead page layout.** The Convert button is a standard button that is present
  unless it is listed in `<excludeButtons>`. Writing a full layout file blind would
  overwrite the org's existing Lead layout, so this was left untouched. The button
  must be confirmed in Setup → Object Manager → Lead → Page Layouts.
- **Existing Master record type / existing paths / existing processes.** No
  duplicates were intentionally created beyond the one fallback record type the
  ticket names, but pre-existing ones could not be detected.
