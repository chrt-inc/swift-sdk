## 1.612.1 - 2026-04-20
* chore: update wire tests with new optional filter parameters
* Add new optional filter parameters to wire test fixtures across
* multiple client test files. These test-only changes reflect the
* addition of filterStatus and filterRole parameters to several
* list endpoints.
* Key changes:
* Add `filterStatus: [.staged]` to `billing.lineItemGroups.listForCourierOrgV1` wire test
* Add `filterStatus: [.staged]` to `billing.statements` list wire tests
* Add `filterRole: [.owner]` to `orgs.listMembersV1` and `shipping.drivers.listOrgMembersAndDriversV1` wire tests
* Add `filterStatus: [.draft]` to `shipping.orders.expanded` and `shipping.taskGroups.expanded` list wire tests
* 🌿 Generated with Fern

## 1.609.0 - 2026-04-14
* [ADDED] `billing.statements.listV1` and `expandedListV1` now accept an optional `filterOrderShortId: String?` parameter for filtering statements by order short ID. The existing `filterOrderId` parameter is deprecated — prefer `filterOrderShortId` going forward.
* [ADDED] `shipping.orderDrafts.expanded.listV1`, `shipping.orders.expanded.listForForwarderOperatorsV1`, `shipping.taskGroups.expanded.listForCourierOperatorsV1`, and `shipping.taskGroups.expanded.listForCourierDriverV1` now accept an optional `filterOffChrtShipperOrgId: String?` parameter for filtering by off-charter shipper org ID.

## 2.0.0 - 2026-04-11
**Breaking change to task group typeahead response type**
* `TaskGroupsExpandedClient.typeaheadV1` now returns `[TaskGroupTypeaheadResult]` instead of `[String]`. Each `TaskGroupTypeaheadResult` contains a `type` field (`TaskGroupTypeaheadFieldEnum`: `.orderShortId` or `.orderOffChrtReferenceId`) and a `values` array of matching strings. Update all call sites to use the new structured type.
**New capabilities**
* `shipping.orderDrafts.expanded.listV1` now accepts optional `filterCourierOrgId`, `filterForwarderOrgId`, and `filterShipperOrgId` parameters.
* `shipping.orders.expanded.listForForwarderOperatorsV1` now accepts optional `filterCourierOrgId` and `filterShipperOrgId` parameters.
* `shipping.orders.expanded.listForShipperOperatorsV1` now accepts optional `filterCourierOrgId` and `filterForwarderOrgId` parameters.
* `shipping.taskGroups.expanded.listForCourierOperatorsV1` now accepts optional `filterDriverId`, `filterForwarderOrgId`, and `filterShipperOrgId` parameters.
* `shipping.taskGroups.expanded.listForCourierDriverV1` now accepts optional `filterForwarderOrgId` and `filterShipperOrgId` parameters.
* `Order1` now exposes an optional `courierOrgIds: [String]?` field.
* `TaskGroup1` now exposes optional `forwarderOrgId`, `shipperOrgId`, and `offChrtShipperOrgId` fields.

## 1.602.0 - 2026-04-11
* `TaskGroupExpanded` now exposes four new optional organization ID fields: `courierOrgId`, `forwarderOrgId`, `shipperOrgId`, and `offChrtShipperOrgId`. These complement the existing company name and handle fields, giving callers direct access to the raw org ID strings (e.g. `"org_…"`) for each party on a task group.

## 1.596.0 - 2026-04-08
**Tive tracking integration support**
* A new `trackingIntegrations` property is now available on `ChrtClient`, exposing a `TiveClient` with three sub-clients: `devices`, `shipments`, and `timeseries`.
* `trackingIntegrations.tive.devices` supports listing and retrieving Tive IoT tracker devices with filtering and sorting.
* `trackingIntegrations.tive.shipments` supports listing and retrieving Tive shipments with filtering and sorting.
* `trackingIntegrations.tive.timeseries` supports fetching the last-seen data point, querying raw sensor data over a time range, and syncing new data points from the Tive API.

