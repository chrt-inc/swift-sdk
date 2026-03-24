# Reference
## Orgs
<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">getInfoV1</a>(requestOptions: RequestOptions?) -> OrgInfoResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves basic organization information from the authentication service. | () -> (OrgInfoResponse)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.getInfoV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">listMembersV1</a>(filterRole: OrgRoleEnum?, sortBy: OrgMemberSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OrgMemberListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all members of the caller's organization with their roles and details. | () -> (OrgMemberListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.listMembersV1(
        sortBy: .firstName,
        sortOrder: .asc,
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filterRole:** `OrgRoleEnum?` — Filter by organization role(s)
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `OrgMemberSortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">setOrgTypeV1</a>(request: Requests.SetOrgTypeReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the org_type in Clerk's JWT public metadata. Returns True if already set and matching, sets it if not present, or raises exception if conflicting. | (SetOrgTypeReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.setOrgTypeV1(request: .init(orgType: .courier))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SetOrgTypeReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">getStripeConnectAccountIdV1</a>(requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the Stripe Connect account ID for the caller's organization. Returns 404 if not set. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.getStripeConnectAccountIdV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Utils
<details><summary><code>client.utils.<a href="/Sources/Resources/Utils/UtilsClient.swift">getTimezoneV1</a>(lat: Double, lng: Double, requestOptions: RequestOptions?) -> TimezoneResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the IANA timezone identifier (e.g., 'America/Los_Angeles') for the given latitude and longitude coordinates. Falls back to closest timezone if the point is in the ocean or at an edge. | () -> (TimezoneResponse)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.getTimezoneV1(
        lat: 37.7749,
        lng: -122.4194
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lat:** `Double` — Latitude in decimal degrees (range: -90 to 90)
    
</dd>
</dl>

<dl>
<dd>

**lng:** `Double` — Longitude in decimal degrees (range: -180 to 180)
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Analytics Shipping
<details><summary><code>client.analytics.shipping.<a href="/Sources/Resources/Analytics/Shipping/ShippingClient.swift">retrieveOrdersCountV1</a>(request: Requests.AnalyticsTimePeriodRequest, requestOptions: RequestOptions?) -> AnalyticsTimeBucketResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves order counts bucketed by time period. | (AnalyticsTimePeriodRequest) -> (AnalyticsTimeBucketResponse)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.analytics.shipping.retrieveOrdersCountV1(request: .init(
        start: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        end: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AnalyticsTimePeriodRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing LineItemGroups
<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">getV1</a>(lineItemGroupId: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets a line item group by ID. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.getV1(lineItemGroupId: "line_item_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">listForCourierOrgV1</a>(filterDriverId: String?, filterStatus: LineItemGroupStatusEnum1?, filterAttachedToStatement: Bool?, filterOrderId: String?, filterPaymentRole: PaymentRoleFilterEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> LineItemGroupListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists line item groups for the authenticated courier organization with filtering and pagination. | org_type=[courier], min_org_role=operator | () -> (LineItemGroupListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.listForCourierOrgV1(
        filterDriverId: "filter_driver_id",
        filterAttachedToStatement: true,
        filterOrderId: "filter_order_id",
        filterPaymentRole: .origin,
        sortOrder: .asc,
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filterDriverId:** `String?` — Filter by driver ID (payment_destination_driver_id)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `LineItemGroupStatusEnum1?` — Filter by line item group status(es)
    
</dd>
</dl>

<dl>
<dd>

**filterAttachedToStatement:** `Bool?` — Filter by whether line item group is attached to a statement
    
</dd>
</dl>

<dl>
<dd>

**filterOrderId:** `String?` — Filter by order ID
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentRole:** `PaymentRoleFilterEnum?` — Filter by payment role: origin (courier pays) or destination (courier receives). Returns both if not specified.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">quoteV1</a>(taskGroupId: String, paymentVectorType: PaymentVectorTypeEnum1, rateSheetId: String?, requestOptions: RequestOptions?) -> Quote</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Calculates a quote (line item group preview) for a task group and payment vector without persisting any data. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators, shipper_org_operators] | () -> (Quote)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.quoteV1(
        taskGroupId: "task_group_id",
        paymentVectorType: .shipperPayForwarder,
        rateSheetId: "rate_sheet_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**paymentVectorType:** `PaymentVectorTypeEnum1` — The payment vector type to calculate a quote for.
    
</dd>
</dl>

<dl>
<dd>

**rateSheetId:** `String?` — Optional rate sheet ID to use. Must match the payment_vector_type. If not provided, rate sheet is resolved using standard priority.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">finalizeV1</a>(lineItemGroupId: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Finalizes a line item group. LIG must be in ADJUSTABLE status. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.finalizeV1(lineItemGroupId: "line_item_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">calculateLineItemsV1</a>(lineItemGroupId: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

(Re)calculates line items for a line item group. LIG must be PENDING_CALCULATION or ADJUSTABLE and must be associated with a TaskGroup. Note: Line item calculation normally happens automatically; this route is primarily for PENDING_CALCULATION LIGs where automatic calculation failed (e.g., due to third-party service failure). | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.calculateLineItemsV1(lineItemGroupId: "line_item_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">associateWithStatementV1</a>(lineItemGroupId: String, statementId: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Associates a line item group with a statement. LIG must be PENDING_RATES, PENDING_CALCULATION, ADJUSTABLE, or FINALIZED (before OPEN). Statement must be STAGED. LIG payment info must match Statement. Also removes from previous statement if any. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators, statement_owner_operators] | (PydanticObjectId) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.associateWithStatementV1(
        lineItemGroupId: "line_item_group_id",
        statementId: "statement_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**statementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">adjustLineItemV1</a>(lineItemGroupId: String, request: Requests.AdjustLineItemReq, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adjusts a line item within a line item group. LIG must be ADJUSTABLE. Adjustment can be negative beyond item.amount to serve as a credit. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | (AdjustLineItemReq) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adjustLineItemV1(
        lineItemGroupId: "line_item_group_id",
        request: .init(
            lineItemUuidStr: "line_item_uuid_str",
            adjustment: 1.1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AdjustLineItemReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing RateSheets
<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">getV1</a>(rateSheetId: String, requestOptions: RequestOptions?) -> RateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a rate sheet by ID. Only the owning org can fetch. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (RateSheet1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.getV1(rateSheetId: "rate_sheet_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**rateSheetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">updateV1</a>(rateSheetId: String, request: Requests.RateSheetClientUpdate1, requestOptions: RequestOptions?) -> RateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a rate sheet. Only name, comments, cargo_types, and vehicle_types can be changed. Use the archive endpoint for archiving. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | (RateSheetClientUpdate1) -> (RateSheet1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.updateV1(
        rateSheetId: "rate_sheet_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**rateSheetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.RateSheetClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">listByOrgV1</a>(sortBy: RateSheetSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterArchived: Bool?, filterPaymentVectorType: PaymentVectorTypeEnum1?, filterServiceType: ServiceTypeEnum1?, filterCargoType: CargoTypeEnum1?, filterVehicleType: VehicleTypeEnum?, requestOptions: RequestOptions?) -> RateSheetListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists rate sheets for the caller's organization with filtering, sorting, pagination, and optional full-text search. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (RateSheetListResponse)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.listByOrgV1(
        sortBy: .id,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterArchived: true,
        filterPaymentVectorType: .shipperPayForwarder,
        filterServiceType: .onDemand,
        filterCargoType: .spareParts,
        filterVehicleType: .sedan
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `RateSheetSortByEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String?` — Full-text search query
    
</dd>
</dl>

<dl>
<dd>

**filterArchived:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentVectorType:** `PaymentVectorTypeEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterServiceType:** `ServiceTypeEnum1?` — Filter by service type (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterCargoType:** `CargoTypeEnum1?` — Filter by cargo type (checks if value is in cargo_types array)
    
</dd>
</dl>

<dl>
<dd>

**filterVehicleType:** `VehicleTypeEnum?` — Filter by vehicle type (checks if value is in vehicle_types array)
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">createV1</a>(paymentVectorType: PaymentVectorTypeEnum1, request: Requests.RateSheetClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a rate sheet. Couriers and forwarders only. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | (RateSheetClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.createV1(
        paymentVectorType: .shipperPayForwarder,
        request: .init(
            schemaVersion: 1,
            serviceType: .onDemand
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**paymentVectorType:** `PaymentVectorTypeEnum1` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.RateSheetClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">archiveV1</a>(rateSheetId: String, archive: Bool, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives or unarchives a rate sheet. When archiving, automatically removes the rate sheet from all default assignments (OrgPrivateData, Connections, Drivers). | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.archiveV1(
        rateSheetId: "rate_sheet_id",
        archive: true
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**rateSheetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**archive:** `Bool` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">updateOrgDefaultForServiceTypeV1</a>(paymentVectorType: PaymentVectorTypeEnum1, serviceType: ServiceTypeEnum1, rateSheetId: String?, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or clears the org's default rate sheet for a payment vector type and service type. Pass rate_sheet_id to set a default, or omit it to clear the default. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.updateOrgDefaultForServiceTypeV1(
        paymentVectorType: .shipperPayForwarder,
        serviceType: .onDemand,
        rateSheetId: "rate_sheet_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**paymentVectorType:** `PaymentVectorTypeEnum1` 
    
</dd>
</dl>

<dl>
<dd>

**serviceType:** `ServiceTypeEnum1` 
    
</dd>
</dl>

<dl>
<dd>

**rateSheetId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">updateDefaultForConnectionV1</a>(connectionId: String, serviceType: ServiceTypeEnum1, rateSheetId: String?, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or clears a rate sheet as the default for a connection. Pass rate_sheet_id to set a default, or omit it to clear the default. One default per service type per connection. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.updateDefaultForConnectionV1(
        connectionId: "connection_id",
        serviceType: .onDemand,
        rateSheetId: "rate_sheet_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**connectionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**serviceType:** `ServiceTypeEnum1` 
    
</dd>
</dl>

<dl>
<dd>

**rateSheetId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">updateDefaultForDriverV1</a>(driverId: String, serviceType: ServiceTypeEnum1, rateSheetId: String?, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or clears a rate sheet as the default for a driver. Pass rate_sheet_id to set a default, or omit it to clear the default. One default per service type per driver. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.updateDefaultForDriverV1(
        driverId: "driver_id",
        serviceType: .onDemand,
        rateSheetId: "rate_sheet_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**driverId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**serviceType:** `ServiceTypeEnum1` 
    
</dd>
</dl>

<dl>
<dd>

**rateSheetId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">updateDefaultForOffChrtShipperV1</a>(offChrtShipperOrgId: String, serviceType: ServiceTypeEnum1, rateSheetId: String?, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or clears a rate sheet as the default for an off-chrt shipper. Pass rate_sheet_id to set a default, or omit it to clear the default. One default per service type per off-chrt shipper. | authz: allowed_org_types=[courier], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheets.updateDefaultForOffChrtShipperV1(
        offChrtShipperOrgId: "off_chrt_shipper_org_id",
        serviceType: .onDemand,
        rateSheetId: "rate_sheet_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**offChrtShipperOrgId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**serviceType:** `ServiceTypeEnum1` 
    
</dd>
</dl>

<dl>
<dd>

**rateSheetId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing Statements
<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">getV1</a>(statementId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets a statement by ID. | authz_personas=[statement_org_operators, statement_driver] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.getV1(statementId: "statement_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**statementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">getByLigIdV1</a>(lineItemGroupId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets a statement by its associated LineItemGroup ID. | authz_personas=[statement_org_operators, statement_driver] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.getByLigIdV1(lineItemGroupId: "line_item_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">expandedRetrieveV1</a>(request: Requests.StatementExpandedRetrieveReq, requestOptions: RequestOptions?) -> StatementExpandedRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a statement with its associated LineItemGroups expanded. | authz_personas=[statement_org_operators, statement_driver] | (StatementExpandedRetrieveReq) -> (StatementExpandedRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.expandedRetrieveV1(request: .init(statementId: "statement_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatementExpandedRetrieveReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">listV1</a>(sortBy: StatementSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: StatementStatusEnum1?, filterSettlementType: SettlementTypeEnum1?, filterOrderId: String?, filterPaymentOriginOrgId: String?, filterPaymentOriginOffChrtShipperOrgId: String?, filterPaymentDestinationOrgId: String?, filterOwnedByOrgId: String?, filterStagedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterOpenedAtTimestampGte: Date?, filterOpenedAtTimestampLte: Date?, filterPaidAtTimestampGte: Date?, filterPaidAtTimestampLte: Date?, filterUncollectibleAtTimestampGte: Date?, filterUncollectibleAtTimestampLte: Date?, requestOptions: RequestOptions?) -> StatementsListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists statements with filtering, sorting, and pagination. | authz_personas=[statement_org_operators, statement_driver] | () -> (StatementsListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.listV1(
        sortBy: .amount,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterSettlementType: .stripeConnect,
        filterOrderId: "filter_order_id",
        filterPaymentOriginOrgId: "filter_payment_origin_org_id",
        filterPaymentOriginOffChrtShipperOrgId: "filter_payment_origin_off_chrt_shipper_org_id",
        filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
        filterOwnedByOrgId: "filter_owned_by_org_id",
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOpenedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOpenedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPaidAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPaidAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterUncollectibleAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterUncollectibleAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `StatementSortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (ascending or descending)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `StatementStatusEnum1?` — Filter by statement status(es)
    
</dd>
</dl>

<dl>
<dd>

**filterSettlementType:** `SettlementTypeEnum1?` — Filter by settlement type
    
</dd>
</dl>

<dl>
<dd>

**filterOrderId:** `String?` — Filter by order ID (returns statements whose order_ids list contains this value)
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentOriginOrgId:** `String?` — Filter by payment origin org ID
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentOriginOffChrtShipperOrgId:** `String?` — Filter by payment origin off-chrt shipper org ID
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentDestinationOrgId:** `String?` — Filter by payment destination org ID
    
</dd>
</dl>

<dl>
<dd>

**filterOwnedByOrgId:** `String?` — Filter by owned by org ID
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampGte:** `Date?` — Filter by staged_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampLte:** `Date?` — Filter by staged_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterOpenedAtTimestampGte:** `Date?` — Filter by opened_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterOpenedAtTimestampLte:** `Date?` — Filter by opened_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterPaidAtTimestampGte:** `Date?` — Filter by paid_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterPaidAtTimestampLte:** `Date?` — Filter by paid_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterUncollectibleAtTimestampGte:** `Date?` — Filter by uncollectible_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterUncollectibleAtTimestampLte:** `Date?` — Filter by uncollectible_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">expandedListV1</a>(sortBy: StatementSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: StatementStatusEnum1?, filterSettlementType: SettlementTypeEnum1?, filterOrderId: String?, filterPaymentOriginOrgId: String?, filterPaymentOriginOffChrtShipperOrgId: String?, filterPaymentDestinationOrgId: String?, filterOwnedByOrgId: String?, filterStagedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterOpenedAtTimestampGte: Date?, filterOpenedAtTimestampLte: Date?, filterPaidAtTimestampGte: Date?, filterPaidAtTimestampLte: Date?, filterUncollectibleAtTimestampGte: Date?, filterUncollectibleAtTimestampLte: Date?, requestOptions: RequestOptions?) -> StatementsExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists statements with expanded LIGs and task groups, using filtering, sorting, and pagination. | authz_personas=[statement_org_operators, statement_driver] | () -> (StatementsExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.expandedListV1(
        sortBy: .amount,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterSettlementType: .stripeConnect,
        filterOrderId: "filter_order_id",
        filterPaymentOriginOrgId: "filter_payment_origin_org_id",
        filterPaymentOriginOffChrtShipperOrgId: "filter_payment_origin_off_chrt_shipper_org_id",
        filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
        filterOwnedByOrgId: "filter_owned_by_org_id",
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOpenedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOpenedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPaidAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPaidAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterUncollectibleAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterUncollectibleAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `StatementSortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (ascending or descending)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `StatementStatusEnum1?` — Filter by statement status(es)
    
</dd>
</dl>

<dl>
<dd>

**filterSettlementType:** `SettlementTypeEnum1?` — Filter by settlement type
    
</dd>
</dl>

<dl>
<dd>

**filterOrderId:** `String?` — Filter by order ID (returns statements whose order_ids list contains this value)
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentOriginOrgId:** `String?` — Filter by payment origin org ID
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentOriginOffChrtShipperOrgId:** `String?` — Filter by payment origin off-chrt shipper org ID
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentDestinationOrgId:** `String?` — Filter by payment destination org ID
    
</dd>
</dl>

<dl>
<dd>

**filterOwnedByOrgId:** `String?` — Filter by owned by org ID
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampGte:** `Date?` — Filter by staged_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampLte:** `Date?` — Filter by staged_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterOpenedAtTimestampGte:** `Date?` — Filter by opened_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterOpenedAtTimestampLte:** `Date?` — Filter by opened_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterPaidAtTimestampGte:** `Date?` — Filter by paid_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterPaidAtTimestampLte:** `Date?` — Filter by paid_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterUncollectibleAtTimestampGte:** `Date?` — Filter by uncollectible_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterUncollectibleAtTimestampLte:** `Date?` — Filter by uncollectible_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">createV1</a>(request: Requests.CreateStatementReq, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new statement without LIG IDs, starting in STAGED status. Requires payment vector, origin, and destination. | authz: org_type=[courier, forwarder], min_org_role=operator | (CreateStatementReq) -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.createV1(request: .init(
        paymentVectorType: .shipperPayForwarder,
        settlementType: .stripeConnect
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateStatementReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">deleteV1</a>(statementId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a statement. Only allowed if statement has no LineItemGroup IDs. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.deleteV1(statementId: "statement_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**statementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">updateSettlementTypeV1</a>(statementId: String, request: Requests.BodyStatementsPatchUpdateSettlementTypeV1BillingStatementsUpdateSettlementTypeV1StatementIdPatch, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the settlement type of a statement. Statement must be in STAGED status. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators], statement_status=STAGED | (SettlementTypeEnum1) -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.updateSettlementTypeV1(
        statementId: "statement_id",
        request: .init(settlementType: .stripeConnect)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**statementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BodyStatementsPatchUpdateSettlementTypeV1BillingStatementsUpdateSettlementTypeV1StatementIdPatch` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">updateOffChrtSettlementStateV1</a>(statementId: String, request: Requests.BodyStatementsPatchUpdateOffChrtSettlementStateV1BillingStatementsUpdateOffChrtSettlementStateV1StatementIdPatch, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the status of an off-CHRT settlement statement. Used to manually transition OFF_CHRT statements between STAGED, OPEN, PAID, and VOID. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators] | (StatementStatusEnum1) -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.updateOffChrtSettlementStateV1(
        statementId: "statement_id",
        request: .init(newStatus: .staged)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**statementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BodyStatementsPatchUpdateOffChrtSettlementStateV1BillingStatementsUpdateOffChrtSettlementStateV1StatementIdPatch` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">openInvoiceV1</a>(statementId: String, request: Requests.OpenInvoiceReq, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opens a Stripe Connect invoice for a statement and attempt to send via email. Org must have a Stripe Connect account. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators], statement_status=STAGED, line_item_groups_status=FINALIZED | (OpenInvoiceReq) -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.openInvoiceV1(
        statementId: "statement_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**statementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OpenInvoiceReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">syncInvoiceV1</a>(statementId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Syncs invoice state from Stripe Connect to the Statement and LineItemGroups. The webhook usually keeps invoices up to date, but users can manually trigger a sync. | authz: org_type=[courier, forwarder, shipper], min_org_role=operator, authz_personas=[statement_org_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.syncInvoiceV1(statementId: "statement_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**statementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">voidInvoiceV1</a>(statementId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Voids a Stripe Connect invoice. Statement reverts to STAGED and LIGs revert to FINALIZED. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators], statement_status=OPEN | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.voidInvoiceV1(statementId: "statement_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**statementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing Stripe
<details><summary><code>client.billing.stripe.<a href="/Sources/Resources/Billing/Stripe/StripeClient.swift">createCheckoutSessionV1</a>(request: Requests.CreateCheckoutSessionReq, requestOptions: RequestOptions?) -> CreateCheckoutSessionRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Stripe checkout session for a subscription with pricing based on the selected plan. | (CreateCheckoutSessionReq) -> (CreateCheckoutSessionRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.stripe.createCheckoutSessionV1(request: .init(priceName: .courierOps100UsdPerMonth))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateCheckoutSessionReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.stripe.<a href="/Sources/Resources/Billing/Stripe/StripeClient.swift">syncStripeToClerkV1</a>(requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Synchronizes subscription data from Stripe to the authentication service for the current user. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.stripe.syncStripeToClerkV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing StripeConnect
<details><summary><code>client.billing.stripeConnect.<a href="/Sources/Resources/Billing/StripeConnect/StripeConnectClient.swift">createAccountV1</a>(requestOptions: RequestOptions?) -> CreateStripeConnectAccountRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Stripe Connect account for the organization to receive payments. Idempotent - returns existing account if already created. | () -> (CreateStripeConnectAccountRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.stripeConnect.createAccountV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.stripeConnect.<a href="/Sources/Resources/Billing/StripeConnect/StripeConnectClient.swift">onboardingLinkV1</a>(requestOptions: RequestOptions?) -> StripeConnectAccountOnboardingLinkRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an onboarding link for a Stripe Connect account. Used to complete or update account setup. | () -> (StripeConnectAccountOnboardingLinkRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.stripeConnect.onboardingLinkV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing LineItemGroups AdHoc
<details><summary><code>client.billing.lineItemGroups.adHoc.<a href="/Sources/Resources/Billing/LineItemGroups/AdHoc/AdHocClient.swift">createV1</a>(request: Requests.CreateAdHocLineItemGroupReq, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an ad-hoc line item group. Optionally associates with a TaskGroup. Starts as ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator | (CreateAdHocLineItemGroupReq) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adHoc.createV1(request: .init(
        paymentVectorType: .shipperPayForwarder,
        settlementType: .stripeConnect
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateAdHocLineItemGroupReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.adHoc.<a href="/Sources/Resources/Billing/LineItemGroups/AdHoc/AdHocClient.swift">addLineItemV1</a>(lineItemGroupId: String, request: Requests.LineItemClientCreate1, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a line item to an ad-hoc line item group. LIG must be ad-hoc (is_ad_hoc=True) and ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | (LineItemClientCreate1) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adHoc.addLineItemV1(
        lineItemGroupId: "line_item_group_id",
        request: .init(
            item: .baseRate,
            quantity: 1.1,
            rate: 1.1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.LineItemClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.adHoc.<a href="/Sources/Resources/Billing/LineItemGroups/AdHoc/AdHocClient.swift">removeLineItemV1</a>(lineItemGroupId: String, lineItemUuidStr: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a line item from an ad-hoc line item group. LIG must be ad-hoc (is_ad_hoc=True) and ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | (line_item_uuid_str) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adHoc.removeLineItemV1(
        lineItemGroupId: "line_item_group_id",
        lineItemUuidStr: "line_item_uuid_str"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**lineItemUuidStr:** `String` — UUID of the line item to remove from the LIG
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.adHoc.<a href="/Sources/Resources/Billing/LineItemGroups/AdHoc/AdHocClient.swift">deleteV1</a>(lineItemGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an ad-hoc line item group. LIG must be ad-hoc (is_ad_hoc=True) and ADJUSTABLE or FINALIZED. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adHoc.deleteV1(lineItemGroupId: "line_item_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.adHoc.<a href="/Sources/Resources/Billing/LineItemGroups/AdHoc/AdHocClient.swift">setTaskGroupV1</a>(lineItemGroupId: String, request: Requests.SetAdHocTaskGroupReq, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or updates the task_group_id on an existing ad-hoc LIG, deriving order_id and order_short_id from the task group. If the LIG is on a statement, recalculates the statement's order refs. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators, courier_org_operators, forwarder_org_operators] | (SetAdHocTaskGroupReq) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adHoc.setTaskGroupV1(
        lineItemGroupId: "line_item_group_id",
        request: .init(taskGroupId: "task_group_id")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SetAdHocTaskGroupReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing LineItemGroups Messages
<details><summary><code>client.billing.lineItemGroups.messages.<a href="/Sources/Resources/Billing/LineItemGroups/Messages/MessagesClient.swift">addV1</a>(lineItemGroupId: String, request: Requests.AddLineItemGroupMessageReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a message to a line item group's message log. | authz_personas=[lig_org_operators, lig_driver] | (AddLineItemGroupMessageReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.messages.addV1(
        lineItemGroupId: "line_item_group_id",
        request: .init(message: "message")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AddLineItemGroupMessageReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Billing LineItemGroups S3Objects
<details><summary><code>client.billing.lineItemGroups.s3Objects.<a href="/Sources/Resources/Billing/LineItemGroups/S3Objects/S3ObjectsClient.swift">getS3ObjectMetadataV1</a>(lineItemGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> LineItemGroupS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the metadata for a line item group S3 object, including blurhash for placeholder loading. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroupS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.s3Objects.getS3ObjectMetadataV1(lineItemGroupS3ObjectMetadataId: "line_item_group_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.s3Objects.<a href="/Sources/Resources/Billing/LineItemGroups/S3Objects/S3ObjectsClient.swift">getV1</a>(lineItemGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams a line item group S3 object file from storage. | authz_personas=[lig_org_operators, lig_driver] | () -> (binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.s3Objects.getV1(lineItemGroupS3ObjectMetadataId: "line_item_group_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.s3Objects.<a href="/Sources/Resources/Billing/LineItemGroups/S3Objects/S3ObjectsClient.swift">addV1</a>(lineItemGroupId: String, request: Requests.BodyLineItemGroupsS3ObjectPostAddV1BillingLineItemGroupsS3ObjectsAddV1LineItemGroupIdPost, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a file (image, PDF, etc.) to a line item group. Automatic blurhash generation for images. | authz_personas=[lig_org_operators, lig_driver] | (UploadFile) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.s3Objects.addV1(
        lineItemGroupId: "line_item_group_id",
        request: .init(file: .init(data: Data("".utf8)))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BodyLineItemGroupsS3ObjectPostAddV1BillingLineItemGroupsS3ObjectsAddV1LineItemGroupIdPost` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.lineItemGroups.s3Objects.<a href="/Sources/Resources/Billing/LineItemGroups/S3Objects/S3ObjectsClient.swift">deleteV1</a>(lineItemGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an S3 object metadata and the associated S3 object from a line item group. | authz_personas=[lig_org_operators, lig_driver] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.s3Objects.deleteV1(lineItemGroupS3ObjectMetadataId: "line_item_group_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lineItemGroupS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Integrations AirWaybills
<details><summary><code>client.integrations.airWaybills.<a href="/Sources/Resources/Integrations/AirWaybills/AirWaybillsClient.swift">createV1</a>(request: Requests.AirWaybillCreateReq, requestOptions: RequestOptions?) -> ChampAirWaybill1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a CHAMP air waybill pre-populated from the stored WebCargo booking record. The booking must be synced first via the webcargo_bookings sync route. Returns 409 if an air waybill already exists for this task group. | (AirWaybillCreateReq) -> (ChampAirWaybill1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.airWaybills.createV1(request: .init(taskGroupId: "task_group_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AirWaybillCreateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.airWaybills.<a href="/Sources/Resources/Integrations/AirWaybills/AirWaybillsClient.swift">retrieveV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> ChampAirWaybill1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the stored CHAMP air waybill for a task group. | () -> (ChampAirWaybill1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.airWaybills.retrieveV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.airWaybills.<a href="/Sources/Resources/Integrations/AirWaybills/AirWaybillsClient.swift">updateV1</a>(taskGroupId: String, request: Requests.ChampAirWaybillClientUpdate1, requestOptions: RequestOptions?) -> ChampAirWaybill1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates fields on an existing CHAMP air waybill. Any editable field can be set — only fields included in the request body are changed. | (ChampAirWaybillClientUpdate1) -> (ChampAirWaybill1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.airWaybills.updateV1(
        taskGroupId: "task_group_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ChampAirWaybillClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.airWaybills.<a href="/Sources/Resources/Integrations/AirWaybills/AirWaybillsClient.swift">submitV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> ChampAirWaybill1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submits a draft CHAMP air waybill to Traxon cargoHUB. Requires shipper, consignee, and charge_declarations to be filled in. Returns 422 if the AWB is not in draft status or required fields are missing. | () -> (ChampAirWaybill1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.airWaybills.submitV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.airWaybills.<a href="/Sources/Resources/Integrations/AirWaybills/AirWaybillsClient.swift">pdfV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Converts a CHAMP air waybill to PDF via CHAMP's conversion API. Requires shipper, consignee, and charge_declarations to be filled in. Returns the PDF file as application/pdf. | () -> (PDF binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.airWaybills.pdfV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.airWaybills.<a href="/Sources/Resources/Integrations/AirWaybills/AirWaybillsClient.swift">confirmationsV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> [ChampConfirmationReceipt1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves all CHAMP confirmation receipts linked to the air waybill for a task group. | () -> (list[ChampConfirmationReceipt1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.airWaybills.confirmationsV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.airWaybills.<a href="/Sources/Resources/Integrations/AirWaybills/AirWaybillsClient.swift">flightStatusesV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> [ChampFlightStatus1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves all CHAMP flight status updates linked to the air waybill for a task group. | () -> (list[ChampFlightStatus1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.airWaybills.flightStatusesV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Integrations WebcargoBookings
<details><summary><code>client.integrations.webcargoBookings.<a href="/Sources/Resources/Integrations/WebcargoBookings/WebcargoBookingsClient.swift">syncV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> WebcargoBookingRecord1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches the latest booking record from WebCargo for a task group and upserts it in the database. Creates the record on first call, updates on subsequent calls. | () -> (WebcargoBookingRecord1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.webcargoBookings.syncV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.webcargoBookings.<a href="/Sources/Resources/Integrations/WebcargoBookings/WebcargoBookingsClient.swift">retrieveV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> WebcargoBookingRecord1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the stored WebCargo booking record for a task group. Returns 404 if the booking has never been synced. | () -> (WebcargoBookingRecord1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.webcargoBookings.retrieveV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Integrations WebcargoEmbed
<details><summary><code>client.integrations.webcargoEmbed.<a href="/Sources/Resources/Integrations/WebcargoEmbed/WebcargoEmbedClient.swift">getEmbedV1</a>(taskGroupId: String, request: Requests.GetWebcargoEmbedReq, requestOptions: RequestOptions?) -> WebcargoEmbedResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generates a WebCargo Sky Embed token for a FLIGHT task group. Assembles cargo data from the task group's tasks and returns an embed URL for the booking widget. | (GetWebcargoEmbedReq) -> (WebcargoEmbedResponse)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.webcargoEmbed.getEmbedV1(
        taskGroupId: "task_group_id",
        request: .init(
            origin: "origin",
            destination: "destination",
            departure: "departure",
            country: "country"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.GetWebcargoEmbedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications AdHoc
<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/NotificationsAdHocClient.swift">listByOrderIdV1</a>(orderId: String, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> NotificationAdHocListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all ad-hoc notification intents for an order. | authz: min_org_role=operator | () -> (NotificationAdHocListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.adHoc.listByOrderIdV1(
        orderId: "order_id",
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/NotificationsAdHocClient.swift">createV1</a>(orderId: String, request: Requests.NotificationIntentAdHocClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new ad-hoc notification intent for an order. | authz: min_org_role=operator | (NotificationIntentAdHocClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.adHoc.createV1(
        orderId: "order_id",
        request: .init(
            schemaVersion: 1,
            directoryEntryId: "directory_entry_id"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.NotificationIntentAdHocClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/NotificationsAdHocClient.swift">deleteV1</a>(adHocId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an ad-hoc notification intent. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.adHoc.deleteV1(adHocId: "ad_hoc_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**adHocId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications Groups
<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">listByOrgV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> NotificationGroupListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all notification groups for the caller's organization. | authz: min_org_role=operator | () -> (NotificationGroupListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.listByOrgV1(
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">getForAdministratorV1</a>(groupId: String, requestOptions: RequestOptions?) -> NotificationGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves full notification group details including user membership. | authz: min_org_role=operator | () -> (NotificationGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.getForAdministratorV1(groupId: "group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">listByUserV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> NotificationGroupUserListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists notification groups the caller is a member of. | () -> (NotificationGroupUserListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.listByUserV1(
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">getForMemberV1</a>(groupId: String, requestOptions: RequestOptions?) -> NotificationGroupLimitedForDriver1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves limited notification group details for a group the caller is a member of. | () -> (NotificationGroupLimitedForDriver1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.getForMemberV1(groupId: "group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">createV1</a>(request: Requests.NotificationGroupClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new notification group for the organization. | authz: min_org_role=administrator | (NotificationGroupClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.createV1(request: .init(
        schemaVersion: 1,
        groupName: "group_name"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.NotificationGroupClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">updateNameV1</a>(groupId: String, groupName: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the name of a notification group. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.updateNameV1(
        groupId: "group_id",
        groupName: "group_name"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**groupName:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">addEventV1</a>(groupId: String, channel: String, event: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a notification event to a channel for a group. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.addEventV1(
        groupId: "group_id",
        channel: .email,
        event: .shippingOrderStaged
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**channel:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**event:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">removeEventV1</a>(groupId: String, channel: String, event: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a notification event from a channel for a group. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.removeEventV1(
        groupId: "group_id",
        channel: .email,
        event: .shippingOrderStaged
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**channel:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**event:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">addUserV1</a>(groupId: String, userId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a user to a notification group. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.addUserV1(
        groupId: "group_id",
        userId: "user_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**userId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">removeUserV1</a>(groupId: String, userId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a user from a notification group. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.removeUserV1(
        groupId: "group_id",
        userId: "user_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**userId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">deleteV1</a>(groupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a notification group. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.deleteV1(groupId: "group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">userOptInV1</a>(groupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opts the caller back into notifications for a group they were opted out of. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.userOptInV1(groupId: "group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">userOptOutV1</a>(groupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opts the caller out of notifications for a group. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.userOptOutV1(groupId: "group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications UserPreferences
<details><summary><code>client.notifications.userPreferences.<a href="/Sources/Resources/Notifications/UserPreferences/UserPreferencesClient.swift">getV1</a>(requestOptions: RequestOptions?) -> NotificationUserPreferences1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the caller's notification preferences. | () -> (NotificationUserPreferences1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.userPreferences.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.userPreferences.<a href="/Sources/Resources/Notifications/UserPreferences/UserPreferencesClient.swift">createV1</a>(requestOptions: RequestOptions?) -> NotificationUserPreferences1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new notification preferences record for the caller. Returns existing preferences if already created. | () -> (NotificationUserPreferences1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.userPreferences.createV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.userPreferences.<a href="/Sources/Resources/Notifications/UserPreferences/UserPreferencesClient.swift">updateV1</a>(request: Requests.UserNotificationPreferencesUpdateRequest, requestOptions: RequestOptions?) -> NotificationUserPreferences1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates notification preferences with explicit events, opt-in, or opt-out operations. | (UserNotificationPreferencesUpdateRequest) -> (NotificationUserPreferences1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.userPreferences.updateV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UserNotificationPreferencesUpdateRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications WebhookSetup
<details><summary><code>client.notifications.webhookSetup.<a href="/Sources/Resources/Notifications/WebhookSetup/WebhookSetupClient.swift">createAppV1</a>(requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Svix consumer application for the organization. Each org needs one app, then endpoints can be added and configured via the app portal. Idempotent - returns True if already created. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.webhookSetup.createAppV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.webhookSetup.<a href="/Sources/Resources/Notifications/WebhookSetup/WebhookSetupClient.swift">appPortalAccessV1</a>(requestOptions: RequestOptions?) -> WebhookAppPortalAccessRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a 1-day magic link URL to access the Svix App Portal. The link contains a one-time token - request a fresh link for each portal session. Admins/owners get full access, operators get read-only. | authz: min_org_role=operator | () -> (WebhookAppPortalAccessRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.webhookSetup.appPortalAccessV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.webhookSetup.<a href="/Sources/Resources/Notifications/WebhookSetup/WebhookSetupClient.swift">turnOnV1</a>(requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Enables webhook notifications for the organization. Idempotent. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.webhookSetup.turnOnV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.webhookSetup.<a href="/Sources/Resources/Notifications/WebhookSetup/WebhookSetupClient.swift">turnOffV1</a>(requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Disables webhook notifications for the organization. Idempotent. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.webhookSetup.turnOffV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs Connections
<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listShippersV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> ShipperConnectionListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists shipper organizations based on the caller's organization type. Couriers see connected shippers, forwarders see connected shippers. | () -> (ShipperConnectionListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listShippersV1(
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listCouriersV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> CourierConnectionListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists courier organizations based on the caller's organization type. Shippers see connected couriers, forwarders see connected couriers. | () -> (CourierConnectionListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listCouriersV1(
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listForwardersV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> ForwarderConnectionListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists forwarder organizations based on the caller's organization type. Shippers see connected forwarders, couriers see connected forwarders. | () -> (ForwarderConnectionListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listForwardersV1(
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">getByHandleV1</a>(handle: String, requestOptions: RequestOptions?) -> ConnectionsGetByHandleV1Response?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets connection between caller's org and org with specified handle. | () -> (ShipperCourierConnection1 | ShipperForwarderConnection1 | ForwarderCourierConnection1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.getByHandleV1(handle: "handle")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**handle:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">createConnectionToCourierV1</a>(request: CreateConnectionReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new connection to a courier organization. Shippers and forwarders can initiate connections to couriers. | (CreateConnectionReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.createConnectionToCourierV1(request: CreateConnectionReq(
        handle: "handle"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `CreateConnectionReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">createConnectionToShipperV1</a>(request: CreateConnectionReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new connection to a shipper organization. Only forwarders can initiate connections to shippers. | (CreateConnectionReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.createConnectionToShipperV1(request: CreateConnectionReq(
        handle: "handle"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `CreateConnectionReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">createConnectionToForwarderV1</a>(request: CreateConnectionReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new connection to a forwarder organization. Only shippers can initiate connections to forwarders. | (CreateConnectionReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.createConnectionToForwarderV1(request: CreateConnectionReq(
        handle: "handle"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `CreateConnectionReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs OffChrtShipperOrg
<details><summary><code>client.orgs.offChrtShipperOrg.<a href="/Sources/Resources/Orgs/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">createV1</a>(request: Requests.OffChrtShipperOrgClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an off-platform shipper organization record. | (OffChrtShipperOrgClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtShipperOrg.createV1(request: .init(
        schemaVersion: 1,
        emailAddressPrimary: "email_address_primary"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OffChrtShipperOrgClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.offChrtShipperOrg.<a href="/Sources/Resources/Orgs/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">listV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OffChrtShipperOrgListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all off-platform shipper organizations created by the caller's organization. | () -> (OffChrtShipperOrgListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtShipperOrg.listV1(
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.offChrtShipperOrg.<a href="/Sources/Resources/Orgs/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> OffChrtShipperOrg1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves specific off-platform shipper organization by ID. | () -> (OffChrtShipperOrg1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtShipperOrg.getByIdV1(id: "id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.offChrtShipperOrg.<a href="/Sources/Resources/Orgs/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">deleteByIdV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes off-platform shipper organization owned by the caller's organization. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtShipperOrg.deleteByIdV1(id: "id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.offChrtShipperOrg.<a href="/Sources/Resources/Orgs/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">updateByIdV1</a>(id: String, request: Requests.OffChrtShipperOrgClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates existing off-platform shipper organization owned by the caller's organization. | (OffChrtShipperOrgClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtShipperOrg.updateByIdV1(
        id: "id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OffChrtShipperOrgClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs PrivateData
<details><summary><code>client.orgs.privateData.<a href="/Sources/Resources/Orgs/PrivateData/PrivateDataClient.swift">getV1</a>(requestOptions: RequestOptions?) -> OrgPrivateData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves private organization data for the caller's organization. | authz: min_org_role=operator | () -> (OrgPrivateData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.privateData.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs OrgProfiles
<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">getV1</a>(requestOptions: RequestOptions?) -> OrgProfileRes1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the courier or forwarder organization profile for the caller's organization. | () -> (OrgProfileRes1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">createCourierV1</a>(request: Requests.CourierOrgProfileClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new courier organization profile. Fails if a profile already exists for the organization. | (CourierOrgProfileClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.createCourierV1(request: .init(
        schemaVersion: 1,
        description: "description",
        emailAddressPrimary: "email_address_primary",
        phoneNumberPrimary: "phone_number_primary"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CourierOrgProfileClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">createForwarderV1</a>(request: Requests.ForwarderOrgProfileClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new forwarder organization profile. Fails if a profile already exists for the organization. | (ForwarderOrgProfileClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.createForwarderV1(request: .init(
        schemaVersion: 1,
        description: "description",
        emailAddressPrimary: "email_address_primary",
        phoneNumberPrimary: "phone_number_primary"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ForwarderOrgProfileClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">updateCourierV1</a>(request: Requests.CourierOrgProfileClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing courier organization profile. Can update one or more fields. | (CourierOrgProfileClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.updateCourierV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CourierOrgProfileClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">updateForwarderV1</a>(request: Requests.ForwarderOrgProfileClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing forwarder organization profile. Can update one or more fields. | (ForwarderOrgProfileClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.updateForwarderV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ForwarderOrgProfileClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">getByHandleV1</a>(handle: String, requestOptions: RequestOptions?) -> OrgProfileRes1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a courier or forwarder organization profile using the organization's handle for public profile viewing. | () -> (OrgProfileRes1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.getByHandleV1(handle: "handle")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**handle:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">getAvatarV1</a>(handle: String, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the organization avatar image URL from Clerk or a placeholder if not found. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.getAvatarV1(handle: "handle")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**handle:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs PublicData
<details><summary><code>client.orgs.publicData.<a href="/Sources/Resources/Orgs/PublicData/PublicDataClient.swift">getV1</a>(requestOptions: RequestOptions?) -> OrgPublicData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves public organization data for the caller's organization. | () -> (OrgPublicData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.publicData.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.publicData.<a href="/Sources/Resources/Orgs/PublicData/PublicDataClient.swift">createV1</a>(request: Requests.CreateOrgPublicDataReq, requestOptions: RequestOptions?) -> CreateOrgPublicDataRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates org_public_data and org_private_data documents for the caller's organization using org_type from JWT. | (CreateOrgPublicDataReq) -> (CreateOrgPublicDataRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.publicData.createV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateOrgPublicDataReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.publicData.<a href="/Sources/Resources/Orgs/PublicData/PublicDataClient.swift">updateV1</a>(request: Requests.UpdateOrgPublicDataReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the handle and/or company_name for the caller's organization. | (UpdateOrgPublicDataReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.publicData.updateV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdateOrgPublicDataReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.publicData.<a href="/Sources/Resources/Orgs/PublicData/PublicDataClient.swift">getByOrgIdV1</a>(orgId: String, requestOptions: RequestOptions?) -> OrgPublicData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves public organization data for a specific organization by ID. | () -> (OrgPublicData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.publicData.getByOrgIdV1(orgId: "org_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orgId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.publicData.<a href="/Sources/Resources/Orgs/PublicData/PublicDataClient.swift">getHandleAvailabilityV1</a>(handle: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns True when the provided handle is available, otherwise False. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.publicData.getHandleAvailabilityV1(handle: "handle")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**handle:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs OrgInfoForConnections Shipper
<details><summary><code>client.orgs.orgInfoForConnections.shipper.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Shipper/ShipperClient.swift">getV1</a>(requestOptions: RequestOptions?) -> ShipperOrgInfoForConnections1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves shipper organization connection information for the caller's organization. | () -> (ShipperOrgInfoForConnections1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.shipper.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgInfoForConnections.shipper.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Shipper/ShipperClient.swift">createV1</a>(request: Requests.ShipperOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates shipper organization connection information. Fails if already exists. | (ShipperOrgInfoForConnectionsClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.shipper.createV1(request: .init(
        schemaVersion: 1,
        emailAddressPrimary: "email_address_primary"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ShipperOrgInfoForConnectionsClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgInfoForConnections.shipper.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Shipper/ShipperClient.swift">updateV1</a>(request: Requests.ShipperOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates existing shipper organization connection information. | (ShipperOrgInfoForConnectionsClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.shipper.updateV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ShipperOrgInfoForConnectionsClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs OrgInfoForConnections Courier
<details><summary><code>client.orgs.orgInfoForConnections.courier.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Courier/CourierClient.swift">getV1</a>(requestOptions: RequestOptions?) -> CourierOrgInfoForConnections1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves courier organization connection information for the caller's organization. | () -> (CourierOrgInfoForConnections1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.courier.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgInfoForConnections.courier.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Courier/CourierClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [CourierOrgInfoForConnections1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves list of connected courier organizations for forwarder or shipper organizations. Not accessible by courier organizations. | () -> (list[CourierOrgInfoForConnections1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.courier.listV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgInfoForConnections.courier.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Courier/CourierClient.swift">createV1</a>(request: Requests.CourierOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates courier organization connection information. Fails if already exists. | (CourierOrgInfoForConnectionsClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.courier.createV1(request: .init(
        schemaVersion: 1,
        emailAddressPrimary: "email_address_primary"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CourierOrgInfoForConnectionsClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgInfoForConnections.courier.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Courier/CourierClient.swift">updateV1</a>(request: Requests.CourierOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates existing courier organization connection information. | (CourierOrgInfoForConnectionsClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.courier.updateV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CourierOrgInfoForConnectionsClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs OrgInfoForConnections Forwarder
<details><summary><code>client.orgs.orgInfoForConnections.forwarder.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Forwarder/ForwarderClient.swift">getV1</a>(requestOptions: RequestOptions?) -> ForwarderOrgInfoForConnections1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves forwarder organization connection information for the caller's organization. | () -> (ForwarderOrgInfoForConnections1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.forwarder.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgInfoForConnections.forwarder.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Forwarder/ForwarderClient.swift">createV1</a>(request: Requests.ForwarderOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates forwarder organization connection information. Fails if already exists. | (ForwarderOrgInfoForConnectionsClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.forwarder.createV1(request: .init(
        schemaVersion: 1,
        emailAddressPrimary: "email_address_primary"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ForwarderOrgInfoForConnectionsClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.orgInfoForConnections.forwarder.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Forwarder/ForwarderClient.swift">updateV1</a>(request: Requests.ForwarderOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates existing forwarder organization connection information. | (ForwarderOrgInfoForConnectionsClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.forwarder.updateV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ForwarderOrgInfoForConnectionsClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Drivers
<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">getForCallerV1</a>(requestOptions: RequestOptions?) -> Driver1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves driver information for the caller within their organization. | () -> (Driver1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.getForCallerV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">getByDriverIdV1</a>(driverId: String, requestOptions: RequestOptions?) -> Driver1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves detailed driver information by driver ID within the organization. | () -> (Driver1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.getByDriverIdV1(driverId: "driver_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**driverId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">listOrgMembersAndDriversV1</a>(filterRole: OrgRoleEnum?, filterAvailableAccordingToDriver: Bool?, filterAvailableAccordingToOperators: Bool?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OrgMembersAndDriversListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all organization members paired with their driver information if they are drivers. Filter by availability. | () -> (OrgMembersAndDriversListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.listOrgMembersAndDriversV1(
        filterAvailableAccordingToDriver: true,
        filterAvailableAccordingToOperators: true,
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filterRole:** `OrgRoleEnum?` — Filter by organization role(s)
    
</dd>
</dl>

<dl>
<dd>

**filterAvailableAccordingToDriver:** `Bool?` — Filter by driver's self-reported availability.
    
</dd>
</dl>

<dl>
<dd>

**filterAvailableAccordingToOperators:** `Bool?` — Filter by operator-set availability.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">listV1</a>(sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterAvailableAccordingToDriver: Bool?, filterAvailableAccordingToOperators: Bool?, requestOptions: RequestOptions?) -> DriverListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all drivers belonging to the caller's organization with filtering, sorting, pagination, and optional full-text search. | () -> (DriverListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.listV1(
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterAvailableAccordingToDriver: true,
        filterAvailableAccordingToOperators: true
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String?` — Full-text search query
    
</dd>
</dl>

<dl>
<dd>

**filterAvailableAccordingToDriver:** `Bool?` — Filter by driver's self-reported availability
    
</dd>
</dl>

<dl>
<dd>

**filterAvailableAccordingToOperators:** `Bool?` — Filter by operator-set availability
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">createV1</a>(targetUserId: String?, request: Requests.DriverClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new driver profile for the target user (defaults to caller). Drivers can create themselves; operators+ can create any org member. Courier orgs only. | (DriverClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.createV1(
        targetUserId: "target_user_id",
        request: .init(schemaVersion: 1)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**targetUserId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.DriverClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">updateV1</a>(driverId: String, request: Requests.DriverClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates driver contact details and vehicle type assignments. Courier orgs only; caller must be the driver (self) or an operator+. | (DriverClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.updateV1(
        driverId: "driver_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**driverId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.DriverClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">clearLastSeenV1</a>(requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Clears the driver's last known location and timestamp. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.clearLastSeenV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">updateAvailabilityAccordingToDriverV1</a>(request: DriverUpdateAvailabilityReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the caller's driver availability status. Must have status UNASSIGNED to set availability to False; always allows setting to True. Courier orgs only. | (DriverUpdateAvailabilityReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.updateAvailabilityAccordingToDriverV1(request: DriverUpdateAvailabilityReq(
        available: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `DriverUpdateAvailabilityReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">updateAvailabilityAccordingToOperatorsV1</a>(driverId: String, request: DriverUpdateAvailabilityReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a driver's availability status. Must have status UNASSIGNED to set availability to False; always allows setting to True. Courier orgs only, min role: operator. | (DriverUpdateAvailabilityReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.updateAvailabilityAccordingToOperatorsV1(
        driverId: "driver_id",
        request: DriverUpdateAvailabilityReq(
            available: true
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**driverId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `DriverUpdateAvailabilityReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Cargos
<details><summary><code>client.shipping.cargos.<a href="/Sources/Resources/Shipping/Cargos/CargosClient.swift">updateV1</a>(cargoId: String, request: CargoClientUpdate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a cargo's details. Cargo must be in STAGED, IN_TRANSIT, DELIVERED, SKIPPED, or EXCEPTION status. | authz_personas=[lig_owner_operators] | (CargoClientUpdate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.cargos.updateV1(
        cargoId: "cargo_id",
        request: CargoClientUpdate1(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `CargoClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Flights
<details><summary><code>client.shipping.flights.<a href="/Sources/Resources/Shipping/Flights/FlightsClient.swift">getFlightInfoForTaskV1</a>(taskId: String, requestOptions: RequestOptions?) -> FlightInfoForTaskRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns flight info from an adjacent FLIGHT task group for TENDER_TO_AIRLINE or RECOVER_FROM_AIRLINE tasks. | authz_personas=[courier_driver, forwarder_org_operators, courier_org_operators, shipper_org_operators] | () -> (FlightInfoForTaskRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.flights.getFlightInfoForTaskV1(taskId: "task_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping TaskArtifacts
<details><summary><code>client.shipping.taskArtifacts.<a href="/Sources/Resources/Shipping/TaskArtifacts/TaskArtifactsClient.swift">addToTaskV1</a>(taskId: String, request: Requests.AddTaskArtifactReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a new task artifact to a task. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators] | (AddTaskArtifactReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.addToTaskV1(
        taskId: "task_id",
        request: .init(
            taskArtifact: TaskArtifactClientCreate1(
                schemaVersion: 1,
                type: .image
            ),
            status: .draft
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AddTaskArtifactReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.<a href="/Sources/Resources/Shipping/TaskArtifacts/TaskArtifactsClient.swift">completeV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks a task artifact as COMPLETED. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.completeV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskArtifactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.<a href="/Sources/Resources/Shipping/TaskArtifacts/TaskArtifactsClient.swift">skipV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks a task artifact as SKIPPED. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.skipV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskArtifactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.<a href="/Sources/Resources/Shipping/TaskArtifacts/TaskArtifactsClient.swift">deleteV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task artifact. | authz_personas=[lig_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.deleteV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskArtifactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Orders
<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/OrdersClient.swift">stageV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a draft order and stages all related entities in a transaction. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.stageV1(orderId: "order_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/OrdersClient.swift">cancelV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels an order and all related task groups and tasks in a transaction. | authz_personas=[lig_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.cancelV1(orderId: "order_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderDrafts
<details><summary><code>client.shipping.orderDrafts.<a href="/Sources/Resources/Shipping/OrderDrafts/OrderDraftsClient.swift">newV1</a>(request: Requests.OrdersNewDraftReq, requestOptions: RequestOptions?) -> OrdersNewDraftRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new draft order with org assignments based on caller's organization type. | (OrdersNewDraftReq) -> (OrdersNewDraftRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.newV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersNewDraftReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.<a href="/Sources/Resources/Shipping/OrderDrafts/OrderDraftsClient.swift">updateV1</a>(request: Requests.OrdersDraftUpdateReq, requestOptions: RequestOptions?) -> OrdersDraftUpdateRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates forwarder and/or shipper org assignments for a draft order. | (OrdersDraftUpdateReq) -> (OrdersDraftUpdateRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.updateV1(request: .init(orderId: "order_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersDraftUpdateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.<a href="/Sources/Resources/Shipping/OrderDrafts/OrderDraftsClient.swift">deleteV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a draft order and all associated entities. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.deleteV1(orderId: "order_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.<a href="/Sources/Resources/Shipping/OrderDrafts/OrderDraftsClient.swift">validateV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Checks whether the draft order satisfies all requirements to move into staging. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.validateV1(orderId: "order_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping TaskGroups
<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">startV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts a task group by transitioning it from STAGED to IN_PROGRESS and syncing related order state. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.startV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">setTaskOrderingV1</a>(taskGroupId: String, request: Requests.SetTaskOrderingReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the ordering of tasks within a task group. Requires complete list of task IDs in desired order. Completed tasks must be before staged tasks. | authz_personas=[lig_owner_operators] | (SetTaskOrderingReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.setTaskOrderingV1(
        taskGroupId: "task_group_id",
        request: .init(taskIds: [
            "task_ids"
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SetTaskOrderingReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">updateDriverV1</a>(taskGroupId: String, request: Requests.UpdateDriverReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the driver assigned to a task group. | authz_personas=[courier_org_operators] | (UpdateDriverReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.updateDriverV1(
        taskGroupId: "task_group_id",
        request: .init(driverId: "driver_id")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateDriverReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">removeDriverV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the driver from a task group (sets driver_id to null). Allowed when STAGED or IN_PROGRESS (if no tasks have reached a terminal status). | authz_personas=[courier_org_operators, courier_driver] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.removeDriverV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">updateCourierOrgV1</a>(taskGroupId: String, request: Requests.UpdateCourierOrgReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the courier organization assigned to a task group. | authz_personas=[forwarder_org_operators] | (UpdateCourierOrgReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.updateCourierOrgV1(
        taskGroupId: "task_group_id",
        request: .init(courierOrgId: "courier_org_id")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateCourierOrgReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">assignRateSheetV1</a>(rateSheetId: String, taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Assigns a rate sheet to a task group. Can also hot-swap an existing rate sheet for a new one. Syncs the corresponding LineItemGroup and recalculates LineItems. | authz_personas=[lig_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.assignRateSheetV1(
        rateSheetId: "rate_sheet_id",
        taskGroupId: "task_group_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**rateSheetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">setFlightInfoV1</a>(taskGroupId: String, request: SetFlightInfoReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the flight number and/or fa_flight_ids on a task group. | authz_personas=[lig_owner_operators] | (SetFlightInfoReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.setFlightInfoV1(
        taskGroupId: "task_group_id",
        request: SetFlightInfoReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `SetFlightInfoReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">addMessageV1</a>(taskGroupId: String, request: Requests.AddMessageReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a message to a task group's message log. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators, shipper_org_operators] | (AddMessageReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.addMessageV1(
        taskGroupId: "task_group_id",
        request: .init(message: "message")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AddMessageReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Tasks
<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">addToTaskGroupV1</a>(taskGroupId: String, request: Requests.AddTaskToGroupReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a new task to a task group at a specific index. | authz_personas=[lig_owner_operators] | (AddTaskToGroupReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.addToTaskGroupV1(
        taskGroupId: "task_group_id",
        request: .init(
            task: TaskClientCreate1(
                schemaVersion: 1
            ),
            status: .draft,
            index: 1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AddTaskToGroupReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">updateV1</a>(taskId: String, request: TaskClientUpdate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a task. Task must be in STAGED status. | authz_personas=[lig_owner_operators] | (TaskClientUpdate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.updateV1(
        taskId: "task_id",
        request: TaskClientUpdate1(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `TaskClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">completeV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks a task as COMPLETED. | authz_personas=[courier_driver, forwarder_org_operators, courier_org_operators] (depending on type) | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.completeV1(taskId: "task_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">skipV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks a task as SKIPPED. | authz_personas=[courier_driver, forwarder_org_operators, courier_org_operators] (depending on type) | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.skipV1(taskId: "task_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">deleteV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task. Task must be in STAGED status. | authz_personas=[lig_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.deleteV1(taskId: "task_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderDrafts TaskGroup
<details><summary><code>client.shipping.orderDrafts.taskGroup.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskGroup/TaskGroupClient.swift">addV1</a>(request: Requests.OrderDraftAddTaskGroupReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a task group to an existing order draft. Validates order is in DRAFT status and owned by caller. | (OrderDraftAddTaskGroupReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskGroup.addV1(request: .init(
        taskGroupType: .chrtGroundCourier,
        orderId: "order_id"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderDraftAddTaskGroupReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.taskGroup.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskGroup/TaskGroupClient.swift">setFlightInfoV1</a>(taskGroupId: String, request: SetFlightInfoReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the flight number and/or fa_flight_ids on a draft task group. | (SetFlightInfoReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskGroup.setFlightInfoV1(
        taskGroupId: "task_group_id",
        request: SetFlightInfoReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `SetFlightInfoReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.taskGroup.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskGroup/TaskGroupClient.swift">updateCourierOrgV1</a>(taskGroupId: String, request: Requests.UpdateCourierOrgDraftReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the courier organization assigned to a draft task group. | (UpdateCourierOrgDraftReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskGroup.updateCourierOrgV1(
        taskGroupId: "task_group_id",
        request: .init(courierOrgId: "courier_org_id")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateCourierOrgDraftReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.taskGroup.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskGroup/TaskGroupClient.swift">removeCourierOrgV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the courier organization from a draft task group (sets courier_org_id to null). | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskGroup.removeCourierOrgV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.taskGroup.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskGroup/TaskGroupClient.swift">setTaskOrderingV1</a>(taskGroupId: String, request: Requests.SetTaskOrderingDraftReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the ordering of tasks within a draft task group. Must provide all task IDs with no duplicates. | (SetTaskOrderingDraftReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskGroup.setTaskOrderingV1(
        taskGroupId: "task_group_id",
        request: .init(taskIds: [
            "task_ids"
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SetTaskOrderingDraftReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.taskGroup.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskGroup/TaskGroupClient.swift">setRateSheetsV1</a>(taskGroupId: String, request: Requests.SetRateSheetsReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets rate sheet IDs on a draft task group. Forwarder mode (SPF/FPC) and direct shipper mode (SPC) are mutually exclusive. CPD is independent. | (SetRateSheetsReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskGroup.setRateSheetsV1(
        taskGroupId: "task_group_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SetRateSheetsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.taskGroup.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskGroup/TaskGroupClient.swift">setServiceTypeV1</a>(taskGroupId: String, request: Requests.SetServiceTypeReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the service type on a draft task group. Can only be set when task group is in DRAFT status. | (SetServiceTypeReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskGroup.setServiceTypeV1(
        taskGroupId: "task_group_id",
        request: .init(serviceType: .onDemand)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SetServiceTypeReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.taskGroup.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskGroup/TaskGroupClient.swift">deleteV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task group and all associated entities (tasks, task artifacts, S3 metadata). The task group must belong to a DRAFT order. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskGroup.deleteV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderDrafts Task
<details><summary><code>client.shipping.orderDrafts.task.<a href="/Sources/Resources/Shipping/OrderDrafts/Task/TaskClient.swift">addV1</a>(request: Requests.OrderDraftAddTaskReqV1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a task to an existing task group in a draft order. Validates task action type matches task group type. | authz_personas=[draft_creator_org_operator] | (OrderDraftAddTaskReqV1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.task.addV1(request: .init(
        taskGroupId: "task_group_id",
        task: TaskClientCreate1(
            schemaVersion: 1
        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderDraftAddTaskReqV1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.task.<a href="/Sources/Resources/Shipping/OrderDrafts/Task/TaskClient.swift">updateV1</a>(request: Requests.OrderDraftUpdateTaskReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a task in an existing draft order. | authz_personas=[draft_creator_org_operator] | (OrderDraftUpdateTaskReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.task.updateV1(request: .init(
        taskId: "task_id",
        taskUpdate: TaskClientUpdate1(

        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderDraftUpdateTaskReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.task.<a href="/Sources/Resources/Shipping/OrderDrafts/Task/TaskClient.swift">deleteV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task from a draft order, including all task artifacts. Cargo is preserved. Task is removed from task group. | authz_personas=[draft_creator_org_operator] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.task.deleteV1(taskId: "task_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderDrafts TaskArtifact
<details><summary><code>client.shipping.orderDrafts.taskArtifact.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskArtifact/TaskArtifactClient.swift">addV1</a>(request: Requests.OrderDraftAddTaskArtifactReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a task artifact to an existing task in a draft order. | (OrderDraftAddTaskArtifactReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskArtifact.addV1(request: .init(
        taskId: "task_id",
        taskArtifactType: .image
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderDraftAddTaskArtifactReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.taskArtifact.<a href="/Sources/Resources/Shipping/OrderDrafts/TaskArtifact/TaskArtifactClient.swift">deleteV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task artifact from a draft order and removes it from the associated task. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.taskArtifact.deleteV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskArtifactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderDrafts Cargo
<details><summary><code>client.shipping.orderDrafts.cargo.<a href="/Sources/Resources/Shipping/OrderDrafts/Cargo/CargoClient.swift">addV1</a>(request: Requests.OrderDraftAddCargoReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a cargo item to an existing draft order. Validates order is in DRAFT status and owned by caller. | (OrderDraftAddCargoReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.cargo.addV1(request: .init(
        orderId: "order_id",
        cargo: CargoClientCreate1(
            schemaVersion: 1,
            cargoType: .spareParts
        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderDraftAddCargoReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.cargo.<a href="/Sources/Resources/Shipping/OrderDrafts/Cargo/CargoClient.swift">associateWithTaskV1</a>(request: Requests.OrderDraftAssociateCargoWithTaskReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Associates existing cargo with a task in a draft order. | (OrderDraftAssociateCargoWithTaskReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.cargo.associateWithTaskV1(request: .init(
        orderId: "order_id",
        taskId: "task_id",
        cargoId: "cargo_id"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderDraftAssociateCargoWithTaskReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.cargo.<a href="/Sources/Resources/Shipping/OrderDrafts/Cargo/CargoClient.swift">updateV1</a>(request: Requests.OrderDraftUpdateCargoReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a cargo item in an existing draft order. Validates order is in DRAFT status and owned by caller. | (OrderDraftUpdateCargoReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.cargo.updateV1(request: .init(
        cargoId: "cargo_id",
        cargoUpdate: CargoClientUpdate1(

        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderDraftUpdateCargoReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.cargo.<a href="/Sources/Resources/Shipping/OrderDrafts/Cargo/CargoClient.swift">deleteV1</a>(cargoId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a cargo item from a draft order and removes references from associated tasks. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.cargo.deleteV1(cargoId: "cargo_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderDrafts Expanded
<details><summary><code>client.shipping.orderDrafts.expanded.<a href="/Sources/Resources/Shipping/OrderDrafts/Expanded/ExpandedClient.swift">retrieveV1</a>(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderDraftExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a single draft order with optional expanded related data. Any user in the org (with operator+ role) can access it. | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.expanded.retrieveV1(
        orderIdOrShortId: "order_id_or_short_id",
        request: OrderAndTaskGroupExpandedReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderIdOrShortId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderDrafts.expanded.<a href="/Sources/Resources/Shipping/OrderDrafts/Expanded/ExpandedClient.swift">listV1</a>(sortBy: OrderDraftSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderDraftExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded draft orders for the organization with filtering, sorting, and pagination. | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.expanded.listV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        request: .init(body: OrderAndTaskGroupExpandedReq(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `OrderDraftSortByEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Orders Expanded
<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">forShipperOperatorsV1</a>(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded order with optional related data for shipper operators. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.forShipperOperatorsV1(
        orderIdOrShortId: "order_id_or_short_id",
        request: OrderAndTaskGroupExpandedReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderIdOrShortId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">forForwarderOperatorsV1</a>(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded order with optional related data for forwarder operators. | authz_personas=[forwarder_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.forForwarderOperatorsV1(
        orderIdOrShortId: "order_id_or_short_id",
        request: OrderAndTaskGroupExpandedReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderIdOrShortId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">listForForwarderOperatorsV1</a>(sortBy: OrderSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: OrderStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterOrderCancelledAtTimestampLte: Date?, filterOrderCancelledAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrdersExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded orders for forwarder operators with filtering, sorting, pagination, and optional search. | authz: allowed_org_types=[forwarder], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.listForForwarderOperatorsV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        request: .init(body: OrderAndTaskGroupExpandedReq(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `OrderSortByEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String?` — Full-text search query (searches order short_id)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `OrderStatusEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOrderCancelledAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOrderCancelledAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">listForShipperOperatorsV1</a>(sortBy: OrderSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: OrderStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterOrderCancelledAtTimestampLte: Date?, filterOrderCancelledAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrdersExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded orders for shipper operators with filtering, sorting, pagination, and optional search. | authz: allowed_org_types=[shipper], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.listForShipperOperatorsV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        request: .init(body: OrderAndTaskGroupExpandedReq(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `OrderSortByEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String?` — Full-text search query (searches order short_id)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `OrderStatusEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOrderCancelledAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOrderCancelledAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct order short_id values matching the query via case-insensitive regex. Searches non-draft orders visible to the caller's org. | authz: allowed_org_types=[forwarder, shipper], min_org_role=operator | () -> (list[str])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.typeaheadV1(
        query: "query",
        limit: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**query:** `String` — Typeahead search query
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` — Max results
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping TaskArtifacts S3Object
<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/S3ObjectClient.swift">getS3ObjectMetadataV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> TaskArtifactS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the metadata for a task artifact S3 object, including blurhash for placeholder loading. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (TaskArtifactS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.s3Object.getS3ObjectMetadataV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskArtifactS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/S3ObjectClient.swift">getV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams a task artifact S3 object file from storage. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.s3Object.getV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskArtifactS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/S3ObjectClient.swift">addV1</a>(taskArtifactId: String, request: Requests.BodyPostTaskArtifactsS3ObjectAddV1ShippingTaskArtifactsS3ObjectAddV1TaskArtifactIdPost, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a file (image, PDF, etc.) to a task artifact. Automatic blurhash generation for images. | authz_personas=[courier_driver, forwarder_org_operators, courier_org_operators, shipper_org_operators] | (UploadFile) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.s3Object.addV1(
        taskArtifactId: "task_artifact_id",
        request: .init(file: .init(data: Data("".utf8)))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskArtifactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BodyPostTaskArtifactsS3ObjectAddV1ShippingTaskArtifactsS3ObjectAddV1TaskArtifactIdPost` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/S3ObjectClient.swift">deleteV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an S3 object metadata and the associated S3 object from a task artifact. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.s3Object.deleteV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskArtifactS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping TaskGroups TaskGroupId
<details><summary><code>client.shipping.taskGroups.taskGroupId.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupId/TaskGroupIdClient.swift">forCourierOperatorsV1</a>(orderIdOrShortId: String, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the task group IDs for the courier organization assigned to an order's task groups. | authz_personas=[courier_org_operators] | () -> (list[PydanticObjectId])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.taskGroupId.forCourierOperatorsV1(orderIdOrShortId: "order_id_or_short_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderIdOrShortId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.taskGroupId.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupId/TaskGroupIdClient.swift">forCourierDriverV1</a>(orderIdOrShortId: String, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the task group IDs for the courier driver assigned to an order's task groups. | authz_personas=[courier_driver] | () -> (list[PydanticObjectId])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.taskGroupId.forCourierDriverV1(orderIdOrShortId: "order_id_or_short_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderIdOrShortId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping TaskGroups S3Object
<details><summary><code>client.shipping.taskGroups.s3Object.<a href="/Sources/Resources/Shipping/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">getS3ObjectMetadataV1</a>(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> TaskGroupS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the metadata for a task group S3 object, including blurhash for placeholder loading. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (TaskGroupS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.s3Object.getS3ObjectMetadataV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.s3Object.<a href="/Sources/Resources/Shipping/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">getV1</a>(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams a task group S3 object file from storage. | authz_personas=[courier_driver, courier_org_operators, shipper_org_operators, forwarder_org_operators] | () -> (binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.s3Object.getV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.s3Object.<a href="/Sources/Resources/Shipping/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">addV1</a>(taskGroupId: String, request: Requests.BodyPostTaskGroupsS3ObjectAddV1ShippingTaskGroupsS3ObjectAddV1TaskGroupIdPost, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a file (image, PDF, etc.) to a task group. Automatic blurhash generation for images. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators, shipper_org_operators] | (UploadFile) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.s3Object.addV1(
        taskGroupId: "task_group_id",
        request: .init(file: .init(data: Data("".utf8)))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BodyPostTaskGroupsS3ObjectAddV1ShippingTaskGroupsS3ObjectAddV1TaskGroupIdPost` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.s3Object.<a href="/Sources/Resources/Shipping/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">deleteV1</a>(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an S3 object metadata and the associated S3 object from a task group. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.s3Object.deleteV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping TaskGroups Expanded
<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forCourierOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group with optional related data for courier operators. | authz_personas=[courier_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forCourierOperatorsV1(
        taskGroupId: "task_group_id",
        request: OrderAndTaskGroupExpandedReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forCourierDriverV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group with optional related data for courier drivers. | authz_personas=[courier_driver] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forCourierDriverV1(
        taskGroupId: "task_group_id",
        request: OrderAndTaskGroupExpandedReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forShipperOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group with optional related data for shipper operators. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forShipperOperatorsV1(
        taskGroupId: "task_group_id",
        request: OrderAndTaskGroupExpandedReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forForwarderOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group with optional related data for forwarder operators. | authz_personas=[forwarder_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forForwarderOperatorsV1(
        taskGroupId: "task_group_id",
        request: OrderAndTaskGroupExpandedReq(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">listForCourierOperatorsV1</a>(sortBy: TaskGroupSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: TaskGroupStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterSkippedAtTimestampLte: Date?, filterSkippedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded task groups for courier operators with filtering, sorting, pagination, and optional full-text search. | authz_personas=[courier_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.listForCourierOperatorsV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterSkippedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterSkippedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        request: .init(body: OrderAndTaskGroupExpandedReq(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `TaskGroupSortByEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String?` — Full-text search query (searches order_short_id, flight_number)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `TaskGroupStatusEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterSkippedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterSkippedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">listForCourierDriverV1</a>(sortBy: TaskGroupSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: TaskGroupStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterSkippedAtTimestampLte: Date?, filterSkippedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded task groups for courier driver with filtering, sorting, pagination, and optional full-text search. | authz_personas=[courier_driver] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.listForCourierDriverV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterSkippedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterSkippedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        request: .init(body: OrderAndTaskGroupExpandedReq(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `TaskGroupSortByEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String?` — Full-text search query (searches order_short_id, flight_number)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `TaskGroupStatusEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterSkippedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterSkippedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderAndTaskGroupExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct order_short_id values matching the query via case-insensitive regex. Searches non-draft task groups belonging to the caller's courier org. | authz: allowed_org_types=[courier], min_org_role=driver | () -> (list[str])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.typeaheadV1(
        query: "query",
        limit: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**query:** `String` — Typeahead search query
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` — Max results
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking Devices
<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">registerToOrgV1</a>(request: Requests.DeviceClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a tracking device to the caller's organization. If the device is already registered to a different organization, returns 409 Conflict. | (DeviceClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.registerToOrgV1(request: .init(
        schemaVersion: 1,
        deviceMacAddress: "device_mac_address"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DeviceClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">updateV1</a>(deviceId: String, request: Requests.DeviceClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a device's type, comments, and/or off_chrt_reference_id. Use __set_to_None flags to explicitly clear Optional fields. | (DeviceClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.updateV1(
        deviceId: "device_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.DeviceClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">archiveV1</a>(deviceId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives a device by setting archived=True. Device must not have an active session — terminate it first. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.archiveV1(deviceId: "device_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">pauseV1</a>(deviceId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pauses a device and opens a new pause time window. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.pauseV1(deviceId: "device_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">unpauseV1</a>(deviceId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unpauses a device. Closes the open pause time window. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.unpauseV1(deviceId: "device_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">updateSharedOrgsV1</a>(request: Requests.DevicesUpdateSharedOrgsReq1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds and/or removes org_ids from a device's shared_with_org_ids list. Removal overrides addition. | (DevicesUpdateSharedOrgsReq1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.updateSharedOrgsV1(request: .init(deviceId: "device_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DevicesUpdateSharedOrgsReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">getV1</a>(deviceId: String, requestOptions: RequestOptions?) -> DeviceExpandedRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single device by its ID with expanded sessions and cargos. Access restricted to the caller's organization or shared organizations. | authz: min_org_role=operator | () -> (DeviceExpandedRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.getV1(deviceId: "device_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">listV1</a>(sortBy: DeviceSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, orgScope: TrackingOrgScopeEnum?, filterOffChrtReferenceId: String?, filterType: TrackingDeviceTypeEnum1?, filterActiveCargoId: String?, filterActiveSessionId: String?, filterHasActiveSession: Bool?, filterHasActiveCargo: Bool?, filterRegisteredAtTimestampGte: Date?, filterRegisteredAtTimestampLte: Date?, filterLastSeenAtTimestampGte: Date?, filterLastSeenAtTimestampLte: Date?, filterFirstSeenAtTimestampGte: Date?, filterFirstSeenAtTimestampLte: Date?, filterArchived: Bool?, requestOptions: RequestOptions?) -> DeviceListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists devices with filtering, sorting, and pagination. Use org_scope to restrict to owned, shared, or both (default). | authz: min_org_role=operator | () -> (DeviceListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.listV1(
        sortBy: .registeredAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        orgScope: .owned,
        filterOffChrtReferenceId: "filter_off_chrt_reference_id",
        filterType: .d15NTag,
        filterActiveCargoId: "filter_active_cargo_id",
        filterActiveSessionId: "filter_active_session_id",
        filterHasActiveSession: true,
        filterHasActiveCargo: true,
        filterRegisteredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterRegisteredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastSeenAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastSeenAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterFirstSeenAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterFirstSeenAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterArchived: true
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `DeviceSortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String?` — Full-text search query
    
</dd>
</dl>

<dl>
<dd>

**orgScope:** `TrackingOrgScopeEnum?` — Filter by org ownership: owned, shared, or owned_and_shared
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtReferenceId:** `String?` — Filter by off-CHRT reference ID (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterType:** `TrackingDeviceTypeEnum1?` — Filter by device type
    
</dd>
</dl>

<dl>
<dd>

**filterActiveCargoId:** `String?` — Filter by active cargo ID
    
</dd>
</dl>

<dl>
<dd>

**filterActiveSessionId:** `String?` — Filter by active session ID
    
</dd>
</dl>

<dl>
<dd>

**filterHasActiveSession:** `Bool?` — Filter by whether device has an active session (true = session_id is not null, false = session_id is null)
    
</dd>
</dl>

<dl>
<dd>

**filterHasActiveCargo:** `Bool?` — Filter by whether device has an active cargo (true = cargo_id is not null, false = cargo_id is null)
    
</dd>
</dl>

<dl>
<dd>

**filterRegisteredAtTimestampGte:** `Date?` — Filter by registered_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterRegisteredAtTimestampLte:** `Date?` — Filter by registered_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterLastSeenAtTimestampGte:** `Date?` — Filter by last_seen_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterLastSeenAtTimestampLte:** `Date?` — Filter by last_seen_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterFirstSeenAtTimestampGte:** `Date?` — Filter by first_seen_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterFirstSeenAtTimestampLte:** `Date?` — Filter by first_seen_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterArchived:** `Bool?` — Filter by archived status
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">typeaheadV1</a>(query: String, limit: Int?, orgScope: TrackingOrgScopeEnum?, requestOptions: RequestOptions?) -> [TrackingTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct device_mac_address and off_chrt_reference_id values matching the query via case-insensitive regex, searching devices. Use org_scope to restrict to owned, shared, or both (default). | authz: min_org_role=operator | () -> (list[TrackingTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.typeaheadV1(
        query: "query",
        limit: 1,
        orgScope: .owned
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**query:** `String` — Typeahead search query
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` — Max results per field
    
</dd>
</dl>

<dl>
<dd>

**orgScope:** `TrackingOrgScopeEnum?` — Filter by org ownership: owned, shared, or owned_and_shared
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking Driver
<details><summary><code>client.tracking.driver.<a href="/Sources/Resources/Tracking/Driver/DriverClient.swift">updateV1</a>(request: LocationFeature, requestOptions: RequestOptions?) -> DriverUpdateRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records driver location updates. Updates driver's last seen timestamp and location. Automatically records tracking data for all IN_PROGRESS task groups and their associated IN_TRANSIT cargos (cargo_by_driver). | (LocationFeature) -> (DriverUpdateRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.driver.updateV1(request: LocationFeature(
        type: .feature,
        geometry: Geometry.geometryCollection(
            .init(
                geometries: [
                    GeometryCollectionGeometriesItem.lineString(
                        .init(
                            coordinates: [
                                LineStringCoordinatesItem.position2D(
                                    []
                                )
                            ]
                        )
                    )
                ]
            )
        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `LocationFeature` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking Sessions
<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">listV1</a>(sortBy: SessionSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, orgScope: TrackingOrgScopeEnum?, filterTerminated: Bool?, filterPublic: Bool?, filterDeviceId: String?, filterOffChrtReferenceId: String?, filterFlightNumber: String?, filterFaFlightId: String?, filterFlightLoadedStatus: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterTerminationScheduledForTimestampGte: Date?, filterTerminationScheduledForTimestampLte: Date?, filterTerminatedAtTimestampGte: Date?, filterTerminatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> SessionListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists sessions with filtering, sorting, and pagination. Use org_scope to restrict to owned, shared, or both (default). | auth: api_key | authz: min_org_role=operator | () -> (SessionListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.listV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        orgScope: .owned,
        filterTerminated: true,
        filterPublic: true,
        filterDeviceId: "filter_device_id",
        filterOffChrtReferenceId: "filter_off_chrt_reference_id",
        filterFlightNumber: "filter_flight_number",
        filterFaFlightId: "filter_fa_flight_id",
        filterFlightLoadedStatus: "filter_flight_loaded_status",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterTerminationScheduledForTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterTerminationScheduledForTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterTerminatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterTerminatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sortBy:** `SessionSortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**search:** `String?` — Full-text search query
    
</dd>
</dl>

<dl>
<dd>

**orgScope:** `TrackingOrgScopeEnum?` — Filter by org ownership: owned, shared, or owned_and_shared
    
</dd>
</dl>

<dl>
<dd>

**filterTerminated:** `Bool?` — Filter by terminated status
    
</dd>
</dl>

<dl>
<dd>

**filterPublic:** `Bool?` — Filter by public visibility
    
</dd>
</dl>

<dl>
<dd>

**filterDeviceId:** `String?` — Filter by device ID
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtReferenceId:** `String?` — Filter by off-CHRT reference ID (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterFlightNumber:** `String?` — Filter by flight number (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterFaFlightId:** `String?` — Filter by FlightAware flight ID (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterFlightLoadedStatus:** `String?` — Filter by flight loaded status (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter by created_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter by created_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterTerminationScheduledForTimestampGte:** `Date?` — Filter by termination_scheduled_for_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterTerminationScheduledForTimestampLte:** `Date?` — Filter by termination_scheduled_for_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterTerminatedAtTimestampGte:** `Date?` — Filter by terminated_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterTerminatedAtTimestampLte:** `Date?` — Filter by terminated_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">getV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Session1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single session by its ID. Access restricted to the caller's organization or shared organizations. | auth: api_key | authz: min_org_role=operator | () -> (Session1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.getV1(sessionId: "session_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">typeaheadV1</a>(query: String, limit: Int?, orgScope: TrackingOrgScopeEnum?, requestOptions: RequestOptions?) -> [TrackingTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct device_mac_address and off_chrt_reference_id values matching the query via case-insensitive regex, searching sessions. Use org_scope to restrict to owned, shared, or both (default). | auth: api_key | authz: min_org_role=operator | () -> (list[TrackingTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.typeaheadV1(
        query: "query",
        limit: 1,
        orgScope: .owned
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**query:** `String` — Typeahead search query
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` — Max results per field
    
</dd>
</dl>

<dl>
<dd>

**orgScope:** `TrackingOrgScopeEnum?` — Filter by org ownership: owned, shared, or owned_and_shared
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">createSessionV1</a>(deviceId: String, noAutoTermination: Bool?, request: Requests.SessionClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new tracking session for a device and automatically starts recording data points. The caller must be the device owner or belong to an org the device is shared with. The device owner remains the session owner (org_id). The device's shared_with_org_ids are copied to the session. The device must not have an active session. Auto-termination is scheduled for ~3 days out at 8 PM PT. Prevent auto termination with `no_auto_termination=True` | (SessionClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.createSessionV1(
        deviceId: "device_id",
        noAutoTermination: true,
        request: .init(schemaVersion: 1)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**noAutoTermination:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SessionClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">updateV1</a>(sessionId: String, request: Requests.SessionClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a session's metadata. | (SessionClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.updateV1(
        sessionId: "session_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SessionClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">updateSharedOrgsV1</a>(request: Requests.SessionsUpdateSharedOrgsReq1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds and/or removes org_ids from a session's shared_with_org_ids list. Only the owning org may modify sharing. Removal overrides addition. | (SessionsUpdateSharedOrgsReq1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.updateSharedOrgsV1(request: .init(sessionId: "session_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionsUpdateSharedOrgsReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">terminateV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Terminates a session. Moves device.active_session_id to device.past_session_ids. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.terminateV1(sessionId: "session_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">addFlightV1</a>(request: Requests.SessionAddFlightReq1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a flight number and FA flight IDs to an existing session. Creates or reuses a FlightAware alert. | authz: min_org_role=operator | (SessionAddFlightReq1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.addFlightV1(request: .init(
        sessionId: "session_id",
        flightNumber: "flight_number",
        faFlightIds: [
            "fa_flight_ids"
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionAddFlightReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">removeFlightV1</a>(request: Requests.SessionRemoveFlightReq1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a flight number and FA flight IDs from a session. Runs the shared-aware FlightAware unsubscribe cycle before removing. | authz: min_org_role=operator | (SessionRemoveFlightReq1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.removeFlightV1(request: .init(
        sessionId: "session_id",
        flightNumber: "flight_number",
        faFlightIds: [
            "fa_flight_ids"
        ]
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionRemoveFlightReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">syncFlightStatusV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches current OOOI timestamps from FlightAware for each fa_flight_id on the session and updates flight_status_by_fa_flight_id. Use when the webhook may have left state out of sync. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.syncFlightStatusV1(sessionId: "session_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking SharingSettings
<details><summary><code>client.tracking.sharingSettings.<a href="/Sources/Resources/Tracking/SharingSettings/SharingSettingsClient.swift">taskGroupByDriverSharingSettingsV1</a>(request: Requests.TaskGroupByDriverSharingSettingsUpdateReq, requestOptions: RequestOptions?) -> TaskGroupByDriverSharingSettings1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the sharing settings for a task group by driver tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | (TaskGroupByDriverSharingSettingsUpdateReq) -> (TaskGroupByDriverSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sharingSettings.taskGroupByDriverSharingSettingsV1(request: .init(
        taskGroupId: "task_group_id",
        driverId: "driver_id",
        public: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaskGroupByDriverSharingSettingsUpdateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sharingSettings.<a href="/Sources/Resources/Tracking/SharingSettings/SharingSettingsClient.swift">cargoByDriverSettingsV1</a>(request: Requests.CargoByDriverSharingSettingsUpdateReq, requestOptions: RequestOptions?) -> CargoByDriverSharingSettings1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the sharing settings for a cargo by driver tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | (CargoByDriverSharingSettingsUpdateReq) -> (CargoByDriverSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sharingSettings.cargoByDriverSettingsV1(request: .init(
        taskGroupId: "task_group_id",
        cargoId: "cargo_id",
        driverId: "driver_id",
        public: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CargoByDriverSharingSettingsUpdateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sharingSettings.<a href="/Sources/Resources/Tracking/SharingSettings/SharingSettingsClient.swift">cargoByDeviceSettingsV1</a>(request: Requests.CargoByDeviceSharingSettingsUpdateReq, requestOptions: RequestOptions?) -> CargoByDeviceSharingSettings1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the sharing settings for a cargo by device tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, order_creator_org_operators] | (CargoByDeviceSharingSettingsUpdateReq) -> (CargoByDeviceSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sharingSettings.cargoByDeviceSettingsV1(request: .init(
        taskGroupId: "task_group_id",
        cargoId: "cargo_id",
        deviceId: "device_id",
        public: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CargoByDeviceSharingSettingsUpdateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sharingSettings.<a href="/Sources/Resources/Tracking/SharingSettings/SharingSettingsClient.swift">getSettingsV1</a>(orderIdOrShortId: String, requestOptions: RequestOptions?) -> [TrackingSharingSettingsRes]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all tracking datasets and their sharing settings for a given order. If authenticated, returns datasets the user has direct access to plus public datasets. If unauthenticated, returns only datasets with public=True. | () -> (list[TrackingSharingSettingsRes])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sharingSettings.getSettingsV1(orderIdOrShortId: "order_id_or_short_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderIdOrShortId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking Timeseries CargoByDevice
<details><summary><code>client.tracking.timeseries.cargoByDevice.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDevice/CargoByDeviceClient.swift">lastSeenV1</a>(cargoId: String, taskGroupId: String, requestOptions: RequestOptions?) -> CargoByDeviceDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the last seen data point for cargo within a task group. Access granted to courier or shipper organization. | () -> (CargoByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDevice.lastSeenV1(
        cargoId: "cargo_id",
        taskGroupId: "task_group_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.cargoByDevice.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDevice/CargoByDeviceClient.swift">dataPointsV1</a>(cargoId: String, taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> [CargoByDeviceDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a cargo within a task group, intelligently sampled across the time range. Excludes outliers. | () -> (list[CargoByDeviceDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDevice.dataPointsV1(
        cargoId: "cargo_id",
        taskGroupId: "task_group_id",
        limit: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.cargoByDevice.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDevice/CargoByDeviceClient.swift">outlierV1</a>(request: Requests.CargoByDeviceMarkOutliersRequest1, requestOptions: RequestOptions?) -> CargoByDeviceMarkOutliersResponse1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates. | authz: allowed_org_types=[shipper, forwarder], min_org_role=operator | (CargoByDeviceMarkOutliersRequest1) -> (CargoByDeviceMarkOutliersResponse1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDevice.outlierV1(request: .init(
        trackingCargoByDeviceDataPointIds: [
            "tracking_cargo_by_device_data_point_ids"
        ],
        outlier: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CargoByDeviceMarkOutliersRequest1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.cargoByDevice.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDevice/CargoByDeviceClient.swift">lastSeenPublicV1</a>(cargoId: String, taskGroupId: String, requestOptions: RequestOptions?) -> CargoByDeviceDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent device location data point for a cargo within a public task group. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (CargoByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDevice.lastSeenPublicV1(
        cargoId: "cargo_id",
        taskGroupId: "task_group_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.cargoByDevice.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDevice/CargoByDeviceClient.swift">dataPointsPublicV1</a>(cargoId: String, taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> [CargoByDeviceDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a cargo within a public task group, intelligently sampled across the time range. Excludes outliers. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (list[CargoByDeviceDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDevice.dataPointsPublicV1(
        cargoId: "cargo_id",
        taskGroupId: "task_group_id",
        limit: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking Timeseries CargoByDriver
<details><summary><code>client.tracking.timeseries.cargoByDriver.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDriver/CargoByDriverClient.swift">lastSeenV1</a>(cargoId: String, taskGroupId: String, requestOptions: RequestOptions?) -> CargoByDriverDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent driver location data point for cargo within a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | () -> (CargoByDriverDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDriver.lastSeenV1(
        cargoId: "cargo_id",
        taskGroupId: "task_group_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.cargoByDriver.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDriver/CargoByDriverClient.swift">dataPointsV1</a>(cargoId: String, taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> [CargoByDriverDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a cargo within a task group, intelligently sampled across the time range. Excludes outliers. | () -> (list[CargoByDriverDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDriver.dataPointsV1(
        cargoId: "cargo_id",
        taskGroupId: "task_group_id",
        limit: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.cargoByDriver.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDriver/CargoByDriverClient.swift">lastSeenPublicV1</a>(cargoId: String, taskGroupId: String, requestOptions: RequestOptions?) -> CargoByDriverDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent driver location data point for a cargo within a public task group. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (CargoByDriverDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDriver.lastSeenPublicV1(
        cargoId: "cargo_id",
        taskGroupId: "task_group_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.cargoByDriver.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDriver/CargoByDriverClient.swift">dataPointsPublicV1</a>(cargoId: String, taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> [CargoByDriverDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a cargo within a public task group, intelligently sampled across the time range. Excludes outliers. No authentication required if cargo has public visibility enabled via sharing settings. | () -> (list[CargoByDriverDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.cargoByDriver.dataPointsPublicV1(
        cargoId: "cargo_id",
        taskGroupId: "task_group_id",
        limit: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking Timeseries SessionByDevice
<details><summary><code>client.tracking.timeseries.sessionByDevice.<a href="/Sources/Resources/Tracking/Timeseries/SessionByDevice/SessionByDeviceClient.swift">lastSeenV1</a>(sessionId: String, requestOptions: RequestOptions?) -> SessionByDeviceDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent data point for a session, excluding outliers. Access restricted to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (SessionByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.sessionByDevice.lastSeenV1(sessionId: "session_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.sessionByDevice.<a href="/Sources/Resources/Tracking/Timeseries/SessionByDevice/SessionByDeviceClient.swift">dataPointsV1</a>(sessionId: String, startTimestamp: Date, endTimestamp: Date, bucketSeconds: Int?, requestOptions: RequestOptions?) -> SessionByDeviceHistoryRes1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns time-bucketed data points and stationary clusters for a session within the given time range. start_timestamp and end_timestamp are required. | auth: api_key | authz: min_org_role=operator | () -> SessionByDeviceHistoryRes1
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.sessionByDevice.dataPointsV1(
        sessionId: "session_id",
        startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        bucketSeconds: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**startTimestamp:** `Date` 
    
</dd>
</dl>

<dl>
<dd>

**endTimestamp:** `Date` 
    
</dd>
</dl>

<dl>
<dd>

**bucketSeconds:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.sessionByDevice.<a href="/Sources/Resources/Tracking/Timeseries/SessionByDevice/SessionByDeviceClient.swift">outlierV1</a>(request: Requests.SessionByDeviceMarkOutliersRequest1, requestOptions: RequestOptions?) -> SessionByDeviceMarkOutliersResponse1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates. | (SessionByDeviceMarkOutliersRequest1) -> (SessionByDeviceMarkOutliersResponse1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.sessionByDevice.outlierV1(request: .init(
        trackingSessionByDeviceDataPointIds: [
            "tracking_session_by_device_data_point_ids"
        ],
        outlier: true
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionByDeviceMarkOutliersRequest1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.sessionByDevice.<a href="/Sources/Resources/Tracking/Timeseries/SessionByDevice/SessionByDeviceClient.swift">lastSeenPublicV1</a>(sessionId: String, requestOptions: RequestOptions?) -> SessionByDeviceDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent data point for a public session, excluding outliers. No authentication required if session has public visibility enabled. | () -> (SessionByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.sessionByDevice.lastSeenPublicV1(sessionId: "session_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.sessionByDevice.<a href="/Sources/Resources/Tracking/Timeseries/SessionByDevice/SessionByDeviceClient.swift">dataPointsPublicV1</a>(sessionId: String, startTimestamp: Date, endTimestamp: Date, bucketSeconds: Int?, requestOptions: RequestOptions?) -> SessionByDeviceHistoryRes1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns time-bucketed data points and stationary clusters for a public session within the given time range. start_timestamp and end_timestamp are required. No authentication required if session has public visibility enabled. | () -> SessionByDeviceHistoryRes1
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.sessionByDevice.dataPointsPublicV1(
        sessionId: "session_id",
        startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        bucketSeconds: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**startTimestamp:** `Date` 
    
</dd>
</dl>

<dl>
<dd>

**endTimestamp:** `Date` 
    
</dd>
</dl>

<dl>
<dd>

**bucketSeconds:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking Timeseries TaskGroupByDriver
<details><summary><code>client.tracking.timeseries.taskGroupByDriver.<a href="/Sources/Resources/Tracking/Timeseries/TaskGroupByDriver/TaskGroupByDriverClient.swift">lastSeenV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> TaskGroupByDriverDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent driver location data point for a task group. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | () -> (TaskGroupByDriverDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.taskGroupByDriver.lastSeenV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.taskGroupByDriver.<a href="/Sources/Resources/Tracking/Timeseries/TaskGroupByDriver/TaskGroupByDriverClient.swift">dataPointsV1</a>(taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> [TaskGroupByDriverDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns sampled driver location data points for a task group. Excludes outliers. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | () -> (list[TaskGroupByDriverDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.taskGroupByDriver.dataPointsV1(
        taskGroupId: "task_group_id",
        limit: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.taskGroupByDriver.<a href="/Sources/Resources/Tracking/Timeseries/TaskGroupByDriver/TaskGroupByDriverClient.swift">lastSeenPublicV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> TaskGroupByDriverDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent driver location data point for a publicly shared task group. No authentication required. | () -> (TaskGroupByDriverDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.taskGroupByDriver.lastSeenPublicV1(taskGroupId: "task_group_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.timeseries.taskGroupByDriver.<a href="/Sources/Resources/Tracking/Timeseries/TaskGroupByDriver/TaskGroupByDriverClient.swift">dataPointsPublicV1</a>(taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> [TaskGroupByDriverDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns sampled driver location data points for a publicly shared task group. Excludes outliers. No authentication required. | () -> (list[TaskGroupByDriverDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.timeseries.taskGroupByDriver.dataPointsPublicV1(
        taskGroupId: "task_group_id",
        limit: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskGroupId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users PublicData
<details><summary><code>client.users.publicData.<a href="/Sources/Resources/Users/PublicData/UsersPublicDataClient.swift">getV1</a>(requestOptions: RequestOptions?) -> UserPublicData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves public user data for the caller. | () -> (UserPublicData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.publicData.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users PrivateData
<details><summary><code>client.users.privateData.<a href="/Sources/Resources/Users/PrivateData/UsersPrivateDataClient.swift">getV1</a>(requestOptions: RequestOptions?) -> UserPrivateData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves private user data for the caller. | () -> (UserPrivateData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.privateData.getV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.privateData.<a href="/Sources/Resources/Users/PrivateData/UsersPrivateDataClient.swift">createV1</a>(request: Requests.UserPrivateDataClientCreate1, requestOptions: RequestOptions?) -> UserPrivateData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates private user data for the caller. | (UserPrivateDataClientCreate1) -> (UserPrivateData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.privateData.createV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UserPrivateDataClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.privateData.<a href="/Sources/Resources/Users/PrivateData/UsersPrivateDataClient.swift">updateV1</a>(request: Requests.UserPrivateDataClientUpdate1, requestOptions: RequestOptions?) -> UserPrivateData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates private user data for the caller. | (UserPrivateDataClientUpdate1) -> (UserPrivateData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.privateData.updateV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UserPrivateDataClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.privateData.<a href="/Sources/Resources/Users/PrivateData/UsersPrivateDataClient.swift">upsertFirebaseCloudMessagingTokenV1</a>(request: Requests.FirebaseCloudMessagingTokenClientCreate1, requestOptions: RequestOptions?) -> UserPrivateData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upserts a Firebase Cloud Messaging token for the caller. Dedupes on token; if token exists, updates last_used_timestamp. | (FirebaseCloudMessagingTokenClientCreate1) -> (UserPrivateData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.privateData.upsertFirebaseCloudMessagingTokenV1(request: .init(firebaseCloudMessagingToken: "firebase_cloud_messaging_token"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.FirebaseCloudMessagingTokenClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users DirectoryEntries
<details><summary><code>client.users.directoryEntries.<a href="/Sources/Resources/Users/DirectoryEntries/DirectoryEntriesClient.swift">getV1</a>(directoryEntryId: String, requestOptions: RequestOptions?) -> DirectoryEntry1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific directory entry by ID if authorized to access it. | authz: min_org_role=operator | () -> (DirectoryEntry1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.directoryEntries.getV1(directoryEntryId: "directory_entry_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**directoryEntryId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.directoryEntries.<a href="/Sources/Resources/Users/DirectoryEntries/DirectoryEntriesClient.swift">listV1</a>(search: String?, sortBy: DirectoryEntrySortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> DirectoryEntryListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists directory entries with pagination and optional full-text search. | authz: min_org_role=operator | () -> (DirectoryEntryListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.directoryEntries.listV1(
        search: "search",
        sortBy: .companyName,
        sortOrder: .asc,
        page: 1,
        pageSize: 1
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**search:** `String?` — Full-text search query
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `DirectoryEntrySortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**pageSize:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.directoryEntries.<a href="/Sources/Resources/Users/DirectoryEntries/DirectoryEntriesClient.swift">createV1</a>(request: Requests.DirectoryEntryClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a directory entry. | (DirectoryEntryClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.directoryEntries.createV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DirectoryEntryClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.directoryEntries.<a href="/Sources/Resources/Users/DirectoryEntries/DirectoryEntriesClient.swift">updateV1</a>(directoryEntryId: String, request: Requests.DirectoryEntryClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates existing directory entry owned by the caller's organization. | (DirectoryEntryClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.directoryEntries.updateV1(
        directoryEntryId: "directory_entry_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**directoryEntryId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.DirectoryEntryClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.directoryEntries.<a href="/Sources/Resources/Users/DirectoryEntries/DirectoryEntriesClient.swift">deleteV1</a>(directoryEntryId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes directory entry owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.users.directoryEntries.deleteV1(directoryEntryId: "directory_entry_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**directoryEntryId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Utils Dev
<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">postAgentV1</a>(request: Requests.AgentReq, requestOptions: RequestOptions?) -> AgentRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Runs a customer service agent that responds with logistics fun facts (real order data not yet available). | (AgentReq) -> (AgentRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.postAgentV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.AgentReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">postAgentOrderV1</a>(request: Requests.ReadOrderAgentReq, requestOptions: RequestOptions?) -> ReadOrderAgentRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches expanded order data and returns an AI-generated natural-language summary. | (ReadOrderAgentReq) -> (ReadOrderAgentRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.postAgentOrderV1(request: .init(orderId: "order_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ReadOrderAgentReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">postAgentOrderBuilderV1</a>(request: Requests.OrderBuilderReq, requestOptions: RequestOptions?) -> OrderBuilderRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Populates an existing order draft with cargo, task groups, and tasks parsed from natural language. The frontend must create the draft first via /shipping/order_drafts/new/v1. | (OrderBuilderReq) -> (OrderBuilderRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.postAgentOrderBuilderV1(request: .init(
        orderShortId: "order_short_id",
        text: "text"
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderBuilderReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">getUserIdV1</a>(requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

(DEPRECATED) Extracts and returns the user ID from the authenticated request's JWT token. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.getUserIdV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">getUserIdV2</a>(requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Extracts and returns the user ID from the authenticated request's JWT token. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.getUserIdV2()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">getCredentialInfoV1</a>(requestOptions: RequestOptions?) -> CredentialInfoRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the verified caller identity and raw credential claims for development purposes. | () -> (CredentialInfoRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.getCredentialInfoV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">getEmailV1</a>(requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the primary email address for the caller from the authentication service. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.getEmailV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">getTemplateV1</a>(requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Development template endpoint that returns the caller's ID for testing. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.getTemplateV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">createTemplateV1</a>(request: Requests.TemplateReq, requestOptions: RequestOptions?) -> TemplateRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Development template endpoint that demonstrates transaction handling and request mirroring. | (TemplateReq) -> (TemplateRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.createTemplateV1(request: .init(
        message: "message",
        number: 1,
        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TemplateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">getGitInfoV1</a>(requestOptions: RequestOptions?) -> [String: String?]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the current GitHub PR number and commit hash for the deployment. | () -> (dict[str, str])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.getGitInfoV1()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Utils Root
<details><summary><code>client.utils.root.<a href="/Sources/Resources/Utils/Root/RootClient.swift">pingAuthd</a>(requestOptions: RequestOptions?) -> [String: String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Test endpoint for authenticated requests that requires valid authentication tokens. | () -> (dict[str, str])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.root.pingAuthd()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.root.<a href="/Sources/Resources/Utils/Root/RootClient.swift">pingOptionallyAuthd</a>(requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Test endpoint for optionally authenticated requests that works with or without authentication. | () -> (dict)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.root.pingOptionallyAuthd()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.root.<a href="/Sources/Resources/Utils/Root/RootClient.swift">pingUnauthd</a>(requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a greeting message to verify the API is accessible. | () -> (dict)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.root.pingUnauthd()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.root.<a href="/Sources/Resources/Utils/Root/RootClient.swift">failure</a>(requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Test endpoint that intentionally fails for error handling validation and monitoring purposes. | () -> (None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.root.failure()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.root.<a href="/Sources/Resources/Utils/Root/RootClient.swift">health</a>(requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a health status message used for monitoring system availability and uptime. | () -> (dict)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.root.health()
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

