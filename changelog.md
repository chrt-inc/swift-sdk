## 1.359.1 - 2026-01-19
* chore: update Fern CLI version
* Update the Fern CLI version from 3.47.0 to 3.47.1 in the metadata configuration. This is a routine dependency update that ensures the SDK is built with the latest stable version of the Fern CLI toolchain.
* Key changes:
* Update cliVersion in .fern/metadata.json from 3.47.0 to 3.47.1
* Maintain compatibility with existing generator configuration
* No functional changes to the generated SDK code
* 🌿 Generated with Fern

## 1.357.0 - 2026-01-19
* feat: add default rate sheet support for off-chart shippers
* This change introduces default rate sheet functionality for off-chart shippers, allowing separate defaults for routed and on-demand service types. The implementation includes new optional properties in the shipper organization models and a new API endpoint for managing these defaults.
* Key changes:
* Added defaultRateSheetRouted and defaultRateSheetOnDemand optional properties to OffChrtShipperOrg models
* Introduced updateDefaultForOffChrtShipperV1 API endpoint for setting/clearing default rate sheets
* Added proper JSON encoding/decoding with snake_case field mapping
* Included comprehensive test coverage for new functionality
* Updated API documentation with usage examples
* 🌿 Generated with Fern

## 1.355.0 - 2026-01-19
* feat: add quote calculation endpoint for line item groups
* Add new quote endpoint that calculates line item group previews for task groups and payment vectors without persisting data. This enables cost estimation before committing to changes.
* Key changes:
* Add quoteV1 method to LineItemGroupsClient for calculating quotes
* Create new Quote schema with task group ID, rate sheet ID, and line items
* Update assignRateSheetV1 documentation to clarify hot-swap capability
* Add comprehensive test coverage for the new quote endpoint
* 🌿 Generated with Fern

## 1.353.0 - 2026-01-18
* feat: add organization private data endpoint and task group rate sheet assignment
* Add new capabilities for retrieving organization private data and managing task group rate sheets.
* Key changes:
* Add getOrgPrivateDataV1 method to retrieve private organization data with operator authorization
* Add assignRateSheetV1 method to assign rate sheets to task groups with automatic LineItemGroup sync
* Add OrgPrivateData1 schema with comprehensive organization data including Stripe and rate sheet configurations
* Include corresponding unit tests for both new endpoints
* 🌿 Generated with Fern

## 2.0.0 - 2026-01-17
* refactor: remove void status and related functionality from billing API
* This change removes the "void" status from statements and line item groups, streamlining the billing state management to focus on the core statuses: staged, open, paid, and uncollectible.
* Key changes:
* Remove void status from StatementStatusEnum1 and LineItemGroupStatusEnum1 enums
* Remove voided_at_timestamp and marked_voided_by_user_id fields from Statement1 schema
* Update listV1 method to remove filterVoidedAtTimestampGte/Lte parameters
* Rename cancelInvoiceV1 to voidInvoiceV1 with updated behavior and documentation
* Change syncInvoiceV1 return type from SyncInvoiceRes to Statement1
* Delete SyncInvoiceRes schema type
* Update tracking sharing settings method order and documentation
* Update method documentation to reflect Stripe Connect integration and revised authorization rules
* 🌿 Generated with Fern

## 1.344.1 - 2026-01-16
* chore: update Fern CLI version to 3.47.0
* This commit updates the Fern CLI version in the metadata configuration from 3.46.0 to 3.47.0. This is a routine maintenance update to keep the toolchain current with the latest Fern CLI release.
* Key changes:
* Update cliVersion from 3.46.0 to 3.47.0 in .fern/metadata.json
* Maintain existing generator configuration and versions
* No functional changes to the generated SDK
* 🌿 Generated with Fern

## 1.341.19 - 2026-01-16
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.18 - 2026-01-16
* chore: update Fern CLI version to 3.45.0
* Update the Fern CLI version from 3.44.0 to 3.45.0 in the metadata configuration. This version bump ensures the project uses the latest Fern CLI features and improvements.
* Key changes:
* Update cliVersion from 3.44.0 to 3.45.0 in .fern/metadata.json
* 🌿 Generated with Fern

## 1.341.17 - 2026-01-15
* chore: update Fern CLI version to 3.44.0
* Update the Fern CLI version from 3.43.0 to 3.44.0 in the metadata configuration. This version update likely includes improvements, bug fixes, or new features in the Fern CLI toolchain used for SDK generation.
* Key changes:
* Update cliVersion from 3.43.0 to 3.44.0 in .fern/metadata.json
* Maintain compatibility with existing generator configuration
* No changes to generator name or version
* 🌿 Generated with Fern

## 1.341.16 - 2026-01-15
* chore: update CLI version to 3.43.0
* Update the Fern CLI version from 3.42.4 to 3.43.0 in the metadata configuration. This change maintains compatibility with the latest CLI features and improvements while keeping the generator version unchanged.
* Key changes:
* Bump CLI version from 3.42.4 to 3.43.0 in metadata.json
* Maintain generator name and version compatibility
* Preserve existing generator configuration settings
* 🌿 Generated with Fern

## 1.341.15 - 2026-01-15
* chore: update Fern CLI version to 3.42.4
* Update the Fern CLI version from 3.42.3 to 3.42.4 in the project metadata configuration. This is a routine maintenance update to keep the tooling current with the latest Fern CLI release.
* Key changes:
* Update cliVersion from 3.42.3 to 3.42.4 in .fern/metadata.json
* Maintain consistency with latest Fern CLI tooling
* No functional changes to generated SDK code
* 🌿 Generated with Fern

## 1.341.14 - 2026-01-15
* chore: update CLI version to 3.42.3
* Upgraded the Fern CLI version from 3.42.2 to 3.42.3 in the metadata configuration. This update likely includes bug fixes and improvements to the code generation process.
* Key changes:
* Update cliVersion from 3.42.2 to 3.42.3 in metadata.json
* No breaking changes to public API
* Maintains compatibility with existing generator configurations
* 🌿 Generated with Fern

## 1.341.13 - 2026-01-15
* chore: bump CLI version to 3.42.2
* Updates the Fern CLI version from 3.42.0 to 3.42.2 in the metadata configuration. This is a routine maintenance update to keep the project aligned with the latest CLI release.
* Key changes:
* Update cliVersion from 3.42.0 to 3.42.2 in .fern/metadata.json
* 🌿 Generated with Fern

## 1.341.12 - 2026-01-14
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.11 - 2026-01-14
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.10 - 2026-01-14
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.9 - 2026-01-13
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.8 - 2026-01-13
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.7 - 2026-01-13
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.6 - 2026-01-13
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.5 - 2026-01-13
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.4 - 2026-01-13
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.3 - 2026-01-12
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.2 - 2026-01-12
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.341.1 - 2026-01-09
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