## 2.0.0 - 2026-04-07
**Breaking change to order typeahead response type**
* `OrdersExpandedClient.typeaheadV1` now returns `[OrderTypeaheadResult]` instead of `[String]`. Each `OrderTypeaheadResult` contains a `type` field (`OrderTypeaheadFieldEnum`: `.shortId` or `.offChrtReferenceId`) and a `values` array of matching strings. Update all call sites to use the new structured type.
**New capabilities**
* A new `typeaheadV1(query:limit:)` method is now available on `shipping.orderDrafts.expanded`, enabling typeahead search over draft orders by `short_id` and `off_chrt_reference_id`.
* `shipping.orderDrafts.expanded.listV1` now accepts an optional `search` parameter for full-text filtering of draft orders.

## 2.0.0 - 2026-04-06
**Breaking changes to driver sharing settings**
* `CargoByDriverSharingSettings1.driverId` is now `String?` (previously `String`) — callers must unwrap this value with `if let` or `guard let`.
* `TaskGroupByDriverSharingSettings1.driverId` is now `String?` (previously `String`) — callers must unwrap this value with `if let` or `guard let`.
* The `driverId` parameter has been removed from `CargoByDriverSharingSettingsUpdateReq` and `TaskGroupByDriverSharingSettingsUpdateReq` — remove any `driverId:` argument from calls to these initializers.

## 1.576.0 - 2026-04-02
**Expanded search and filtering across list endpoints**
* `listShippersV1`, `listCouriersV1`, and `listForwardersV1` on `ConnectionsClient` now accept an optional `search` parameter to filter results by company name or handle.
* `OffChrtShipperOrgClient.listV1` now accepts an optional `search` parameter to filter off-platform shipper organizations by company name.
* `OrgsClient.listMembersV1` now accepts an optional `search` parameter to filter members by first or last name.
* `DriversClient.listOrgMembersAndDriversV1` now accepts optional `search`, `sortBy`, and `sortOrder` parameters for name-based search and result ordering.
* `DirectoryEntriesClient.listV1` now accepts an optional `filterEntryOrgId` parameter to scope results to a specific organization.

## 2.0.0 - 2026-03-31
* The `orderIdOrShortId` parameter has been renamed to `orderRef` across multiple API methods to better reflect its support for order IDs, short IDs, and off-chart reference IDs. Update method calls to use the new parameter name: `orderRef` instead of `orderIdOrShortId`.

## 1.563.0 - 2026-03-27
**Enhanced filtering and document generation capabilities**
* **Order and task group filtering** now supports filtering by cancellation status across all expanded list methods for forwarder operators, shipper operators, courier operators, and courier drivers.
* **PDF document generation** improved with proper binary data handling in `DocsClient.postGenerateV1` method.
* **Task updates** expanded to allow order creators to edit comments on non-draft tasks, in addition to existing operational field updates by logistics owners.
* **Order builder streaming** now returns structured response data instead of void, enabling access to streaming event information.
* **New streaming event types** added with `OrderBuilderStreamEvent` and `Event` schemas for better streaming API integration.

## 2.0.0 - 2026-03-27
* The `postAgentOrderBuilderStreamV1` method in `DevClient` now returns a `JSONValue` response instead of `Void`, allowing access to response data from the order builder streaming endpoint.

## 2.1.0 - 2026-03-27
* ### Added
* **DocsClient** introduced with PDF generation capabilities for bills of lading and proof of delivery documents.
* **Off-chart reference ID management** added across Order, TaskGroup, LineItemGroup, and Statement models with new update methods on OrdersClient.
* **Enhanced search functionality** expanded to include off-chart reference IDs across orders and task groups.
* **Order draft creation and updates** now support off-chart reference ID assignment.
* **Order builder request/response types** added with validation details and shipping document template enumeration.

## 2.0.0 - 2026-03-25
* The `validateV1` method in `OrderDraftsClient` now returns detailed validation results with issue categories and descriptions instead of just a boolean. Existing code must be updated to handle the new `OrderDraftValidationResult` return type instead of `Bool`.

## 1.539.1 - 2026-03-24
* docs: update API documentation comments with authentication details
* Updated method documentation comments to include authentication requirements alongside existing authorization details. The changes clarify that API key authentication is required for accessing these session tracking endpoints.
* Key changes:
* Added "auth: api_key" specification to method documentation
* Updated comments across SessionsClient and SessionByDeviceClient
* Maintained existing authorization requirements (min_org_role=operator)
* 🌿 Generated with Fern

