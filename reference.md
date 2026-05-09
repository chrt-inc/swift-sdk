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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">listMembersV1</a>(filterRole: OrgRoleEnum?, sortBy: OrgMemberSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, requestOptions: RequestOptions?) -> OrgMemberListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all members of the caller's organization with their roles and details. Supports search by name, filtering by role, sorting, and pagination. | () -> (OrgMemberListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        pageSize: 1,
        search: "search"
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

**search:** `String?` — Search by first or last name
    
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

    _ = try await client.orgs.setOrgTypeV1(request: .init(orgType: .provider))
}

try await main()
```
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

## Billing BillingLedgers
<details><summary><code>client.billing.billingLedgers.<a href="/Sources/Resources/Billing/BillingLedgers/BillingLedgersClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> BillingLedger1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a billing ledger the caller's org owns or is a payment counterparty on. | authz_personas=[billing_ledger_org_operators] | () -> (BillingLedger1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgers.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.billingLedgers.<a href="/Sources/Resources/Billing/BillingLedgers/BillingLedgersClient.swift">listV1</a>(sortBy: BillingLedgerSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: BillingLedgerStatusEnum?, filterTaskGroupType: TaskGroupTypeEnum1?, filterPaymentOriginOrgId: String?, filterPaymentDestinationOrgId: String?, requestOptions: RequestOptions?) -> BillingLedgerListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists billing ledgers the caller's org owns or is a payment counterparty on. | authz_personas=[billing_ledger_org_operators] | () -> (BillingLedgerListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgers.listV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterTaskGroupType: .chrtGroundProvider,
        filterPaymentOriginOrgId: "filter_payment_origin_org_id",
        filterPaymentDestinationOrgId: "filter_payment_destination_org_id"
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

**sortBy:** `BillingLedgerSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterStatus:** `BillingLedgerStatusEnum?` — Filter by status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterTaskGroupType:** `TaskGroupTypeEnum1?` — Filter to ledgers scoped to this TaskGroup type. Omit to include both type-scoped and type-agnostic ledgers.
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentOriginOrgId:** `String?` — Filter by payment origin on-chrt org id.
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentDestinationOrgId:** `String?` — Filter by payment destination on-chrt org id.
    
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