## 2.0.0 - 2026-03-24
* Enhanced API filtering and pagination capabilities with new optional parameters for payment origin filtering on statements, full-text search for rate sheets and drivers, and pagination support across notification groups, organization connections, and member listings. All existing method calls remain compatible.
* Enhanced search capabilities across shipping and tracking modules with optional search parameters on list methods and new typeahead endpoints for autocomplete functionality. Directory entries now support pagination and full-text search. Removed standalone search methods in favor of unified search parameters on list endpoints.
* List response field names standardized to "items" across multiple endpoints. Existing code accessing specific field names like `orderDraftsExpanded`, `ordersExpanded`, `rateSheets`, `sessions`, `statements`, or `taskGroupsExpanded` must be updated to use the new `items` field name.
* New pagination support for connections, organization members, and drivers list endpoints. Methods now accept page and pageSize parameters and return structured responses with items arrays and total counts. Enhanced filtering and sorting capabilities available for improved data management.
* **Breaking Changes:**
* Response structures have been standardized across multiple endpoints. List responses now use a generic "items" field instead of resource-specific array names (e.g., "ordersExpanded" is now "items"). The searchV1 methods for devices and sessions have been removed - use the enhanced list methods with search parameters instead.
**New Features:**
* Typeahead functionality for orders and task groups with dedicated endpoints returning string arrays
* Enhanced search capabilities with new search parameters across multiple list endpoints
* Pause window tracking for devices with detailed timestamp information
* SetToNone fields for order draft updates to explicitly clear field values
* Improved directory entry sorting with additional sort options
* New list response structures added for drivers, forwarder connections, notifications, organizations, and shipper connections, enabling paginated API responses with consistent items arrays and total count tracking. The SDK now includes OrgMemberSortByEnum for organization member sorting capabilities.

## 1.530.0 - 2026-03-23
* ### Added
* **SetToNone fields** added to update request structs, allowing explicit null value assignment to clear field values rather than leaving them unchanged across multiple client types.

## 1.527.0 - 2026-03-21
* ### Added
* **Order tracking** for billing statements and line item groups with new optional fields `isAdHoc`, `orderId`, and `orderShortId` on line item groups, plus `orderIds` and `orderShortIds` arrays on statements.
* **Order-based filtering** capabilities for querying statements and line item groups by order ID.
* **Ad-hoc line item group association** with task groups for improved order management.
* **expandedListV1 method** for retrieving comprehensive statement data with full line item group and task group details.

## 1.512.0 - 2026-03-20
* New device pause/unpause functionality available through `pauseV1()` and `unpauseV1()` methods on `DevicesClient`. Paused devices have their data points excluded from queries while preserving historical data. Enhanced credential information with additional metadata fields in the `Caller` struct.

## 2.0.0 - 2026-02-27
* feat: enhance session by device API with time-bucketed data and stationary clusters
* Updates session tracking endpoints to support time-based queries with bucketed data points
* and stationary cluster detection. Changes from limit-based to time-range-based queries for
* better temporal analysis and adds clustering capabilities for location data.
* Key changes:
* Replace limit parameter with startTimestamp and endTimestamp for precise time ranges
* Add optional bucketSeconds parameter for data aggregation control
* Introduce SessionByDeviceHistoryRes1 response type with dataPoints and stationaryClusters arrays
* Add StationaryCluster schema with centroid location, radius, and temporal boundaries
* Enhance SessionByDeviceDataPoint1 with receivedAtTimestamp field
* Update API documentation to reflect new time-based query capabilities
* 🌿 Generated with Fern

## 1.455.2 - 2026-02-26
* chore: update CLI version to 3.90.3
* Update the Fern CLI version from 3.88.4 to 3.90.3 in metadata configuration. This version bump may include improvements to code generation, bug fixes, or new CLI features that enhance the development workflow.
* Key changes:
* Update cliVersion from 3.88.4 to 3.90.3 in .fern/metadata.json
* Maintain existing generator configuration unchanged
* 🌿 Generated with Fern

## 1.455.1 - 2026-02-26
* chore: update CLI version to 3.90.3
* Updates the Fern CLI version from 3.88.3 to 3.90.3 in the metadata configuration. This change maintains compatibility with the latest CLI features and improvements while keeping all other generator settings unchanged.
* Key changes:
* Update cliVersion from 3.88.3 to 3.90.3 in metadata.json
* Maintain existing generator configuration and version
* Ensure compatibility with latest CLI tooling
* 🌿 Generated with Fern

## 1.449.3 - 2026-02-26
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.449.2 - 2026-02-25
* chore: update Fern CLI version
* Update the CLI version in metadata configuration to leverage latest tooling capabilities and improvements.
* Key changes:
* Update cliVersion from 3.47.1 to 3.88.3 in .fern/metadata.json
* Maintain existing generator configuration and settings
* Ensure compatibility with latest Fern CLI features
* 🌿 Generated with Fern

## 1.441.2 - 2026-02-25
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.441.1 - 2026-02-24
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.439.1 - 2026-02-24
* chore: update Fern CLI version
* Update the Fern CLI version from 3.47.1 to 3.85.2 in the metadata configuration file. This change ensures the project uses the latest CLI tooling with improved features and bug fixes.
* Key changes:
* Update cliVersion from 3.47.1 to 3.85.2 in .fern/metadata.json
* Maintain compatibility with existing generator configuration
* Keep generator name and version unchanged
* 🌿 Generated with Fern

## 1.438.0 - 2026-02-23
* feat: add session and cargo filtering to devices list API
* Enhance the devices list endpoint with two new boolean filter parameters that allow filtering devices based on their session and cargo status. These additions provide more granular control when querying devices.
* Key changes:
* Add `filterHasActiveSession` parameter to filter devices with/without active sessions
* Add `filterHasActiveCargo` parameter to filter devices with/without active cargo
* Update API documentation to include descriptions for the new filter parameters
* Update test cases to verify the new filtering functionality
* 🌿 Generated with Fern

## 1.436.0 - 2026-02-22
* feat: add filterArchived parameter to device list endpoint
* Add support for filtering devices by archived status in the tracking devices
* list endpoint. This new optional parameter allows clients to query devices
* based on whether they are currently archived or not.
* Key changes:
* Add filterArchived: Bool? parameter to DevicesClient.listV1() method
* Add corresponding query parameter mapping in request construction
* Update function documentation to describe the new filter parameter
* Add test coverage for the new parameter
* Update reference documentation with parameter details
* 🌿 Generated with Fern

## 1.433.0 - 2026-02-22
* feat: add terminationScheduledForTimestamp field and update session API
* This change adds support for specifying termination timestamps directly in session requests and updates the session creation/update API to be more flexible. The termination scheduling mechanism has been refactored to move from query parameters to request body fields.
* Key changes:
* Add terminationScheduledForTimestamp field to SessionClientCreate1 and SessionClientUpdate1 request models
* Add terminationScheduledForTimestampSetToNone field to SessionClientUpdate1 for nullable updates
* Replace terminationScheduledForTimestamp query parameter with noAutoTermination in createSessionV1
* Remove terminationScheduledForTimestamp query parameter from updateV1 method
* Reorder terminationScheduledForTimestamp field position in Session1 schema for consistency
* Update API documentation to reflect new termination scheduling behavior
* 🌿 Generated with Fern

## 1.431.1 - 2026-02-21
* chore: update CLI version and improve session creation documentation
* This commit updates the Fern CLI version from 3.47.1 to 3.76.0 and enhances the documentation for session creation functionality with more detailed clarifications about device ownership, organization permissions, and session ownership rules.
* Key changes:
* Update Fern CLI version from 3.47.1 to 3.76.0 in metadata.json
* Enhance session creation documentation to clarify device ownership requirements
* Add details about organization permissions and shared device access rules
* Clarify session ownership inheritance from device owner
* 🌿 Generated with Fern