<details><summary><code>client.billing.billingLedgers.<a href="/Sources/Resources/Billing/BillingLedgers/BillingLedgersClient.swift">createV1</a>(request: Requests.BillingLedgerClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a billing ledger owned by the caller's org. Caller must be the receiving provider for shipper-pay-provider, or the paying provider for provider-pay-provider/driver. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingLedgerClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgers.createV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BillingLedgerClientCreate1` 
    
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

<details><summary><code>client.billing.billingLedgers.<a href="/Sources/Resources/Billing/BillingLedgers/BillingLedgersClient.swift">updateV1</a>(id: String, request: Requests.BillingLedgerClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a billing ledger's `comments`. Cycle and rate are per-period values supplied at `billing_ledger_periods/open/v1` time; the ledger does not carry them. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_owner_operators] | (BillingLedgerClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgers.updateV1(
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

**request:** `Requests.BillingLedgerClientUpdate1` 
    
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

<details><summary><code>client.billing.billingLedgers.<a href="/Sources/Resources/Billing/BillingLedgers/BillingLedgersClient.swift">deactivateV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Flips a billing ledger to INACTIVE and stamps `inactive_at_timestamp`. Idempotent; the current OPEN period is left untouched. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgers.deactivateV1(id: "id")
}

try await main()
```
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

## Billing BillingLedgerPeriods
<details><summary><code>client.billing.billingLedgerPeriods.<a href="/Sources/Resources/Billing/BillingLedgerPeriods/BillingLedgerPeriodsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> BillingLedgerPeriod1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a billing ledger period the caller's org owns or is a payment counterparty on. | authz_personas=[billing_ledger_period_org_operators] | () -> (BillingLedgerPeriod1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgerPeriods.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.billingLedgerPeriods.<a href="/Sources/Resources/Billing/BillingLedgerPeriods/BillingLedgerPeriodsClient.swift">listV1</a>(sortBy: BillingLedgerPeriodSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterBillingLedgerId: String?, filterOwnedByOrgId: String?, filterStatus: BillingLedgerPeriodStatusEnum?, filterStatementId: String?, filterAttachedToStatement: Bool?, filterPeriodEndAtTimestampBefore: Date?, filterPeriodEndAtTimestampAfter: Date?, requestOptions: RequestOptions?) -> BillingLedgerPeriodListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists billing ledger periods the caller's org owns or is a payment counterparty on. | authz_personas=[billing_ledger_period_org_operators] | () -> (BillingLedgerPeriodListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgerPeriods.listV1(
        sortBy: .periodEndAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterBillingLedgerId: "filter_billing_ledger_id",
        filterOwnedByOrgId: "filter_owned_by_org_id",
        filterStatementId: "filter_statement_id",
        filterAttachedToStatement: true,
        filterPeriodEndAtTimestampBefore: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPeriodEndAtTimestampAfter: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `BillingLedgerPeriodSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterBillingLedgerId:** `String?` — Filter by parent billing ledger id.
    
</dd>
</dl>

<dl>
<dd>

**filterOwnedByOrgId:** `String?` — Filter by owner org id.
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `BillingLedgerPeriodStatusEnum?` — Filter by status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterStatementId:** `String?` — Filter to periods rolled into this statement.
    
</dd>
</dl>

<dl>
<dd>

**filterAttachedToStatement:** `Bool?` — Filter by whether the period is bundled into a statement (`statement_id is not None` if true, `is None` if false). Used by the statement-bundling worklist to find unbundled periods.
    
</dd>
</dl>

<dl>
<dd>

**filterPeriodEndAtTimestampBefore:** `Date?` — Filter to periods whose `period_end_at_timestamp` is strictly before this instant. Combined with `filter_status=open` this yields the 'needs cycling' worklist.
    
</dd>
</dl>

<dl>
<dd>

**filterPeriodEndAtTimestampAfter:** `Date?` — Filter to periods whose `period_end_at_timestamp` is strictly after this instant.
    
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

<details><summary><code>client.billing.billingLedgerPeriods.<a href="/Sources/Resources/Billing/BillingLedgerPeriods/BillingLedgerPeriodsClient.swift">openV1</a>(billingLedgerId: String, request: Requests.OpenPeriodReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opens a new period on an ACTIVE billing ledger. Operator supplies `cycle`, `rate_usd`, and at least one of `(period_start_at_timestamp, period_end_at_timestamp)` — the other is derived from `cycle` (calendar-aware). A period spans exactly one cycle. Multiple OPEN periods per ledger are allowed and may overlap. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_owner_operators] | (OpenPeriodReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgerPeriods.openV1(
        billingLedgerId: "billing_ledger_id",
        request: .init(
            cycle: .daily,
            rateUsd: 1.1
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

**billingLedgerId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OpenPeriodReq` 
    
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

<details><summary><code>client.billing.billingLedgerPeriods.<a href="/Sources/Resources/Billing/BillingLedgerPeriods/BillingLedgerPeriodsClient.swift">closeV1</a>(billingLedgerPeriodId: String, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Closes an OPEN billing ledger period. 400 if the period is already CLOSED. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_period_owner_operators] | () -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgerPeriods.closeV1(billingLedgerPeriodId: "billing_ledger_period_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**billingLedgerPeriodId:** `String` 
    
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

<details><summary><code>client.billing.billingLedgerPeriods.<a href="/Sources/Resources/Billing/BillingLedgerPeriods/BillingLedgerPeriodsClient.swift">updateV1</a>(billingLedgerPeriodId: String, request: Requests.BillingLedgerPeriodClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an OPEN billing ledger period's bounds, cycle, and/or rate_usd. Lenient: only `end > start` is enforced after the patch — span need not equal cycle. CLOSED periods are immutable. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_period_owner_operators] | (BillingLedgerPeriodClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.billingLedgerPeriods.updateV1(
        billingLedgerPeriodId: "billing_ledger_period_id",
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

**billingLedgerPeriodId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BillingLedgerPeriodClientUpdate1` 
    
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
<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a LineItemGroup the caller owns, is a payment counterparty on, or is the destination driver for. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">listV1</a>(sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: LineItemGroupStatusEnum1?, filterTaskGroupId: String?, filterOrderId: String?, filterOrderShortId: String?, filterOrderOffChrtReferenceId: String?, filterOwnedByOrgId: String?, filterPaymentOriginOrgId: String?, filterPaymentDestinationOrgId: String?, filterPaymentDestinationDriverId: String?, filterRateSheetId: String?, filterStatementId: String?, filterAttachedToStatement: Bool?, requestOptions: RequestOptions?) -> LineItemGroupListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists LineItemGroups the caller owns, is a payment counterparty on, or is the destination driver for. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroupListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.listV1(
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterTaskGroupId: "filter_task_group_id",
        filterOrderId: "filter_order_id",
        filterOrderShortId: "filter_order_short_id",
        filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
        filterOwnedByOrgId: "filter_owned_by_org_id",
        filterPaymentOriginOrgId: "filter_payment_origin_org_id",
        filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
        filterPaymentDestinationDriverId: "filter_payment_destination_driver_id",
        filterRateSheetId: "filter_rate_sheet_id",
        filterStatementId: "filter_statement_id",
        filterAttachedToStatement: true
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

**sortOrder:** `SortOrderEnum?` — Sort order on `_id` (proxy for creation order; LIGs have no user-facing timestamps to sort by).
    
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

**filterStatus:** `LineItemGroupStatusEnum1?` — Filter by LineItemGroup status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterTaskGroupId:** `String?` — Filter by parent task group id.
    
</dd>
</dl>

<dl>
<dd>

**filterOrderId:** `String?` — Filter by parent order id.
    
</dd>
</dl>

<dl>
<dd>

**filterOrderShortId:** `String?` — Filter by order short id.
    
</dd>
</dl>

<dl>
<dd>

**filterOrderOffChrtReferenceId:** `String?` — Filter by order off-chrt reference id.
    
</dd>
</dl>

<dl>
<dd>

**filterOwnedByOrgId:** `String?` — Filter by owner org id.
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentOriginOrgId:** `String?` — Filter by payment origin org id.
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentDestinationOrgId:** `String?` — Filter by payment destination org id.
    
</dd>
</dl>

<dl>
<dd>

**filterPaymentDestinationDriverId:** `String?` — Filter by payment destination driver id.
    
</dd>
</dl>

<dl>
<dd>

**filterRateSheetId:** `String?` — Filter by source rate sheet id (None for ad-hoc/pro-forma LIGs).
    
</dd>
</dl>

<dl>
<dd>

**filterStatementId:** `String?` — Filter to LineItemGroups bundled into this statement.
    
</dd>
</dl>

<dl>
<dd>

**filterAttachedToStatement:** `Bool?` — Filter by whether the LineItemGroup is bundled into a statement (`statement_id is not None` if true, `is None` if false). Used by the statement-bundling worklist to find unbundled LIGs.
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">adHocCreateV1</a>(request: Requests.LineItemGroupAdHocCreateClientReq, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a detached ad-hoc LineItemGroup. The LIG is not linked to any TaskGroup at create time — operator follows up with `/shipping/task_groups/attach_lig_to_<vector>/v1` to populate the TG vector link field and the `task_group_id` back-ref together (one txn). | authz: allowed_org_types=[provider, shipper], min_org_role=operator | (LineItemGroupAdHocCreateClientReq) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adHocCreateV1(request: .init(ownedByOrgId: "owned_by_org_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.LineItemGroupAdHocCreateClientReq` 
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">adHocAddLineItemV1</a>(lineItemGroupId: String, request: LineItemClientCreate1, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Appends an owner-direct AD_HOC LineItem to the amendment bucket of a LineItemGroup that has not yet been finalized. The agreement bucket is reserved for the original deal at creation; everything added after lands in amendment. | authz_personas=[lig_org_operators] | (LineItemClientCreate1) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adHocAddLineItemV1(
        lineItemGroupId: "line_item_group_id",
        request: LineItemClientCreate1(
            item: .baseRate,
            rate: 1.1,
            quantity: 1.1
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

**request:** `LineItemClientCreate1` 
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">adHocRemoveLineItemV1</a>(lineItemGroupId: String, lineItemId: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes an AD_HOC LineItem from a LineItemGroup that has not yet been finalized. | authz_personas=[lig_org_operators] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.adHocRemoveLineItemV1(
        lineItemGroupId: "line_item_group_id",
        lineItemId: "line_item_id"
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

**lineItemId:** `String` 
    
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

Locks a LineItemGroup, transitioning STAGED → FINALIZED. Required precondition for attaching to a Statement. Owner-only. Rejects if the LIG has no items in agreement_line_item_ids ∪ amendment_line_item_ids, or if pending_line_item_ids is non-empty (counterparty proposals must be resolved first). | authz: allowed_org_types=[provider, shipper], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">proposeLineItemV1</a>(lineItemGroupId: String, request: LineItemClientCreate1, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Counterparty proposes a draft AD_HOC LineItem on a non-FINALIZED LineItemGroup. The item lands in pending_line_item_ids with ad_hoc__status=PENDING; the owner resolves it via approve/deny. Caller must be on the LIG (origin or destination) but not the owner. | authz_personas=[lig_org_operators] | (LineItemClientCreate1) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.proposeLineItemV1(
        lineItemGroupId: "line_item_group_id",
        request: LineItemClientCreate1(
            item: .baseRate,
            rate: 1.1,
            quantity: 1.1
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

**request:** `LineItemClientCreate1` 
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">withdrawLineItemV1</a>(lineItemGroupId: String, lineItemId: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Counterparty pulls back their own pending LineItem on a non-FINALIZED LineItemGroup. Only the proposing org can withdraw; the LineItem doc is deleted (no breadcrumb). | authz_personas=[lig_org_operators] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.withdrawLineItemV1(
        lineItemGroupId: "line_item_group_id",
        lineItemId: "line_item_id"
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

**lineItemId:** `String` 
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">approveLineItemV1</a>(lineItemGroupId: String, lineItemId: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Owner approves a counterparty-proposed LineItem on a non-FINALIZED LineItemGroup, moving it from pending_line_item_ids to amendment_line_item_ids and stamping ad_hoc__status=APPROVED. The agreement bucket is reserved for the original deal at creation; counterparty additions land in amendment by construction. | authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.approveLineItemV1(
        lineItemGroupId: "line_item_group_id",
        lineItemId: "line_item_id"
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

**lineItemId:** `String` 
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">denyLineItemV1</a>(lineItemGroupId: String, lineItemId: String, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Owner denies a counterparty-proposed LineItem on a non-FINALIZED LineItemGroup, moving it from pending_line_item_ids to denied_line_item_ids and stamping ad_hoc__status=DENIED. | authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.denyLineItemV1(
        lineItemGroupId: "line_item_group_id",
        lineItemId: "line_item_id"
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

**lineItemId:** `String` 
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">deleteV1</a>(lineItemGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Owner-only operator cleanup: deletes a STAGED LineItemGroup and cascades. Cascades: (1) deletes every LineItem referenced across the four buckets (agreement / amendment / pending / denied); (2) if the LIG is attached to a parent TaskGroup vector, clears that vector's `_line_item_group_id` and `_rate_sheet_id` (the LIG's `task_group_id` back-ref disappears with the LIG itself). Refuses if the LIG is already attached to a Statement (defense-in-depth — should be unreachable since attach requires FINALIZED). FINALIZED-or-beyond LIGs cannot be deleted (audit records). | authz_personas=[lig_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.deleteV1(lineItemGroupId: "line_item_group_id")
}

try await main()
```
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">fromRateSheetCreateForShipperPayProviderV1</a>(request: CreateLigFromRateSheetForVectorClientReq, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Atomically materialises a STAGED LineItemGroup from a rate sheet AND attaches it to the SPP vector of the named TaskGroup (one transaction; both sides of the LIG ↔ TG link populated together). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. Rejects if the SPP vector already has a LIG attached, or if a billing ledger period is attached (rate-sheet/ledger exclusivity). | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (CreateLigFromRateSheetForVectorClientReq) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.fromRateSheetCreateForShipperPayProviderV1(request: CreateLigFromRateSheetForVectorClientReq(
        taskGroupId: "task_group_id"
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

**request:** `CreateLigFromRateSheetForVectorClientReq` 
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">fromRateSheetCreateForProviderPayProviderV1</a>(request: CreateLigFromRateSheetForVectorClientReq, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Atomically materialises a STAGED LineItemGroup from a rate sheet AND attaches it to the PPP vector of the named TaskGroup (one transaction; both sides of the LIG ↔ TG link populated together). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. Rejects if the PPP vector already has a LIG attached, or if a billing ledger period is attached (rate-sheet/ledger exclusivity). | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (CreateLigFromRateSheetForVectorClientReq) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.fromRateSheetCreateForProviderPayProviderV1(request: CreateLigFromRateSheetForVectorClientReq(
        taskGroupId: "task_group_id"
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

**request:** `CreateLigFromRateSheetForVectorClientReq` 
    
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">fromRateSheetCreateForProviderPayDriverV1</a>(request: CreateLigFromRateSheetForVectorClientReq, requestOptions: RequestOptions?) -> LineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Atomically materialises a STAGED LineItemGroup from a rate sheet AND attaches it to the PPD vector of the named TaskGroup (one transaction; both sides of the LIG ↔ TG link populated together). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. Rejects if the PPD vector already has a LIG attached, or if a billing ledger period is attached (rate-sheet/ledger exclusivity). | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | (CreateLigFromRateSheetForVectorClientReq) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.lineItemGroups.fromRateSheetCreateForProviderPayDriverV1(request: CreateLigFromRateSheetForVectorClientReq(
        taskGroupId: "task_group_id"
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

**request:** `CreateLigFromRateSheetForVectorClientReq` 
    
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

## Billing ChrtGroundProviderRateSheets
<details><summary><code>client.billing.chrtGroundProviderRateSheets.<a href="/Sources/Resources/Billing/ChrtGroundProviderRateSheets/ChrtGroundProviderRateSheetsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> ChrtGroundProviderRateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific ChrtGroundProvider rate sheet owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ChrtGroundProviderRateSheet1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.chrtGroundProviderRateSheets.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.chrtGroundProviderRateSheets.<a href="/Sources/Resources/Billing/ChrtGroundProviderRateSheets/ChrtGroundProviderRateSheetsClient.swift">listV1</a>(includeArchived: Bool?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> ChrtGroundProviderRateSheetListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all ChrtGroundProvider rate sheets owned by the caller's organization. Pagination only — no search/filter. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ChrtGroundProviderRateSheetListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.chrtGroundProviderRateSheets.listV1(
        includeArchived: true,
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

**includeArchived:** `Bool?` 
    
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

<details><summary><code>client.billing.chrtGroundProviderRateSheets.<a href="/Sources/Resources/Billing/ChrtGroundProviderRateSheets/ChrtGroundProviderRateSheetsClient.swift">createV1</a>(request: Requests.ChrtGroundProviderRateSheetClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a ChrtGroundProvider rate sheet owned by the caller's org. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRateSheetClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.chrtGroundProviderRateSheets.createV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ChrtGroundProviderRateSheetClientCreate1` 
    
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

<details><summary><code>client.billing.chrtGroundProviderRateSheets.<a href="/Sources/Resources/Billing/ChrtGroundProviderRateSheets/ChrtGroundProviderRateSheetsClient.swift">updateV1</a>(id: String, request: Requests.ChrtGroundProviderRateSheetClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a ChrtGroundProvider rate sheet owned by the caller's org. Use the archive/unarchive routes to toggle the `archived` flag. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRateSheetClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.chrtGroundProviderRateSheets.updateV1(
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

**request:** `Requests.ChrtGroundProviderRateSheetClientUpdate1` 
    
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

<details><summary><code>client.billing.chrtGroundProviderRateSheets.<a href="/Sources/Resources/Billing/ChrtGroundProviderRateSheets/ChrtGroundProviderRateSheetsClient.swift">archiveV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives a ChrtGroundProvider rate sheet (sets archived=True). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.chrtGroundProviderRateSheets.archiveV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.chrtGroundProviderRateSheets.<a href="/Sources/Resources/Billing/ChrtGroundProviderRateSheets/ChrtGroundProviderRateSheetsClient.swift">unarchiveV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unarchives a ChrtGroundProvider rate sheet (sets archived=False). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.chrtGroundProviderRateSheets.unarchiveV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.chrtGroundProviderRateSheets.<a href="/Sources/Resources/Billing/ChrtGroundProviderRateSheets/ChrtGroundProviderRateSheetsClient.swift">deleteV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes a ChrtGroundProvider rate sheet owned by the caller's org. Prefer archiving when the sheet has historical references. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.chrtGroundProviderRateSheets.deleteV1(id: "id")
}

try await main()
```
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

## Billing CargoOnFlightRateSheets
<details><summary><code>client.billing.cargoOnFlightRateSheets.<a href="/Sources/Resources/Billing/CargoOnFlightRateSheets/CargoOnFlightRateSheetsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> CargoOnFlightRateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific CargoOnFlight rate sheet owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CargoOnFlightRateSheet1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.cargoOnFlightRateSheets.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.cargoOnFlightRateSheets.<a href="/Sources/Resources/Billing/CargoOnFlightRateSheets/CargoOnFlightRateSheetsClient.swift">listV1</a>(includeArchived: Bool?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> CargoOnFlightRateSheetListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all CargoOnFlight rate sheets owned by the caller's organization. Pagination only — no search/filter. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CargoOnFlightRateSheetListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.cargoOnFlightRateSheets.listV1(
        includeArchived: true,
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

**includeArchived:** `Bool?` 
    
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

<details><summary><code>client.billing.cargoOnFlightRateSheets.<a href="/Sources/Resources/Billing/CargoOnFlightRateSheets/CargoOnFlightRateSheetsClient.swift">createV1</a>(request: Requests.CargoOnFlightRateSheetClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a CargoOnFlight rate sheet owned by the caller's org. | authz: allowed_org_types=[provider], min_org_role=operator | (CargoOnFlightRateSheetClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.cargoOnFlightRateSheets.createV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CargoOnFlightRateSheetClientCreate1` 
    
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

<details><summary><code>client.billing.cargoOnFlightRateSheets.<a href="/Sources/Resources/Billing/CargoOnFlightRateSheets/CargoOnFlightRateSheetsClient.swift">updateV1</a>(id: String, request: Requests.CargoOnFlightRateSheetClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a CargoOnFlight rate sheet owned by the caller's org. Use the archive/unarchive routes to toggle the `archived` flag. | authz: allowed_org_types=[provider], min_org_role=operator | (CargoOnFlightRateSheetClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.cargoOnFlightRateSheets.updateV1(
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

**request:** `Requests.CargoOnFlightRateSheetClientUpdate1` 
    
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

<details><summary><code>client.billing.cargoOnFlightRateSheets.<a href="/Sources/Resources/Billing/CargoOnFlightRateSheets/CargoOnFlightRateSheetsClient.swift">archiveV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives a CargoOnFlight rate sheet (sets archived=True). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.cargoOnFlightRateSheets.archiveV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.cargoOnFlightRateSheets.<a href="/Sources/Resources/Billing/CargoOnFlightRateSheets/CargoOnFlightRateSheetsClient.swift">unarchiveV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unarchives a CargoOnFlight rate sheet (sets archived=False). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.cargoOnFlightRateSheets.unarchiveV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.cargoOnFlightRateSheets.<a href="/Sources/Resources/Billing/CargoOnFlightRateSheets/CargoOnFlightRateSheetsClient.swift">deleteV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes a CargoOnFlight rate sheet owned by the caller's org. Prefer archiving when the sheet has historical references. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.cargoOnFlightRateSheets.deleteV1(id: "id")
}

try await main()
```
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

## Billing OnboardCourierRateSheets
<details><summary><code>client.billing.onboardCourierRateSheets.<a href="/Sources/Resources/Billing/OnboardCourierRateSheets/OnboardCourierRateSheetsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> OnboardCourierRateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific OnboardCourier rate sheet owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OnboardCourierRateSheet1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.onboardCourierRateSheets.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.onboardCourierRateSheets.<a href="/Sources/Resources/Billing/OnboardCourierRateSheets/OnboardCourierRateSheetsClient.swift">listV1</a>(includeArchived: Bool?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OnboardCourierRateSheetListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all OnboardCourier rate sheets owned by the caller's organization. Pagination only — no search/filter. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OnboardCourierRateSheetListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.onboardCourierRateSheets.listV1(
        includeArchived: true,
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

**includeArchived:** `Bool?` 
    
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

<details><summary><code>client.billing.onboardCourierRateSheets.<a href="/Sources/Resources/Billing/OnboardCourierRateSheets/OnboardCourierRateSheetsClient.swift">createV1</a>(request: Requests.OnboardCourierRateSheetClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an OnboardCourier rate sheet owned by the caller's org. | authz: allowed_org_types=[provider], min_org_role=operator | (OnboardCourierRateSheetClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.onboardCourierRateSheets.createV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OnboardCourierRateSheetClientCreate1` 
    
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

<details><summary><code>client.billing.onboardCourierRateSheets.<a href="/Sources/Resources/Billing/OnboardCourierRateSheets/OnboardCourierRateSheetsClient.swift">updateV1</a>(id: String, request: Requests.OnboardCourierRateSheetClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an OnboardCourier rate sheet owned by the caller's org. Use the archive/unarchive routes to toggle the `archived` flag. | authz: allowed_org_types=[provider], min_org_role=operator | (OnboardCourierRateSheetClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.onboardCourierRateSheets.updateV1(
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

**request:** `Requests.OnboardCourierRateSheetClientUpdate1` 
    
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

<details><summary><code>client.billing.onboardCourierRateSheets.<a href="/Sources/Resources/Billing/OnboardCourierRateSheets/OnboardCourierRateSheetsClient.swift">archiveV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives an OnboardCourier rate sheet (sets archived=True). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.onboardCourierRateSheets.archiveV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.onboardCourierRateSheets.<a href="/Sources/Resources/Billing/OnboardCourierRateSheets/OnboardCourierRateSheetsClient.swift">unarchiveV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unarchives an OnboardCourier rate sheet (sets archived=False). Idempotent. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.onboardCourierRateSheets.unarchiveV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.onboardCourierRateSheets.<a href="/Sources/Resources/Billing/OnboardCourierRateSheets/OnboardCourierRateSheetsClient.swift">deleteV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes an OnboardCourier rate sheet owned by the caller's org. Prefer archiving when the sheet has historical references. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.onboardCourierRateSheets.deleteV1(id: "id")
}

try await main()
```
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

## Billing RateSheetMappings
<details><summary><code>client.billing.rateSheetMappings.<a href="/Sources/Resources/Billing/RateSheetMappings/RateSheetMappingsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> RateSheetMapping1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific rate sheet mapping owned by the caller's org (`owned_by_org_id == caller.org_id`). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (RateSheetMapping1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheetMappings.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.rateSheetMappings.<a href="/Sources/Resources/Billing/RateSheetMappings/RateSheetMappingsClient.swift">listV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> RateSheetMappingListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists rate sheet mappings owned by the caller's org. Pagination only — no search/filter. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (RateSheetMappingListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheetMappings.listV1(
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

<details><summary><code>client.billing.rateSheetMappings.<a href="/Sources/Resources/Billing/RateSheetMappings/RateSheetMappingsClient.swift">createV1</a>(request: Requests.RateSheetMappingClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a rate sheet mapping owned by the caller's org. The caller becomes `owned_by_org_id`. Body must set exactly one of `counterparty_org_id` / `counterparty_driver_id` (XOR). | authz: allowed_org_types=[provider], min_org_role=operator | (RateSheetMappingClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheetMappings.createV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RateSheetMappingClientCreate1` 
    
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

<details><summary><code>client.billing.rateSheetMappings.<a href="/Sources/Resources/Billing/RateSheetMappings/RateSheetMappingsClient.swift">deleteV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a rate sheet mapping owned by the caller's org. Does not cascade — rate sheet documents themselves are untouched. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheetMappings.deleteV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.billing.rateSheetMappings.<a href="/Sources/Resources/Billing/RateSheetMappings/RateSheetMappingsClient.swift">appendRateSheetV1</a>(id: String, tgType: String, rateSheetId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Appends `rate_sheet_id` to the per-TG-type list on a mapping. Idempotent — already-present ids are a no-op. The 0-index entry remains the default; use the set_default route to promote a different sheet. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheetMappings.appendRateSheetV1(
        id: "id",
        tgType: .chrtGroundProvider,
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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tgType:** `String` 
    
</dd>
</dl>

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

<details><summary><code>client.billing.rateSheetMappings.<a href="/Sources/Resources/Billing/RateSheetMappings/RateSheetMappingsClient.swift">removeRateSheetV1</a>(id: String, tgType: String, rateSheetId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes `rate_sheet_id` from the per-TG-type list on a mapping. Idempotent — absent ids are a no-op. If the removed id was the 0-index default, the next id (if any) becomes the new default. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheetMappings.removeRateSheetV1(
        id: "id",
        tgType: .chrtGroundProvider,
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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tgType:** `String` 
    
</dd>
</dl>

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

<details><summary><code>client.billing.rateSheetMappings.<a href="/Sources/Resources/Billing/RateSheetMappings/RateSheetMappingsClient.swift">setDefaultRateSheetV1</a>(id: String, tgType: String, rateSheetId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Promotes `rate_sheet_id` to the 0-index (default) slot of the per-TG-type list, preserving the relative order of the other ids. If the id isn't already in the list it is added at index 0. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.rateSheetMappings.setDefaultRateSheetV1(
        id: "id",
        tgType: .chrtGroundProvider,
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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tgType:** `String` 
    
</dd>
</dl>

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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">listV1</a>(sortBy: StatementSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: StatementStatusEnum1?, filterSettlementType: SettlementTypeEnum1?, filterOrderId: String?, filterOrderShortId: String?, filterOrderOffChrtReferenceId: String?, filterPaymentOriginOrgId: String?, filterPaymentOriginOffChrtShipperOrgId: String?, filterPaymentDestinationOrgId: String?, filterOwnedByOrgId: String?, filterStagedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterOpenedAtTimestampGte: Date?, filterOpenedAtTimestampLte: Date?, filterPaidAtTimestampGte: Date?, filterPaidAtTimestampLte: Date?, filterUncollectibleAtTimestampGte: Date?, filterUncollectibleAtTimestampLte: Date?, requestOptions: RequestOptions?) -> StatementsListRes</code></summary>
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
        filterOrderShortId: "filter_order_short_id",
        filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
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

**filterOrderId:** `String?` — [DEPRECATED — use filter_order_short_id] Filter by order ID (returns statements whose order_ids list contains this value)
    
</dd>
</dl>

<dl>
<dd>

**filterOrderShortId:** `String?` — Filter by order short ID (returns statements whose order_short_ids list contains this value)
    
</dd>
</dl>

<dl>
<dd>

**filterOrderOffChrtReferenceId:** `String?` — Filter by order off-chrt reference ID (returns statements whose order_off_chrt_reference_ids list contains this value)
    
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">expandedListV1</a>(sortBy: StatementSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: StatementStatusEnum1?, filterSettlementType: SettlementTypeEnum1?, filterOrderId: String?, filterOrderShortId: String?, filterOrderOffChrtReferenceId: String?, filterPaymentOriginOrgId: String?, filterPaymentOriginOffChrtShipperOrgId: String?, filterPaymentDestinationOrgId: String?, filterOwnedByOrgId: String?, filterStagedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterOpenedAtTimestampGte: Date?, filterOpenedAtTimestampLte: Date?, filterPaidAtTimestampGte: Date?, filterPaidAtTimestampLte: Date?, filterUncollectibleAtTimestampGte: Date?, filterUncollectibleAtTimestampLte: Date?, requestOptions: RequestOptions?) -> StatementsExpandedListRes</code></summary>
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
        filterOrderShortId: "filter_order_short_id",
        filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
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

**filterOrderId:** `String?` — [DEPRECATED — use filter_order_short_id] Filter by order ID (returns statements whose order_ids list contains this value)
    
</dd>
</dl>

<dl>
<dd>

**filterOrderShortId:** `String?` — Filter by order short ID (returns statements whose order_short_ids list contains this value)
    
</dd>
</dl>

<dl>
<dd>

**filterOrderOffChrtReferenceId:** `String?` — Filter by order off-chrt reference ID (returns statements whose order_off_chrt_reference_ids list contains this value)
    
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">createV1</a>(request: Requests.StatementCreateClientReq, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an empty STAGED Statement carrying payment parties + settlement_type. Items are attached via the attach_* routes. | authz: allowed_org_types=[provider], min_org_role=operator | (StatementCreateClientReq) -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.createV1(request: .init(settlementType: .stripeConnect))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.StatementCreateClientReq` 
    
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">attachLineItemGroupV1</a>(statementId: String, lineItemGroupId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attaches a FINALIZED, unbundled LineItemGroup to a STAGED Statement. Parties must match; the Statement's settlement_type is written onto the LIG (or matched if previously stamped). | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.attachLineItemGroupV1(
        statementId: "statement_id",
        lineItemGroupId: "line_item_group_id"
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">detachLineItemGroupV1</a>(statementId: String, lineItemGroupId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detaches a LineItemGroup from a STAGED Statement and recomputes order denormalization. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.detachLineItemGroupV1(
        statementId: "statement_id",
        lineItemGroupId: "line_item_group_id"
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">attachBillingLedgerPeriodV1</a>(statementId: String, billingLedgerPeriodId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attaches a CLOSED, unbundled BillingLedgerPeriod to a STAGED Statement. Parties must match. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.attachBillingLedgerPeriodV1(
        statementId: "statement_id",
        billingLedgerPeriodId: "billing_ledger_period_id"
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

**billingLedgerPeriodId:** `String` 
    
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">detachBillingLedgerPeriodV1</a>(statementId: String, billingLedgerPeriodId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detaches a BillingLedgerPeriod from a STAGED Statement, freeing it for re-bundling. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.detachBillingLedgerPeriodV1(
        statementId: "statement_id",
        billingLedgerPeriodId: "billing_ledger_period_id"
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

**billingLedgerPeriodId:** `String` 
    
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">openOffChrtV1</a>(statementId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Off-chrt manual transition: STAGED → OPEN. Cascades attached LineItemGroups FINALIZED → OPEN. Stripe-Connect statements take a separate Stripe-invoice path. Requires settlement_type=OFF_CHRT and at least one bundled LIG or period. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.openOffChrtV1(statementId: "statement_id")
}

try await main()
```
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">markPaidOffChrtV1</a>(statementId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Off-chrt manual transition: OPEN → PAID. Cascades attached LineItemGroups OPEN → PAID. Stripe-Connect statements transition via Stripe webhook + sync, not this route. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.markPaidOffChrtV1(statementId: "statement_id")
}

try await main()
```
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">markUncollectibleOffChrtV1</a>(statementId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Off-chrt manual write-off: OPEN → UNCOLLECTIBLE. Cascades attached LineItemGroups OPEN → UNCOLLECTIBLE. Stripe-Connect statements transition via Stripe webhook + sync_invoice/v1, not this route. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.markUncollectibleOffChrtV1(statementId: "statement_id")
}

try await main()
```
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">openInvoiceV1</a>(statementId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stripe-Connect transition: STAGED → OPEN. Creates and finalizes a Stripe invoice for the Statement; cascades attached LineItemGroups FINALIZED → OPEN. Requires settlement_type=STRIPE_CONNECT and at least one bundled FINALIZED LIG. Off-chrt statements take open_off_chrt/v1 instead. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.statements.openInvoiceV1(statementId: "statement_id")
}

try await main()
```
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">syncInvoiceV1</a>(statementId: String, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stripe-Connect manual reconciliation: pulls the live Stripe invoice status and updates the Statement (and cascaded LIG statuses) accordingly. Same backend as the Stripe webhook handler — idempotent, no-op when already in sync. Handles PAID, UNCOLLECTIBLE, and VOID/DELETED transitions. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Stripe-Connect transition: OPEN → STAGED. Voids the Stripe invoice, clears stripe_* fields on the Statement, and cascades attached LineItemGroups OPEN → FINALIZED so they remain re-bundleable into a new Statement. Reversible — the Statement can be re-opened with a fresh open_invoice/v1. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">updateSettlementTypeV1</a>(statementId: String, request: Requests.StatementUpdateSettlementTypeReq, requestOptions: RequestOptions?) -> Statement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Flips a STAGED Statement's settlement_type between STRIPE_CONNECT and OFF_CHRT and cascades the new value onto every attached LineItemGroup. Rejects if the new value matches the current value. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | (StatementUpdateSettlementTypeReq) -> (Statement1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**request:** `Requests.StatementUpdateSettlementTypeReq` 
    
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

Deletes a STAGED Statement that has no attached LineItemGroups or BillingLedgerPeriods. Detach all children first via the detach_* routes. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Listing Listings
<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">byIdV1</a>(listingId: String, requestOptions: RequestOptions?) -> ListingLimitedForBidder1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a listing by id in the bidder-facing shape (no `internal_notes`). Visible to the lister and to snapshot participants (as bidder — provider org or driver). Listers wanting the full record call `by_id_for_lister/v1`. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (ListingLimitedForBidder1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.byIdV1(listingId: "listing_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listingId:** `String` 
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">byIdForListerV1</a>(listingId: String, requestOptions: RequestOptions?) -> Listing1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches the full listing record (including `internal_notes`). Restricted to the lister org — bidders use `by_id/v1`. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Listing1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.byIdForListerV1(listingId: "listing_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listingId:** `String` 
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">byTaskGroupV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> [Listing1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches all listings for a single task group. Typically returns one or two (dual-audience siblings) OPEN listings during active bidding plus any terminal history. Visible only to the task group's coordinator. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[Listing1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.byTaskGroupV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">listByOrgV1</a>(filterAudience: ListingAudienceEnum?, sortBy: ListingSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: ListingStatusEnum?, filterType: ListingTypeEnum?, filterTaskGroupId: String?, filterOrderId: String?, filterCreatedByOrgId: String?, filterCreatedByUserId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ListingListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists listings owned (created) by the caller's org with filtering, sorting, and pagination. Lister view. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ListingListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.listByOrgV1(
        filterAudience: .providers,
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterTaskGroupId: "filter_task_group_id",
        filterOrderId: "filter_order_id",
        filterCreatedByOrgId: "filter_created_by_org_id",
        filterCreatedByUserId: "filter_created_by_user_id",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**filterAudience:** `ListingAudienceEnum?` — Filter to a single audience (PROVIDERS or DRIVERS). Lister-only — bidder routes hardcode audience.
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `ListingSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterStatus:** `ListingStatusEnum?` — Filter by listing status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterType:** `ListingTypeEnum?` — Filter by listing type(s). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterTaskGroupId:** `String?` — Filter to listings for this task group.
    
</dd>
</dl>

<dl>
<dd>

**filterOrderId:** `String?` — Filter to listings on this order.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedByOrgId:** `String?` — Filter to listings created by this provider org (lister). Mostly useful on bidder views to slice by lister.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedByUserId:** `String?` — Filter to listings created by this operator (audit).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampGte:** `Date?` — Filter last_edited_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampLte:** `Date?` — Filter last_edited_at_timestamp <= value (inclusive).
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">listForProviderBidderV1</a>(sortBy: ListingSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: ListingStatusEnum?, filterType: ListingTypeEnum?, filterTaskGroupId: String?, filterOrderId: String?, filterCreatedByOrgId: String?, filterCreatedByUserId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ListingForBidderListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists PROVIDERS-audience listings where the caller's org is a snapshot participant. Provider-side bidder view with filtering, sorting, and pagination. Returns the bidder shape (no `internal_notes`). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ListingForBidderListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.listForProviderBidderV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterTaskGroupId: "filter_task_group_id",
        filterOrderId: "filter_order_id",
        filterCreatedByOrgId: "filter_created_by_org_id",
        filterCreatedByUserId: "filter_created_by_user_id",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `ListingSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterStatus:** `ListingStatusEnum?` — Filter by listing status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterType:** `ListingTypeEnum?` — Filter by listing type(s). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterTaskGroupId:** `String?` — Filter to listings for this task group.
    
</dd>
</dl>

<dl>
<dd>

**filterOrderId:** `String?` — Filter to listings on this order.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedByOrgId:** `String?` — Filter to listings created by this provider org (lister). Mostly useful on bidder views to slice by lister.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedByUserId:** `String?` — Filter to listings created by this operator (audit).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampGte:** `Date?` — Filter last_edited_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampLte:** `Date?` — Filter last_edited_at_timestamp <= value (inclusive).
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">listForDriverBidderV1</a>(sortBy: ListingSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: ListingStatusEnum?, filterType: ListingTypeEnum?, filterTaskGroupId: String?, filterOrderId: String?, filterCreatedByOrgId: String?, filterCreatedByUserId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ListingForBidderListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists DRIVERS-audience listings where the caller (resolved to a Driver of their org) is a snapshot participant. Driver-side bidder view with filtering, sorting, and pagination. Returns the bidder shape (no `internal_notes`). | authz: allowed_org_types=[provider], min_org_role=driver | () -> (ListingForBidderListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.listForDriverBidderV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterTaskGroupId: "filter_task_group_id",
        filterOrderId: "filter_order_id",
        filterCreatedByOrgId: "filter_created_by_org_id",
        filterCreatedByUserId: "filter_created_by_user_id",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `ListingSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterStatus:** `ListingStatusEnum?` — Filter by listing status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterType:** `ListingTypeEnum?` — Filter by listing type(s). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterTaskGroupId:** `String?` — Filter to listings for this task group.
    
</dd>
</dl>

<dl>
<dd>

**filterOrderId:** `String?` — Filter to listings on this order.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedByOrgId:** `String?` — Filter to listings created by this provider org (lister). Mostly useful on bidder views to slice by lister.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedByUserId:** `String?` — Filter to listings created by this operator (audit).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampGte:** `Date?` — Filter last_edited_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampLte:** `Date?` — Filter last_edited_at_timestamp <= value (inclusive).
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">createV1</a>(request: Requests.ListingClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Listing for a TaskGroup that the caller's org coordinates. Snapshots participants by unioning ad-hoc picks with expanded bidding groups. When `auto_open_priced_bid_threads` is True, also auto-opens one BidThread per resolved participant with a lister-side seed Bid carrying default-rate-sheet-derived pricing (falling back to the listing's `pro_forma_line_items` when no rate sheet is configured for a participant) — listing insert and thread inserts are atomic. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.createV1(request: .init(
        listingDescription: "listing_description",
        taskGroupId: "task_group_id",
        taskGroupSummaryForBidders: "task_group_summary_for_bidders",
        audience: .providers
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

**request:** `Requests.ListingClientCreate1` 
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">updateV1</a>(listingId: String, request: Requests.ListingClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Partial update of a Listing. Allowed only while `status == OPEN`. Audience participant lists are NOT editable here — use add_participants / remove_participants. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.updateV1(
        listingId: "listing_id",
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

**listingId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ListingClientUpdate1` 
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">addProviderParticipantsV1</a>(listingId: String, request: Requests.ListingAddProviderParticipantsReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Expands the audience of an OPEN PROVIDERS listing. Ad-hoc provider picks are unioned with expanded org bidding groups, then `$addToSet` onto the listing. Rejected for DRIVERS listings. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingAddProviderParticipantsReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.addProviderParticipantsV1(
        listingId: "listing_id",
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

**listingId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ListingAddProviderParticipantsReq` 
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">addDriverParticipantsV1</a>(listingId: String, request: Requests.ListingAddDriverParticipantsReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Expands the audience of an OPEN DRIVERS listing. Ad-hoc driver picks are unioned with expanded driver bidding groups, then `$addToSet` onto the listing. Rejected for PROVIDERS listings. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingAddDriverParticipantsReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.addDriverParticipantsV1(
        listingId: "listing_id",
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

**listingId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ListingAddDriverParticipantsReq` 
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">removeProviderParticipantsV1</a>(listingId: String, request: Requests.ListingRemoveProviderParticipantsReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Narrows the audience of an OPEN PROVIDERS listing. Rejected for any participant with a live (OPEN) BidThread. Rejected for DRIVERS listings. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingRemoveProviderParticipantsReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.removeProviderParticipantsV1(
        listingId: "listing_id",
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

**listingId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ListingRemoveProviderParticipantsReq` 
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">removeDriverParticipantsV1</a>(listingId: String, request: Requests.ListingRemoveDriverParticipantsReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Narrows the audience of an OPEN DRIVERS listing. Rejected for any driver with a live (OPEN) BidThread. Rejected for PROVIDERS listings. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingRemoveDriverParticipantsReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.removeDriverParticipantsV1(
        listingId: "listing_id",
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

**listingId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ListingRemoveDriverParticipantsReq` 
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">cancelV1</a>(listingId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels an OPEN listing. All OPEN BidThreads on this listing are system-rejected. No shipping or billing side-effects. Idempotent: no-op on an already-terminal listing. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.listings.cancelV1(listingId: "listing_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**listingId:** `String` 
    
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

## Listing OrgBiddingGroups
<details><summary><code>client.listing.orgBiddingGroups.<a href="/Sources/Resources/Listing/OrgBiddingGroups/OrgBiddingGroupsClient.swift">byIdV1</a>(groupId: String, requestOptions: RequestOptions?) -> OrgBiddingGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches an org bidding group by id. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrgBiddingGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.orgBiddingGroups.byIdV1(groupId: "group_id")
}

try await main()
```
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

<details><summary><code>client.listing.orgBiddingGroups.<a href="/Sources/Resources/Listing/OrgBiddingGroups/OrgBiddingGroupsClient.swift">listByOrgV1</a>(sortBy: OrgBiddingGroupSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterCreatedByUserId: String?, filterProviderOrgId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> OrgBiddingGroupListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists org bidding groups owned by the caller's org with filtering, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrgBiddingGroupListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.orgBiddingGroups.listByOrgV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterCreatedByUserId: "filter_created_by_user_id",
        filterProviderOrgId: "filter_provider_org_id",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `OrgBiddingGroupSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterCreatedByUserId:** `String?` — Filter by the operator who created the group.
    
</dd>
</dl>

<dl>
<dd>

**filterProviderOrgId:** `String?` — Filter to groups that contain this provider org as a member.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampGte:** `Date?` — Filter last_edited_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampLte:** `Date?` — Filter last_edited_at_timestamp <= value (inclusive).
    
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

<details><summary><code>client.listing.orgBiddingGroups.<a href="/Sources/Resources/Listing/OrgBiddingGroups/OrgBiddingGroupsClient.swift">createV1</a>(request: Requests.OrgBiddingGroupClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an org bidding group owned by the caller's org. The group starts empty — add members via /add_provider_member. | authz: allowed_org_types=[provider], min_org_role=operator | (OrgBiddingGroupClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.orgBiddingGroups.createV1(request: .init(
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

**request:** `Requests.OrgBiddingGroupClientCreate1` 
    
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

<details><summary><code>client.listing.orgBiddingGroups.<a href="/Sources/Resources/Listing/OrgBiddingGroups/OrgBiddingGroupsClient.swift">updateNameV1</a>(groupId: String, groupName: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the name of an org bidding group. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.orgBiddingGroups.updateNameV1(
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

<details><summary><code>client.listing.orgBiddingGroups.<a href="/Sources/Resources/Listing/OrgBiddingGroups/OrgBiddingGroupsClient.swift">addProviderMemberV1</a>(groupId: String, providerOrgId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds an on-chrt provider org to a bidding group. The provider must have a live provider -> provider connection to the caller's org. Duplicate adds are idempotent ($addToSet). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.orgBiddingGroups.addProviderMemberV1(
        groupId: "group_id",
        providerOrgId: "provider_org_id"
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

**providerOrgId:** `String` 
    
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

<details><summary><code>client.listing.orgBiddingGroups.<a href="/Sources/Resources/Listing/OrgBiddingGroups/OrgBiddingGroupsClient.swift">removeProviderMemberV1</a>(groupId: String, providerOrgId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes an on-chrt provider org from a bidding group. No-op if not a member. Live Listings retain their snapshotted members. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.orgBiddingGroups.removeProviderMemberV1(
        groupId: "group_id",
        providerOrgId: "provider_org_id"
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

**providerOrgId:** `String` 
    
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

<details><summary><code>client.listing.orgBiddingGroups.<a href="/Sources/Resources/Listing/OrgBiddingGroups/OrgBiddingGroupsClient.swift">deleteV1</a>(groupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes an org bidding group. Live Listings that used this group as a source are unaffected — they hold their own snapshotted `participant_provider_org_ids`. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.orgBiddingGroups.deleteV1(groupId: "group_id")
}

try await main()
```
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

## Listing DriverBiddingGroups
<details><summary><code>client.listing.driverBiddingGroups.<a href="/Sources/Resources/Listing/DriverBiddingGroups/DriverBiddingGroupsClient.swift">byIdV1</a>(groupId: String, requestOptions: RequestOptions?) -> DriverBiddingGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a driver bidding group by id. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (DriverBiddingGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.driverBiddingGroups.byIdV1(groupId: "group_id")
}

try await main()
```
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

<details><summary><code>client.listing.driverBiddingGroups.<a href="/Sources/Resources/Listing/DriverBiddingGroups/DriverBiddingGroupsClient.swift">listByOrgV1</a>(sortBy: DriverBiddingGroupSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterCreatedByUserId: String?, filterDriverId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> DriverBiddingGroupListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists driver bidding groups owned by the caller's org with filtering, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (DriverBiddingGroupListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.driverBiddingGroups.listByOrgV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterCreatedByUserId: "filter_created_by_user_id",
        filterDriverId: "filter_driver_id",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `DriverBiddingGroupSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterCreatedByUserId:** `String?` — Filter by the operator who created the group.
    
</dd>
</dl>

<dl>
<dd>

**filterDriverId:** `String?` — Filter to groups that contain this Driver as a member.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampGte:** `Date?` — Filter last_edited_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampLte:** `Date?` — Filter last_edited_at_timestamp <= value (inclusive).
    
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

<details><summary><code>client.listing.driverBiddingGroups.<a href="/Sources/Resources/Listing/DriverBiddingGroups/DriverBiddingGroupsClient.swift">createV1</a>(request: Requests.DriverBiddingGroupClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a driver bidding group owned by the caller's org. The group starts empty — add drivers via /add_member. | authz: allowed_org_types=[provider], min_org_role=operator | (DriverBiddingGroupClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.driverBiddingGroups.createV1(request: .init(
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

**request:** `Requests.DriverBiddingGroupClientCreate1` 
    
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

<details><summary><code>client.listing.driverBiddingGroups.<a href="/Sources/Resources/Listing/DriverBiddingGroups/DriverBiddingGroupsClient.swift">updateNameV1</a>(groupId: String, groupName: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the name of a driver bidding group. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.driverBiddingGroups.updateNameV1(
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

<details><summary><code>client.listing.driverBiddingGroups.<a href="/Sources/Resources/Listing/DriverBiddingGroups/DriverBiddingGroupsClient.swift">addMemberV1</a>(groupId: String, driverId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a driver to a bidding group. Driver must be part of the caller's org. Duplicate adds are idempotent ($addToSet). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.driverBiddingGroups.addMemberV1(
        groupId: "group_id",
        driverId: "driver_id"
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

<details><summary><code>client.listing.driverBiddingGroups.<a href="/Sources/Resources/Listing/DriverBiddingGroups/DriverBiddingGroupsClient.swift">removeMemberV1</a>(groupId: String, driverId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a driver from a bidding group. No-op if the driver is not a member. Live Listings retain their snapshotted members. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.driverBiddingGroups.removeMemberV1(
        groupId: "group_id",
        driverId: "driver_id"
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

<details><summary><code>client.listing.driverBiddingGroups.<a href="/Sources/Resources/Listing/DriverBiddingGroups/DriverBiddingGroupsClient.swift">deleteV1</a>(groupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes a driver bidding group. Live Listings that reference this group as a source are unaffected — they hold their own snapshotted `participant_driver_ids`. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.driverBiddingGroups.deleteV1(groupId: "group_id")
}

try await main()
```
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

## Listing BidThreads
<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">byIdV1</a>(bidThreadId: String, requestOptions: RequestOptions?) -> BidThread1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a bid thread by id. Visible to the lister, the bidder org (provider), and the bidder driver. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (BidThread1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.byIdV1(bidThreadId: "bid_thread_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**bidThreadId:** `String` 
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">listForListingV1</a>(listingId: String, sortBy: BidThreadSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: BidThreadStatusEnum?, filterListingId: String?, filterBidderProviderOrgId: String?, filterBidderDriverId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterStatusChangedAtTimestampGte: Date?, filterStatusChangedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> BidThreadListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all bid threads on a listing with filtering, sorting, and pagination. Lister-only — the listing must belong to the caller's org. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (BidThreadListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.listForListingV1(
        listingId: "listing_id",
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterListingId: "filter_listing_id",
        filterBidderProviderOrgId: "filter_bidder_provider_org_id",
        filterBidderDriverId: "filter_bidder_driver_id",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStatusChangedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStatusChangedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**listingId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `BidThreadSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterStatus:** `BidThreadStatusEnum?` — Filter by thread status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterListingId:** `String?` — Filter to threads on this listing. Lister route ignores this field (path param wins); bidder route uses it to slice within the caller's bidder universe.
    
</dd>
</dl>

<dl>
<dd>

**filterBidderProviderOrgId:** `String?` — Filter to threads where the bidder is this provider org. Useful on lister views to slice by bidder.
    
</dd>
</dl>

<dl>
<dd>

**filterBidderDriverId:** `String?` — Filter to threads where the bidder is this driver. Useful on lister views to slice by driver bidder.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterStatusChangedAtTimestampGte:** `Date?` — Filter status_changed_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterStatusChangedAtTimestampLte:** `Date?` — Filter status_changed_at_timestamp <= value (inclusive).
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">listForBidderV1</a>(sortBy: BidThreadSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: BidThreadStatusEnum?, filterListingId: String?, filterBidderProviderOrgId: String?, filterBidderDriverId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterStatusChangedAtTimestampGte: Date?, filterStatusChangedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> BidThreadListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists bid threads where the caller is the bidder — either as the bidder org (operator+) or as the bidder driver (driver). Filtering, sorting, and pagination supported. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (BidThreadListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.listForBidderV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterListingId: "filter_listing_id",
        filterBidderProviderOrgId: "filter_bidder_provider_org_id",
        filterBidderDriverId: "filter_bidder_driver_id",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStatusChangedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStatusChangedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `BidThreadSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order (asc or desc).
    
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

**filterStatus:** `BidThreadStatusEnum?` — Filter by thread status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterListingId:** `String?` — Filter to threads on this listing. Lister route ignores this field (path param wins); bidder route uses it to slice within the caller's bidder universe.
    
</dd>
</dl>

<dl>
<dd>

**filterBidderProviderOrgId:** `String?` — Filter to threads where the bidder is this provider org. Useful on lister views to slice by bidder.
    
</dd>
</dl>

<dl>
<dd>

**filterBidderDriverId:** `String?` — Filter to threads where the bidder is this driver. Useful on lister views to slice by driver bidder.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterStatusChangedAtTimestampGte:** `Date?` — Filter status_changed_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterStatusChangedAtTimestampLte:** `Date?` — Filter status_changed_at_timestamp <= value (inclusive).
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">createV1</a>(request: Requests.BidThreadClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opens a new BidThread on a Listing. The body carries the thread's first Bid (SUBMIT / ACCEPT / DENY). Bidder identity is resolved server-side from the caller's JWT + the listing's audience. | authz: allowed_org_types=[provider], min_org_role=driver | (BidThreadClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.createV1(request: .init(
        action: .submit,
        listingId: "listing_id"
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

**request:** `Requests.BidThreadClientCreate1` 
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">counterV1</a>(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pushes a COUNTER Bid carrying revised pro_forma_line_items onto an OPEN NEGOTIATION thread. Both sides of the thread may COUNTER. | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.counterV1(
        bidThreadId: "bid_thread_id",
        request: BidAppendReq(

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

**bidThreadId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `BidAppendReq` 
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">acceptV1</a>(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pushes a bidder-side ACCEPT onto an OPEN thread. References the most recent lister-side pro_forma (or the listing's opening for DISPATCH). On `auto_award_first_accept=True` listings, fires the full cascade immediately (thread ACCEPTED, listing AWARDED, shipping + billing side-effects). Otherwise leaves the thread OPEN for the lister to finalise via confirm_accept. Lister-side finalisation lives on confirm_accept; calling /accept/v1 from the lister side is rejected (400). | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.acceptV1(
        bidThreadId: "bid_thread_id",
        request: BidAppendReq(

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

**bidThreadId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `BidAppendReq` 
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">denyV1</a>(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pushes a DENY onto an OPEN thread, flipping its status to DENIED (terminal). Both sides may deny. References the most recent opposite-side Bid; carries no pro_forma. | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.denyV1(
        bidThreadId: "bid_thread_id",
        request: BidAppendReq(

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

**bidThreadId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `BidAppendReq` 
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">withdrawV1</a>(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pushes a bidder-side WITHDRAW onto an OPEN thread, flipping its status to WITHDRAWN (terminal). Bidder-only — the lister equivalent is CANCEL on the listing. | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.withdrawV1(
        bidThreadId: "bid_thread_id",
        request: BidAppendReq(

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

**bidThreadId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `BidAppendReq` 
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">confirmAcceptV1</a>(bidThreadId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lister confirmation of a bidder's ACCEPT on this thread, used when `listing.auto_award_first_accept == False`. Runs the full award cascade: thread ACCEPTED, listing AWARDED, sibling threads / listings cancelled, shipping + billing side-effects. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.listing.bidThreads.confirmAcceptV1(bidThreadId: "bid_thread_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**bidThreadId:** `String` 
    
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
<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/AdHocClient.swift">listByOrderIdV1</a>(orderId: String, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> NotificationAdHocListRes</code></summary>
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

<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/AdHocClient.swift">createV1</a>(orderId: String, request: Requests.NotificationIntentAdHocClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/AdHocClient.swift">deleteV1</a>(adHocId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

## Operations Cases
<details><summary><code>client.operations.cases.<a href="/Sources/Resources/Operations/Cases/CasesClient.swift">listV1</a>(sortBy: CaseSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: CaseStatusEnum?, filterDepartmentId: String?, filterAssignedOperatorUserId: String?, filterNeedsAction: Bool?, filterUnassigned: Bool?, requestOptions: RequestOptions?) -> CaseListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists cases for the caller's organization with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (CaseListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.cases.listV1(
        sortBy: .createdAt,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterAssignedOperatorUserId: "filter_assigned_operator_user_id",
        filterNeedsAction: true,
        filterUnassigned: true
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

**sortBy:** `CaseSortByEnum?` — Field to sort by
    
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

**filterStatus:** `CaseStatusEnum?` — Filter by status(es)
    
</dd>
</dl>

<dl>
<dd>

**filterDepartmentId:** `String?` — Filter by department ID(s)
    
</dd>
</dl>

<dl>
<dd>

**filterAssignedOperatorUserId:** `String?` — Filter by assigned operator user ID (matches any case that includes this user)
    
</dd>
</dl>

<dl>
<dd>

**filterNeedsAction:** `Bool?` — Filter by needs_action flag
    
</dd>
</dl>

<dl>
<dd>

**filterUnassigned:** `Bool?` — Filter for unassigned cases
    
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

<details><summary><code>client.operations.cases.<a href="/Sources/Resources/Operations/Cases/CasesClient.swift">getV1</a>(caseId: String, requestOptions: RequestOptions?) -> Case1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single case. | authz: min_org_role=operator | () -> (Case1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.cases.getV1(caseId: "case_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**caseId:** `String` 
    
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

<details><summary><code>client.operations.cases.<a href="/Sources/Resources/Operations/Cases/CasesClient.swift">updateV1</a>(caseId: String, request: Requests.CaseClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a case's department_id. | authz: min_org_role=operator | (CaseClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.cases.updateV1(
        caseId: "case_id",
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

**caseId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CaseClientUpdate1` 
    
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

<details><summary><code>client.operations.cases.<a href="/Sources/Resources/Operations/Cases/CasesClient.swift">getByOrderV1</a>(orderId: String, requestOptions: RequestOptions?) -> Case1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the case for a given shipping order. | authz: min_org_role=operator | () -> (Case1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.cases.getByOrderV1(orderId: "order_id")
}

try await main()
```
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

<details><summary><code>client.operations.cases.<a href="/Sources/Resources/Operations/Cases/CasesClient.swift">assignV1</a>(caseId: String, request: Requests.CaseAssignReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds operator(s) to a case. | authz: min_org_role=operator | (CaseAssignReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.cases.assignV1(
        caseId: "case_id",
        request: .init(operatorUserIds: [
            "operator_user_ids"
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

**caseId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CaseAssignReq` 
    
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

<details><summary><code>client.operations.cases.<a href="/Sources/Resources/Operations/Cases/CasesClient.swift">unassignV1</a>(caseId: String, request: Requests.CaseUnassignReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes operator(s) from a case. | authz: min_org_role=operator | (CaseUnassignReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.cases.unassignV1(
        caseId: "case_id",
        request: .init(operatorUserIds: [
            "operator_user_ids"
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

**caseId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CaseUnassignReq` 
    
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

<details><summary><code>client.operations.cases.<a href="/Sources/Resources/Operations/Cases/CasesClient.swift">addMessageV1</a>(caseId: String, request: Requests.CaseAddMessageReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Appends a message to a case. | authz: min_org_role=operator | (CaseAddMessageReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.cases.addMessageV1(
        caseId: "case_id",
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

**caseId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CaseAddMessageReq` 
    
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

## Operations Departments
<details><summary><code>client.operations.departments.<a href="/Sources/Resources/Operations/Departments/DepartmentsClient.swift">listV1</a>(sortBy: DepartmentSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterDepartment: DepartmentEnum?, requestOptions: RequestOptions?) -> DepartmentListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists department configurations for the caller's organization. | authz: min_org_role=operator | () -> (DepartmentListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.departments.listV1(
        sortBy: .createdAt,
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

**sortBy:** `DepartmentSortByEnum?` — Field to sort by
    
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

**filterDepartment:** `DepartmentEnum?` — Filter by department(s)
    
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

<details><summary><code>client.operations.departments.<a href="/Sources/Resources/Operations/Departments/DepartmentsClient.swift">getV1</a>(departmentId: String, requestOptions: RequestOptions?) -> Department1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single department configuration. | authz: min_org_role=operator | () -> (Department1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.departments.getV1(departmentId: "department_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**departmentId:** `String` 
    
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

<details><summary><code>client.operations.departments.<a href="/Sources/Resources/Operations/Departments/DepartmentsClient.swift">deleteV1</a>(departmentId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a department configuration. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.departments.deleteV1(departmentId: "department_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**departmentId:** `String` 
    
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

<details><summary><code>client.operations.departments.<a href="/Sources/Resources/Operations/Departments/DepartmentsClient.swift">updateV1</a>(departmentId: String, request: Requests.DepartmentClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a department configuration. | authz: min_org_role=administrator | (DepartmentClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.departments.updateV1(
        departmentId: "department_id",
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

**departmentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.DepartmentClientUpdate1` 
    
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

<details><summary><code>client.operations.departments.<a href="/Sources/Resources/Operations/Departments/DepartmentsClient.swift">createV1</a>(request: Requests.DepartmentClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new department configuration for the caller's organization. | authz: min_org_role=administrator | (DepartmentClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.departments.createV1(request: .init(
        schemaVersion: 1,
        name: "name",
        department: .automotive
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

**request:** `Requests.DepartmentClientCreate1` 
    
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

<details><summary><code>client.operations.departments.<a href="/Sources/Resources/Operations/Departments/DepartmentsClient.swift">addOperatorV1</a>(departmentId: String, userId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds an operator to a department. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.departments.addOperatorV1(
        departmentId: "department_id",
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

**departmentId:** `String` 
    
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

<details><summary><code>client.operations.departments.<a href="/Sources/Resources/Operations/Departments/DepartmentsClient.swift">removeOperatorV1</a>(departmentId: String, userId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes an operator from a department. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.departments.removeOperatorV1(
        departmentId: "department_id",
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

**departmentId:** `String` 
    
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

## Orgs Connections
<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listShippersV1</a>(search: String?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> ShipperConnectionListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists shipper organizations connected to the caller (caller must be a provider) with optional search by company name or handle. | () -> (ShipperConnectionListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        search: "search",
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

**search:** `String?` — Search by company name or handle
    
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

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listProvidersV1</a>(search: String?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> ProviderConnectionListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists provider organizations connected to the caller. Shippers see providers from shipper_provider_connections; providers see other providers from provider_provider_connections (in either direction). | () -> (ProviderConnectionListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listProvidersV1(
        search: "search",
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

**search:** `String?` — Search by company name or handle
    
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

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">getByHandleV1</a>(handle: String, requestOptions: RequestOptions?) -> ConnectionsGetByHandleV1Response?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets the connection between caller's org and the org with the specified handle. | () -> (ShipperProviderConnection1 | ProviderProviderConnection1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">createConnectionToProviderV1</a>(request: CreateConnectionReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new connection to a provider organization. Shippers create a shipper-provider connection. Providers create a provider-provider connection where the initiator is the coordinator (payer) and the target is the executor (payee). | (CreateConnectionReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.createConnectionToProviderV1(request: CreateConnectionReq(
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

Creates a new connection to a shipper organization. Only providers can initiate connections to shippers. | (CreateConnectionReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">setDepartmentV1</a>(connectionId: String, request: Requests.SetDepartmentReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or clears the department on a connection. Send null to clear. | authz: min_org_role=administrator | (SetDepartmentReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.setDepartmentV1(
        connectionId: "connection_id",
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

**connectionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SetDepartmentReq` 
    
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

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">setProviderProviderAutoAssignV1</a>(connectionId: String, request: Requests.ProviderProviderUpdateAutoAssignReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Toggles `auto_assign_enabled` on a provider-provider connection — the executor org's opt-in for receiving direct (non-bidding) task-group assignments. Executor org only, min role: administrator. | (ProviderProviderUpdateAutoAssignReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.setProviderProviderAutoAssignV1(
        connectionId: "connection_id",
        request: .init(autoAssignEnabled: true)
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

**request:** `Requests.ProviderProviderUpdateAutoAssignReq` 
    
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

## Orgs OffChrtProviderOrg
<details><summary><code>client.orgs.offChrtProviderOrg.<a href="/Sources/Resources/Orgs/OffChrtProviderOrg/OffChrtProviderOrgClient.swift">createV1</a>(request: Requests.OffChrtProviderOrgClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an off-platform provider organization shell owned by the caller's org. Used for proxy bidding on Listings. | (OffChrtProviderOrgClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtProviderOrg.createV1(request: .init(
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

**request:** `Requests.OffChrtProviderOrgClientCreate1` 
    
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

<details><summary><code>client.orgs.offChrtProviderOrg.<a href="/Sources/Resources/Orgs/OffChrtProviderOrg/OffChrtProviderOrgClient.swift">listV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OffChrtProviderOrgListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all off-platform provider organizations created by the caller's organization. Pagination only — no search/filter. | () -> (OffChrtProviderOrgListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtProviderOrg.listV1(
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

<details><summary><code>client.orgs.offChrtProviderOrg.<a href="/Sources/Resources/Orgs/OffChrtProviderOrg/OffChrtProviderOrgClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> OffChrtProviderOrg1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific off-platform provider organization by ID. Scoped to the caller's org. | () -> (OffChrtProviderOrg1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtProviderOrg.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.orgs.offChrtProviderOrg.<a href="/Sources/Resources/Orgs/OffChrtProviderOrg/OffChrtProviderOrgClient.swift">deleteByIdV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an off-platform provider organization owned by the caller's organization. Live OrgBiddingGroups + Listings keep their snapshotted membership; deletion does not cascade. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtProviderOrg.deleteByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.orgs.offChrtProviderOrg.<a href="/Sources/Resources/Orgs/OffChrtProviderOrg/OffChrtProviderOrgClient.swift">updateByIdV1</a>(id: String, request: Requests.OffChrtProviderOrgClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing off-platform provider organization owned by the caller's organization. | (OffChrtProviderOrgClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtProviderOrg.updateByIdV1(
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

**request:** `Requests.OffChrtProviderOrgClientUpdate1` 
    
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

<details><summary><code>client.orgs.offChrtShipperOrg.<a href="/Sources/Resources/Orgs/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">listV1</a>(search: String?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OffChrtShipperOrgListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all off-platform shipper organizations created by the caller's organization with optional search by company name. | () -> (OffChrtShipperOrgListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        search: "search",
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

**search:** `String?` — Search by company name
    
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
<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">getV1</a>(requestOptions: RequestOptions?) -> ProviderOrgProfile1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the provider organization profile for the caller's organization. | () -> (ProviderOrgProfile1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">createProviderV1</a>(request: Requests.ProviderOrgProfileClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new provider organization profile. Fails if a profile already exists for the organization. | (ProviderOrgProfileClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.createProviderV1(request: .init(
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

**request:** `Requests.ProviderOrgProfileClientCreate1` 
    
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

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">updateProviderV1</a>(request: Requests.ProviderOrgProfileClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing provider organization profile. | (ProviderOrgProfileClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgProfiles.updateProviderV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ProviderOrgProfileClientUpdate1` 
    
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

<details><summary><code>client.orgs.orgProfiles.<a href="/Sources/Resources/Orgs/OrgProfiles/OrgProfilesClient.swift">getByHandleV1</a>(handle: String, requestOptions: RequestOptions?) -> ProviderOrgProfile1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a provider organization profile by handle for public profile viewing. | () -> (ProviderOrgProfile1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Orgs OrgInfoForConnections Provider
<details><summary><code>client.orgs.orgInfoForConnections.provider.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Provider/ProviderClient.swift">getV1</a>(requestOptions: RequestOptions?) -> ProviderOrgInfoForConnections1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves provider organization connection information for the caller's organization. | () -> (ProviderOrgInfoForConnections1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.provider.getV1()
}

try await main()
```
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

<details><summary><code>client.orgs.orgInfoForConnections.provider.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Provider/ProviderClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [ProviderOrgInfoForConnections1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves list of provider org info documents for providers connected to the caller. Shippers see providers via shipper_provider_connections; providers see other providers via provider_provider_connections (in either direction). | () -> (list[ProviderOrgInfoForConnections1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.provider.listV1()
}

try await main()
```
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

<details><summary><code>client.orgs.orgInfoForConnections.provider.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Provider/ProviderClient.swift">createV1</a>(request: Requests.ProviderOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates provider organization connection information. Fails if already exists. | (ProviderOrgInfoForConnectionsClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.provider.createV1(request: .init(
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

**request:** `Requests.ProviderOrgInfoForConnectionsClientCreate1` 
    
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

<details><summary><code>client.orgs.orgInfoForConnections.provider.<a href="/Sources/Resources/Orgs/OrgInfoForConnections/Provider/ProviderClient.swift">updateV1</a>(request: Requests.ProviderOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates existing provider organization connection information. | (ProviderOrgInfoForConnectionsClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.orgInfoForConnections.provider.updateV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ProviderOrgInfoForConnectionsClientUpdate1` 
    
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

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">listOrgMembersAndDriversV1</a>(search: String?, filterRole: OrgRoleEnum?, filterAvailableAccordingToDriver: Bool?, filterAvailableAccordingToOperators: Bool?, sortBy: OrgMemberSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OrgMembersAndDriversListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all organization members paired with their driver information if they are drivers. Supports search by name, filtering, sorting, and pagination. | () -> (OrgMembersAndDriversListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        search: "search",
        filterAvailableAccordingToDriver: true,
        filterAvailableAccordingToOperators: true,
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

**search:** `String?` — Search by first or last name
    
</dd>
</dl>

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

Creates a new driver profile for the target user (defaults to caller). Drivers can create themselves; operators+ can create any org member. Provider orgs only. | (DriverClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates driver contact details and vehicle type assignments. Provider orgs only; caller must be the driver (self) or an operator+. | (DriverClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates the caller's driver availability status. Must have status UNASSIGNED to set availability to False; always allows setting to True. Provider orgs only. | (DriverUpdateAvailabilityReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates a driver's availability status. Must have status UNASSIGNED to set availability to False; always allows setting to True. Provider orgs only, min role: operator. | (DriverUpdateAvailabilityReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">updateAutoAssignV1</a>(driverId: String, request: Requests.DriverUpdateAutoAssignReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Toggles a driver's `auto_assign_enabled` flag — opt-in for direct (non-bidding) task-group assignment. Authorized: the driver themselves OR an operator+ in the driver's org (operators may override the driver's setting). Provider orgs only. | (DriverUpdateAutoAssignReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.updateAutoAssignV1(
        driverId: "driver_id",
        request: .init(autoAssignEnabled: true)
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

**request:** `Requests.DriverUpdateAutoAssignReq` 
    
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

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/OrdersClient.swift">updateOffChrtReferenceIdV1</a>(orderId: String, request: Requests.OrdersUpdateOffChrtReferenceIdReq, requestOptions: RequestOptions?) -> OrdersUpdateOffChrtReferenceIdRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates off_chrt_reference_id on a non-draft order. | authz_personas=[order_creator_org_operators] | (OrdersUpdateOffChrtReferenceIdReq) -> (OrdersUpdateOffChrtReferenceIdRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.updateOffChrtReferenceIdV1(
        orderId: "order_id",
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

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrdersUpdateOffChrtReferenceIdReq` 
    
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

<details><summary><code>client.shipping.orderDrafts.<a href="/Sources/Resources/Shipping/OrderDrafts/OrderDraftsClient.swift">updateV1</a>(orderId: String, request: Requests.OrdersDraftUpdateReq, requestOptions: RequestOptions?) -> OrdersDraftUpdateRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates coordinator and/or shipper org assignments for a draft order. | (OrdersDraftUpdateReq) -> (OrdersDraftUpdateRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.updateV1(
        orderId: "order_id",
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

**orderId:** `String` 
    
</dd>
</dl>

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

<details><summary><code>client.shipping.orderDrafts.<a href="/Sources/Resources/Shipping/OrderDrafts/OrderDraftsClient.swift">validateV1</a>(orderId: String, requestOptions: RequestOptions?) -> OrderDraftValidationResult</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates the draft order for staging and returns all issues found. | () -> (OrderDraftValidationResult)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Starts a task group by transitioning it from STAGED to IN_PROGRESS and syncing related order state. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Assigns or swaps the driver on a task group. Driver must belong to the task group's executor organization. | authz_personas=[executor_org_operators] | (UpdateDriverReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Removes the driver from a task group (sets driver_id to null). Allowed when STAGED or IN_PROGRESS (if no tasks have reached a terminal status). | authz_personas=[executor_org_operators, driver_for_executor] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">addExecutorV1</a>(taskGroupId: String, request: Requests.AddExecutorReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Assigns an executor organization (on-chrt or off-chrt) to a task group. Coordinator-only. Requires both executor_org_id and off_chrt_executor_org_id to be None (use remove_executor/v1 first to swap). | authz_personas=[coordinator_org_operators] | (AddExecutorReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.addExecutorV1(
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

**request:** `Requests.AddExecutorReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">removeExecutorV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Clears the executor on a task group along with the assigned driver and all PPP/PPD billing attachments, returning the TG to executor-less state. Coordinator-only. PPP/PPD LineItemGroup1 and BillingLedgerPeriod1 documents stay alive (orphaned-but-alive); the (ex-)executor disposes of them via their own routes. SPP is unaffected. | authz_personas=[coordinator_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.removeExecutorV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">attachBillingLedgerPeriodToShipperPayProviderV1</a>(taskGroupId: String, request: AttachBillingLedgerPeriodReq, requestOptions: RequestOptions?) -> BillingLedgerPeriod1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Links the operator-supplied OPEN BillingLedgerPeriod to this TaskGroup's SPP vector. Period parties must match the TG's SPP parties. The SPP vector must have no ledger attached and no rate sheet (rate-sheet/ledger exclusivity). Ad-hoc LIGs without a rate sheet may coexist. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (AttachBillingLedgerPeriodReq) -> (BillingLedgerPeriod1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.attachBillingLedgerPeriodToShipperPayProviderV1(
        taskGroupId: "task_group_id",
        request: AttachBillingLedgerPeriodReq(
            billingLedgerPeriodId: "billing_ledger_period_id"
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

**request:** `AttachBillingLedgerPeriodReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">attachBillingLedgerPeriodToProviderPayProviderV1</a>(taskGroupId: String, request: AttachBillingLedgerPeriodReq, requestOptions: RequestOptions?) -> BillingLedgerPeriod1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Links the operator-supplied OPEN BillingLedgerPeriod to this TaskGroup's PPP vector. Period parties must match the TG's PPP parties. The PPP vector must have no ledger attached and no rate sheet (rate-sheet/ledger exclusivity). Ad-hoc LIGs without a rate sheet may coexist. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (AttachBillingLedgerPeriodReq) -> (BillingLedgerPeriod1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.attachBillingLedgerPeriodToProviderPayProviderV1(
        taskGroupId: "task_group_id",
        request: AttachBillingLedgerPeriodReq(
            billingLedgerPeriodId: "billing_ledger_period_id"
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

**request:** `AttachBillingLedgerPeriodReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">attachBillingLedgerPeriodToProviderPayDriverV1</a>(taskGroupId: String, request: AttachBillingLedgerPeriodReq, requestOptions: RequestOptions?) -> BillingLedgerPeriod1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Links the operator-supplied OPEN BillingLedgerPeriod to this TaskGroup's PPD vector. Period parties must match the TG's PPD parties. The PPD vector must have no ledger attached and no rate sheet (rate-sheet/ledger exclusivity). Ad-hoc LIGs without a rate sheet may coexist. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | (AttachBillingLedgerPeriodReq) -> (BillingLedgerPeriod1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.attachBillingLedgerPeriodToProviderPayDriverV1(
        taskGroupId: "task_group_id",
        request: AttachBillingLedgerPeriodReq(
            billingLedgerPeriodId: "billing_ledger_period_id"
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

**request:** `AttachBillingLedgerPeriodReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">detachBillingLedgerPeriodFromShipperPayProviderV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detaches the SPP billing ledger period from this TaskGroup. Reverses attach_billing_ledger_period_to_shipper_pay_provider/v1. Linked period must be OPEN. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.detachBillingLedgerPeriodFromShipperPayProviderV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">detachBillingLedgerPeriodFromProviderPayProviderV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detaches the PPP billing ledger period from this TaskGroup. Reverses attach_billing_ledger_period_to_provider_pay_provider/v1. Linked period must be OPEN. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.detachBillingLedgerPeriodFromProviderPayProviderV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">detachBillingLedgerPeriodFromProviderPayDriverV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detaches the PPD billing ledger period from this TaskGroup. Reverses attach_billing_ledger_period_to_provider_pay_driver/v1. Linked period must be OPEN. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.detachBillingLedgerPeriodFromProviderPayDriverV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">attachLigToShipperPayProviderV1</a>(taskGroupId: String, request: AttachLigToVectorClientReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attaches a STAGED, detached LineItemGroup to the SPP vector AND sets `LineItemGroup1.task_group_id` (one txn). The LIG must have `task_group_id is None`, be owned by the coordinator, and be party-matched to SPP. The SPP vector must have no LIG attached; if the LIG carries `rate_sheet_id`, no billing ledger period may be attached either (rate-sheet/ledger exclusivity). The LIG's `rate_sheet_id` is stamped onto `shipper_pay_provider_rate_sheet_id` as a breadcrumb. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (AttachLigToVectorClientReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.attachLigToShipperPayProviderV1(
        taskGroupId: "task_group_id",
        request: AttachLigToVectorClientReq(
            lineItemGroupId: "line_item_group_id"
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

**request:** `AttachLigToVectorClientReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">attachLigToProviderPayProviderV1</a>(taskGroupId: String, request: AttachLigToVectorClientReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attaches a STAGED, detached LineItemGroup to the PPP vector AND sets `LineItemGroup1.task_group_id` (one txn). The LIG must have `task_group_id is None`, be owned by the coordinator, and be party-matched to PPP. The PPP vector must have no LIG attached; if the LIG carries `rate_sheet_id`, no billing ledger period may be attached either (rate-sheet/ledger exclusivity). The LIG's `rate_sheet_id` is stamped onto `provider_pay_provider_rate_sheet_id` as a breadcrumb. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (AttachLigToVectorClientReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.attachLigToProviderPayProviderV1(
        taskGroupId: "task_group_id",
        request: AttachLigToVectorClientReq(
            lineItemGroupId: "line_item_group_id"
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

**request:** `AttachLigToVectorClientReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">attachLigToProviderPayDriverV1</a>(taskGroupId: String, request: AttachLigToVectorClientReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attaches a STAGED, detached LineItemGroup to the PPD vector AND sets `LineItemGroup1.task_group_id` (one txn). The LIG must have `task_group_id is None`, be owned by the executor, and be party-matched to PPD. The PPD vector must have no LIG attached; if the LIG carries `rate_sheet_id`, no billing ledger period may be attached either (rate-sheet/ledger exclusivity). The LIG's `rate_sheet_id` is stamped onto `provider_pay_driver_rate_sheet_id` as a breadcrumb. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | (AttachLigToVectorClientReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.attachLigToProviderPayDriverV1(
        taskGroupId: "task_group_id",
        request: AttachLigToVectorClientReq(
            lineItemGroupId: "line_item_group_id"
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

**request:** `AttachLigToVectorClientReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">detachLigFromShipperPayProviderV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Clears the SPP vector's `_line_item_group_id` and `_rate_sheet_id` AND clears the LIG's `task_group_id` back-ref (one txn). The LIG document and its line items remain alive but fully detached on both sides. The SPP vector must currently have a LIG attached. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.detachLigFromShipperPayProviderV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">detachLigFromProviderPayProviderV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Clears the PPP vector's `_line_item_group_id` and `_rate_sheet_id` AND clears the LIG's `task_group_id` back-ref (one txn). The LIG document and its line items remain alive but fully detached on both sides. The PPP vector must currently have a LIG attached. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.detachLigFromProviderPayProviderV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">detachLigFromProviderPayDriverV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Clears the PPD vector's `_line_item_group_id` and `_rate_sheet_id` AND clears the LIG's `task_group_id` back-ref (one txn). The LIG document and its line items remain alive but fully detached on both sides. The PPD vector must currently have a LIG attached. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.detachLigFromProviderPayDriverV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">quoteForShipperPayProviderV1</a>(taskGroupId: String, request: TaskGroupQuoteClientReq, requestOptions: RequestOptions?) -> TaskGroupQuoteResp</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Preview the LineItem materialization that would result from applying a rate sheet to the SPP vector of the named TaskGroup. Returns the resolved rate sheet, materialized LineItems (NOT inserted), the pre-adjustment total, and the derived parties (shipper -> coordinator). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. No DB writes — operator can iterate freely. To commit, call from_rate_sheet/create_for_shipper_pay_provider/v1 then attach_lig_to_shipper_pay_provider/v1. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (TaskGroupQuoteClientReq) -> (TaskGroupQuoteResp)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.quoteForShipperPayProviderV1(
        taskGroupId: "task_group_id",
        request: TaskGroupQuoteClientReq(

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

**request:** `TaskGroupQuoteClientReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">quoteForProviderPayProviderV1</a>(taskGroupId: String, request: TaskGroupQuoteClientReq, requestOptions: RequestOptions?) -> TaskGroupQuoteResp</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Preview the LineItem materialization that would result from applying a rate sheet to the PPP vector of the named TaskGroup. Returns the resolved rate sheet, materialized LineItems (NOT inserted), the pre-adjustment total, and the derived parties (coordinator -> executor). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. No DB writes — operator can iterate freely. To commit, call from_rate_sheet/create_for_provider_pay_provider/v1 then attach_lig_to_provider_pay_provider/v1. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (TaskGroupQuoteClientReq) -> (TaskGroupQuoteResp)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.quoteForProviderPayProviderV1(
        taskGroupId: "task_group_id",
        request: TaskGroupQuoteClientReq(

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

**request:** `TaskGroupQuoteClientReq` 
    
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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">quoteForProviderPayDriverV1</a>(taskGroupId: String, request: TaskGroupQuoteClientReq, requestOptions: RequestOptions?) -> TaskGroupQuoteResp</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Preview the LineItem materialization that would result from applying a rate sheet to the PPD vector of the named TaskGroup. Returns the resolved rate sheet, materialized LineItems (NOT inserted), the pre-adjustment total, and the derived parties (executor -> driver). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. PPD is on-chrt-executor only — TGs with an off-chrt executor are 400'd. No DB writes — operator can iterate freely. To commit, call from_rate_sheet/create_for_provider_pay_driver/v1 then attach_lig_to_provider_pay_driver/v1. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | (TaskGroupQuoteClientReq) -> (TaskGroupQuoteResp)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.quoteForProviderPayDriverV1(
        taskGroupId: "task_group_id",
        request: TaskGroupQuoteClientReq(

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

**request:** `TaskGroupQuoteClientReq` 
    
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

Updates a task. Operational fields (location, action, time_windows) require STAGED status (lig_owner_operators). order_placer_comments can be edited on any non-DRAFT task (order_creator_org_operators). directory_entry_ids can be edited on STAGED/IN_PROGRESS orders for tasks still in STAGED status (order_creator_org_operators OR lig_owner_operators). | (TaskClientUpdate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Adds a task group to an existing order draft. Validates order is in DRAFT status and owned by caller. The task group is created with no executor — TG-level party assignments happen post-stage via /shipping/task_groups/add_executor/v1. | (OrderDraftAddTaskGroupReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        taskGroupType: .chrtGroundProvider,
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
<details><summary><code>client.shipping.orderDrafts.expanded.<a href="/Sources/Resources/Shipping/OrderDrafts/Expanded/ExpandedClient.swift">retrieveV1</a>(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderDraftExpanded</code></summary>
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
        orderRef: "order_ref",
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

**orderRef:** `String` — Order ID, short ID, or off-chrt reference ID
    
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

<details><summary><code>client.shipping.orderDrafts.expanded.<a href="/Sources/Resources/Shipping/OrderDrafts/Expanded/ExpandedClient.swift">listV1</a>(sortBy: OrderDraftSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterExecutorOrgId: String?, filterCoordinatorOrgId: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgId: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderDraftExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded draft orders for the organization with filtering, sorting, pagination, and optional search. | (OrderAndTaskGroupExpandedReq) -> (OrderDraftExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        search: "search",
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExecutorOrgId: "filter_executor_org_id",
        filterCoordinatorOrgId: "filter_coordinator_org_id",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgId: "filter_off_chrt_shipper_org_id",
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

**search:** `String?` — Full-text search query (searches order short_id and off_chrt_reference_id)
    
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

**filterExecutorOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterShipperOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtShipperOrgId:** `String?` 
    
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

<details><summary><code>client.shipping.orderDrafts.expanded.<a href="/Sources/Resources/Shipping/OrderDrafts/Expanded/ExpandedClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [OrderTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct short_id and off_chrt_reference_id values matching the query via case-insensitive regex. Searches draft orders created by the caller's org. | authz: min_org_role=operator | () -> (list[OrderTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderDrafts.expanded.typeaheadV1(
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

**limit:** `Int?` — Max results per field
    
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
<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">forShipperOperatorsV1</a>(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderExpanded</code></summary>
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
        orderRef: "order_ref",
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

**orderRef:** `String` — Order ID, short ID, or off-chrt reference ID
    
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

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">forCoordinatorOperatorsV1</a>(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded order with optional related data for coordinator operators (the provider org coordinating the order). | authz_personas=[coordinator_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.forCoordinatorOperatorsV1(
        orderRef: "order_ref",
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

**orderRef:** `String` — Order ID, short ID, or off-chrt reference ID
    
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

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">listForCoordinatorOperatorsV1</a>(sortBy: OrderSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: OrderStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterOrderCancelledAtTimestampLte: Date?, filterOrderCancelledAtTimestampGte: Date?, filterOrderCancelled: Bool?, filterExecutorOrgId: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgId: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrdersExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded orders where the caller's provider org is the coordinator. Filtering, sorting, pagination, optional search. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.listForCoordinatorOperatorsV1(
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
        filterOrderCancelled: true,
        filterExecutorOrgId: "filter_executor_org_id",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgId: "filter_off_chrt_shipper_org_id",
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

**search:** `String?` — Full-text search query (searches order short_id and off_chrt_reference_id)
    
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

**filterOrderCancelled:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExecutorOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterShipperOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtShipperOrgId:** `String?` 
    
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

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">listForShipperOperatorsV1</a>(sortBy: OrderSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: OrderStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterOrderCancelledAtTimestampLte: Date?, filterOrderCancelledAtTimestampGte: Date?, filterOrderCancelled: Bool?, filterExecutorOrgId: String?, filterCoordinatorOrgId: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrdersExpandedListRes</code></summary>
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
        filterOrderCancelled: true,
        filterExecutorOrgId: "filter_executor_org_id",
        filterCoordinatorOrgId: "filter_coordinator_org_id",
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

**search:** `String?` — Full-text search query (searches order short_id and off_chrt_reference_id)
    
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

**filterOrderCancelled:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExecutorOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorOrgId:** `String?` 
    
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

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/OrdersExpandedClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [OrderTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct short_id and off_chrt_reference_id values matching the query via case-insensitive regex. Searches non-draft orders visible to the caller's org. | authz: allowed_org_types=[provider, shipper], min_org_role=operator | () -> (list[OrderTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**limit:** `Int?` — Max results per field
    
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
<details><summary><code>client.shipping.taskGroups.taskGroupId.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupId/TaskGroupIdClient.swift">forExecutorOperatorsV1</a>(orderRef: String, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the task group IDs where the caller's provider org is the executor for an order's task groups. | authz_personas=[executor_org_operators] | () -> (list[PydanticObjectId])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.taskGroupId.forExecutorOperatorsV1(orderRef: "order_ref")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderRef:** `String` — Order ID, short ID, or off-chrt reference ID
    
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

<details><summary><code>client.shipping.taskGroups.taskGroupId.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupId/TaskGroupIdClient.swift">forDriverForExecutorV1</a>(orderRef: String, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the task group IDs assigned to the caller (a driver of the executor provider) for an order. | authz_personas=[driver_for_executor] | () -> (list[PydanticObjectId])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.taskGroupId.forDriverForExecutorV1(orderRef: "order_ref")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderRef:** `String` — Order ID, short ID, or off-chrt reference ID
    
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

Retrieves the metadata for a task group S3 object, including blurhash for placeholder loading. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | () -> (TaskGroupS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Streams a task group S3 object file from storage. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | () -> (binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forExecutorOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group with optional related data for executor operators (the provider org doing the work on this task group). | authz_personas=[executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forExecutorOperatorsV1(
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

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forDriverForExecutorV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group with optional related data for the driver assigned to it (a driver of the executor provider org). | authz_personas=[driver_for_executor] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forDriverForExecutorV1(
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

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forCoordinatorOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group with optional related data for coordinator operators (the provider org coordinating the order). | authz_personas=[coordinator_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forCoordinatorOperatorsV1(
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

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">listForExecutorOperatorsV1</a>(sortBy: TaskGroupSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: TaskGroupStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterSkippedAtTimestampLte: Date?, filterSkippedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterOrderCancelled: Bool?, filterDriverId: String?, filterCoordinatorOrgId: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgId: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded task groups where the caller's provider org is the executor. Filtering, sorting, pagination, optional full-text search. | authz_personas=[executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.listForExecutorOperatorsV1(
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
        filterOrderCancelled: true,
        filterDriverId: "filter_driver_id",
        filterCoordinatorOrgId: "filter_coordinator_org_id",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgId: "filter_off_chrt_shipper_org_id",
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

**search:** `String?` — Full-text search query (searches order_short_id, order_off_chrt_reference_id, flight_number)
    
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

**filterOrderCancelled:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDriverId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterShipperOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtShipperOrgId:** `String?` 
    
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

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">listForDriverForExecutorV1</a>(sortBy: TaskGroupSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: TaskGroupStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterSkippedAtTimestampLte: Date?, filterSkippedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterOrderCancelled: Bool?, filterCoordinatorOrgId: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgId: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded task groups assigned to the caller (a driver of the executor provider) with filtering, sorting, pagination, and optional full-text search. | authz_personas=[driver_for_executor] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.listForDriverForExecutorV1(
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
        filterOrderCancelled: true,
        filterCoordinatorOrgId: "filter_coordinator_org_id",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgId: "filter_off_chrt_shipper_org_id",
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

**search:** `String?` — Full-text search query (searches order_short_id, order_off_chrt_reference_id, flight_number)
    
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

**filterOrderCancelled:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterShipperOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtShipperOrgId:** `String?` 
    
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

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [TaskGroupTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct order_short_id and order_off_chrt_reference_id values matching the query via case-insensitive regex. Searches non-draft task groups where the caller's provider org is the executor. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (list[TaskGroupTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**limit:** `Int?` — Max results per field
    
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

Registers a tracking device to the caller's organization. If the device is already registered to a different organization, returns 409 Conflict. | auth: api_key | (DeviceClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Creates a new tracking session for a device and automatically starts recording data points. The caller must be the device owner or belong to an org the device is shared with. The device owner remains the session owner (org_id). The device's shared_with_org_ids are copied to the session. The device must not have an active session. Auto-termination is scheduled for ~3 days out at 8 PM PT. Prevent auto termination with `no_auto_termination=True` | auth: api_key | (SessionClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates the sharing settings for a task group by driver tracking dataset. | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | (TaskGroupByDriverSharingSettingsUpdateReq) -> (TaskGroupByDriverSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates the sharing settings for a cargo by driver tracking dataset. | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | (CargoByDriverSharingSettingsUpdateReq) -> (CargoByDriverSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates the sharing settings for a cargo by device tracking dataset. | authz_personas=[coordinator_org_operators, shipper_org_operators, order_creator_org_operators] | (CargoByDeviceSharingSettingsUpdateReq) -> (CargoByDeviceSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.sharingSettings.<a href="/Sources/Resources/Tracking/SharingSettings/SharingSettingsClient.swift">getSettingsV1</a>(orderRef: String, requestOptions: RequestOptions?) -> [TrackingSharingSettingsRes]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all tracking datasets and their sharing settings for a given order. If authenticated, returns datasets the user has direct access to plus public datasets. If unauthenticated, returns only datasets with public=True. Note: looking up by off_chrt_reference_id requires authentication because it is only org-level unique and needs the caller's org_id to resolve unambiguously. | () -> (list[TrackingSharingSettingsRes])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sharingSettings.getSettingsV1(orderRef: "order_ref")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderRef:** `String` — Order ID, short ID, or off-chrt reference ID
    
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

Returns the last seen data point for cargo within a task group. Access granted to the order's coordinator/shipper/executor org or the assigned driver, or via public sharing. | () -> (CargoByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (CargoByDeviceMarkOutliersRequest1) -> (CargoByDeviceMarkOutliersResponse1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## TrackingIntegrations Tive Devices
<details><summary><code>client.trackingIntegrations.tive.devices.<a href="/Sources/Resources/TrackingIntegrations/Tive/Devices/TiveDevicesClient.swift">listV1</a>(sortBy: TiveDeviceSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterTiveAccountId: Int?, filterTiveDeviceId: String?, filterChrtCreatedAtTimestampGte: Date?, filterChrtCreatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> TiveDeviceListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists Tive devices with filtering, sorting, and pagination. Scoped to the caller's organization. | authz: min_org_role=operator | () -> (TiveDeviceListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.tive.devices.listV1(
        sortBy: .chrtCreatedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterTiveAccountId: 1,
        filterTiveDeviceId: "filter_tive_device_id",
        filterChrtCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterChrtCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `TiveDeviceSortByEnum?` — Field to sort by
    
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

**filterTiveAccountId:** `Int?` — Filter by Tive account ID
    
</dd>
</dl>

<dl>
<dd>

**filterTiveDeviceId:** `String?` — Filter by Tive device ID (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterChrtCreatedAtTimestampGte:** `Date?` — Filter by chrt_created_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterChrtCreatedAtTimestampLte:** `Date?` — Filter by chrt_created_at_timestamp <= value
    
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

<details><summary><code>client.trackingIntegrations.tive.devices.<a href="/Sources/Resources/TrackingIntegrations/Tive/Devices/TiveDevicesClient.swift">getV1</a>(tiveDeviceId: String, requestOptions: RequestOptions?) -> TiveDevice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single Tive device by its ID. Scoped to the caller's organization. | authz: min_org_role=operator | () -> (TiveDevice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.tive.devices.getV1(tiveDeviceId: "tive_device_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tiveDeviceId:** `String` 
    
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

## TrackingIntegrations Tive Shipments
<details><summary><code>client.trackingIntegrations.tive.shipments.<a href="/Sources/Resources/TrackingIntegrations/Tive/Shipments/ShipmentsClient.swift">listV1</a>(sortBy: TiveShipmentSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterTiveDeviceObjectId: String?, filterTiveShipmentId: String?, filterChrtCreatedAtTimestampGte: Date?, filterChrtCreatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> TiveShipmentListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists Tive shipments with filtering, sorting, and pagination. Scoped to the caller's organization. | authz: min_org_role=operator | () -> (TiveShipmentListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.tive.shipments.listV1(
        sortBy: .chrtCreatedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterTiveDeviceObjectId: "filter_tive_device_object_id",
        filterTiveShipmentId: "filter_tive_shipment_id",
        filterChrtCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterChrtCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `TiveShipmentSortByEnum?` — Field to sort by
    
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

**filterTiveDeviceObjectId:** `String?` — Filter by Tive device object ID
    
</dd>
</dl>

<dl>
<dd>

**filterTiveShipmentId:** `String?` — Filter by Tive shipment ID (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterChrtCreatedAtTimestampGte:** `Date?` — Filter by chrt_created_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterChrtCreatedAtTimestampLte:** `Date?` — Filter by chrt_created_at_timestamp <= value
    
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

<details><summary><code>client.trackingIntegrations.tive.shipments.<a href="/Sources/Resources/TrackingIntegrations/Tive/Shipments/ShipmentsClient.swift">getV1</a>(tiveShipmentId: String, requestOptions: RequestOptions?) -> TiveShipment1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single Tive shipment by its ID. Scoped to the caller's organization. | authz: min_org_role=operator | () -> (TiveShipment1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.tive.shipments.getV1(tiveShipmentId: "tive_shipment_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tiveShipmentId:** `String` 
    
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

## TrackingIntegrations Tive Timeseries
<details><summary><code>client.trackingIntegrations.tive.timeseries.<a href="/Sources/Resources/TrackingIntegrations/Tive/Timeseries/TiveTimeseriesClient.swift">lastSeenV1</a>(tiveShipmentId: String, requestOptions: RequestOptions?) -> TiveDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent Tive data point for a shipment. Scoped to the caller's organization. | authz: min_org_role=operator | () -> (TiveDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.tive.timeseries.lastSeenV1(tiveShipmentId: "tive_shipment_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tiveShipmentId:** `String` 
    
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

<details><summary><code>client.trackingIntegrations.tive.timeseries.<a href="/Sources/Resources/TrackingIntegrations/Tive/Timeseries/TiveTimeseriesClient.swift">dataPointsV1</a>(tiveShipmentId: String, startTimestamp: Date, endTimestamp: Date, requestOptions: RequestOptions?) -> TiveTimeseriesRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns raw Tive data points for a shipment within the given time range. Scoped to the caller's organization. | authz: min_org_role=operator | () -> (TiveTimeseriesRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.tive.timeseries.dataPointsV1(
        tiveShipmentId: "tive_shipment_id",
        startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**tiveShipmentId:** `String` 
    
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

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trackingIntegrations.tive.timeseries.<a href="/Sources/Resources/TrackingIntegrations/Tive/Timeseries/TiveTimeseriesClient.swift">syncV1</a>(tiveShipmentId: String, requestOptions: RequestOptions?) -> TiveTimeseriesSyncRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches new Tive tracker data points from the Tive API for a shipment and stores them in our timeseries collection. Uses a high-water-mark strategy with overlap dedup to prevent duplicate inserts. | authz: min_org_role=operator | () -> (TiveTimeseriesSyncRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.tive.timeseries.syncV1(tiveShipmentId: "tive_shipment_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tiveShipmentId:** `String` 
    
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

<details><summary><code>client.users.directoryEntries.<a href="/Sources/Resources/Users/DirectoryEntries/DirectoryEntriesClient.swift">listV1</a>(search: String?, filterEntryOrgId: String?, sortBy: DirectoryEntrySortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> DirectoryEntryListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists directory entries with pagination, optional filtering by entry_org_id, and optional full-text search. | authz: min_org_role=operator | () -> (DirectoryEntryListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        filterEntryOrgId: "filter_entry_org_id",
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

**filterEntryOrgId:** `String?` — Filter by the org this entry belongs to
    
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

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">postAgentOrderBuilderV1</a>(request: OrderBuilderReq, requestOptions: RequestOptions?) -> OrderBuilderRes</code></summary>
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

    _ = try await client.utils.dev.postAgentOrderBuilderV1(request: OrderBuilderReq(
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

**request:** `OrderBuilderReq` 
    
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

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">postAgentOrderBuilderStreamV1</a>(request: OrderBuilderReq, requestOptions: RequestOptions?) -> JSONValue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Same as /agent/order-builder/v1 but streams progress events via SSE as each workflow step completes. | (OrderBuilderReq) -> SSE stream of OrderBuilderStreamEvent
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.postAgentOrderBuilderStreamV1(request: OrderBuilderReq(
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

**request:** `OrderBuilderReq` 
    
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