## 1.421.1 - 2026-02-21
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 1.419.0 - 2026-02-15
* feat: add FlightAware alert support with new schema types
* Add comprehensive support for FlightAware alerts including new schema types and session tracking capabilities. This extends the API to handle alert payloads, flight information, and webhook responses while maintaining backward compatibility.
* Key changes:
* Add FlightAwareAlertPayload schema with alert metadata (description, summary, event codes)
* Add FlightAwareAlertFlight schema for flight-specific alert data
* Add FlightAwareWebhookResponse schema for webhook response handling
* Add faAlertIds field to Session1 schema for alert tracking
* Update wire tests to include alert ID validation
* 🌿 Generated with Fern

## 1.415.0 - 2026-02-13
* feat: add device search and typeahead capabilities
* Add comprehensive search functionality to the DevicesClient with two new methods for enhanced device discovery and filtering. The typeahead endpoint enables fast search suggestions while the full-text search provides detailed device results with pagination support.
* Key changes:
* Add typeaheadOffChrtOrderIdV1 method for autocomplete functionality on off_chrt_order_id field
* Add searchV1 method for full-text search across device properties using Atlas Search
* Create DeviceSearchRes schema to support paginated search results
* Update SessionsClient documentation to clarify search scope is sessions-only
* Add comprehensive test coverage for both new endpoints with mock responses
* 🌿 Generated with Fern

## 1.411.0 - 2026-02-12
* feat: enhance tracking devices API with filtering and pagination
* This change significantly improves the tracking devices API by replacing the simple list endpoint with a comprehensive device listing system that supports advanced filtering, sorting, and pagination capabilities.
* Key changes:
* Replace generic dictionary return type with structured OrgInfoResponse for organization info endpoint
* Add comprehensive filtering options to device list endpoint including MAC address, cargo ID, session ID, and timestamp range filters
* Implement sorting capabilities with DeviceSortByEnum for various timestamp fields
* Add pagination support with page and pageSize parameters
* Return structured DeviceListRes with device array and total count instead of plain array
* Add new tracking device line item types for better categorization
* Update all related test files to reflect the new structured API responses
* 🌿 Generated with Fern

## 2.0.0 - 2026-02-11
* feat: change task group methods to return arrays
* Updates the TaskGroupIdClient API to support multiple task groups per order.
* Previously, the forCourierOperatorsV1 and forCourierDriverV1 methods
* returned a single task group ID as a String. This change modifies both
* methods to return an array of task group IDs ([String]) to better align
* with the business requirement that orders can have multiple task groups.
* Key changes:
* Change return type from String to [String] for forCourierOperatorsV1
* Change return type from String to [String] for forCourierDriverV1
* Update documentation comments to reflect plural form and list return type
* Update corresponding test cases to expect array responses
* Update reference documentation to show new method signatures
* 🌿 Generated with Fern

## 1.406.1 - 2026-02-11
* docs: update method documentation for task groups and device management
* Updates API documentation across multiple endpoints to provide clearer descriptions and authorization details. Improves clarity around constraints and access patterns for task group operations and device management.
* Key changes:
* Add state constraints for task group driver removal operations
* Clarify device deletion process with Shiprec deregistration details
* Standardize authorization personas documentation format
* Simplify public endpoint descriptions for better readability
* Update tracking endpoint descriptions with more concise language
* 🌿 Generated with Fern

## 1.405.0 - 2026-02-10
* feat: add flight tracking and off-chart order support to sessions and devices
* This update extends device registration and session management capabilities by adding support for flight tracking and off-chart order management. The changes enable better tracking integration with external systems and improved data management capabilities.
* Key changes:
* Add offChrtOrderId field to device registration and update requests
* Add flight tracking fields (flightNumber, faFlightIds) to session creation and updates
* Add comprehensive session filtering by new fields and timestamps
* Add typeahead search for off-chart order IDs across sessions and devices
* Add full-text search across session metadata using Atlas Search
* Update API documentation and method signatures for enhanced filtering capabilities
* Add new response schemas for paginated session results
* 🌿 Generated with Fern

## 1.396.0 - 2026-02-08
* feat: add Firebase Cloud Messaging token support for users
* Introduces comprehensive Firebase Cloud Messaging token management functionality to enable push notification capabilities. This feature allows users to register, update, and manage FCM tokens with platform-specific tracking and automatic deduplication.
* Key changes:
* Add FirebaseCloudMessagingTokenClientCreate1 request model with token and platform fields
* Add FirebaseCloudMessagingTokenData1 schema with last used timestamp tracking
* Add PlatformEnum supporting Android, iOS, and web platforms
* Add firebaseCloudMessagingTokenData array field to UserPrivateData1 model
* Add upsertFirebaseCloudMessagingTokenV1 method to UsersClient for token management
* Add comprehensive test coverage for new FCM token functionality
* Update API documentation with usage examples and method descriptions
* 🌿 Generated with Fern

## 1.391.0 - 2026-02-06
* feat: add analytics client and expand user management capabilities
* Add comprehensive analytics functionality for order tracking and expand user management with private data handling. The analytics client provides order count analytics with time-based bucketing, while enhanced user endpoints support full CRUD operations for private user data. Additional improvements include agent workflow updates and expanded notification intent support.
* Key changes:
* Add AnalyticsClient with shipping order count analytics endpoints
* Add user private data management endpoints (create, read, update)
* Update agent endpoints from GET to POST with structured request/response
* Add support for notification intents ad hoc in order expansion
* Add new time-related schemas (TimeGranularity, TimezoneEnum, StartOfWeek)
* Remove deprecated durable workflow endpoint
* Add comprehensive test coverage for new functionality
* 🌿 Generated with Fern

## 2.0.0 - 2026-02-05
* feat: enhance file upload API to support multiple file types
* This change expands file upload capabilities from image-only to support various file types including PDFs and other documents. The API now provides better file metadata tracking and more accurate parameter naming.
* Key changes:
* Rename parameter from `image` to `file` across all upload endpoints
* Add `contentType` and `filename` fields to S3 object metadata schemas
* Update API documentation to reflect support for multiple file types
* Maintain backward compatibility with automatic blurhash generation for images
* 🌿 Generated with Fern

## 1.381.0 - 2026-02-04
* feat: add new webhook event and enhance notification system
* Add support for task artifact completed events and improve notification
* group functionality with opt-out status tracking. This update expands
* webhook capabilities and provides better user experience for managing
* notification preferences.
* Key changes:
* Add shipping.task.task_artifact_completed event to NotificationEventsForOrgsEnum
* Create new ShippingTaskTaskArtifactCompletedWebhookPayload struct for webhook handling
* Add taskGroupType field to ShippingTaskCompletedWebhookPayload for better task categorization
* Add isOptedOut computed field to NotificationGroupLimitedForDriver1 for user preference tracking
* Remove detailed validation logic comments from task action enums for cleaner code
* Update test cases to include new isOptedOut field
* 🌿 Generated with Fern

## 2.0.0 - 2026-02-03
* refactor: consolidate schema models and update webhook event types
* This is a comprehensive schema refactoring that simplifies the type system by consolidating separate input/output models and updating webhook event naming conventions for better consistency.
* Key changes:
* Merge Driver1Input and Driver1Output into unified Driver1 model
* Merge Task1Input and Task1Output into unified Task1 model
* Update webhook payloads to use IDs instead of full objects for better performance
* Rename S3-specific events to generic file events (s3_object_added → file_added)
* Simplify task event payloads by including essential fields directly
* Reorder struct properties for better logical grouping
* Update all API clients and tests to use consolidated types
* 🌿 Generated with Fern

## 1.363.1 - 2026-02-03
* SDK regeneration
* Unable to analyze changes with AI, incrementing PATCH version.

## 2.0.0 - 2026-01-28
* refactor: restructure notifications API and remove legacy preference clients
* This change significantly refactors the notifications module by removing complex preference management systems and replacing them with a simplified direct notification interface. The API now focuses on core notification functionality rather than managing notification preferences across different organization types.
* Key changes:
* Remove TaskArtifactNotificationsClient and all preference-based notification clients
* Simplify NotificationsClient to provide direct notification endpoints
* Add new NotificationReq and NotificationRes types for simplified email notifications
* Replace complex preference schemas with ChrtEmailRecipient enum for specific recipients
* Rename OrgInfoForConnections sub-clients from prefixed names to simple ShipperClient/CourierClient
* Remove notification preference-related request types and enums
* Update client property organization to use consolidated notifications client
* 🌿 Generated with Fern

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

