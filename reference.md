# Reference
## Flights
<details><summary><code>client.flights.<a href="/Sources/Resources/Flights/FlightsClient.swift">searchConnectionsV1</a>(request: Requests.FlightConnectionsSearchReq, requestOptions: RequestOptions?) -> FlightConnectionsSearchRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Searches Cirium for cargo flight connections between two airports, anchored on a departure or arrival time. | (FlightConnectionsSearchReq) -> (FlightConnectionsSearchRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.flights.searchConnectionsV1(request: .init(
        destination: "destination",
        localDateTime: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        origin: "origin",
        searchBy: .departureTime
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

**request:** `Requests.FlightConnectionsSearchReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">listMembersV1</a>(filterRole: [OrgRoleEnum]?, sortBy: OrgMemberSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, requestOptions: RequestOptions?) -> OrgMemberListRes</code></summary>
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
        filterRole: [
            .owner
        ],
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

**filterRole:** `[OrgRoleEnum]?` — Filter by organization role(s)
    
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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">setupOrgV1</a>(request: Requests.SetupOrgReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Single onboarding entry point. Sets `org_type` in WorkOS JWT metadata (immutable once set) and idempotently creates `org_private_data` + `org_public_data` for the caller's organization. Required `name` and optional `description` and `handle` populate the public doc on first call; later updates go through PATCH /orgs/org_public_data/v1. Returns True on success (including idempotent retries), 400 on org_type conflict or handle collision. | (SetupOrgReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.setupOrgV1(request: .init(
        name: "name",
        orgType: .provider
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

**request:** `Requests.SetupOrgReq` 
    
</dd>
</dl>

<dl>
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

## Agent OrderInformation
<details><summary><code>client.agent.orderInformation.<a href="/Sources/Resources/Agent/OrderInformation/OrderInformationClient.swift">messageV1</a>(conversationId: String, request: Requests.OrderInformationConversationMessageReq, requestOptions: RequestOptions?) -> OrderInformationConversationRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a message to an existing order-information conversation for its owner. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (OrderInformationConversationMessageReq) -> (OrderInformationConversationRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.agent.orderInformation.messageV1(
        conversationId: "conversation_id",
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

**conversationId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderInformationConversationMessageReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agent.orderInformation.<a href="/Sources/Resources/Agent/OrderInformation/OrderInformationClient.swift">startV1</a>(request: Requests.OrderInformationConversationStartReq, requestOptions: RequestOptions?) -> OrderInformationConversationRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts an order-information conversation for the authenticated operator. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (OrderInformationConversationStartReq) -> (OrderInformationConversationRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.agent.orderInformation.startV1(request: .init(message: "message"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderInformationConversationStartReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agent.orderInformation.<a href="/Sources/Resources/Agent/OrderInformation/OrderInformationClient.swift">updateV1</a>(conversationId: String, request: Requests.OrderInformationConversationClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an order-information conversation's title for its owner. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (OrderInformationConversationClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.agent.orderInformation.updateV1(
        conversationId: "conversation_id",
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

**conversationId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderInformationConversationClientUpdate1` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.analytics.shipping.<a href="/Sources/Resources/Analytics/Shipping/ShippingClient.swift">retrieveOrdersCountV1</a>(request: Requests.AnalyticsTimePeriodReq, requestOptions: RequestOptions?) -> AnalyticsTimeBucketRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves order counts bucketed by time period. | (AnalyticsTimePeriodReq) -> (AnalyticsTimeBucketRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        end: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        start: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**request:** `Requests.AnalyticsTimePeriodReq` 
    
</dd>
</dl>

<dl>
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

Creates a Stripe checkout session for a subscription against the Stripe product+price chosen by the frontend. Stripe rejects unknown/archived/mode-mismatched price IDs. Returns 409 `use_create_customer_portal_session` if the org already has an active subscription in Stripe (source of truth -- bypasses any JWT staleness). FE should route those users to POST /billing/create-customer-portal-session/v1 to manage. authz: allowed_org_types=[provider] (shippers cannot subscribe -- they are never gated, paying would be a no-op), min_org_role=administrator (committing the company to recurring charges is a finance decision, not an operator one). | (CreateCheckoutSessionReq) -> (CreateCheckoutSessionRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.stripe.createCheckoutSessionV1(request: .init(
        priceId: "price_id",
        productId: "product_id"
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

<details><summary><code>client.billing.stripe.<a href="/Sources/Resources/Billing/Stripe/StripeClient.swift">createCustomerPortalSessionV1</a>(requestOptions: RequestOptions?) -> CreateCustomerPortalSessionRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Stripe customer-portal session so the org's admin can self-serve update card / view invoices / cancel subscription. authz: allowed_org_types=[provider], min_org_role=administrator (same gate as create-checkout-session — cancelling/updating-card has the same financial weight as subscribing). Returns 404 `use_create_checkout_session` if the org has no Stripe customer. POST /billing/create-checkout-session/v1 first. | (no body) -> (CreateCustomerPortalSessionRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billing.stripe.createCustomerPortalSessionV1()
}

try await main()
```
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

## BillingNew BillingPeriods
<details><summary><code>client.billingNew.billingPeriods.<a href="/Sources/Resources/BillingNew/BillingPeriods/BillingPeriodsClient.swift">closeV1</a>(billingPeriodId: String, requestOptions: RequestOptions?) -> BillingPeriodExpanded1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Closes an open billing period and creates one approved line item on the matching draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (BillingPeriodExpanded1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.billingPeriods.closeV1(billingPeriodId: "billing_period_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**billingPeriodId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.billingPeriods.<a href="/Sources/Resources/BillingNew/BillingPeriods/BillingPeriodsClient.swift">createV1</a>(request: Requests.BillingPeriodClientCreate1, requestOptions: RequestOptions?) -> BillingPeriod1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingPeriodClientCreate1) -> (BillingPeriod1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.billingPeriods.createV1(request: .init(
        amount: 1.1,
        currencyCode: .usd,
        cycle: .daily,
        description: "description",
        invoiceType: .accountsReceivable,
        periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        schemaVersion: 1
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

**request:** `Requests.BillingPeriodClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.billingPeriods.<a href="/Sources/Resources/BillingNew/BillingPeriods/BillingPeriodsClient.swift">deleteV1</a>(billingPeriodId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.billingPeriods.deleteV1(billingPeriodId: "billing_period_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**billingPeriodId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.billingPeriods.<a href="/Sources/Resources/BillingNew/BillingPeriods/BillingPeriodsClient.swift">getExpandedV1</a>(billingPeriodId: String, requestOptions: RequestOptions?) -> BillingPeriodExpanded1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets an owner-scoped billing period with its generated line item and invoice when present. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (BillingPeriodExpanded1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.billingPeriods.getExpandedV1(billingPeriodId: "billing_period_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**billingPeriodId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.billingPeriods.<a href="/Sources/Resources/BillingNew/BillingPeriods/BillingPeriodsClient.swift">listV1</a>(sortBy: BillingPeriodSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatuses: [BillingPeriodStatusEnum1]?, filterInvoiceTypes: [InvoiceTypeEnum1]?, filterCurrencyCodes: [BillingCurrencyCodeEnum1]?, filterCounterpartyOrgId: String?, filterCounterpartyOffChrtOrgDataId: String?, filterCounterpartyDriverId: String?, filterShipperAccountId: String?, filterTaskGroupId: String?, filterPeriodStartAtTimestampGte: Date?, filterPeriodStartAtTimestampLte: Date?, filterPeriodEndAtTimestampGte: Date?, filterPeriodEndAtTimestampLte: Date?, requestOptions: RequestOptions?) -> BillingPeriodListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists owner-scoped billing periods with generated line items and invoices. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (BillingPeriodListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.billingPeriods.listV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterStatuses: [
            .open
        ],
        filterInvoiceTypes: [
            .accountsReceivable
        ],
        filterCurrencyCodes: [
            .usd
        ],
        filterCounterpartyOrgId: "filter_counterparty_org_id",
        filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
        filterCounterpartyDriverId: "filter_counterparty_driver_id",
        filterShipperAccountId: "filter_shipper_account_id",
        filterTaskGroupId: "filter_task_group_id",
        filterPeriodStartAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPeriodStartAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPeriodEndAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPeriodEndAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `BillingPeriodSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order.
    
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

**filterStatuses:** `[BillingPeriodStatusEnum1]?` — Filter by one or more billing-period statuses.
    
</dd>
</dl>

<dl>
<dd>

**filterInvoiceTypes:** `[InvoiceTypeEnum1]?` — Filter by one or more invoice types.
    
</dd>
</dl>

<dl>
<dd>

**filterCurrencyCodes:** `[BillingCurrencyCodeEnum1]?` — Filter by one or more currency codes.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyOrgId:** `String?` — Filter by an on-CHRT counterparty organization.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyOffChrtOrgDataId:** `String?` — Filter by an off-CHRT counterparty organization.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyDriverId:** `String?` — Filter by a driver counterparty.
    
</dd>
</dl>

<dl>
<dd>

**filterShipperAccountId:** `String?` — Filter by an associated shipper account.
    
</dd>
</dl>

<dl>
<dd>

**filterTaskGroupId:** `String?` — Filter by an attributed TaskGroup.
    
</dd>
</dl>

<dl>
<dd>

**filterPeriodStartAtTimestampGte:** `Date?` — Filter by period start greater than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterPeriodStartAtTimestampLte:** `Date?` — Filter by period start less than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterPeriodEndAtTimestampGte:** `Date?` — Filter by period end greater than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterPeriodEndAtTimestampLte:** `Date?` — Filter by period end less than or equal.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.billingPeriods.<a href="/Sources/Resources/BillingNew/BillingPeriods/BillingPeriodsClient.swift">addTaskGroupsV1</a>(billingPeriodId: String, request: BillingPeriodTaskGroupsReq, requestOptions: RequestOptions?) -> BillingPeriod1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds visible TaskGroups to an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingPeriodTaskGroupsReq) -> (BillingPeriod1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.billingPeriods.addTaskGroupsV1(
        billingPeriodId: "billing_period_id",
        request: BillingPeriodTaskGroupsReq(
            taskGroupIds: [
                "task_group_ids"
            ]
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

**billingPeriodId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `BillingPeriodTaskGroupsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.billingPeriods.<a href="/Sources/Resources/BillingNew/BillingPeriods/BillingPeriodsClient.swift">removeTaskGroupsV1</a>(billingPeriodId: String, request: BillingPeriodTaskGroupsReq, requestOptions: RequestOptions?) -> BillingPeriod1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes linked TaskGroups from an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingPeriodTaskGroupsReq) -> (BillingPeriod1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.billingPeriods.removeTaskGroupsV1(
        billingPeriodId: "billing_period_id",
        request: BillingPeriodTaskGroupsReq(
            taskGroupIds: [
                "task_group_ids"
            ]
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

**billingPeriodId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `BillingPeriodTaskGroupsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.billingPeriods.<a href="/Sources/Resources/BillingNew/BillingPeriods/BillingPeriodsClient.swift">updateV1</a>(billingPeriodId: String, request: Requests.BillingPeriodClientUpdate1, requestOptions: RequestOptions?) -> BillingPeriod1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an open owner-scoped billing period. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingPeriodClientUpdate1) -> (BillingPeriod1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.billingPeriods.updateV1(
        billingPeriodId: "billing_period_id",
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

**billingPeriodId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BillingPeriodClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## BillingNew ChrtGroundProviderRates
<details><summary><code>client.billingNew.chrtGroundProviderRates.<a href="/Sources/Resources/BillingNew/ChrtGroundProviderRates/ChrtGroundProviderRatesClient.swift">createV1</a>(request: Requests.ChrtGroundProviderRatesClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates ground-provider rates owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRatesClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.chrtGroundProviderRates.createV1(request: .init(
        currencyCode: .usd,
        invoiceType: .accountsReceivable,
        schemaVersion: 1
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

**request:** `Requests.ChrtGroundProviderRatesClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.chrtGroundProviderRates.<a href="/Sources/Resources/BillingNew/ChrtGroundProviderRates/ChrtGroundProviderRatesClient.swift">deleteV1</a>(rateId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes owner-scoped ground-provider rates. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.chrtGroundProviderRates.deleteV1(rateId: "rate_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**rateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.chrtGroundProviderRates.<a href="/Sources/Resources/BillingNew/ChrtGroundProviderRates/ChrtGroundProviderRatesClient.swift">getV1</a>(rateId: String, requestOptions: RequestOptions?) -> ChrtGroundProviderRates1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves owner-scoped ground-provider rates. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ChrtGroundProviderRates1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.chrtGroundProviderRates.getV1(rateId: "rate_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**rateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.chrtGroundProviderRates.<a href="/Sources/Resources/BillingNew/ChrtGroundProviderRates/ChrtGroundProviderRatesClient.swift">listV1</a>(search: String?, sortBy: ChrtGroundProviderRatesSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterServiceLine: [ServiceLineEnum]?, filterInvoiceTypes: [InvoiceTypeEnum1]?, filterCurrencyCodes: [BillingCurrencyCodeEnum1]?, filterCounterpartyOrgId: String?, filterCounterpartyOffChrtOrgDataId: String?, filterShipperAccountId: String?, filterCounterpartyDriverId: String?, filterCargoTypes: [CargoTypeEnum1]?, filterVehicleTypes: [VehicleTypeEnum]?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterUpdatedAtTimestampGte: Date?, filterUpdatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ChrtGroundProviderRatesListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists owner-scoped ground-provider rates with counterparty, cargo, vehicle, currency, search, sort, and pagination controls. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ChrtGroundProviderRatesListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.chrtGroundProviderRates.listV1(
        search: "search",
        sortBy: .name,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterServiceLine: [
            .onDemand
        ],
        filterInvoiceTypes: [
            .accountsReceivable
        ],
        filterCurrencyCodes: [
            .usd
        ],
        filterCounterpartyOrgId: "filter_counterparty_org_id",
        filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
        filterShipperAccountId: "filter_shipper_account_id",
        filterCounterpartyDriverId: "filter_counterparty_driver_id",
        filterCargoTypes: [
            .spareParts
        ],
        filterVehicleTypes: [
            .sedan
        ],
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterUpdatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterUpdatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**search:** `String?` — Search rate names and comments.
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `ChrtGroundProviderRatesSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order.
    
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

**filterServiceLine:** `[ServiceLineEnum]?` — Filter by one or more service lines.
    
</dd>
</dl>

<dl>
<dd>

**filterInvoiceTypes:** `[InvoiceTypeEnum1]?` — Filter by one or more invoice types.
    
</dd>
</dl>

<dl>
<dd>

**filterCurrencyCodes:** `[BillingCurrencyCodeEnum1]?` — Filter by one or more currency codes.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyOrgId:** `String?` — Filter by an associated on-CHRT organization.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyOffChrtOrgDataId:** `String?` — Filter by associated off-CHRT organization data.
    
</dd>
</dl>

<dl>
<dd>

**filterShipperAccountId:** `String?` — Filter by an associated shipper account.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyDriverId:** `String?` — Filter by a driver counterparty.
    
</dd>
</dl>

<dl>
<dd>

**filterCargoTypes:** `[CargoTypeEnum1]?` — Filter by one or more cargo types.
    
</dd>
</dl>

<dl>
<dd>

**filterVehicleTypes:** `[VehicleTypeEnum]?` — Filter by one or more vehicle types.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter by created_at_timestamp greater than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter by created_at_timestamp less than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterUpdatedAtTimestampGte:** `Date?` — Filter by updated_at_timestamp greater than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterUpdatedAtTimestampLte:** `Date?` — Filter by updated_at_timestamp less than or equal.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.chrtGroundProviderRates.<a href="/Sources/Resources/BillingNew/ChrtGroundProviderRates/ChrtGroundProviderRatesClient.swift">resolveV1</a>(request: Requests.ResolveChrtGroundProviderRatesReq, requestOptions: RequestOptions?) -> [ResolvedTaskGroupChrtGroundProviderRates1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns accounts-payable and accounts-receivable CHRT-ground provider-rate candidates for each eligible TaskGroup. AP candidates target a distinct executor, or the assigned driver when the coordinator is also the executor; AR candidates target the shipper. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | (ResolveChrtGroundProviderRatesReq) -> (list[ResolvedTaskGroupChrtGroundProviderRates1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.chrtGroundProviderRates.resolveV1(request: .init(orderId: "order_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ResolveChrtGroundProviderRatesReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.chrtGroundProviderRates.<a href="/Sources/Resources/BillingNew/ChrtGroundProviderRates/ChrtGroundProviderRatesClient.swift">updateV1</a>(rateId: String, request: Requests.ChrtGroundProviderRatesClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates owner-scoped ground-provider rates and advances the server-managed update timestamp. | authz: allowed_org_types=[provider], min_org_role=operator | (ChrtGroundProviderRatesClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.chrtGroundProviderRates.updateV1(
        rateId: "rate_id",
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

**rateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ChrtGroundProviderRatesClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## BillingNew InvoiceLineItems
<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">createAdHocV1</a>(request: AdHocInvoiceLineItemsReq, requestOptions: RequestOptions?) -> [InvoiceLineItem1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates account-split ad-hoc line items and attaches them to matching draft invoices. | authz: allowed_org_types=[provider], min_org_role=operator | (AdHocInvoiceLineItemsReq) -> (list[InvoiceLineItem1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.createAdHocV1(request: AdHocInvoiceLineItemsReq(
        adHocLineItems: [
            AdHocInvoiceLineItem1(
                invoiceLineItem: InvoiceLineItemClientCreate1(
                    currencyCode: .usd,
                    description: "description",
                    invoiceType: .accountsReceivable,
                    lineItemType: .baseRate,
                    quantity: 1.1,
                    schemaVersion: 1,
                    unitPrice: 1.1
                )
            )
        ],
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

**request:** `AdHocInvoiceLineItemsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">previewAdHocV1</a>(request: AdHocInvoiceLineItemsReq, requestOptions: RequestOptions?) -> [InvoiceLineItemServerCreate1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Previews account-split ad-hoc line items without persisting them. | authz: allowed_org_types=[provider], min_org_role=operator | (AdHocInvoiceLineItemsReq) -> (list[InvoiceLineItemServerCreate1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.previewAdHocV1(request: AdHocInvoiceLineItemsReq(
        adHocLineItems: [
            AdHocInvoiceLineItem1(
                invoiceLineItem: InvoiceLineItemClientCreate1(
                    currencyCode: .usd,
                    description: "description",
                    invoiceType: .accountsReceivable,
                    lineItemType: .baseRate,
                    quantity: 1.1,
                    schemaVersion: 1,
                    unitPrice: 1.1
                )
            )
        ],
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

**request:** `AdHocInvoiceLineItemsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">approveManyV1</a>(request: Requests.InvoiceLineItemsApproveManyReq, requestOptions: RequestOptions?) -> [InvoiceLineItem1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Atomically approves draft line items owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemsApproveManyReq) -> (list[InvoiceLineItem1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.approveManyV1(request: .init(invoiceLineItemIds: [
        "invoice_line_item_ids"
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoiceLineItemsApproveManyReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">listByOrderV1</a>(orderId: String, requestOptions: RequestOptions?) -> InvoiceLineItemsByOrderExpandedRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists owner-scoped line items and attributed billing periods for an order with counterparties and accounts expanded. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceLineItemsByOrderExpandedRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.listByOrderV1(orderId: "order_id")
}

try await main()
```
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

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">createFromAmountV1</a>(request: Requests.CreateInvoiceLineItemsFromAmountReq, requestOptions: RequestOptions?) -> CreateInvoiceLineItemsFromAmountRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates optionally order-attributed line items from an amount and attaches them to a draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators, task_group_coordinator_operators, executor_org_operators] when order-attributed | (CreateInvoiceLineItemsFromAmountReq) -> (CreateInvoiceLineItemsFromAmountRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.createFromAmountV1(request: .init(
        amount: 1.1,
        currencyCode: .usd,
        description: "description",
        invoiceType: .accountsReceivable,
        lineItemType: .baseRate
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

**request:** `Requests.CreateInvoiceLineItemsFromAmountReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">createFromAwbCostsV1</a>(request: Requests.CreateInvoiceLineItemsFromAwbCostsReq, requestOptions: RequestOptions?) -> CreateInvoiceLineItemsFromAwbCostsRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates account-scoped airline payables from AWB costs; receivables remain rate-sheet-driven. | authz: allowed_org_types=[provider], min_org_role=operator | (CreateInvoiceLineItemsFromAwbCostsReq) -> (CreateInvoiceLineItemsFromAwbCostsRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.createFromAwbCostsV1(request: .init(awbCosts: [
        CreateInvoiceLineItemsFromAwbCostsItem1(
            awbNumber: "awb_number",
            cost: Cost.double(
                1.1
            ),
            currencyCode: .usd
        )
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateInvoiceLineItemsFromAwbCostsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">createFromLineItemsV1</a>(request: Requests.CreateInvoiceLineItemsFromLineItemsReq, requestOptions: RequestOptions?) -> CreateInvoiceLineItemsFromLineItemsRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates optionally order-attributed line items by transforming submitted line items and attaches them to a draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators, task_group_coordinator_operators, executor_org_operators] when order-attributed | (CreateInvoiceLineItemsFromLineItemsReq) -> (CreateInvoiceLineItemsFromLineItemsRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.createFromLineItemsV1(request: .init(
        description: "description",
        invoiceLineItemAmountTransformation: InvoiceLineItemAmountTransformation1(
            transformationType: .percent,
            value: 1.1
        ),
        invoiceType: .accountsReceivable,
        lineItemType: .baseRate,
        sourceInvoiceLineItems: [
            InvoiceLineItem1(
                id: "_id",
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: .usd,
                description: "description",
                invoiceType: .accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                lineItemType: .baseRate,
                ownedByOrgId: "owned_by_org_id",
                quantity: 1.1,
                schemaVersion: 1,
                unitPrice: 1.1
            )
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

**request:** `Requests.CreateInvoiceLineItemsFromLineItemsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">deleteManyV1</a>(request: Requests.InvoiceLineItemsDeleteManyReq, requestOptions: RequestOptions?) -> InvoiceLineItemsDeleteManyRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes owner-scoped line items and rebuilds every affected draft invoice. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemsDeleteManyReq) -> (InvoiceLineItemsDeleteManyRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.deleteManyV1(request: .init(invoiceLineItemIds: [
        "invoice_line_item_ids"
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.InvoiceLineItemsDeleteManyReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">createFromRateSheetsV1</a>(request: InvoiceLineItemsFromChrtGroundProviderRateSheetsReq, requestOptions: RequestOptions?) -> [InvoiceLineItem1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates rate-sheet-derived line items and attaches them to matching draft invoices. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[task_group_coordinator_operators] | (InvoiceLineItemsFromChrtGroundProviderRateSheetsReq) -> (list[InvoiceLineItem1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.createFromRateSheetsV1(request: InvoiceLineItemsFromChrtGroundProviderRateSheetsReq(
        taskGroupChrtGroundProviderRateSheetIds: [
            TaskGroupChrtGroundProviderRateSheetIds1(
                rateSheetIds: [
                    "rate_sheet_ids"
                ],
                taskGroupId: "task_group_id"
            )
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

**request:** `InvoiceLineItemsFromChrtGroundProviderRateSheetsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">previewFromRateSheetsV1</a>(request: InvoiceLineItemsFromChrtGroundProviderRateSheetsReq, requestOptions: RequestOptions?) -> [TaskGroupInvoiceLineItemsFromChrtGroundProviderRateSheetsPreview1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Previews accounts-payable, accounts-receivable, and tax line items from selected active rate sheets. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[task_group_coordinator_operators] | (InvoiceLineItemsFromChrtGroundProviderRateSheetsReq) -> (list[TaskGroupInvoiceLineItemsFromChrtGroundProviderRateSheetsPreview1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.previewFromRateSheetsV1(request: InvoiceLineItemsFromChrtGroundProviderRateSheetsReq(
        taskGroupChrtGroundProviderRateSheetIds: [
            TaskGroupChrtGroundProviderRateSheetIds1(
                rateSheetIds: [
                    "rate_sheet_ids"
                ],
                taskGroupId: "task_group_id"
            )
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

**request:** `InvoiceLineItemsFromChrtGroundProviderRateSheetsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">listV1</a>(sortBy: InvoiceLineItemSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterInvoiceTypes: [InvoiceTypeEnum1]?, filterCurrencyCodes: [BillingCurrencyCodeEnum1]?, filterLineItemTypes: [InvoiceLineItemTypeEnum1]?, filterUnits: [InvoiceLineItemUnitEnum1]?, filterCounterpartyOrgId: String?, filterCounterpartyOffChrtOrgDataId: String?, filterCounterpartyDriverId: String?, filterShipperAccountId: String?, filterInvoiceId: String?, filterIsInvoiced: Bool?, filterOrderId: String?, filterTaskGroupId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> InvoiceLineItemListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists owner-scoped invoice line items with attached invoices expanded. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceLineItemListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.listV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterInvoiceTypes: [
            .accountsReceivable
        ],
        filterCurrencyCodes: [
            .usd
        ],
        filterLineItemTypes: [
            .baseRate
        ],
        filterUnits: [
            .each
        ],
        filterCounterpartyOrgId: "filter_counterparty_org_id",
        filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
        filterCounterpartyDriverId: "filter_counterparty_driver_id",
        filterShipperAccountId: "filter_shipper_account_id",
        filterInvoiceId: "filter_invoice_id",
        filterIsInvoiced: true,
        filterOrderId: "filter_order_id",
        filterTaskGroupId: "filter_task_group_id",
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

**sortBy:** `InvoiceLineItemSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order.
    
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

**filterInvoiceTypes:** `[InvoiceTypeEnum1]?` — Filter by one or more invoice types.
    
</dd>
</dl>

<dl>
<dd>

**filterCurrencyCodes:** `[BillingCurrencyCodeEnum1]?` — Filter by one or more currency codes.
    
</dd>
</dl>

<dl>
<dd>

**filterLineItemTypes:** `[InvoiceLineItemTypeEnum1]?` — Filter by one or more line item types.
    
</dd>
</dl>

<dl>
<dd>

**filterUnits:** `[InvoiceLineItemUnitEnum1]?` — Filter by one or more units.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyOrgId:** `String?` — Filter by an on-CHRT counterparty organization.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyOffChrtOrgDataId:** `String?` — Filter by off-CHRT counterparty organization data.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyDriverId:** `String?` — Filter by a driver counterparty.
    
</dd>
</dl>

<dl>
<dd>

**filterShipperAccountId:** `String?` — Filter by an associated shipper account.
    
</dd>
</dl>

<dl>
<dd>

**filterInvoiceId:** `String?` — Filter by an attached invoice.
    
</dd>
</dl>

<dl>
<dd>

**filterIsInvoiced:** `Bool?` — Filter by whether a line item is attached to an invoice.
    
</dd>
</dl>

<dl>
<dd>

**filterOrderId:** `String?` — Filter by an attributed order.
    
</dd>
</dl>

<dl>
<dd>

**filterTaskGroupId:** `String?` — Filter by an attributed task group.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter by created_at_timestamp greater than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter by created_at_timestamp less than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampGte:** `Date?` — Filter by last_edited_at_timestamp greater than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampLte:** `Date?` — Filter by last_edited_at_timestamp less than or equal.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">recalculateTaxesV1</a>(request: Requests.RecalculateOrderTaxInvoiceLineItemsReq, requestOptions: RequestOptions?) -> [InvoiceLineItem1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Recalculates existing tax line items from current non-tax items in the same billing scope. | authz: allowed_org_types=[provider], min_org_role=operator | (RecalculateOrderTaxInvoiceLineItemsReq) -> (list[InvoiceLineItem1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.recalculateTaxesV1(request: .init(orderId: "order_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.RecalculateOrderTaxInvoiceLineItemsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoiceLineItems.<a href="/Sources/Resources/BillingNew/InvoiceLineItems/InvoiceLineItemsClient.swift">updateV1</a>(invoiceLineItemId: String, request: Requests.InvoiceLineItemClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an owner-scoped line item and rebuilds its draft invoice when attached. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoiceLineItems.updateV1(
        invoiceLineItemId: "invoice_line_item_id",
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

**invoiceLineItemId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.InvoiceLineItemClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## BillingNew Invoices
<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">approveV1</a>(invoiceId: String, requestOptions: RequestOptions?) -> Invoice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Approves a draft invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Invoice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.approveV1(invoiceId: "invoice_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">createV1</a>(request: Requests.InvoiceClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the matching draft invoice period, or creates one with an optional rolling-month default. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.createV1(request: .init(
        currencyCode: .usd,
        invoiceType: .accountsReceivable,
        schemaVersion: 1
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

**request:** `Requests.InvoiceClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">deleteV1</a>(invoiceId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes a draft invoice and detaches its line items. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.deleteV1(invoiceId: "invoice_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">getExpandedV1</a>(invoiceId: String, requestOptions: RequestOptions?) -> InvoiceExpandedRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an owner-scoped invoice with line-item orders, counterparties, and accounts expanded. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceExpandedRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.getExpandedV1(invoiceId: "invoice_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">addLineItemV1</a>(invoiceId: String, invoiceLineItemId: String, requestOptions: RequestOptions?) -> Invoice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attaches one line item to a draft invoice, moving it from another draft invoice when needed, and synchronizes both invoices. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Invoice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.addLineItemV1(
        invoiceId: "invoice_id",
        invoiceLineItemId: "invoice_line_item_id"
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

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**invoiceLineItemId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">removeLineItemV1</a>(invoiceId: String, invoiceLineItemId: String, requestOptions: RequestOptions?) -> Invoice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detaches one line item from a draft invoice and synchronizes the invoice total and accounts. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Invoice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.removeLineItemV1(
        invoiceId: "invoice_id",
        invoiceLineItemId: "invoice_line_item_id"
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

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**invoiceLineItemId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">addLineItemsV1</a>(invoiceId: String, request: Requests.InvoiceLineItemsAddReq, requestOptions: RequestOptions?) -> Invoice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attaches existing line items to a draft invoice, moving them from any other draft invoices, and synchronizes all affected invoice totals and accounts. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemsAddReq) -> (Invoice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.addLineItemsV1(
        invoiceId: "invoice_id",
        request: .init(invoiceLineItemIds: [
            "invoice_line_item_ids"
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

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.InvoiceLineItemsAddReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">removeLineItemsV1</a>(invoiceId: String, request: Requests.InvoiceLineItemsRemoveReq, requestOptions: RequestOptions?) -> Invoice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detaches existing line items from a draft invoice and synchronizes derived invoice fields. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceLineItemsRemoveReq) -> (Invoice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.removeLineItemsV1(
        invoiceId: "invoice_id",
        request: .init(invoiceLineItemIds: [
            "invoice_line_item_ids"
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

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.InvoiceLineItemsRemoveReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">listV1</a>(search: String?, sortBy: InvoiceSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatuses: [InvoiceStatusEnum1]?, filterInvoiceTypes: [InvoiceTypeEnum1]?, filterCurrencyCodes: [BillingCurrencyCodeEnum1]?, filterCounterpartyOrgId: String?, filterCounterpartyOffChrtOrgDataId: String?, filterCounterpartyDriverId: String?, filterCounterpartyAccountId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> InvoiceListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists owner-scoped invoices with related orders, counterparties, and accounts expanded. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (InvoiceListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.listV1(
        search: "search",
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterStatuses: [
            .draft
        ],
        filterInvoiceTypes: [
            .accountsReceivable
        ],
        filterCurrencyCodes: [
            .usd
        ],
        filterCounterpartyOrgId: "filter_counterparty_org_id",
        filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
        filterCounterpartyDriverId: "filter_counterparty_driver_id",
        filterCounterpartyAccountId: "filter_counterparty_account_id",
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

**search:** `String?` — Search invoice names and descriptions.
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `InvoiceSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order.
    
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

**filterStatuses:** `[InvoiceStatusEnum1]?` — Filter by one or more invoice statuses.
    
</dd>
</dl>

<dl>
<dd>

**filterInvoiceTypes:** `[InvoiceTypeEnum1]?` — Filter by one or more invoice types.
    
</dd>
</dl>

<dl>
<dd>

**filterCurrencyCodes:** `[BillingCurrencyCodeEnum1]?` — Filter by one or more currency codes.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyOrgId:** `String?` — Filter by an on-CHRT counterparty organization.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyOffChrtOrgDataId:** `String?` — Filter by off-CHRT counterparty organization data.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyDriverId:** `String?` — Filter by a driver counterparty.
    
</dd>
</dl>

<dl>
<dd>

**filterCounterpartyAccountId:** `String?` — Filter by an associated counterparty account.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter by created_at_timestamp greater than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter by created_at_timestamp less than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampGte:** `Date?` — Filter by last_edited_at_timestamp greater than or equal.
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampLte:** `Date?` — Filter by last_edited_at_timestamp less than or equal.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">updateV1</a>(invoiceId: String, request: Requests.InvoiceClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the name or description of a draft invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.updateV1(
        invoiceId: "invoice_id",
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

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.InvoiceClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">updatePeriodV1</a>(invoiceId: String, request: Requests.InvoicePeriodUpdateReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the period of a draft invoice without changing its attached line items. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoicePeriodUpdateReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.updatePeriodV1(
        invoiceId: "invoice_id",
        request: .init(
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.InvoicePeriodUpdateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">getV1</a>(invoiceId: String, requestOptions: RequestOptions?) -> Invoice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Invoice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.getV1(invoiceId: "invoice_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billingNew.invoices.<a href="/Sources/Resources/BillingNew/Invoices/InvoicesClient.swift">voidV1</a>(invoiceId: String, request: Requests.InvoiceVoidReq, requestOptions: RequestOptions?) -> Invoice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Voids a draft or approved invoice owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (InvoiceVoidReq) -> (Invoice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.invoices.voidV1(
        invoiceId: "invoice_id",
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

**invoiceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.InvoiceVoidReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## BillingNew Orders
<details><summary><code>client.billingNew.orders.<a href="/Sources/Resources/BillingNew/Orders/OrdersClient.swift">listAwbBillingForCoordinatorOperatorsV1</a>(page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OrderAwbBillingListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists completed, unbilled AWBs with delivery account allocations. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderAwbBillingListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.orders.listAwbBillingForCoordinatorOperatorsV1(
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

<details><summary><code>client.billingNew.orders.<a href="/Sources/Resources/BillingNew/Orders/OrdersClient.swift">listExpandedForCoordinatorOperatorsV1</a>(sortBy: OrderBillingSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: [OrderStatusEnum1]?, filterAwbNumber: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgDataId: String?, filterCoordinatorShipperAccountIds: [String]?, filterExecutorOrgId: String?, filterCoordinatorLabel: String?, filterDraftStartedAtTimestampGte: Date?, filterDraftStartedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCancelledAtTimestampGte: Date?, filterCancelledAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, request: Requests.OrderBillingExpandedListReq, requestOptions: RequestOptions?) -> OrderBillingExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists coordinator orders with billing summaries and optional party-name expansion. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderBillingExpandedListReq) -> (OrderBillingExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.orders.listExpandedForCoordinatorOperatorsV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterStatus: [
            .draft
        ],
        filterAwbNumber: "filter_awb_number",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
        filterCoordinatorShipperAccountIds: [
            "filter_coordinator_shipper_account_ids"
        ],
        filterExecutorOrgId: "filter_executor_org_id",
        filterCoordinatorLabel: "filter_coordinator_label",
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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

**sortBy:** `OrderBillingSortByEnum?` — Order lifecycle timestamp used for sorting.
    
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

**search:** `String?` — Full-text search query for order short ID, off-CHRT reference ID, and AWB.
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[OrderStatusEnum1]?` — Filter by one or more order statuses.
    
</dd>
</dl>

<dl>
<dd>

**filterAwbNumber:** `String?` — Filter by an exact order AWB number.
    
</dd>
</dl>

<dl>
<dd>

**filterShipperOrgId:** `String?` — Filter by an on-CHRT shipper organization.
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtShipperOrgDataId:** `String?` — Filter by an off-CHRT shipper.
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorShipperAccountIds:** `[String]?` — Filter by one or more coordinator shipper accounts.
    
</dd>
</dl>

<dl>
<dd>

**filterExecutorOrgId:** `String?` — Filter by an on-CHRT executor organization.
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorLabel:** `String?` — Filter by an exact coordinator label.
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStagedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterInProgressAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCancelledAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCancelledAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterExceptionAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderBillingExpandedListReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## BillingNew Orders RateSheetLineItems
<details><summary><code>client.billingNew.orders.rateSheetLineItems.<a href="/Sources/Resources/BillingNew/Orders/RateSheetLineItems/RateSheetLineItemsClient.swift">generateManyV1</a>(request: Requests.OrderRateSheetLineItemsGenerateManyReq, requestOptions: RequestOptions?) -> OrderRateSheetLineItemsGenerateManyRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resolves all matching CHRT-ground provider rate sheets for each unique Order and independently replaces that Order's rate-sheet-derived line items on draft invoices. Orders without matching rate sheets are skipped, expected per-Order failures are returned without stopping later Orders, and invoice approval or finalization is not performed. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | (OrderRateSheetLineItemsGenerateManyReq) -> (OrderRateSheetLineItemsGenerateManyRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.billingNew.orders.rateSheetLineItems.generateManyV1(request: .init(orderIds: [
        "order_ids"
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderRateSheetLineItemsGenerateManyReq` 
    
</dd>
</dl>

<dl>
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

## Integrations CargoaiTrackAndTrace
<details><summary><code>client.integrations.cargoaiTrackAndTrace.<a href="/Sources/Resources/Integrations/CargoaiTrackAndTrace/CargoaiTrackAndTraceClient.swift">subscribeV1</a>(request: Requests.CargoAiTrackAndTraceSubscribeReq, requestOptions: RequestOptions?) -> CargoAiTrackAndTraceSubscription1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts CargoAi Track & Trace URL + e-mail updates for an AWB (which must already be recorded on a flight leg). Idempotent: re-subscribing a still-live AWB returns the existing subscription without calling CargoAi again. | authz: order participant operator | (CargoAiTrackAndTraceSubscribeReq) -> (CargoAiTrackAndTraceSubscription1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.cargoaiTrackAndTrace.subscribeV1(request: .init(awb: "awb"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CargoAiTrackAndTraceSubscribeReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.cargoaiTrackAndTrace.<a href="/Sources/Resources/Integrations/CargoaiTrackAndTrace/CargoaiTrackAndTraceClient.swift">subscriptionV1</a>(awb: String, requestOptions: RequestOptions?) -> CargoAiTrackAndTraceSubscription1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the stored CargoAi tracking subscription for an AWB. | authz: order participant | () -> (CargoAiTrackAndTraceSubscription1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.cargoaiTrackAndTrace.subscriptionV1(awb: "awb")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**awb:** `String` — IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.integrations.cargoaiTrackAndTrace.<a href="/Sources/Resources/Integrations/CargoaiTrackAndTrace/CargoaiTrackAndTraceClient.swift">subscriptionsByTaskGroupV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> [CargoAiTrackAndTraceSubscription1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists CargoAi tracking subscriptions for the AWBs recorded on a task group. | authz: order participant | () -> (list[CargoAiTrackAndTraceSubscription1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.cargoaiTrackAndTrace.subscriptionsByTaskGroupV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.integrations.cargoaiTrackAndTrace.<a href="/Sources/Resources/Integrations/CargoaiTrackAndTrace/CargoaiTrackAndTraceClient.swift">updatesV1</a>(awb: String, requestOptions: RequestOptions?) -> [CargoAiTrackAndTraceUpdate1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves stored CargoAi tracking updates for an AWB, latest first (the first item is the current state). | authz: order participant | () -> (list[CargoAiTrackAndTraceUpdate1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.integrations.cargoaiTrackAndTrace.updatesV1(awb: "awb")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**awb:** `String` — IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    
</dd>
</dl>

<dl>
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
            country: "country",
            departure: "departure",
            destination: "destination",
            origin: "origin"
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

## Listing BidThreads
<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">acceptV1</a>(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pushes a bidder-side ACCEPT onto an OPEN thread. References the most recent lister-side pro_forma (or the listing's opening for DISPATCH). On `auto_award_first_accept=True` listings, fires the full cascade immediately (thread ACCEPTED, listing AWARDED, shipping and BillingNew side-effects). Otherwise leaves the thread OPEN for the lister to finalise via confirm_accept. Lister-side finalisation lives on confirm_accept; calling /accept/v1 from the lister side is rejected (400). | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">confirmAcceptV1</a>(bidThreadId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lister confirmation of a bidder's ACCEPT on this thread, used when `listing.auto_award_first_accept == False`. Runs the full award cascade: thread ACCEPTED, listing AWARDED, sibling threads / listings cancelled, and shipping and BillingNew side-effects. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">listForBidderV1</a>(sortBy: BidThreadSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: [BidThreadStatusEnum]?, filterListingId: String?, filterBidderProviderOrgId: String?, filterBidderDriverId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterStatusChangedAtTimestampGte: Date?, filterStatusChangedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> BidThreadListRes</code></summary>
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
        filterStatus: [
            .open
        ],
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

**filterStatus:** `[BidThreadStatusEnum]?` — Filter by thread status(es). Multi-select.
    
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

<details><summary><code>client.listing.bidThreads.<a href="/Sources/Resources/Listing/BidThreads/BidThreadsClient.swift">listForListingV1</a>(listingId: String, sortBy: BidThreadSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: [BidThreadStatusEnum]?, filterListingId: String?, filterBidderProviderOrgId: String?, filterBidderDriverId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterStatusChangedAtTimestampGte: Date?, filterStatusChangedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> BidThreadListRes</code></summary>
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
        filterStatus: [
            .open
        ],
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

**filterStatus:** `[BidThreadStatusEnum]?` — Filter by thread status(es). Multi-select.
    
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

## Listing DriverBiddingGroups
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
        groupName: "group_name",
        schemaVersion: 1
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

## Listing Listings
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">byIdV1</a>(listingId: String, requestOptions: RequestOptions?) -> ListingForBidder1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a listing by id in the bidder-facing shape with tasks and mileage. Visible to the lister and to snapshot participants (as bidder — provider org or driver). Listers wanting the full record call `by_id_for_lister/v1`. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (ListingForBidder1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">cancelV1</a>(listingId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels an OPEN listing. All OPEN BidThreads on this listing are system-rejected. No shipping side-effects. Idempotent: no-op on an already-terminal listing. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        audience: .providers,
        listingDescription: "listing_description",
        taskGroupId: "task_group_id",
        taskGroupSummaryForBidders: "task_group_summary_for_bidders"
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">listByOrgV1</a>(filterAudience: ListingAudienceEnum?, sortBy: ListingSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: [ListingStatusEnum]?, filterType: [ListingTypeEnum]?, filterTaskGroupId: String?, filterOrderId: String?, filterCreatedByOrgId: String?, filterCreatedByUserId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ListingListRes</code></summary>
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
        filterStatus: [
            .open
        ],
        filterType: [
            .dispatch
        ],
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

**filterStatus:** `[ListingStatusEnum]?` — Filter by listing status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterType:** `[ListingTypeEnum]?` — Filter by listing type(s). Multi-select.
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">listForDriverBidderV1</a>(sortBy: ListingSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: [ListingStatusEnum]?, filterType: [ListingTypeEnum]?, filterTaskGroupId: String?, filterOrderId: String?, filterCreatedByOrgId: String?, filterCreatedByUserId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ListingForBidderListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists DRIVERS-audience listings where the caller (resolved to a Driver of their org) is a snapshot participant. Driver-side bidder view with filtering, sorting, and pagination. Returns the bidder shape with tasks and mileage (no `internal_notes`). | authz: allowed_org_types=[provider], min_org_role=driver | () -> (ListingForBidderListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        filterStatus: [
            .open
        ],
        filterType: [
            .dispatch
        ],
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

**filterStatus:** `[ListingStatusEnum]?` — Filter by listing status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterType:** `[ListingTypeEnum]?` — Filter by listing type(s). Multi-select.
    
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

<details><summary><code>client.listing.listings.<a href="/Sources/Resources/Listing/Listings/ListingsClient.swift">listForProviderBidderV1</a>(sortBy: ListingSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: [ListingStatusEnum]?, filterType: [ListingTypeEnum]?, filterTaskGroupId: String?, filterOrderId: String?, filterCreatedByOrgId: String?, filterCreatedByUserId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ListingForBidderListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists PROVIDERS-audience listings where the caller's org is a snapshot participant. Provider-side bidder view with filtering, sorting, and pagination. Returns the bidder shape with tasks and mileage (no `internal_notes`). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ListingForBidderListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        filterStatus: [
            .open
        ],
        filterType: [
            .dispatch
        ],
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

**filterStatus:** `[ListingStatusEnum]?` — Filter by listing status(es). Multi-select.
    
</dd>
</dl>

<dl>
<dd>

**filterType:** `[ListingTypeEnum]?` — Filter by listing type(s). Multi-select.
    
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

## Listing OrgBiddingGroups
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

**providerOrgId:** `String` — Must be a string starting with `org_`
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

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
        groupName: "group_name",
        schemaVersion: 1
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

**providerOrgId:** `String` — Must be a string starting with `org_`
    
</dd>
</dl>

<dl>
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

## Notifications AdHoc
<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/AdHocClient.swift">createV1</a>(orderId: String, request: NotificationIntentAdHocClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or returns an existing ad-hoc notification intent for an order. | authz: min_org_role=operator | (NotificationIntentAdHocClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        request: NotificationIntentAdHocClientCreate1(
            contactId: "contact_id",
            schemaVersion: 1
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

**request:** `NotificationIntentAdHocClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/AdHocClient.swift">createForSessionV1</a>(sessionId: String, request: NotificationIntentAdHocClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new ad-hoc notification intent for a tracking session. | authz: min_org_role=operator | (NotificationIntentAdHocClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.adHoc.createForSessionV1(
        sessionId: "session_id",
        request: NotificationIntentAdHocClientCreate1(
            contactId: "contact_id",
            schemaVersion: 1
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

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `NotificationIntentAdHocClientCreate1` 
    
</dd>
</dl>

<dl>
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

<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/AdHocClient.swift">listBySessionIdV1</a>(sessionId: String, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> NotificationAdHocListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all ad-hoc notification intents for a tracking session. | authz: min_org_role=operator | () -> (NotificationAdHocListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.adHoc.listBySessionIdV1(
        sessionId: "session_id",
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

**sessionId:** `String` 
    
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

## Notifications Groups
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
        channel: "email",
        event: "shipping.order.staged"
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

**userId:** `String` — Must be a string starting with `user_`
    
</dd>
</dl>

<dl>
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
        groupName: "group_name",
        schemaVersion: 1
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
        channel: "email",
        event: "shipping.order.staged"
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

**userId:** `String` — Must be a string starting with `user_`
    
</dd>
</dl>

<dl>
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

## Operations Departments
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

**userId:** `String` — Must be a string starting with `user_`
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.departments.<a href="/Sources/Resources/Operations/Departments/DepartmentsClient.swift">listV1</a>(sortBy: DepartmentSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterDepartmentType: [DepartmentTypeEnum]?, requestOptions: RequestOptions?) -> DepartmentListRes</code></summary>
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
        pageSize: 1,
        filterDepartmentType: [
            .aerospace
        ]
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

**filterDepartmentType:** `[DepartmentTypeEnum]?` — Filter by department type(s)
    
</dd>
</dl>

<dl>
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

**userId:** `String` — Must be a string starting with `user_`
    
</dd>
</dl>

<dl>
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
        departmentType: .aerospace,
        name: "name",
        schemaVersion: 1
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

## Operations OperationsTaskLists
<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">applyToOrderV1</a>(taskListId: String, orderId: String, departmentId: String?, initialDeadlineTimestamp: Date?, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Materializes each entry of an OperationsTaskList into an OperationsTask on the Order (status=not_started, source_task_list_id set). Deadlines resolve per-entry from its anchor+offset; initial_deadline_timestamp, if set, pins the first entry and the chain follows. department_id overrides the caller's Order department when supplied. No dedup — applying twice creates duplicate tasks. | authz: min_org_role=operator | () -> (list[PydanticObjectId])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.applyToOrderV1(
        taskListId: "task_list_id",
        orderId: "order_id",
        departmentId: "department_id",
        initialDeadlineTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**departmentId:** `String?` — Overrides the Order department for tasks materialized by this application.
    
</dd>
</dl>

<dl>
<dd>

**initialDeadlineTimestamp:** `Date?` — If set, pins the first entry's deadline; later FROM_PREVIOUS_TASK entries cascade from it.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">archiveV1</a>(taskListId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Soft-deletes an OperationsTaskList by setting `archived=True`. Tasks already applied to Orders are unaffected. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.archiveV1(taskListId: "task_list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">addEntryV1</a>(taskListId: String, request: OperationsTaskListEntryClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Appends a new entry to an OperationsTaskList's `entries` array. The server assigns a fresh UUID and returns it. Order is load-bearing for from_previous_task-anchored deadlines. | authz: min_org_role=operator | (OperationsTaskListEntryClientCreate1) -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.addEntryV1(
        taskListId: "task_list_id",
        request: OperationsTaskListEntryClientCreate1(
            description: "description",
            taskType: .reviewOrderDetails,
            title: "title"
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

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OperationsTaskListEntryClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">editEntryV1</a>(taskListId: String, entryUuid: String, request: OperationsTaskListEntryClientCreate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the entry with the given uuid in an OperationsTaskList's `entries` array. The stored uuid is preserved regardless of the request body. 404 if no entry matches. | authz: min_org_role=operator | (OperationsTaskListEntryClientCreate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.editEntryV1(
        taskListId: "task_list_id",
        entryUuid: "entry_uuid",
        request: OperationsTaskListEntryClientCreate1(
            description: "description",
            taskType: .reviewOrderDetails,
            title: "title"
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

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**entryUuid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OperationsTaskListEntryClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">removeEntryV1</a>(taskListId: String, entryUuid: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the entry with the given uuid from an OperationsTaskList's `entries` array, closing the gap in order. 404 if no entry matches. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.removeEntryV1(
        taskListId: "task_list_id",
        entryUuid: "entry_uuid"
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

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**entryUuid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">reorderEntriesV1</a>(taskListId: String, request: Requests.OperationsTaskListReorderEntries1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reorders an OperationsTaskList's existing entries. `entry_uuids` must be an exact permutation of the list's current entry uuids (every uuid present, no extras, no duplicates), so a reorder can never drop, add, or mutate an entry. | authz: min_org_role=operator | (OperationsTaskListReorderEntries1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.reorderEntriesV1(
        taskListId: "task_list_id",
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

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OperationsTaskListReorderEntries1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">listV1</a>(sortBy: OperationsTaskListSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterArchived: Bool?, requestOptions: RequestOptions?) -> OperationsTaskListListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists OperationsTaskLists for the caller's organization with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (OperationsTaskListListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.listV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
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

**sortBy:** `OperationsTaskListSortByEnum?` — Field to sort by
    
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

**filterArchived:** `Bool?` — Filter by archived flag. None=all, True=archived only, False=unarchived only.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">removeNotStartedTasksFromOrderV1</a>(taskListId: String, orderId: String, requestOptions: RequestOptions?) -> OperationsTaskListRemoveFromOrderRes1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes the OperationsTasks this OperationsTaskList added to the Order (matched by source_task_list_id). Only untouched (not_started) tasks are deleted; started/completed/skipped/cancelled tasks are kept. Returns deleted and kept counts. | authz: min_org_role=operator | () -> (OperationsTaskListRemoveFromOrderRes1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.removeNotStartedTasksFromOrderV1(
        taskListId: "task_list_id",
        orderId: "order_id"
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

**taskListId:** `String` 
    
</dd>
</dl>

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

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">unarchiveV1</a>(taskListId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Restores an archived OperationsTaskList by setting `archived=False`. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.unarchiveV1(taskListId: "task_list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">createV1</a>(request: Requests.OperationsTaskListClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new OperationsTaskList for the caller's organization. | authz: min_org_role=operator | (OperationsTaskListClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.createV1(request: .init(
        name: "name",
        schemaVersion: 1
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

**request:** `Requests.OperationsTaskListClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">getV1</a>(taskListId: String, requestOptions: RequestOptions?) -> OperationsTaskList1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single OperationsTaskList by id. | authz: min_org_role=operator | () -> (OperationsTaskList1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.getV1(taskListId: "task_list_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTaskLists.<a href="/Sources/Resources/Operations/OperationsTaskLists/OperationsTaskListsClient.swift">updateV1</a>(taskListId: String, request: Requests.OperationsTaskListClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates scalar fields (name, description) on an OperationsTaskList. | authz: min_org_role=operator | (OperationsTaskListClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTaskLists.updateV1(
        taskListId: "task_list_id",
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

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OperationsTaskListClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Operations OperationsTasks
<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">addCommentV1</a>(taskId: String, request: Requests.OperationsTaskAddCommentReq1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Appends a comment to an OperationsTask's comment thread. Returns the new comment id. | authz: min_org_role=operator | (OperationsTaskAddCommentReq1) -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.addCommentV1(
        taskId: "task_id",
        request: .init(comment: "comment")
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

**request:** `Requests.OperationsTaskAddCommentReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">applyTimeDeltaToDeadlineTimestampsV1</a>(request: Requests.OperationsTasksApplyTimeDeltaToDeadlineTimestampsReq1, requestOptions: RequestOptions?) -> OperationsTasksDeadlineTimestampsUpdateRes1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds the same ISO 8601 duration to every selected OperationsTask's deadline_timestamp. Missing or cross-org task ids are skipped and reported through updated_count. | authz: min_org_role=operator | (OperationsTasksApplyTimeDeltaToDeadlineTimestampsReq1) -> (OperationsTasksDeadlineTimestampsUpdateRes1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.applyTimeDeltaToDeadlineTimestampsV1(request: .init(
        operationsTaskIds: [
            "operations_task_ids"
        ],
        timeDelta: "time_delta"
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

**request:** `Requests.OperationsTasksApplyTimeDeltaToDeadlineTimestampsReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">deleteCommentV1</a>(taskId: String, commentId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a comment from an OperationsTask's comment thread. 404 if the comment isn't found. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.deleteCommentV1(
        taskId: "task_id",
        commentId: "comment_id"
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

**commentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">expandedListV1</a>(sortBy: OperationsTaskSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterOrderIds: [String]?, filterOrderShortId: String?, filterOrderOffChrtReferenceId: String?, filterDepartmentId: String?, filterTaskType: [OperationsTaskTypeEnum]?, filterStatus: [OperationsTaskStatusEnum]?, filterAssignedUserId: String?, filterSourceTaskListId: String?, filterDeadlineGte: Date?, filterDeadlineLte: Date?, requestOptions: RequestOptions?) -> OperationsTaskExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists OperationsTasks with task-list, department, and assigned-user details. | authz: min_org_role=operator | () -> (OperationsTaskExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.expandedListV1(
        sortBy: .deadlineTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterOrderIds: [
            "filter_order_ids"
        ],
        filterOrderShortId: "filter_order_short_id",
        filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
        filterDepartmentId: "filter_department_id",
        filterTaskType: [
            .reviewOrderDetails
        ],
        filterStatus: [
            .notStarted
        ],
        filterAssignedUserId: "filter_assigned_user_id",
        filterSourceTaskListId: "filter_source_task_list_id",
        filterDeadlineGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDeadlineLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `OperationsTaskSortByEnum?` — Field to sort by
    
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

**search:** `String?` — Search by title or description
    
</dd>
</dl>

<dl>
<dd>

**filterOrderIds:** `[String]?` — Filter to tasks on any of these order ids (e.g. the order_ids returned by the orders typeahead for a chosen short_id / off-chrt reference id)
    
</dd>
</dl>

<dl>
<dd>

**filterOrderShortId:** `String?` — Filter to tasks for this order short ID
    
</dd>
</dl>

<dl>
<dd>

**filterOrderOffChrtReferenceId:** `String?` — Filter to tasks for this order off-CHRT reference ID
    
</dd>
</dl>

<dl>
<dd>

**filterDepartmentId:** `String?` — Filter to tasks routed to this department (desk queue)
    
</dd>
</dl>

<dl>
<dd>

**filterTaskType:** `[OperationsTaskTypeEnum]?` — Filter by task type(s). Defaults to all types.
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[OperationsTaskStatusEnum]?` — Filter by status(es). Defaults to all statuses.
    
</dd>
</dl>

<dl>
<dd>

**filterAssignedUserId:** `String?` — Filter to tasks this user is directly assigned to
    
</dd>
</dl>

<dl>
<dd>

**filterSourceTaskListId:** `String?` — Filter to tasks created from this OperationsTaskList
    
</dd>
</dl>

<dl>
<dd>

**filterDeadlineGte:** `Date?` — Filter to tasks with deadline >= this timestamp
    
</dd>
</dl>

<dl>
<dd>

**filterDeadlineLte:** `Date?` — Filter to tasks with deadline <= this timestamp
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">listV1</a>(sortBy: OperationsTaskSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterOrderIds: [String]?, filterOrderShortId: String?, filterOrderOffChrtReferenceId: String?, filterDepartmentId: String?, filterTaskType: [OperationsTaskTypeEnum]?, filterStatus: [OperationsTaskStatusEnum]?, filterAssignedUserId: String?, filterSourceTaskListId: String?, filterDeadlineGte: Date?, filterDeadlineLte: Date?, requestOptions: RequestOptions?) -> OperationsTaskListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists OperationsTasks for the caller's organization, with order ids / order short id / order off-CHRT reference id / department / type / status / assignee / source task list / deadline filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (OperationsTaskListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.listV1(
        sortBy: .deadlineTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterOrderIds: [
            "filter_order_ids"
        ],
        filterOrderShortId: "filter_order_short_id",
        filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
        filterDepartmentId: "filter_department_id",
        filterTaskType: [
            .reviewOrderDetails
        ],
        filterStatus: [
            .notStarted
        ],
        filterAssignedUserId: "filter_assigned_user_id",
        filterSourceTaskListId: "filter_source_task_list_id",
        filterDeadlineGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDeadlineLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `OperationsTaskSortByEnum?` — Field to sort by
    
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

**search:** `String?` — Search by title or description
    
</dd>
</dl>

<dl>
<dd>

**filterOrderIds:** `[String]?` — Filter to tasks on any of these order ids (e.g. the order_ids returned by the orders typeahead for a chosen short_id / off-chrt reference id)
    
</dd>
</dl>

<dl>
<dd>

**filterOrderShortId:** `String?` — Filter to tasks for this order short ID
    
</dd>
</dl>

<dl>
<dd>

**filterOrderOffChrtReferenceId:** `String?` — Filter to tasks for this order off-CHRT reference ID
    
</dd>
</dl>

<dl>
<dd>

**filterDepartmentId:** `String?` — Filter to tasks routed to this department (desk queue)
    
</dd>
</dl>

<dl>
<dd>

**filterTaskType:** `[OperationsTaskTypeEnum]?` — Filter by task type(s). Defaults to all types.
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[OperationsTaskStatusEnum]?` — Filter by status(es). Defaults to all statuses.
    
</dd>
</dl>

<dl>
<dd>

**filterAssignedUserId:** `String?` — Filter to tasks this user is directly assigned to
    
</dd>
</dl>

<dl>
<dd>

**filterSourceTaskListId:** `String?` — Filter to tasks created from this OperationsTaskList
    
</dd>
</dl>

<dl>
<dd>

**filterDeadlineGte:** `Date?` — Filter to tasks with deadline >= this timestamp
    
</dd>
</dl>

<dl>
<dd>

**filterDeadlineLte:** `Date?` — Filter to tasks with deadline <= this timestamp
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">setDeadlineTimestampsV1</a>(request: Requests.OperationsTasksSetDeadlineTimestampsReq1, requestOptions: RequestOptions?) -> OperationsTasksDeadlineTimestampsUpdateRes1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets each selected OperationsTask's deadline_timestamp to its requested timestamp. Missing or cross-org task ids are skipped and reported through updated_count. | authz: min_org_role=operator | (OperationsTasksSetDeadlineTimestampsReq1) -> (OperationsTasksDeadlineTimestampsUpdateRes1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.setDeadlineTimestampsV1(request: .init(updates: [
        OperationsTaskDeadlineTimestampUpdate1(
            deadlineTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            operationsTaskId: "operations_task_id"
        )
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OperationsTasksSetDeadlineTimestampsReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">setStatusV1</a>(request: Requests.OperationsTasksSetStatusReq1, requestOptions: RequestOptions?) -> OperationsTasksStatusUpdateRes1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the same status on each selected OperationsTask. Completing tasks stamps completed_at/by while other statuses clear them; missing or cross-org ids are skipped. | authz: min_org_role=operator | (OperationsTasksSetStatusReq1) -> (OperationsTasksStatusUpdateRes1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.setStatusV1(request: .init(
        operationsTaskIds: [
            "operations_task_ids"
        ],
        status: .notStarted
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

**request:** `Requests.OperationsTasksSetStatusReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">createV1</a>(request: Requests.OperationsTaskClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new OperationsTask on an Order where the caller is coordinator or executor. Seeds department_id from the caller's Order department fields. | authz: min_org_role=operator | (OperationsTaskClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.createV1(request: .init(
        description: "description",
        orderId: "order_id",
        schemaVersion: 1,
        taskType: .reviewOrderDetails,
        title: "title"
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

**request:** `Requests.OperationsTaskClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">getV1</a>(taskId: String, requestOptions: RequestOptions?) -> OperationsTask1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single OperationsTask by id. | authz: min_org_role=operator | () -> (OperationsTask1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.getV1(taskId: "task_id")
}

try await main()
```
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

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">deleteV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes an OperationsTask. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.deleteV1(taskId: "task_id")
}

try await main()
```
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

<details><summary><code>client.operations.operationsTasks.<a href="/Sources/Resources/Operations/OperationsTasks/OperationsTasksClient.swift">updateV1</a>(taskId: String, request: Requests.OperationsTaskClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates editable fields (task_type, title, description, deadline_timestamp, assigned_user_ids) on an OperationsTask. | authz: min_org_role=operator | (OperationsTaskClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.operationsTasks.updateV1(
        taskId: "task_id",
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

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OperationsTaskClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Operations OrderInternalMessages
<details><summary><code>client.operations.orderInternalMessages.<a href="/Sources/Resources/Operations/OrderInternalMessages/OrderInternalMessagesClient.swift">addMessageV1</a>(orderId: String, request: Requests.OrderInternalMessagesAddMessageReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Appends a message to the caller's OrderInternalMessages for this order (lazy-creates the messages doc). | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderInternalMessagesAddMessageReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.orderInternalMessages.addMessageV1(
        orderId: "order_id",
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

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderInternalMessagesAddMessageReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.orderInternalMessages.<a href="/Sources/Resources/Operations/OrderInternalMessages/OrderInternalMessagesClient.swift">getByOrderV1</a>(orderId: String, requestOptions: RequestOptions?) -> OrderInternalMessages1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the caller's OrderInternalMessages for this order, or 404 if none exist yet. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (OrderInternalMessages1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.orderInternalMessages.getByOrderV1(orderId: "order_id")
}

try await main()
```
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

<details><summary><code>client.operations.orderInternalMessages.<a href="/Sources/Resources/Operations/OrderInternalMessages/OrderInternalMessagesClient.swift">deleteMessageV1</a>(orderId: String, messageId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a message from the caller's OrderInternalMessages for this order. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.orderInternalMessages.deleteMessageV1(
        orderId: "order_id",
        messageId: "message_id"
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

**messageId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Operations OrderInternalMessages S3Objects
<details><summary><code>client.operations.orderInternalMessages.s3Objects.<a href="/Sources/Resources/Operations/OrderInternalMessages/S3Objects/S3ObjectsClient.swift">addV1</a>(orderId: String, request: Requests.BodyPostOrderInternalMessagesS3ObjectsAddV1, requestOptions: RequestOptions?) -> OrderInternalMessageS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a file to the caller's OrderInternalMessages for this order (lazy-creates the messages doc). Automatic blurhash generation for images. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (UploadFile) -> (OrderInternalMessageS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.orderInternalMessages.s3Objects.addV1(
        orderId: "order_id",
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

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BodyPostOrderInternalMessagesS3ObjectsAddV1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.orderInternalMessages.s3Objects.<a href="/Sources/Resources/Operations/OrderInternalMessages/S3Objects/S3ObjectsClient.swift">deleteV1</a>(orderInternalMessageS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an S3 object metadata and the associated S3 object from order internal messages. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.orderInternalMessages.s3Objects.deleteV1(orderInternalMessageS3ObjectMetadataId: "order_internal_message_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderInternalMessageS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.orderInternalMessages.s3Objects.<a href="/Sources/Resources/Operations/OrderInternalMessages/S3Objects/S3ObjectsClient.swift">getS3ObjectMetadataV1</a>(orderInternalMessageS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> OrderInternalMessageS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves metadata for an order internal messages S3 object. | authz: min_org_role=operator | () -> (OrderInternalMessageS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.orderInternalMessages.s3Objects.getS3ObjectMetadataV1(orderInternalMessageS3ObjectMetadataId: "order_internal_message_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderInternalMessageS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.operations.orderInternalMessages.s3Objects.<a href="/Sources/Resources/Operations/OrderInternalMessages/S3Objects/S3ObjectsClient.swift">getV1</a>(orderInternalMessageS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams an order internal messages S3 object file from storage. | authz: min_org_role=operator | () -> (binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.operations.orderInternalMessages.s3Objects.getV1(orderInternalMessageS3ObjectMetadataId: "order_internal_message_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderInternalMessageS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs Accounts
<details><summary><code>client.orgs.accounts.<a href="/Sources/Resources/Orgs/Accounts/AccountsClient.swift">createV1</a>(request: Requests.AccountClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a coordinator-private account with a name unique to its associated shipper. Optional location may be set at creation. | authz: allowed_org_types=[provider], min_org_role=operator | (AccountClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.accounts.createV1(request: .init(
        name: "name",
        schemaVersion: 1
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

**request:** `Requests.AccountClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.accounts.<a href="/Sources/Resources/Orgs/Accounts/AccountsClient.swift">listV1</a>(search: String?, filterAccountId: String?, filterOrgId: String?, filterOffChrtOrgDataId: String?, sortBy: AccountSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> AccountListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists coordinator-created shipper accounts with association filters, name search, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (AccountListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.accounts.listV1(
        search: "search",
        filterAccountId: "filter_account_id",
        filterOrgId: "filter_org_id",
        filterOffChrtOrgDataId: "filter_off_chrt_org_data_id",
        sortBy: .name,
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

**search:** `String?` — Full-text account name search query
    
</dd>
</dl>

<dl>
<dd>

**filterAccountId:** `String?` — Filter by account ID
    
</dd>
</dl>

<dl>
<dd>

**filterOrgId:** `String?` — Filter by associated on-CHRT shipper organization
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtOrgDataId:** `String?` — Filter by associated off-CHRT shipper organization data
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `AccountSortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order
    
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

<details><summary><code>client.orgs.accounts.<a href="/Sources/Resources/Orgs/Accounts/AccountsClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [AccountTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct coordinator-created shipper account names matching the query, with matching account IDs. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[AccountTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.accounts.typeaheadV1(
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

<details><summary><code>client.orgs.accounts.<a href="/Sources/Resources/Orgs/Accounts/AccountsClient.swift">updateV1</a>(accountId: String, request: Requests.AccountClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a coordinator-created shipper account name and optional location while preserving per-shipper name uniqueness. | authz: allowed_org_types=[provider], min_org_role=operator | (AccountClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.accounts.updateV1(
        accountId: "account_id",
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

**accountId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AccountClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.accounts.<a href="/Sources/Resources/Orgs/Accounts/AccountsClient.swift">getV1</a>(accountId: String, requestOptions: RequestOptions?) -> Account1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a coordinator-created shipper account. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Account1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.accounts.getV1(accountId: "account_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**accountId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs ComplianceDocuments
<details><summary><code>client.orgs.complianceDocuments.<a href="/Sources/Resources/Orgs/ComplianceDocuments/ComplianceDocumentsClient.swift">createV1</a>(request: Requests.OrgComplianceDocumentClientCreate1, requestOptions: RequestOptions?) -> OrgComplianceDocument1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a compliance document record for the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=administrator | (OrgComplianceDocumentClientCreate1) -> (OrgComplianceDocument1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.complianceDocuments.createV1(request: .init(
        documentType: .securityThreatAssessment,
        schemaVersion: 1
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

**request:** `Requests.OrgComplianceDocumentClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.complianceDocuments.<a href="/Sources/Resources/Orgs/ComplianceDocuments/ComplianceDocumentsClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [OrgComplianceDocument1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists compliance documents for the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[OrgComplianceDocument1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.complianceDocuments.listV1()
}

try await main()
```
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

<details><summary><code>client.orgs.complianceDocuments.<a href="/Sources/Resources/Orgs/ComplianceDocuments/ComplianceDocumentsClient.swift">updateV1</a>(orgComplianceDocumentId: String, request: Requests.OrgComplianceDocumentClientUpdate1, requestOptions: RequestOptions?) -> OrgComplianceDocument1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an organization compliance document for the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=administrator | (OrgComplianceDocumentClientUpdate1) -> (OrgComplianceDocument1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.complianceDocuments.updateV1(
        orgComplianceDocumentId: "org_compliance_document_id",
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

**orgComplianceDocumentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrgComplianceDocumentClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.complianceDocuments.<a href="/Sources/Resources/Orgs/ComplianceDocuments/ComplianceDocumentsClient.swift">getV1</a>(orgComplianceDocumentId: String, requestOptions: RequestOptions?) -> OrgComplianceDocument1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves one compliance document for the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrgComplianceDocument1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.complianceDocuments.getV1(orgComplianceDocumentId: "org_compliance_document_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orgComplianceDocumentId:** `String` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">getByHandleV1</a>(handle: String, requestOptions: RequestOptions?) -> ConnectionsGetByHandleV1Response?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets the connection between caller's org and the org with the specified handle. | () -> (ShipperCoordinatorConnection1 | CoordinatorExecutorConnection1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**handle:** `String` — Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listCoordinatorsForExecutorV1</a>(search: String?, page: Int?, pageSize: Int?, filterAutoAssignEnabled: Bool?, filterConnected: Bool?, requestOptions: RequestOptions?) -> CoordinatorExecutorConnectionsForExecutorListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the caller's coordinator connections with filtering, pagination, and identity search. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CoordinatorExecutorConnectionsForExecutorListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listCoordinatorsForExecutorV1(
        search: "search",
        page: 1,
        pageSize: 1,
        filterAutoAssignEnabled: true,
        filterConnected: true
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

**search:** `String?` — Search by organization identity details
    
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

**filterAutoAssignEnabled:** `Bool?` — Filter by executor auto-assign consent
    
</dd>
</dl>

<dl>
<dd>

**filterConnected:** `Bool?` — Filter by connection status
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listCoordinatorsForShipperV1</a>(search: String?, page: Int?, pageSize: Int?, filterConnected: Bool?, requestOptions: RequestOptions?) -> ShipperCoordinatorConnectionsForShipperListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the caller's coordinator connections with filtering, pagination, and identity search. | authz: allowed_org_types=[shipper] | () -> (ShipperCoordinatorConnectionsForShipperListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listCoordinatorsForShipperV1(
        search: "search",
        page: 1,
        pageSize: 1,
        filterConnected: true
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

**search:** `String?` — Search by organization identity details
    
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

**filterConnected:** `Bool?` — Filter by connection status
    
</dd>
</dl>

<dl>
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

Creates a shipper-coordinator or coordinator-executor connection to an on-CHRT provider. | (CreateConnectionReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Creates a shipper-coordinator connection to an on-CHRT shipper. | authz: allowed_org_types=[provider] | (CreateConnectionReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listExecutorsGeoSearchForCoordinatorV1</a>(nearLatitude: Double, nearLongitude: Double, page: Int?, pageSize: Int?, filterAutoAssignEnabled: Bool?, filterConnected: Bool?, requestOptions: RequestOptions?) -> CoordinatorExecutorConnectionsForCoordinatorGeoSearchListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the caller's executor connections nearest to a location, with filtering and pagination. Executors without registered addresses follow geocoded results. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CoordinatorExecutorConnectionsForCoordinatorGeoSearchListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listExecutorsGeoSearchForCoordinatorV1(
        nearLatitude: 1.1,
        nearLongitude: 1.1,
        page: 1,
        pageSize: 1,
        filterAutoAssignEnabled: true,
        filterConnected: true
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

**nearLatitude:** `Double` — Geo-search latitude
    
</dd>
</dl>

<dl>
<dd>

**nearLongitude:** `Double` — Geo-search longitude
    
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

**filterAutoAssignEnabled:** `Bool?` — Filter by executor auto-assign consent
    
</dd>
</dl>

<dl>
<dd>

**filterConnected:** `Bool?` — Filter by connection status
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listExecutorsForCoordinatorV1</a>(search: String?, page: Int?, pageSize: Int?, filterAutoAssignEnabled: Bool?, filterConnected: Bool?, requestOptions: RequestOptions?) -> CoordinatorExecutorConnectionsForCoordinatorListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the caller's executor connections with filtering, pagination, and identity search. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (CoordinatorExecutorConnectionsForCoordinatorListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listExecutorsForCoordinatorV1(
        search: "search",
        page: 1,
        pageSize: 1,
        filterAutoAssignEnabled: true,
        filterConnected: true
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

**search:** `String?` — Search by organization identity details
    
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

**filterAutoAssignEnabled:** `Bool?` — Filter by executor auto-assign consent
    
</dd>
</dl>

<dl>
<dd>

**filterConnected:** `Bool?` — Filter by connection status
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">setCoordinatorExecutorAutoAssignV1</a>(connectionId: String, request: Requests.CoordinatorExecutorUpdateAutoAssignReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets an executor's consent to direct task-group assignment. | authz: allowed_org_types=[provider], min_org_role=administrator | (CoordinatorExecutorUpdateAutoAssignReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.setCoordinatorExecutorAutoAssignV1(
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

**request:** `Requests.CoordinatorExecutorUpdateAutoAssignReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">setShipperCoordinatorDefaultDepartmentV1</a>(connectionId: String, request: Requests.ShipperCoordinatorConnectionClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or clears the coordinator's default department for a shipper-coordinator connection. | authz: allowed_org_types=[provider], min_org_role=operator | (ShipperCoordinatorConnectionClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.setShipperCoordinatorDefaultDepartmentV1(
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

**request:** `Requests.ShipperCoordinatorConnectionClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.connections.<a href="/Sources/Resources/Orgs/Connections/ConnectionsClient.swift">listShippersForCoordinatorV1</a>(search: String?, page: Int?, pageSize: Int?, filterConnected: Bool?, requestOptions: RequestOptions?) -> ShipperCoordinatorConnectionsForCoordinatorListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the caller's shipper connections with filtering, pagination, and identity search. | authz: allowed_org_types=[provider] | () -> (ShipperCoordinatorConnectionsForCoordinatorListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.listShippersForCoordinatorV1(
        search: "search",
        page: 1,
        pageSize: 1,
        filterConnected: true
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

**search:** `String?` — Search by organization identity details
    
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

**filterConnected:** `Bool?` — Filter by connection status
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs Contacts
<details><summary><code>client.orgs.contacts.<a href="/Sources/Resources/Orgs/Contacts/ContactsClient.swift">accountAddV1</a>(contactId: String, request: Requests.ContactAccountAddReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Associates an account from the contact's organization. | authz: min_org_role=operator | (ContactAccountAddReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.contacts.accountAddV1(
        contactId: "contact_id",
        request: .init(accountId: "account_id")
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

**contactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ContactAccountAddReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.contacts.<a href="/Sources/Resources/Orgs/Contacts/ContactsClient.swift">accountRemoveV1</a>(contactId: String, accountId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes an account association from an organization-created contact. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.contacts.accountRemoveV1(
        contactId: "contact_id",
        accountId: "account_id"
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

**contactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**accountId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.contacts.<a href="/Sources/Resources/Orgs/Contacts/ContactsClient.swift">createV1</a>(request: Requests.ContactClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an organization-created contact. | authz: min_org_role=operator | (ContactClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.contacts.createV1(request: .init(
        name: "name",
        schemaVersion: 1
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

**request:** `Requests.ContactClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.contacts.<a href="/Sources/Resources/Orgs/Contacts/ContactsClient.swift">deleteV1</a>(contactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an organization-created contact. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.contacts.deleteV1(contactId: "contact_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**contactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.contacts.<a href="/Sources/Resources/Orgs/Contacts/ContactsClient.swift">listV1</a>(search: String?, filterOrgId: String?, filterOffChrtOrgDataId: String?, filterAccountId: String?, sortBy: ContactSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> ContactListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists organization-created contacts with associated organizations and accounts expanded. | authz: min_org_role=operator | () -> (ContactListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.contacts.listV1(
        search: "search",
        filterOrgId: "filter_org_id",
        filterOffChrtOrgDataId: "filter_off_chrt_org_data_id",
        filterAccountId: "filter_account_id",
        sortBy: .name,
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

**filterOrgId:** `String?` — Filter by associated on-CHRT organization
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtOrgDataId:** `String?` — Filter by associated off-CHRT organization data
    
</dd>
</dl>

<dl>
<dd>

**filterAccountId:** `String?` — Filter by associated account
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `ContactSortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order
    
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

<details><summary><code>client.orgs.contacts.<a href="/Sources/Resources/Orgs/Contacts/ContactsClient.swift">updateV1</a>(contactId: String, request: Requests.ContactClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an organization-created contact. | authz: min_org_role=operator | (ContactClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.contacts.updateV1(
        contactId: "contact_id",
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

**contactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ContactClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.contacts.<a href="/Sources/Resources/Orgs/Contacts/ContactsClient.swift">getV1</a>(contactId: String, requestOptions: RequestOptions?) -> Contact1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an organization-created contact. | authz: min_org_role=operator | () -> (Contact1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.contacts.getV1(contactId: "contact_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**contactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs OffChrtOrgData
<details><summary><code>client.orgs.offChrtOrgData.<a href="/Sources/Resources/Orgs/OffChrtOrgData/OffChrtOrgDataClient.swift">createV1</a>(request: Requests.CreateOffChrtOrgReq, requestOptions: RequestOptions?) -> CreateOffChrtOrgRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates owner-scoped off-CHRT organization data and, for shippers or providers, its required connection. | authz: allowed_org_types=[provider] | (CreateOffChrtOrgReq) -> (CreateOffChrtOrgRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtOrgData.createV1(request: .init(offChrtOrgData: OffChrtOrgDataClientCreate1(
        name: "name",
        orgType: .provider,
        schemaVersion: 1
    )))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CreateOffChrtOrgReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.offChrtOrgData.<a href="/Sources/Resources/Orgs/OffChrtOrgData/OffChrtOrgDataClient.swift">listV1</a>(search: String?, filterOrgType: OrgTypeEnum?, sortBy: OffChrtOrgDataSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OffChrtOrgDataListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists off-CHRT organization data owned by the caller with optional organization-type filtering, identity search, sorting, and pagination. | authz: allowed_org_types=[provider] | () -> (OffChrtOrgDataListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtOrgData.listV1(
        search: "search",
        filterOrgType: .provider,
        sortBy: .name,
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

**search:** `String?` — Search by name, industry, or email
    
</dd>
</dl>

<dl>
<dd>

**filterOrgType:** `OrgTypeEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `OffChrtOrgDataSortByEnum?` — Field to sort by
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order
    
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

<details><summary><code>client.orgs.offChrtOrgData.<a href="/Sources/Resources/Orgs/OffChrtOrgData/OffChrtOrgDataClient.swift">getByIdV1</a>(offChrtOrgDataId: String, requestOptions: RequestOptions?) -> OffChrtOrgData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets owner-scoped off-CHRT organization data by ID. | authz: allowed_org_types=[provider] | () -> (OffChrtOrgData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtOrgData.getByIdV1(offChrtOrgDataId: "off_chrt_org_data_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**offChrtOrgDataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.offChrtOrgData.<a href="/Sources/Resources/Orgs/OffChrtOrgData/OffChrtOrgDataClient.swift">updateByIdV1</a>(offChrtOrgDataId: String, request: Requests.OffChrtOrgDataClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates canonical identity fields for owner-scoped off-CHRT organization data. | authz: allowed_org_types=[provider] | (OffChrtOrgDataClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.offChrtOrgData.updateByIdV1(
        offChrtOrgDataId: "off_chrt_org_data_id",
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

**offChrtOrgDataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OffChrtOrgDataClientUpdate1` 
    
</dd>
</dl>

<dl>
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

## Orgs PublicData
<details><summary><code>client.orgs.publicData.<a href="/Sources/Resources/Orgs/PublicData/PublicDataClient.swift">getAvatarV1</a>(handle: String, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the organization avatar URL or a placeholder. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.publicData.getAvatarV1(handle: "handle")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**handle:** `String` — Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.publicData.<a href="/Sources/Resources/Orgs/PublicData/PublicDataClient.swift">getByHandleV1</a>(handle: String, requestOptions: RequestOptions?) -> OrgPublicData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves public organization data by handle. | () -> (OrgPublicData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.publicData.getByHandleV1(handle: "handle")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**handle:** `String` — Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    
</dd>
</dl>

<dl>
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

**handle:** `String` — Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

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

<details><summary><code>client.orgs.publicData.<a href="/Sources/Resources/Orgs/PublicData/PublicDataClient.swift">updateV1</a>(request: Requests.UpdateOrgPublicDataReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates public identity data for the caller's organization. | (UpdateOrgPublicDataReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**orgId:** `String` — Must be a string starting with `org_`
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs ComplianceDocuments S3Object
<details><summary><code>client.orgs.complianceDocuments.s3Object.<a href="/Sources/Resources/Orgs/ComplianceDocuments/S3Object/S3ObjectClient.swift">addV1</a>(orgComplianceDocumentId: String, request: Requests.BodyPostOrgComplianceDocumentsS3ObjectAddV1, requestOptions: RequestOptions?) -> OrgComplianceDocumentS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a file to an organization compliance document. Automatic blurhash generation for images. | authz: allowed_org_types=[provider], min_org_role=administrator | (UploadFile) -> (OrgComplianceDocumentS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.complianceDocuments.s3Object.addV1(
        orgComplianceDocumentId: "org_compliance_document_id",
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

**orgComplianceDocumentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BodyPostOrgComplianceDocumentsS3ObjectAddV1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.complianceDocuments.s3Object.<a href="/Sources/Resources/Orgs/ComplianceDocuments/S3Object/S3ObjectClient.swift">deleteV1</a>(orgComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an organization compliance document S3 object and metadata. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.complianceDocuments.s3Object.deleteV1(orgComplianceDocumentS3ObjectMetadataId: "org_compliance_document_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orgComplianceDocumentS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.complianceDocuments.s3Object.<a href="/Sources/Resources/Orgs/ComplianceDocuments/S3Object/S3ObjectClient.swift">getS3ObjectMetadataV1</a>(orgComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> OrgComplianceDocumentS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves metadata for an organization compliance document S3 object. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (OrgComplianceDocumentS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.complianceDocuments.s3Object.getS3ObjectMetadataV1(orgComplianceDocumentS3ObjectMetadataId: "org_compliance_document_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orgComplianceDocumentS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orgs.complianceDocuments.s3Object.<a href="/Sources/Resources/Orgs/ComplianceDocuments/S3Object/S3ObjectClient.swift">getV1</a>(orgComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams an organization compliance document S3 object file from storage. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.complianceDocuments.s3Object.getV1(orgComplianceDocumentS3ObjectMetadataId: "org_compliance_document_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orgComplianceDocumentS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orgs Connections Coordinators
<details><summary><code>client.orgs.connections.coordinators.<a href="/Sources/Resources/Orgs/Connections/Coordinators/CoordinatorsClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [ConnectionTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct connected-coordinator names matching the query, with the matching connection IDs. Shippers see their coordinators; providers see coordinators for which they are executors. | authz: allowed_org_types=[provider, shipper], min_org_role=operator | () -> (list[ConnectionTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.coordinators.typeaheadV1(
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

## Orgs Connections Executors
<details><summary><code>client.orgs.connections.executors.<a href="/Sources/Resources/Orgs/Connections/Executors/ExecutorsClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [ConnectionTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct connected-executor names matching the query, with the matching connection IDs. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[ConnectionTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.executors.typeaheadV1(
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

## Orgs Connections Shippers
<details><summary><code>client.orgs.connections.shippers.<a href="/Sources/Resources/Orgs/Connections/Shippers/ShippersClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [ConnectionTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct connected-shipper names matching the query, with the matching connection IDs. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[ConnectionTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.connections.shippers.typeaheadV1(
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

## Shipping Drivers
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

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">getForCallerV1</a>(requestOptions: RequestOptions?) -> DriverWithActiveTaskGroupIds1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves driver information for the caller within their organization. | () -> (DriverWithActiveTaskGroupIds1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">listV1</a>(sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterAvailableAccordingToDriver: Bool?, filterAvailableAccordingToOperators: Bool?, filterStatus: [DriverStatusEnum]?, requestOptions: RequestOptions?) -> DriverListRes</code></summary>
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
        filterAvailableAccordingToOperators: true,
        filterStatus: [
            .unassigned
        ]
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

**filterStatus:** `[DriverStatusEnum]?` — Filter by driver state (UNASSIGNED / ASSIGNED / IN_PROGRESS)
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">listOrgMembersAndDriversV1</a>(search: String?, filterRole: [OrgRoleEnum]?, filterAvailableAccordingToDriver: Bool?, filterAvailableAccordingToOperators: Bool?, sortBy: OrgMemberSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> OrgMembersAndDriversListRes</code></summary>
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
        filterRole: [
            .owner
        ],
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

**filterRole:** `[OrgRoleEnum]?` — Filter by organization role(s)
    
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

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">createSelfReportedHoursAndMileageV1</a>(request: Requests.DriverSelfReportedHoursAndMileageClientCreate1, requestOptions: RequestOptions?) -> DriverSelfReportedHoursAndMileage1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a driver's self-reported hours worked and miles driven for a single calendar day. Caller must be the driver themselves. | authz: allowed_org_types=[provider], min_org_role=driver | (DriverSelfReportedHoursAndMileageClientCreate1) -> (DriverSelfReportedHoursAndMileage1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.createSelfReportedHoursAndMileageV1(request: .init(
        date: "date",
        driverId: "driver_id",
        schemaVersion: 1
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

**request:** `Requests.DriverSelfReportedHoursAndMileageClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">deleteSelfReportedHoursAndMileageV1</a>(driverId: String, reportDate: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently deletes a driver's self-report for a calendar day. Caller must be the driver themselves. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.deleteSelfReportedHoursAndMileageV1(
        driverId: "driver_id",
        reportDate: "report_date"
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

**reportDate:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">getSelfReportedHoursAndMileageV1</a>(driverId: String, reportDate: String, requestOptions: RequestOptions?) -> DriverSelfReportedHoursAndMileage1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a driver's self-report for a single calendar day. Caller must be the driver themselves or an operator+ in the driver's org. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (DriverSelfReportedHoursAndMileage1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.getSelfReportedHoursAndMileageV1(
        driverId: "driver_id",
        reportDate: "report_date"
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

**reportDate:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">listSelfReportedHoursAndMileageV1</a>(driverId: String, filterStartDate: String?, filterEndDate: String?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> DriverSelfReportedHoursAndMileageListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a driver's self-reports across an optional date range with sorting and pagination. Caller must be the driver themselves or an operator+ in the driver's org. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (DriverSelfReportedHoursAndMileageListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.listSelfReportedHoursAndMileageV1(
        driverId: "driver_id",
        filterStartDate: "filter_start_date",
        filterEndDate: "filter_end_date",
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

**driverId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**filterStartDate:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterEndDate:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` 
    
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

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">orgListSelfReportedHoursAndMileageV1</a>(filterDriverId: String?, filterStartDate: String?, filterEndDate: String?, sortBy: DriversOrgListSelfReportedHoursAndMileageV1RequestSortBy?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> DriverSelfReportedHoursAndMileageListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all drivers' self-reports in the caller's org with date-range filtering, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (DriverSelfReportedHoursAndMileageListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.orgListSelfReportedHoursAndMileageV1(
        filterDriverId: "filter_driver_id",
        filterStartDate: "filter_start_date",
        filterEndDate: "filter_end_date",
        sortBy: .date,
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

**filterDriverId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStartDate:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterEndDate:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**sortBy:** `DriversOrgListSelfReportedHoursAndMileageV1RequestSortBy?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` 
    
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

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">updateSelfReportedHoursAndMileageV1</a>(driverId: String, reportDate: String, request: Requests.DriverSelfReportedHoursAndMileageClientUpdate1, requestOptions: RequestOptions?) -> DriverSelfReportedHoursAndMileage1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Partially updates a driver's self-reported hours worked and/or miles driven for a calendar day. Caller must be the driver themselves. | authz: allowed_org_types=[provider], min_org_role=driver | (DriverSelfReportedHoursAndMileageClientUpdate1) -> (DriverSelfReportedHoursAndMileage1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.updateSelfReportedHoursAndMileageV1(
        driverId: "driver_id",
        reportDate: "report_date",
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

**reportDate:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.DriverSelfReportedHoursAndMileageClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">getStatsV1</a>(driverId: String, request: Requests.DriverStatsReq, requestOptions: RequestOptions?) -> DriverStatsRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves driver analytics for a time window. Daily rows are clipped to the requested UTC window; task-group rows include full in-progress mileage for task groups whose in-progress interval overlaps the requested window. | authz: allowed_org_types=[provider], min_org_role=operator | (DriverStatsReq) -> (DriverStatsRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.getStatsV1(
        driverId: "driver_id",
        request: .init(
            endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**request:** `Requests.DriverStatsReq` 
    
</dd>
</dl>

<dl>
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

<details><summary><code>client.shipping.drivers.<a href="/Sources/Resources/Shipping/Drivers/DriversClient.swift">getByDriverIdV1</a>(driverId: String, requestOptions: RequestOptions?) -> DriverWithActiveTaskGroupIds1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves detailed driver information by driver ID within the organization. | () -> (DriverWithActiveTaskGroupIds1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Shipping Flights
<details><summary><code>client.shipping.flights.<a href="/Sources/Resources/Shipping/Flights/ShippingFlightsClient.swift">getFlightInfoForTaskV1</a>(taskId: String, requestOptions: RequestOptions?) -> FlightInfoForTaskRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns flight info from an adjacent FLIGHT task group for TENDER_TO_AIRLINE or RECOVER_FROM_AIRLINE tasks. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | () -> (FlightInfoForTaskRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.flights.<a href="/Sources/Resources/Shipping/Flights/ShippingFlightsClient.swift">getFlightLegsForTaskGroupV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> FlightInfoForTaskRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the ordered list of flight legs for a task group. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | () -> (FlightInfoForTaskRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.flights.getFlightLegsForTaskGroupV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.flights.<a href="/Sources/Resources/Shipping/Flights/ShippingFlightsClient.swift">getFlightStatusForFlightLegV1</a>(flightLegId: String, requestOptions: RequestOptions?) -> FlightLeg1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the flight leg with its Cirium-sourced status, lazily resolving the Cirium flightId and refreshing the cached status on read. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, order_executor_org_operators, shipper_org_operators] | () -> (FlightLeg1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.flights.getFlightStatusForFlightLegV1(flightLegId: "flight_leg_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**flightLegId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.flights.<a href="/Sources/Resources/Shipping/Flights/ShippingFlightsClient.swift">getFlightTrackForFlightLegV1</a>(flightLegId: String, forceRefresh: Bool?, requestOptions: RequestOptions?) -> FlightTrackRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the raw Cirium positional track for a flight leg; pass force_refresh=true to bypass the cache. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, order_executor_org_operators, shipper_org_operators] | () -> (FlightTrackRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.flights.getFlightTrackForFlightLegV1(
        flightLegId: "flight_leg_id",
        forceRefresh: true
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

**flightLegId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**forceRefresh:** `Bool?` — Bypass the cache and fetch the latest flight track.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderTemplatesNew
<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">postArchiveV1</a>(orderTemplateId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives an order template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.postArchiveV1(orderTemplateId: "order_template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">putReplaceCoreV1</a>(orderTemplateId: String, request: OrderTemplateNewCore1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Atomically replaces an active order template core. | authz: min_org_role=operator | (OrderTemplateNewCore1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.putReplaceCoreV1(
        orderTemplateId: "order_template_id",
        request: OrderTemplateNewCore1(
            schemaVersion: 1
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderTemplateNewCore1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">resolveDateparserV1</a>(request: Requests.OrderTemplateNewDateparserResolveReq, requestOptions: RequestOptions?) -> OrderTemplateNewDateparserResolveRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a natural-language date string and resolves it to a UTC timestamp. | authz: min_org_role=operator | (OrderTemplateNewDateparserResolveReq) -> (OrderTemplateNewDateparserResolveRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.resolveDateparserV1(request: .init(
        dateparserStr: "dateparser_str",
        timeZoneName: "America/New_York"
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

**request:** `Requests.OrderTemplateNewDateparserResolveReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">listV1</a>(sortBy: OrderTemplateNewSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterArchived: Bool?, filterOwnedByUserId: String?, filterExecutorOrgId: String?, filterOffChrtExecutorOrgDataId: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgDataId: String?, filterCoordinatorShipperAccountIds: [String]?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, filterLastUsedAtTimestampGte: Date?, filterLastUsedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> OrderTemplateNewListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists order templates with filtering, sorting, pagination, full-text search, and party/account expansion. | authz: min_org_role=operator | () -> (OrderTemplateNewListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.listV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterArchived: true,
        filterOwnedByUserId: "filter_owned_by_user_id",
        filterExecutorOrgId: "filter_executor_org_id",
        filterOffChrtExecutorOrgDataId: "filter_off_chrt_executor_org_data_id",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
        filterCoordinatorShipperAccountIds: [
            "filter_coordinator_shipper_account_ids"
        ],
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastUsedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastUsedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `OrderTemplateNewSortByEnum?` — Field to sort by.
    
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

**search:** `String?` — Full-text search query for template name or description.
    
</dd>
</dl>

<dl>
<dd>

**filterArchived:** `Bool?` — Include archived templates instead of active templates.
    
</dd>
</dl>

<dl>
<dd>

**filterOwnedByUserId:** `String?` — Filter by the user that created the template.
    
</dd>
</dl>

<dl>
<dd>

**filterExecutorOrgId:** `String?` — Filter by an on-CHRT executor organization ID.
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtExecutorOrgDataId:** `String?` — Filter by an off-CHRT executor organization data ID.
    
</dd>
</dl>

<dl>
<dd>

**filterShipperOrgId:** `String?` — Filter by an on-CHRT shipper organization ID.
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtShipperOrgDataId:** `String?` — Filter by an off-CHRT shipper organization data ID.
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorShipperAccountIds:** `[String]?` — Filter by coordinator shipper account ID(s) assigned to template tasks.
    
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

**filterLastUsedAtTimestampGte:** `Date?` — Filter last_used_at_timestamp >= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**filterLastUsedAtTimestampLte:** `Date?` — Filter last_used_at_timestamp <= value (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">postUnarchiveV1</a>(orderTemplateId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Restores an archived order template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.postUnarchiveV1(orderTemplateId: "order_template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">updateV1</a>(orderTemplateId: String, request: Requests.OrderTemplateNewClientUpdate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an order template owned by the caller's organization. | authz: min_org_role=operator | (OrderTemplateNewClientUpdate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.updateV1(
        orderTemplateId: "order_template_id",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">createV1</a>(request: Requests.OrderTemplateNewClientCreate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an order template owned by the caller's organization. | authz: min_org_role=operator | (OrderTemplateNewClientCreate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.createV1(request: .init(
        name: "name",
        schemaVersion: 1
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

**request:** `Requests.OrderTemplateNewClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">getByIdV1</a>(orderTemplateId: String, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an order template by ID. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.getByIdV1(orderTemplateId: "order_template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/OrderTemplatesNewClient.swift">deleteV1</a>(orderTemplateId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an order template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.deleteV1(orderTemplateId: "order_template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">assignV1</a>(orderId: String, request: Requests.OrdersAssignReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds operator(s) to the caller's assignees on the order. Coordinator writes coordinator_assigned_user_ids; executor writes executor_assigned_user_ids on matching task_group_details. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersAssignReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.assignV1(
        orderId: "order_id",
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

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrdersAssignReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">cancelV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels an order and non-terminal child entities in a transaction. | authz_personas=[task_group_operating_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">cancelManyV1</a>(request: Requests.OrdersCancelManyReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels multiple orders and their non-terminal child entities in a transaction. | authz_personas=[task_group_operating_org_operators] | (OrdersCancelManyReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.cancelManyV1(request: .init(orderIds: [
        "order_ids"
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCancelManyReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">addCoordinatorTaskListToApplyAtOrderStagingV1</a>(orderId: String, taskListId: String, departmentId: String?, request: Date?, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds or updates a coordinator task list to apply when the draft is staged. | authz_personas=[coordinator_org_operators] | (UTCDatetime | None) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.addCoordinatorTaskListToApplyAtOrderStagingV1(
        orderId: "order_id",
        taskListId: "task_list_id",
        departmentId: "department_id",
        request: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**departmentId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">removeCoordinatorTaskListToApplyAtOrderStagingV1</a>(orderId: String, taskListId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a coordinator task list pending application at draft staging. | authz_personas=[coordinator_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.removeCoordinatorTaskListToApplyAtOrderStagingV1(
        orderId: "order_id",
        taskListId: "task_list_id"
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

**taskListId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">deleteDraftV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes a draft order and all dependent entities. | authz_personas=[draft_creator_org_operator] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.deleteDraftV1(orderId: "order_id")
}

try await main()
```
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

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">deleteManyDraftsV1</a>(request: Requests.OrdersDeleteManyDraftsReq, requestOptions: RequestOptions?) -> OrdersDeleteManyDraftsRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Hard-deletes multiple draft orders and all dependent entities. | authz_personas=[draft_creator_org_operator] | (OrdersDeleteManyDraftsReq) -> (OrdersDeleteManyDraftsRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.deleteManyDraftsV1(request: .init(orderIds: [
        "order_ids"
    ]))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersDeleteManyDraftsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">stageV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a draft order and stages all related entities in a transaction. | authz_personas=[draft_creator_org_operator] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">getSuggestedDepartmentV1</a>(orderId: String, requestOptions: RequestOptions?) -> String?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the coordinator's account-level default department for the order's shipper. | authz: min_org_role=operator | () -> (PydanticObjectId | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.getSuggestedDepartmentV1(orderId: "order_id")
}

try await main()
```
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

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">taskGroupOrderingV1</a>(orderId: String, request: Requests.OrdersTaskGroupOrderingReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets task-group ordering on an active order unless a task group or task is completed. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | (OrdersTaskGroupOrderingReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroupOrderingV1(
        orderId: "order_id",
        request: .init(taskGroupIds: [
            "task_group_ids"
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

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrdersTaskGroupOrderingReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">typeaheadLabelV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct label values matching the query for orders where the caller is coordinator (coordinator_label) or executor (task_group_details.executor_label). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[str])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.typeaheadLabelV1(
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

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [OrderTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct order short ID, off-CHRT reference ID, and AWB values matching the query via case-insensitive regex. Searches visible non-draft orders and caller-created draft orders. | authz: allowed_org_types=[provider, shipper], min_org_role=operator | () -> (list[OrderTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.typeaheadV1(
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

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">unassignV1</a>(orderId: String, request: Requests.OrdersUnassignReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes operator(s) from the caller's assignees on the order. Coordinator writes coordinator_assigned_user_ids; executor writes executor_assigned_user_ids on matching task_group_details. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersUnassignReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.unassignV1(
        orderId: "order_id",
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

**orderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrdersUnassignReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">updateDepartmentV1</a>(orderId: String, request: Requests.OrdersUpdateDepartmentReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates department_id for the caller's role on the order. Coordinator writes coordinator_department_id; executor writes executor_department_id on matching task_group_details rows. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersUpdateDepartmentReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.updateDepartmentV1(
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

**request:** `Requests.OrdersUpdateDepartmentReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">updateDraftV1</a>(orderId: String, request: Requests.OrdersUpdateDraftReq, requestOptions: RequestOptions?) -> OrdersUpdateDraftRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates service-line and organization assignments on a draft order. | authz_personas=[draft_creator_org_operator] | (OrdersUpdateDraftReq) -> (OrdersUpdateDraftRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.updateDraftV1(
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

**request:** `Requests.OrdersUpdateDraftReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">updateLabelV1</a>(orderId: String, request: Requests.OrdersUpdateLabelReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates label for the caller's role on the order. Coordinator writes coordinator_label; executor writes executor_label on matching task_group_details rows. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrdersUpdateLabelReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.updateLabelV1(
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

**request:** `Requests.OrdersUpdateLabelReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">updateOffChrtReferenceIdV1</a>(orderId: String, request: Requests.OrdersUpdateOffChrtReferenceIdReq, requestOptions: RequestOptions?) -> OrdersUpdateOffChrtReferenceIdRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates off_chrt_reference_id on an order. Drafts require the creating org's operator; operational orders require the order creator org's operator. | authz_personas=[draft_creator_org_operator, order_creator_org_operators] | (OrdersUpdateOffChrtReferenceIdReq) -> (OrdersUpdateOffChrtReferenceIdRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.orders.<a href="/Sources/Resources/Shipping/Orders/ShippingOrdersClient.swift">validateDraftV1</a>(orderId: String, requestOptions: RequestOptions?) -> OrderDraftValidationResult</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a draft order for staging and returns requirement results. | authz_personas=[draft_creator_org_operator] | () -> (OrderDraftValidationResult)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.validateDraftV1(orderId: "order_id")
}

try await main()
```
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

## Shipping TaskArtifacts
<details><summary><code>client.shipping.taskArtifacts.<a href="/Sources/Resources/Shipping/TaskArtifacts/TaskArtifactsClient.swift">completeV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks a task artifact as COMPLETED. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Marks a task artifact as SKIPPED. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Shipping TaskGroups
<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">addMessageV1</a>(taskGroupId: String, request: Requests.AddMessageReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a message to a task group's message log. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators, shipper_org_operators] | (AddMessageReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.taskGroups.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupsClient.swift">typeaheadV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [TaskGroupTypeaheadResult]</code></summary>
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

    _ = try await client.shipping.taskGroups.typeaheadV1(
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

## Shipping Tasks
<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">attemptV1</a>(taskId: String, request: Requests.AttemptTaskReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks a task as ATTEMPT with an optional executor organization note. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | (AttemptTaskReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.attemptV1(
        taskId: "task_id",
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

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AttemptTaskReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">completeV1</a>(taskId: String, request: Requests.TaskCompleteReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks a task as COMPLETED, optionally recording a client-supplied completion timestamp no more than five minutes in the future. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | (TaskCompleteReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.completeV1(
        taskId: "task_id",
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

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.TaskCompleteReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">updateCompletionTimestampV1</a>(taskId: String, request: Requests.TaskCompletionTimestampUpdateReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Corrects a completed task's completion timestamp. The driver may correct only their own completion; authorized operators may override it. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | (TaskCompletionTimestampUpdateReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.updateCompletionTimestampV1(
        taskId: "task_id",
        request: .init(completedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
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

**request:** `Requests.TaskCompletionTimestampUpdateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">locationFromReferenceV1</a>(taskId: String, request: Requests.TaskLocationFromReferenceReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Overrides a draft or staged task location from a contact or coordinator shipper account and associates the reference. | authz_personas=[draft_creator_org_operator, order_creator_org_operators, task_group_operating_org_operators, coordinator_org_operators] | (TaskLocationFromReferenceReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.locationFromReferenceV1(
        taskId: "task_id",
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

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.TaskLocationFromReferenceReq` 
    
</dd>
</dl>

<dl>
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

Marks a task as SKIPPED. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators] (depending on type) | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">waitTimeEndV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Ends an active wait-time session for a task. | authz_personas=[driver_for_executor, executor_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.waitTimeEndV1(taskId: "task_id")
}

try await main()
```
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

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">waitTimeGeofenceV1</a>(taskId: String, requestOptions: RequestOptions?) -> TaskWaitTimeGeofenceRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Checks whether the assigned driver's available location is inside the task wait-time geofence. | authz_personas=[driver_for_executor, executor_org_operators] | () -> (TaskWaitTimeGeofenceRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.waitTimeGeofenceV1(taskId: "task_id")
}

try await main()
```
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

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">waitTimeOverrideV1</a>(taskId: String, request: Requests.WaitTimeOverrideReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Overrides wait-time timestamps or geofence distance for a task. | authz_personas=[executor_org_operators] | (WaitTimeOverrideReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.waitTimeOverrideV1(
        taskId: "task_id",
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

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.WaitTimeOverrideReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">waitTimeStartV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts wait time for a task and records whether the assigned driver's available location is inside the geofence. | authz_personas=[driver_for_executor, executor_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.waitTimeStartV1(taskId: "task_id")
}

try await main()
```
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

<details><summary><code>client.shipping.tasks.<a href="/Sources/Resources/Shipping/Tasks/TasksClient.swift">waitTimeValidateV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates wait time for a task. | authz_personas=[executor_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.waitTimeValidateV1(taskId: "task_id")
}

try await main()
```
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

## Shipping Drivers ComplianceDocuments
<details><summary><code>client.shipping.drivers.complianceDocuments.<a href="/Sources/Resources/Shipping/Drivers/ComplianceDocuments/DriversComplianceDocumentsClient.swift">createV1</a>(driverId: String, request: Requests.DriverComplianceDocumentClientCreate1, requestOptions: RequestOptions?) -> DriverComplianceDocument1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a compliance document record for a driver in the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=administrator | (DriverComplianceDocumentClientCreate1) -> (DriverComplianceDocument1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.complianceDocuments.createV1(
        driverId: "driver_id",
        request: .init(
            documentType: .driversLicense,
            schemaVersion: 1
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

**request:** `Requests.DriverComplianceDocumentClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.complianceDocuments.<a href="/Sources/Resources/Shipping/Drivers/ComplianceDocuments/DriversComplianceDocumentsClient.swift">listV1</a>(driverId: String, requestOptions: RequestOptions?) -> [DriverComplianceDocument1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists compliance documents for one driver in the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[DriverComplianceDocument1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.complianceDocuments.listV1(driverId: "driver_id")
}

try await main()
```
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

<details><summary><code>client.shipping.drivers.complianceDocuments.<a href="/Sources/Resources/Shipping/Drivers/ComplianceDocuments/DriversComplianceDocumentsClient.swift">updateV1</a>(driverComplianceDocumentId: String, request: Requests.DriverComplianceDocumentClientUpdate1, requestOptions: RequestOptions?) -> DriverComplianceDocument1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a driver compliance document in the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=administrator | (DriverComplianceDocumentClientUpdate1) -> (DriverComplianceDocument1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.complianceDocuments.updateV1(
        driverComplianceDocumentId: "driver_compliance_document_id",
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

**driverComplianceDocumentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.DriverComplianceDocumentClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.complianceDocuments.<a href="/Sources/Resources/Shipping/Drivers/ComplianceDocuments/DriversComplianceDocumentsClient.swift">getV1</a>(driverComplianceDocumentId: String, requestOptions: RequestOptions?) -> DriverComplianceDocument1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves one driver compliance document in the caller's provider organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (DriverComplianceDocument1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.complianceDocuments.getV1(driverComplianceDocumentId: "driver_compliance_document_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**driverComplianceDocumentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Drivers ComplianceDocuments S3Object
<details><summary><code>client.shipping.drivers.complianceDocuments.s3Object.<a href="/Sources/Resources/Shipping/Drivers/ComplianceDocuments/S3Object/ComplianceDocumentsS3ObjectClient.swift">addV1</a>(driverComplianceDocumentId: String, request: Requests.BodyPostDriverComplianceDocumentsS3ObjectAddV1, requestOptions: RequestOptions?) -> DriverComplianceDocumentS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a file to a driver compliance document. Automatic blurhash generation for images. | authz: allowed_org_types=[provider], min_org_role=administrator | (UploadFile) -> (DriverComplianceDocumentS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.complianceDocuments.s3Object.addV1(
        driverComplianceDocumentId: "driver_compliance_document_id",
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

**driverComplianceDocumentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BodyPostDriverComplianceDocumentsS3ObjectAddV1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.complianceDocuments.s3Object.<a href="/Sources/Resources/Shipping/Drivers/ComplianceDocuments/S3Object/ComplianceDocumentsS3ObjectClient.swift">deleteV1</a>(driverComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a driver compliance document S3 object and metadata. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.complianceDocuments.s3Object.deleteV1(driverComplianceDocumentS3ObjectMetadataId: "driver_compliance_document_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**driverComplianceDocumentS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.complianceDocuments.s3Object.<a href="/Sources/Resources/Shipping/Drivers/ComplianceDocuments/S3Object/ComplianceDocumentsS3ObjectClient.swift">getS3ObjectMetadataV1</a>(driverComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> DriverComplianceDocumentS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves metadata for a driver compliance document S3 object. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (DriverComplianceDocumentS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.complianceDocuments.s3Object.getS3ObjectMetadataV1(driverComplianceDocumentS3ObjectMetadataId: "driver_compliance_document_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**driverComplianceDocumentS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.drivers.complianceDocuments.s3Object.<a href="/Sources/Resources/Shipping/Drivers/ComplianceDocuments/S3Object/ComplianceDocumentsS3ObjectClient.swift">getV1</a>(driverComplianceDocumentS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams a driver compliance document S3 object file from storage. | authz: allowed_org_types=[provider], min_org_role=administrator | () -> (binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.drivers.complianceDocuments.s3Object.getV1(driverComplianceDocumentS3ObjectMetadataId: "driver_compliance_document_s3_object_metadata_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**driverComplianceDocumentS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderTemplatesNew Cargos
<details><summary><code>client.shipping.orderTemplatesNew.cargos.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Cargos/CargosClient.swift">postDuplicateV1</a>(orderTemplateId: String, cargoKey: String, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Duplicates cargo and its task associations in an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.cargos.postDuplicateV1(
        orderTemplateId: "order_template_id",
        cargoKey: "cargo_key"
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cargoKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.cargos.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Cargos/CargosClient.swift">putReorderV1</a>(orderTemplateId: String, request: Requests.OrderTemplateNewCargoReorderReq1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reorders cargo in an active order template. | authz: min_org_role=operator | (OrderTemplateNewCargoReorderReq1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.cargos.putReorderV1(
        orderTemplateId: "order_template_id",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewCargoReorderReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.cargos.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Cargos/CargosClient.swift">postCreateV1</a>(orderTemplateId: String, request: Requests.OrderTemplateNewCargoClientCreate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds cargo to an active order template. | authz: min_org_role=operator | (OrderTemplateNewCargoClientCreate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.cargos.postCreateV1(
        orderTemplateId: "order_template_id",
        request: .init(cargoType: .spareParts)
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewCargoClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.cargos.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Cargos/CargosClient.swift">deleteV1</a>(orderTemplateId: String, cargoKey: String, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes cargo and its task associations from an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.cargos.deleteV1(
        orderTemplateId: "order_template_id",
        cargoKey: "cargo_key"
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cargoKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.cargos.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Cargos/CargosClient.swift">patchUpdateV1</a>(orderTemplateId: String, cargoKey: String, request: Requests.OrderTemplateNewCargoClientUpdate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates cargo in an active order template. | authz: min_org_role=operator | (OrderTemplateNewCargoClientUpdate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.cargos.patchUpdateV1(
        orderTemplateId: "order_template_id",
        cargoKey: "cargo_key",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cargoKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewCargoClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderTemplatesNew TaskArtifacts
<details><summary><code>client.shipping.orderTemplatesNew.taskArtifacts.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskArtifacts/OrderTemplatesNewTaskArtifactsClient.swift">putMoveV1</a>(orderTemplateId: String, taskArtifactKey: String, request: Requests.OrderTemplateNewTaskArtifactMoveReq1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Moves a task artifact to the end of another task. | authz: min_org_role=operator | (OrderTemplateNewTaskArtifactMoveReq1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskArtifacts.putMoveV1(
        orderTemplateId: "order_template_id",
        taskArtifactKey: "task_artifact_key",
        request: .init(targetTaskKey: "target_task_key")
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskArtifactKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskArtifactMoveReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.taskArtifacts.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskArtifacts/OrderTemplatesNewTaskArtifactsClient.swift">putReorderV1</a>(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskArtifactReorderReq1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reorders artifacts within one task. | authz: min_org_role=operator | (OrderTemplateNewTaskArtifactReorderReq1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskArtifacts.putReorderV1(
        orderTemplateId: "order_template_id",
        taskKey: "task_key",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskArtifactReorderReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.taskArtifacts.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskArtifacts/OrderTemplatesNewTaskArtifactsClient.swift">deleteV1</a>(orderTemplateId: String, taskArtifactKey: String, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task artifact from an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskArtifacts.deleteV1(
        orderTemplateId: "order_template_id",
        taskArtifactKey: "task_artifact_key"
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskArtifactKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.taskArtifacts.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskArtifacts/OrderTemplatesNewTaskArtifactsClient.swift">patchUpdateV1</a>(orderTemplateId: String, taskArtifactKey: String, request: Requests.OrderTemplateNewTaskArtifactClientUpdate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a task artifact in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskArtifactClientUpdate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskArtifacts.patchUpdateV1(
        orderTemplateId: "order_template_id",
        taskArtifactKey: "task_artifact_key",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskArtifactKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskArtifactClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.taskArtifacts.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskArtifacts/OrderTemplatesNewTaskArtifactsClient.swift">postCreateV1</a>(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskArtifactClientCreate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds an artifact to a task in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskArtifactClientCreate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskArtifacts.postCreateV1(
        orderTemplateId: "order_template_id",
        taskKey: "task_key",
        request: .init(type: .image)
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskArtifactClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderTemplatesNew TaskGroups
<details><summary><code>client.shipping.orderTemplatesNew.taskGroups.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskGroups/OrderTemplatesNewTaskGroupsClient.swift">putReorderV1</a>(orderTemplateId: String, request: Requests.OrderTemplateNewTaskGroupReorderReq1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reorders task groups in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskGroupReorderReq1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskGroups.putReorderV1(
        orderTemplateId: "order_template_id",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskGroupReorderReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.taskGroups.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskGroups/OrderTemplatesNewTaskGroupsClient.swift">postCreateV1</a>(orderTemplateId: String, request: Requests.OrderTemplateNewTaskGroupClientCreate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a task group to an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskGroupClientCreate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskGroups.postCreateV1(
        orderTemplateId: "order_template_id",
        request: .init(taskGroupType: .chrtGroundProvider)
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskGroupClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.taskGroups.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskGroups/OrderTemplatesNewTaskGroupsClient.swift">deleteV1</a>(orderTemplateId: String, taskGroupKey: String, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task group and its embedded tasks from an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskGroups.deleteV1(
        orderTemplateId: "order_template_id",
        taskGroupKey: "task_group_key"
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.taskGroups.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/TaskGroups/OrderTemplatesNewTaskGroupsClient.swift">patchUpdateV1</a>(orderTemplateId: String, taskGroupKey: String, request: Requests.OrderTemplateNewTaskGroupClientUpdate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a task group in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskGroupClientUpdate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.taskGroups.patchUpdateV1(
        orderTemplateId: "order_template_id",
        taskGroupKey: "task_group_key",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskGroupClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping OrderTemplatesNew Tasks
<details><summary><code>client.shipping.orderTemplatesNew.tasks.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Tasks/OrderTemplatesNewTasksClient.swift">putCargoAssociationsV1</a>(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskCargoAssociationsReq1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces a task's cargo associations. | authz: min_org_role=operator | (OrderTemplateNewTaskCargoAssociationsReq1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.tasks.putCargoAssociationsV1(
        orderTemplateId: "order_template_id",
        taskKey: "task_key",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskCargoAssociationsReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.tasks.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Tasks/OrderTemplatesNewTasksClient.swift">putMoveV1</a>(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskMoveReq1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Moves a task to the end of another task group. | authz: min_org_role=operator | (OrderTemplateNewTaskMoveReq1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.tasks.putMoveV1(
        orderTemplateId: "order_template_id",
        taskKey: "task_key",
        request: .init(targetTaskGroupKey: "target_task_group_key")
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskMoveReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.tasks.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Tasks/OrderTemplatesNewTasksClient.swift">putReorderV1</a>(orderTemplateId: String, taskGroupKey: String, request: Requests.OrderTemplateNewTaskReorderReq1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reorders tasks within one task group. | authz: min_org_role=operator | (OrderTemplateNewTaskReorderReq1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.tasks.putReorderV1(
        orderTemplateId: "order_template_id",
        taskGroupKey: "task_group_key",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskReorderReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.tasks.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Tasks/OrderTemplatesNewTasksClient.swift">postCreateV1</a>(orderTemplateId: String, taskGroupKey: String, request: Requests.OrderTemplateNewTaskClientCreate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a task to a task group in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskClientCreate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.tasks.postCreateV1(
        orderTemplateId: "order_template_id",
        taskGroupKey: "task_group_key",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskGroupKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.tasks.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Tasks/OrderTemplatesNewTasksClient.swift">deleteV1</a>(orderTemplateId: String, taskKey: String, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task and its embedded artifacts from an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.tasks.deleteV1(
        orderTemplateId: "order_template_id",
        taskKey: "task_key"
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orderTemplatesNew.tasks.<a href="/Sources/Resources/Shipping/OrderTemplatesNew/Tasks/OrderTemplatesNewTasksClient.swift">patchUpdateV1</a>(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskClientUpdate1, requestOptions: RequestOptions?) -> OrderTemplateNew1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a task in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskClientUpdate1) -> (OrderTemplateNew1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orderTemplatesNew.tasks.patchUpdateV1(
        orderTemplateId: "order_template_id",
        taskKey: "task_key",
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

**orderTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**taskKey:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderTemplateNewTaskClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Orders Cargo
<details><summary><code>client.shipping.orders.cargo.<a href="/Sources/Resources/Shipping/Orders/Cargo/CargoClient.swift">addV1</a>(request: Requests.OrdersAddCargoReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds cargo to an order with lifecycle-specific authorization and initial status. | (OrdersAddCargoReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.cargo.addV1(request: .init(
        cargo: CargoClientCreate1(
            cargoType: .spareParts,
            schemaVersion: 1
        ),
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

**request:** `Requests.OrdersAddCargoReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.cargo.<a href="/Sources/Resources/Shipping/Orders/Cargo/CargoClient.swift">associateWithTaskV1</a>(request: Requests.OrdersAssociateCargoWithTaskReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Associates cargo with an order task and updates operational cargo status when applicable. | (OrdersAssociateCargoWithTaskReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.cargo.associateWithTaskV1(request: .init(
        cargoId: "cargo_id",
        orderId: "order_id",
        taskId: "task_id"
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

**request:** `Requests.OrdersAssociateCargoWithTaskReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.cargo.<a href="/Sources/Resources/Shipping/Orders/Cargo/CargoClient.swift">deleteV1</a>(cargoId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes active cargo without completed task associations and resynchronizes the order AWB cache. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.cargo.deleteV1(cargoId: "cargo_id")
}

try await main()
```
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

<details><summary><code>client.shipping.orders.cargo.<a href="/Sources/Resources/Shipping/Orders/Cargo/CargoClient.swift">duplicateV1</a>(cargoId: String, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Duplicates cargo and all of its task associations within an order. | () -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.cargo.duplicateV1(cargoId: "cargo_id")
}

try await main()
```
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

<details><summary><code>client.shipping.orders.cargo.<a href="/Sources/Resources/Shipping/Orders/Cargo/CargoClient.swift">unassociateWithTaskV1</a>(request: Requests.OrdersUnassociateCargoWithTaskReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes cargo from an order task and updates operational cargo status when applicable. | (OrdersUnassociateCargoWithTaskReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.cargo.unassociateWithTaskV1(request: .init(
        cargoId: "cargo_id",
        orderId: "order_id",
        taskId: "task_id"
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

**request:** `Requests.OrdersUnassociateCargoWithTaskReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.cargo.<a href="/Sources/Resources/Shipping/Orders/Cargo/CargoClient.swift">updateV1</a>(cargoId: String, request: Requests.CargoClientUpdate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates cargo details and synchronizes the parent order's AWB list. | (CargoClientUpdate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.cargo.updateV1(
        cargoId: "cargo_id",
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

**cargoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CargoClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Orders Drafts
<details><summary><code>client.shipping.orders.drafts.<a href="/Sources/Resources/Shipping/Orders/Drafts/DraftsClient.swift">createFromOrderTemplateNewV1</a>(request: Requests.OrdersCreateDraftFromOrderTemplateNewReq, requestOptions: RequestOptions?) -> OrdersOpenDraftRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a draft Order through one of three paths: (1) provide only order_template_new_id to load the saved template's core and record that template as the Order's provenance; (2) provide only order_template_new_core to materialize an ad hoc submitted core without template provenance; (3) provide both to record and validate the saved template as provenance while materializing the submitted core, without modifying the saved template. | authz: min_org_role=operator | (OrdersCreateDraftFromOrderTemplateNewReq) -> (OrdersOpenDraftRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.drafts.createFromOrderTemplateNewV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersCreateDraftFromOrderTemplateNewReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.drafts.<a href="/Sources/Resources/Shipping/Orders/Drafts/DraftsClient.swift">openV1</a>(request: Requests.OrdersOpenDraftReq, requestOptions: RequestOptions?) -> OrdersOpenDraftRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opens a new draft order shell with org assignments based on caller's organization type. | authz: min_org_role=operator | (OrdersOpenDraftReq) -> (OrdersOpenDraftRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.drafts.openV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrdersOpenDraftReq` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/ExpandedClient.swift">forProviderOperatorsV1</a>(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderExpandedForProvider</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded order for a provider org that is the coordinator, an executor, or both. Executor-only callers receive only their task groups. Drafts are visible only to operators in the creating provider org; coordinator responses include unassigned_cargos when expand_cargos is requested. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpandedForProvider)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.forProviderOperatorsV1(
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

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/ExpandedClient.swift">forShipperOperatorsV1</a>(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderExpandedForShipper</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded order with optional related data for shipper operators. Drafts are visible only to operators in the creating shipper org; when expand_cargos is requested, the response includes unassigned_cargos. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpandedForShipper)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/ExpandedClient.swift">listForProviderOperatorsV1</a>(providerRole: OrderProviderRoleFilterEnum?, sortBy: OrderSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: [OrderStatusEnum1]?, filterServiceLine: [ServiceLineEnum]?, filterOrderClassificationByTaskGroupType: [TaskGroupTypeEnum1]?, filterAwbNumber: String?, filterHasInvoice: Bool?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterCancelledAtTimestampLte: Date?, filterCancelledAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterExecutorOrgId: String?, filterOffChrtExecutorOrgDataId: String?, filterCoordinatorOrgId: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgDataId: String?, filterCoordinatorShipperAccountIds: [String]?, filterCoordinatorDepartmentId: String?, filterCoordinatorAssignedUserIds: [String]?, filterCoordinatorLabel: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrdersExpandedListForProviderRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded orders where the caller's provider org is the coordinator, an executor, or both. Each order appears once with role-filtered task-group details. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListForProviderRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.expanded.listForProviderOperatorsV1(
        providerRole: .all,
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterStatus: [
            .draft
        ],
        filterServiceLine: [
            .onDemand
        ],
        filterOrderClassificationByTaskGroupType: [
            .chrtGroundProvider
        ],
        filterAwbNumber: "filter_awb_number",
        filterHasInvoice: true,
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExecutorOrgId: "filter_executor_org_id",
        filterOffChrtExecutorOrgDataId: "filter_off_chrt_executor_org_data_id",
        filterCoordinatorOrgId: "filter_coordinator_org_id",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
        filterCoordinatorShipperAccountIds: [
            "filter_coordinator_shipper_account_ids"
        ],
        filterCoordinatorDepartmentId: "filter_coordinator_department_id",
        filterCoordinatorAssignedUserIds: [
            "filter_coordinator_assigned_user_ids"
        ],
        filterCoordinatorLabel: "filter_coordinator_label",
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

**providerRole:** `OrderProviderRoleFilterEnum?` 
    
</dd>
</dl>

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

**search:** `String?` — Full-text search query (searches order short ID, off-CHRT reference ID, and AWB)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[OrderStatusEnum1]?` 
    
</dd>
</dl>

<dl>
<dd>

**filterServiceLine:** `[ServiceLineEnum]?` — Filter by service line
    
</dd>
</dl>

<dl>
<dd>

**filterOrderClassificationByTaskGroupType:** `[TaskGroupTypeEnum1]?` — Filter by global order classification (OBC takes precedence over flight, then ground)
    
</dd>
</dl>

<dl>
<dd>

**filterAwbNumber:** `String?` — Filter by exact AWB number
    
</dd>
</dl>

<dl>
<dd>

**filterHasInvoice:** `Bool?` — Filter by whether the order has any invoice
    
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

**filterCancelledAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCancelledAtTimestampGte:** `Date?` 
    
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

**filterExecutorOrgId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOffChrtExecutorOrgDataId:** `String?` — Filter by off-CHRT executor org data ID
    
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

**filterOffChrtShipperOrgDataId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorShipperAccountIds:** `[String]?` — Filter by coordinator shipper account IDs
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorDepartmentId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorAssignedUserIds:** `[String]?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCoordinatorLabel:** `String?` 
    
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

<details><summary><code>client.shipping.orders.expanded.<a href="/Sources/Resources/Shipping/Orders/Expanded/ExpandedClient.swift">listForShipperOperatorsV1</a>(sortBy: OrderSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: [OrderStatusEnum1]?, filterServiceLine: [ServiceLineEnum]?, filterOrderClassificationByTaskGroupType: [TaskGroupTypeEnum1]?, filterAwbNumber: String?, filterHasInvoice: Bool?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterCancelledAtTimestampLte: Date?, filterCancelledAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterExecutorOrgId: String?, filterCoordinatorOrgId: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrdersExpandedListForShipperRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded orders for shipper operators with filtering, sorting, pagination, and optional search. | authz: allowed_org_types=[shipper], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListForShipperRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        filterStatus: [
            .draft
        ],
        filterServiceLine: [
            .onDemand
        ],
        filterOrderClassificationByTaskGroupType: [
            .chrtGroundProvider
        ],
        filterAwbNumber: "filter_awb_number",
        filterHasInvoice: true,
        filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExecutorOrgId: "filter_executor_org_id",
        filterCoordinatorOrgId: "filter_coordinator_org_id",
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

**search:** `String?` — Full-text search query (searches order short ID, off-CHRT reference ID, and AWB)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[OrderStatusEnum1]?` 
    
</dd>
</dl>

<dl>
<dd>

**filterServiceLine:** `[ServiceLineEnum]?` — Filter by service line
    
</dd>
</dl>

<dl>
<dd>

**filterOrderClassificationByTaskGroupType:** `[TaskGroupTypeEnum1]?` — Filter by global order classification (OBC takes precedence over flight, then ground)
    
</dd>
</dl>

<dl>
<dd>

**filterAwbNumber:** `String?` — Filter by exact AWB number
    
</dd>
</dl>

<dl>
<dd>

**filterHasInvoice:** `Bool?` — Filter by whether the order has any invoice
    
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

**filterCancelledAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCancelledAtTimestampGte:** `Date?` 
    
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

## Shipping Orders Task
<details><summary><code>client.shipping.orders.task.<a href="/Sources/Resources/Shipping/Orders/Task/TaskClient.swift">addV1</a>(request: Requests.OrdersAddTaskReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a task to an order task group. Draft tasks default to append and DRAFT status; operational tasks require an index and STAGED or COMPLETED status. | (OrdersAddTaskReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.task.addV1(request: .init(
        task: TaskClientCreate1(
            schemaVersion: 1
        ),
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

**request:** `Requests.OrdersAddTaskReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.task.<a href="/Sources/Resources/Shipping/Orders/Task/TaskClient.swift">deleteV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task, recalculates task-group mileage, and rejects operational deletion while artifacts remain. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.task.deleteV1(taskId: "task_id")
}

try await main()
```
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

<details><summary><code>client.shipping.orders.task.<a href="/Sources/Resources/Shipping/Orders/Task/TaskClient.swift">updateV1</a>(taskId: String, request: Requests.TaskClientUpdate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates task details with lifecycle-specific authorization and synchronizes task-group mileage and order account references. | (TaskClientUpdate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.task.updateV1(
        taskId: "task_id",
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

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.TaskClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Orders TaskArtifact
<details><summary><code>client.shipping.orders.taskArtifact.<a href="/Sources/Resources/Shipping/Orders/TaskArtifact/TaskArtifactClient.swift">addV1</a>(taskId: String, request: Requests.OrdersAddTaskArtifactReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a task artifact to an order task. Draft orders require draft_creator_org_operator and create DRAFT artifacts; operational orders require driver_for_executor, executor_org_operators, or coordinator_org_operators and create STAGED or COMPLETED artifacts. | authz_personas=[draft_creator_org_operator, driver_for_executor, executor_org_operators, coordinator_org_operators] | (OrdersAddTaskArtifactReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskArtifact.addV1(
        taskId: "task_id",
        request: .init(taskArtifact: TaskArtifactClientCreate1(
            schemaVersion: 1,
            type: .image
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

**taskId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrdersAddTaskArtifactReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.taskArtifact.<a href="/Sources/Resources/Shipping/Orders/TaskArtifact/TaskArtifactClient.swift">deleteV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task artifact and removes it from its task. Artifacts with S3 objects must have those objects deleted first. Draft orders require draft_creator_org_operator; operational orders require task_group_operating_org_operators. | authz_personas=[draft_creator_org_operator, task_group_operating_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskArtifact.deleteV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
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

## Shipping Orders TaskGroup
<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">addV1</a>(request: Requests.OrdersAddTaskGroupReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a task group to a non-terminal order. Groups added to DRAFT orders are DRAFT; groups added to STAGED or IN_PROGRESS orders are STAGED. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | (OrdersAddTaskGroupReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.addV1(request: .init(
        orderId: "order_id",
        taskGroupType: .chrtGroundProvider
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

**request:** `Requests.OrdersAddTaskGroupReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">addExecutorV1</a>(taskGroupId: String, request: Requests.OrdersAddTaskGroupExecutorReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Assigns an on-platform or off-platform executor organization to an order task group. DRAFT task groups require task_group_coordinator_operators; operational task groups require coordinator_org_operators and STAGED or IN_PROGRESS status. | authz_personas=[task_group_coordinator_operators, coordinator_org_operators] | (OrdersAddTaskGroupExecutorReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.addExecutorV1(
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

**request:** `Requests.OrdersAddTaskGroupExecutorReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">deleteV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task group from an active order and synchronizes affected order, driver, cargo, and account state. | authz_personas=[draft_creator_org_operator, coordinator_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.deleteV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">removeDriverV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Clears the driver from an order task group. DRAFT task groups require executor_org_operators; operational task groups require executor_org_operators or driver_for_executor and STAGED or IN_PROGRESS status. | authz_personas=[executor_org_operators, driver_for_executor] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.removeDriverV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">removeExecutorV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Clears the executor and assigned driver from an order task group. DRAFT task groups require task_group_coordinator_operators; operational task groups require coordinator_org_operators and STAGED or IN_PROGRESS status. | authz_personas=[task_group_coordinator_operators, coordinator_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.removeExecutorV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">setFlightInfoV1</a>(taskGroupId: String, request: Requests.OrdersSetTaskGroupFlightInfoReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the ordered flight legs on an order task group. | (OrdersSetTaskGroupFlightInfoReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.setFlightInfoV1(
        taskGroupId: "task_group_id",
        request: .init(flightLegs: [
            FlightLegClientCreate1(
                carrierIata: "carrier_iata",
                destinationIata: "destination_iata",
                flightNumber: "flight_number",
                originIata: "origin_iata",
                provenance: .manual,
                scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1
            )
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

**request:** `Requests.OrdersSetTaskGroupFlightInfoReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">setTaskOrderingV1</a>(taskGroupId: String, request: Requests.OrdersSetTaskGroupTaskOrderingReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the ordering of tasks within an order task group and recalculates estimated mileage. DRAFT orders require draft_creator_org_operator; operational orders require task_group_operating_org_operators and a STAGED or IN_PROGRESS task group. | authz_personas=[draft_creator_org_operator, task_group_operating_org_operators] | (OrdersSetTaskGroupTaskOrderingReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.setTaskOrderingV1(
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

**request:** `Requests.OrdersSetTaskGroupTaskOrderingReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">setVehicleTypeV1</a>(taskGroupId: String, request: Requests.OrdersSetTaskGroupVehicleTypeReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the vehicle type until the task group reaches a terminal status. | authz_personas=[draft_creator_org_operator, task_group_coordinator_operators] | (OrdersSetTaskGroupVehicleTypeReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.setVehicleTypeV1(
        taskGroupId: "task_group_id",
        request: .init(vehicleType: .sedan)
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

**request:** `Requests.OrdersSetTaskGroupVehicleTypeReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.orders.taskGroup.<a href="/Sources/Resources/Shipping/Orders/TaskGroup/TaskGroupClient.swift">updateDriverV1</a>(taskGroupId: String, request: Requests.OrdersUpdateTaskGroupDriverReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Assigns or swaps the driver on an order task group. The driver must belong to the task group's executor organization and permit direct assignment. | authz_personas=[executor_org_operators] | (OrdersUpdateTaskGroupDriverReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.taskGroup.updateDriverV1(
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

**request:** `Requests.OrdersUpdateTaskGroupDriverReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Orders Utils
<details><summary><code>client.shipping.orders.utils.<a href="/Sources/Resources/Shipping/Orders/Utils/OrdersUtilsClient.swift">imageToTextV1</a>(request: Requests.BodyPostShippingOrdersUtilsImageToTextV1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Converts a shipping-order screenshot into lightly structured text. | authz: min_org_role=operator | (UploadFile) -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.orders.utils.imageToTextV1(request: .init(file: .init(data: Data("".utf8))))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.BodyPostShippingOrdersUtilsImageToTextV1` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/TaskArtifactsS3ObjectClient.swift">addV1</a>(taskArtifactId: String, request: Requests.BodyPostTaskArtifactsS3ObjectAddV1, requestOptions: RequestOptions?) -> TaskArtifactS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a file (image, PDF, etc.) to a task artifact. Automatic blurhash generation for images. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | (UploadFile) -> (TaskArtifactS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**request:** `Requests.BodyPostTaskArtifactsS3ObjectAddV1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/TaskArtifactsS3ObjectClient.swift">writeAiImageDescriptionV1</a>(taskArtifactS3ObjectMetadataId: String, request: AiImageDescription, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Writes the AI-generated image description onto an existing TaskArtifactS3ObjectMetadata. Called by the shipping_task_image_analysis Temporal workflow via a delegation JWT. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | (AIImageDescription) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.s3Object.writeAiImageDescriptionV1(
        taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id",
        request: AiImageDescription(
            cargoIdentityAssessment: "cargo_identity_assessment",
            completionEvidence: "completion_evidence",
            disputeDefensibility: "dispute_defensibility",
            locationDescription: "location_description",
            locationIdentifiers: [
                "location_identifiers"
            ],
            model: StoredModel.model(
                .gpt56Terra
            ),
            packageAppearance: "package_appearance",
            packageTypes: [
                "package_types"
            ],
            proofNotes: [
                "proof_notes"
            ],
            readablePackageText: [
                "readable_package_text"
            ],
            summary: "summary"
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

**taskArtifactS3ObjectMetadataId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `AiImageDescription` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/TaskArtifactsS3ObjectClient.swift">deleteV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/TaskArtifactsS3ObjectClient.swift">getS3ObjectMetadataV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> TaskArtifactS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the metadata for a task artifact S3 object, including blurhash for placeholder loading. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | () -> (TaskArtifactS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.shipping.taskArtifacts.s3Object.<a href="/Sources/Resources/Shipping/TaskArtifacts/S3Object/TaskArtifactsS3ObjectClient.swift">getV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams a task artifact S3 object file from storage. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | () -> (binary)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Shipping TaskArtifacts Scan
<details><summary><code>client.shipping.taskArtifacts.scan.<a href="/Sources/Resources/Shipping/TaskArtifacts/Scan/ScanClient.swift">addV1</a>(taskArtifactId: String, request: Requests.AddScanPayloadReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Appends a barcode/QR scan payload to a SCAN-type task artifact's expected or observed array (deduplicated). | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | (AddScanPayloadReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.scan.addV1(
        taskArtifactId: "task_artifact_id",
        request: .init(
            kind: .expected,
            payload: "payload"
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

**taskArtifactId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AddScanPayloadReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipping.taskArtifacts.scan.<a href="/Sources/Resources/Shipping/TaskArtifacts/Scan/ScanClient.swift">deleteV1</a>(taskArtifactId: String, kind: ScanPayloadKindEnum, payload: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a barcode/QR scan payload (by value) from a SCAN-type task artifact's expected or observed array. | authz_personas=[driver_for_executor, coordinator_org_operators, executor_org_operators, shipper_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskArtifacts.scan.deleteV1(
        taskArtifactId: "task_artifact_id",
        kind: .expected,
        payload: "payload"
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

**kind:** `ScanPayloadKindEnum` 
    
</dd>
</dl>

<dl>
<dd>

**payload:** `String` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forDriverV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group with optional related data for its assigned driver. | authz_personas=[driver_for_executor] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forDriverV1(
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

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forProviderOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an expanded task group when the caller's provider org is its coordinator, executor, or both. Coordinator-only callers receive empty executor_org_notes; executor-only callers receive empty coordinator_shipper_account_ids. Executor notes are limited to the caller's org. | authz_personas=[coordinator_org_operators, executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpanded)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.forProviderOperatorsV1(
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

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">listForDriverV1</a>(sortBy: TaskGroupSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: [TaskGroupStatusEnum1]?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterSkippedAtTimestampLte: Date?, filterSkippedAtTimestampGte: Date?, filterCancelledAtTimestampLte: Date?, filterCancelledAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterCoordinatorOrgId: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgDataId: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpandedListRes</code></summary>
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

    _ = try await client.shipping.taskGroups.expanded.listForDriverV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterStatus: [
            .draft
        ],
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
        filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCoordinatorOrgId: "filter_coordinator_org_id",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
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

**search:** `String?` — Full-text search query (searches order_short_id, order_off_chrt_reference_id)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[TaskGroupStatusEnum1]?` 
    
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

**filterCancelledAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCancelledAtTimestampGte:** `Date?` 
    
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

**filterOffChrtShipperOrgDataId:** `String?` 
    
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

<details><summary><code>client.shipping.taskGroups.expanded.<a href="/Sources/Resources/Shipping/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">listForProviderOperatorsV1</a>(providerRole: TaskGroupProviderRoleFilterEnum?, sortBy: TaskGroupSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, filterStatus: [TaskGroupStatusEnum1]?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterSkippedAtTimestampLte: Date?, filterSkippedAtTimestampGte: Date?, filterCancelledAtTimestampLte: Date?, filterCancelledAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterDriverId: String?, filterCoordinatorOrgId: String?, filterShipperOrgId: String?, filterOffChrtShipperOrgDataId: String?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded task groups where the caller's provider org is the coordinator, executor, or both. Filtering, sorting, pagination, optional full-text search. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.expanded.listForProviderOperatorsV1(
        providerRole: .all,
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        search: "search",
        filterStatus: [
            .draft
        ],
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
        filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDriverId: "filter_driver_id",
        filterCoordinatorOrgId: "filter_coordinator_org_id",
        filterShipperOrgId: "filter_shipper_org_id",
        filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
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

**providerRole:** `TaskGroupProviderRoleFilterEnum?` 
    
</dd>
</dl>

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

**search:** `String?` — Full-text search query (searches order_short_id, order_off_chrt_reference_id)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[TaskGroupStatusEnum1]?` 
    
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

**filterCancelledAtTimestampLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCancelledAtTimestampGte:** `Date?` 
    
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

**filterOffChrtShipperOrgDataId:** `String?` 
    
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

## Shipping TaskGroups S3Object
<details><summary><code>client.shipping.taskGroups.s3Object.<a href="/Sources/Resources/Shipping/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">addV1</a>(taskGroupId: String, request: Requests.BodyPostTaskGroupsS3ObjectAddV1, requestOptions: RequestOptions?) -> TaskGroupS3ObjectMetadata1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a file (image, PDF, etc.) to a task group. Automatic blurhash generation for images. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators, shipper_org_operators] | (UploadFile) -> (TaskGroupS3ObjectMetadata1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**request:** `Requests.BodyPostTaskGroupsS3ObjectAddV1` 
    
</dd>
</dl>

<dl>
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

## Shipping TaskGroups TaskGroupId
<details><summary><code>client.shipping.taskGroups.taskGroupId.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupId/TaskGroupIdClient.swift">forDriverV1</a>(orderRef: String, requestOptions: RequestOptions?) -> [String]</code></summary>
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

    _ = try await client.shipping.taskGroups.taskGroupId.forDriverV1(orderRef: "order_ref")
}

try await main()
```
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

<details><summary><code>client.shipping.taskGroups.taskGroupId.<a href="/Sources/Resources/Shipping/TaskGroups/TaskGroupId/TaskGroupIdClient.swift">forProviderOperatorsV1</a>(orderRef: String, providerRole: TaskGroupProviderRoleFilterEnum?, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves task group IDs where the caller's provider org is the coordinator, executor, or both. | authz_personas=[coordinator_org_operators, executor_org_operators] | () -> (list[PydanticObjectId])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.taskGroups.taskGroupId.forProviderOperatorsV1(
        orderRef: "order_ref",
        providerRole: .all
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

**providerRole:** `TaskGroupProviderRoleFilterEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipping Tasks ExecutorOrgNotes
<details><summary><code>client.shipping.tasks.executorOrgNotes.<a href="/Sources/Resources/Shipping/Tasks/ExecutorOrgNotes/ExecutorOrgNotesClient.swift">addV1</a>(taskId: String, request: Requests.AddExecutorOrgNoteReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds an executor-side note to a task. | authz_personas=[driver_for_executor, executor_org_operators] | (AddExecutorOrgNoteReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipping.tasks.executorOrgNotes.addV1(
        taskId: "task_id",
        request: .init(note: "note")
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

**request:** `Requests.AddExecutorOrgNoteReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ShippingIntegrations Connections
<details><summary><code>client.shippingIntegrations.connections.<a href="/Sources/Resources/ShippingIntegrations/Connections/ShippingIntegrationsConnectionsClient.swift">listV1</a>(requestOptions: RequestOptions?) -> ShippingIntegrationConnectionListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists every provider the caller's organization has credentials for, across all shipping integrations. | () -> (ShippingIntegrationConnectionListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.connections.listV1()
}

try await main()
```
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

## ShippingIntegrations Orders
<details><summary><code>client.shippingIntegrations.orders.<a href="/Sources/Resources/ShippingIntegrations/Orders/ShippingIntegrationsOrdersClient.swift">detailV1</a>(id: String, requestOptions: RequestOptions?) -> ShippingIntegrationOrder1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one unified shipping integration order by its Mongo ObjectId. | () -> (ShippingIntegrationOrder1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.orders.detailV1(id: "id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Mongo ObjectId of the unified order document. The provider's own order ID is the integration_order_id field on the returned order.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.orders.<a href="/Sources/Resources/ShippingIntegrations/Orders/ShippingIntegrationsOrdersClient.swift">listV1</a>(sortBy: ShippingIntegrationOrderSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterShippingIntegration: [OrgShippingIntegrationEnum1]?, filterProviderOrgId: [String]?, filterStatus: [ShippingIntegrationOrderStatusEnum1]?, filterIntegrationOrderId: String?, filterReferenceNumber: String?, filterOrderedAtTimestampGte: Date?, filterOrderedAtTimestampLte: Date?, filterLastMirroredAtTimestampGte: Date?, filterLastMirroredAtTimestampLte: Date?, filterFirstMirroredAtTimestampGte: Date?, filterFirstMirroredAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ShippingIntegrationOrderListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the caller's orders from every shipping integration with filtering, sorting, and pagination. | () -> (ShippingIntegrationOrderListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.orders.listV1(
        sortBy: .orderedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterShippingIntegration: [
            .xcelerator
        ],
        filterProviderOrgId: [
            "filter_provider_org_id"
        ],
        filterStatus: [
            .staged
        ],
        filterIntegrationOrderId: "filter_integration_order_id",
        filterReferenceNumber: "filter_reference_number",
        filterOrderedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterFirstMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterFirstMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `ShippingIntegrationOrderSortByEnum?` — Field to sort by.
    
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

**filterShippingIntegration:** `[OrgShippingIntegrationEnum1]?` — Filter by shipping integration(s)
    
</dd>
</dl>

<dl>
<dd>

**filterProviderOrgId:** `[String]?` — Filter by provider org ID(s)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[ShippingIntegrationOrderStatusEnum1]?` — Filter by unified status(es)
    
</dd>
</dl>

<dl>
<dd>

**filterIntegrationOrderId:** `String?` — Filter by the provider's exact order ID
    
</dd>
</dl>

<dl>
<dd>

**filterReferenceNumber:** `String?` — Filter by an exact reference number carried on the order
    
</dd>
</dl>

<dl>
<dd>

**filterOrderedAtTimestampGte:** `Date?` — Filter ordered_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterOrderedAtTimestampLte:** `Date?` — Filter ordered_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterLastMirroredAtTimestampGte:** `Date?` — Filter last_mirrored_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterLastMirroredAtTimestampLte:** `Date?` — Filter last_mirrored_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterFirstMirroredAtTimestampGte:** `Date?` — Filter first_mirrored_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterFirstMirroredAtTimestampLte:** `Date?` — Filter first_mirrored_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.orders.<a href="/Sources/Resources/ShippingIntegrations/Orders/ShippingIntegrationsOrdersClient.swift">statusSummaryV1</a>(filterShippingIntegration: [OrgShippingIntegrationEnum1]?, filterProviderOrgId: [String]?, filterStatus: [ShippingIntegrationOrderStatusEnum1]?, filterIntegrationOrderId: String?, filterReferenceNumber: String?, filterOrderedAtTimestampGte: Date?, filterOrderedAtTimestampLte: Date?, filterLastMirroredAtTimestampGte: Date?, filterLastMirroredAtTimestampLte: Date?, filterFirstMirroredAtTimestampGte: Date?, filterFirstMirroredAtTimestampLte: Date?, requestOptions: RequestOptions?) -> ShippingIntegrationOrderStatusSummaryRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Counts the caller's shipping integration orders by unified status. | () -> (ShippingIntegrationOrderStatusSummaryRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.orders.statusSummaryV1(
        filterShippingIntegration: [
            .xcelerator
        ],
        filterProviderOrgId: [
            "filter_provider_org_id"
        ],
        filterStatus: [
            .staged
        ],
        filterIntegrationOrderId: "filter_integration_order_id",
        filterReferenceNumber: "filter_reference_number",
        filterOrderedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterFirstMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterFirstMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**filterShippingIntegration:** `[OrgShippingIntegrationEnum1]?` — Filter by shipping integration(s)
    
</dd>
</dl>

<dl>
<dd>

**filterProviderOrgId:** `[String]?` — Filter by provider org ID(s)
    
</dd>
</dl>

<dl>
<dd>

**filterStatus:** `[ShippingIntegrationOrderStatusEnum1]?` — Filter by unified status(es)
    
</dd>
</dl>

<dl>
<dd>

**filterIntegrationOrderId:** `String?` — Filter by the provider's exact order ID
    
</dd>
</dl>

<dl>
<dd>

**filterReferenceNumber:** `String?` — Filter by an exact reference number carried on the order
    
</dd>
</dl>

<dl>
<dd>

**filterOrderedAtTimestampGte:** `Date?` — Filter ordered_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterOrderedAtTimestampLte:** `Date?` — Filter ordered_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterLastMirroredAtTimestampGte:** `Date?` — Filter last_mirrored_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterLastMirroredAtTimestampLte:** `Date?` — Filter last_mirrored_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterFirstMirroredAtTimestampGte:** `Date?` — Filter first_mirrored_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterFirstMirroredAtTimestampLte:** `Date?` — Filter first_mirrored_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ShippingIntegrations Xcelerator Creds
<details><summary><code>client.shippingIntegrations.xcelerator.creds.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Creds/CredsClient.swift">detailV1</a>(providerOrgId: String, requestOptions: RequestOptions?) -> XceleratorCredsLimited1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the caller's Xcelerator credential for one provider, without password or access token. | () -> (XceleratorCredsLimited1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.creds.detailV1(providerOrgId: "provider_org_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**providerOrgId:** `String` — Must be a string starting with `org_`
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.xcelerator.creds.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Creds/CredsClient.swift">listV1</a>(requestOptions: RequestOptions?) -> XceleratorCredsListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the caller's Xcelerator credentials, one per connected provider, without password or access token. | () -> (XceleratorCredsListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.creds.listV1()
}

try await main()
```
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

<details><summary><code>client.shippingIntegrations.xcelerator.creds.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Creds/CredsClient.swift">testV1</a>(providerOrgId: String, requestOptions: RequestOptions?) -> XceleratorCredsTestRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Confirms the caller's stored Xcelerator credentials for one provider can still obtain an access token, and best-effort refreshes the provider's own account label for the caller to eyeball. | authz: min_org_role=operator | () -> (XceleratorCredsTestRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.creds.testV1(providerOrgId: "provider_org_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**providerOrgId:** `String` — Must be a string starting with `org_`
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.xcelerator.creds.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Creds/CredsClient.swift">createV1</a>(providerOrgId: String, request: Requests.XceleratorCredsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stores Xcelerator credentials for one provider on behalf of the caller's organization. | authz: min_org_role=administrator | (XceleratorCredsClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.creds.createV1(
        providerOrgId: "provider_org_id",
        request: .init(
            baseUrl: "base_url",
            password: "password",
            schemaVersion: 1,
            username: "username"
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

**providerOrgId:** `String` — Must be a string starting with `org_`
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.XceleratorCredsClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.xcelerator.creds.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Creds/CredsClient.swift">deleteV1</a>(providerOrgId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes the caller's Xcelerator credentials for one provider, stopping future syncs. | authz: min_org_role=administrator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.creds.deleteV1(providerOrgId: "provider_org_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**providerOrgId:** `String` — Must be a string starting with `org_`
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.xcelerator.creds.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Creds/CredsClient.swift">updateV1</a>(providerOrgId: String, request: Requests.XceleratorCredsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the caller's Xcelerator credentials for one provider. | authz: min_org_role=administrator | (XceleratorCredsClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.creds.updateV1(
        providerOrgId: "provider_org_id",
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

**providerOrgId:** `String` — Must be a string starting with `org_`
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.XceleratorCredsClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ShippingIntegrations Xcelerator Orders
<details><summary><code>client.shippingIntegrations.xcelerator.orders.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Orders/XceleratorOrdersClient.swift">detailByIntegrationOrderIdV1</a>(providerOrgId: String, integrationOrderId: String, requestOptions: RequestOptions?) -> XceleratorOrder1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one mirrored Xcelerator order by the provider's own order ID. | () -> (XceleratorOrder1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.orders.detailByIntegrationOrderIdV1(
        providerOrgId: "provider_org_id",
        integrationOrderId: "integration_order_id"
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

**providerOrgId:** `String` — CHRT org ID of the courier whose Xcelerator instance holds the order
    
</dd>
</dl>

<dl>
<dd>

**integrationOrderId:** `String` — Xcelerator's own ID for the order (its OrderTrackingId), as carried on a unified order row
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.xcelerator.orders.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Orders/XceleratorOrdersClient.swift">detailV1</a>(id: String, requestOptions: RequestOptions?) -> XceleratorOrder1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one mirrored Xcelerator order by its Mongo ObjectId. | () -> (XceleratorOrder1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.orders.detailV1(id: "id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Mongo ObjectId of the mirror document. Xcelerator's own order ID is the integration_order_id, accepted by the by_integration_order_id route.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.xcelerator.orders.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Orders/XceleratorOrdersClient.swift">listV1</a>(sortBy: XceleratorOrderSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterProviderOrgId: [String]?, filterIntegrationOrderId: String?, filterProviderStatusRaw: String?, filterMirroredAtTimestampGte: Date?, filterMirroredAtTimestampLte: Date?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterUpdatedAtTimestampGte: Date?, filterUpdatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> XceleratorOrderListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists mirrored Xcelerator orders for the caller's organization with filtering, sorting, and pagination. | () -> (XceleratorOrderListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.orders.listV1(
        sortBy: .mirroredAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterProviderOrgId: [
            "filter_provider_org_id"
        ],
        filterIntegrationOrderId: "filter_integration_order_id",
        filterProviderStatusRaw: "filter_provider_status_raw",
        filterMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterUpdatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterUpdatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `XceleratorOrderSortByEnum?` — Field to sort by.
    
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

**filterProviderOrgId:** `[String]?` — Filter by provider org ID(s)
    
</dd>
</dl>

<dl>
<dd>

**filterIntegrationOrderId:** `String?` — Filter by Xcelerator's exact order tracking ID
    
</dd>
</dl>

<dl>
<dd>

**filterProviderStatusRaw:** `String?` — Filter by Xcelerator's raw status letter
    
</dd>
</dl>

<dl>
<dd>

**filterMirroredAtTimestampGte:** `Date?` — Filter mirrored_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterMirroredAtTimestampLte:** `Date?` — Filter mirrored_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterUpdatedAtTimestampGte:** `Date?` — Filter updated_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterUpdatedAtTimestampLte:** `Date?` — Filter updated_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shippingIntegrations.xcelerator.orders.<a href="/Sources/Resources/ShippingIntegrations/Xcelerator/Orders/XceleratorOrdersClient.swift">syncOneV1</a>(request: Requests.XceleratorOrderSyncOneReq, requestOptions: RequestOptions?) -> XceleratorOrder1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches and mirrors one Xcelerator order by the provider's own order ID. | authz: min_org_role=operator | (XceleratorOrderSyncOneReq) -> (XceleratorOrder1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shippingIntegrations.xcelerator.orders.syncOneV1(request: .init(
        integrationOrderId: "integration_order_id",
        providerOrgId: "provider_org_id"
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

**request:** `Requests.XceleratorOrderSyncOneReq` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">archiveV1</a>(deviceId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives a device by setting archived=True. Device must not have an active session — terminate it first. | auth: api_key | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">getV1</a>(deviceId: String, requestOptions: RequestOptions?) -> DeviceExpandedRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single device by its ID with expanded sessions and cargos. Access restricted to the caller's organization or shared organizations. | auth: api_key | authz: min_org_role=operator | () -> (DeviceExpandedRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Lists devices with filtering, sorting, and pagination. Use org_scope to restrict to owned, shared, or both (default). | auth: api_key | authz: min_org_role=operator | () -> (DeviceListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">pauseV1</a>(deviceId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pauses a device and opens a new pause time window. | auth: api_key | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        deviceMacAddress: "device_mac_address",
        schemaVersion: 1
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

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">typeaheadV1</a>(query: String, limit: Int?, orgScope: TrackingOrgScopeEnum?, requestOptions: RequestOptions?) -> [TrackingTypeaheadResult]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct device_mac_address and off_chrt_reference_id values matching the query via case-insensitive regex, searching devices. Use org_scope to restrict to owned, shared, or both (default). | auth: api_key | authz: min_org_role=operator | () -> (list[TrackingTypeaheadResult])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">unpauseV1</a>(deviceId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unpauses a device. Closes the open pause time window. | auth: api_key | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">updateV1</a>(deviceId: String, request: Requests.DeviceClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a device's type, comments, and/or off_chrt_reference_id. Use __set_to_None flags to explicitly clear Optional fields. | auth: api_key | (DeviceClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">updateSharedOrgsV1</a>(request: Requests.DevicesUpdateSharedOrgsReq1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds and/or removes org_ids from a device's shared_with_org_ids list. Removal overrides addition. | auth: api_key | (DevicesUpdateSharedOrgsReq1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Tracking Driver
<details><summary><code>client.tracking.driver.<a href="/Sources/Resources/Tracking/Driver/DriverClient.swift">updateV2</a>(request: Requests.DriverByDriverDataPointClientCreate1, requestOptions: RequestOptions?) -> DriverUpdateRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records driver location updates with a client-supplied capture timestamp. Writes a driver_by_driver ping on every call, updates the driver's last seen, and records tracking data for all IN_PROGRESS task groups and their associated IN_TRANSIT cargos. | auth: api_key | (DriverByDriverDataPointClientCreate1) -> (DriverUpdateRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.driver.updateV2(request: .init(
        location: LocationFeature(
            geometry: Geometry.geometryCollection(
                GeometryCollection(
                    geometries: [
                        GeometriesItem.lineString(
                            LineString(
                                coordinates: [
                                    CoordinatesItem.position2D(
                                        []
                                    )
                                ]
                            )
                        )
                    ]
                )
            ),
            type: .feature
        ),
        schemaVersion: 1,
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

**request:** `Requests.DriverByDriverDataPointClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking GeofenceTemplates
<details><summary><code>client.tracking.geofenceTemplates.<a href="/Sources/Resources/Tracking/GeofenceTemplates/GeofenceTemplatesClient.swift">archiveV1</a>(geofenceTemplateId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives a geofence template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.geofenceTemplates.archiveV1(geofenceTemplateId: "geofence_template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**geofenceTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.geofenceTemplates.<a href="/Sources/Resources/Tracking/GeofenceTemplates/GeofenceTemplatesClient.swift">listV1</a>(sortBy: GeofenceTemplateSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterArchived: Bool?, filterOwnedByUserId: String?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastEditedAtTimestampGte: Date?, filterLastEditedAtTimestampLte: Date?, filterLastUsedAtTimestampGte: Date?, filterLastUsedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> GeofenceTemplateListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists geofence templates for the caller's organization. | authz: min_org_role=operator | () -> (GeofenceTemplateListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.geofenceTemplates.listV1(
        sortBy: .createdAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterArchived: true,
        filterOwnedByUserId: "filter_owned_by_user_id",
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastUsedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastUsedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

**sortBy:** `GeofenceTemplateSortByEnum?` — Field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` — Sort order.
    
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

**filterArchived:** `Bool?` — Include archived templates instead of active templates.
    
</dd>
</dl>

<dl>
<dd>

**filterOwnedByUserId:** `String?` — Filter by the user that created the template.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampGte:** `Date?` — Filter created_at_timestamp >= value.
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtTimestampLte:** `Date?` — Filter created_at_timestamp <= value.
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampGte:** `Date?` — Filter last_edited_at_timestamp >= value.
    
</dd>
</dl>

<dl>
<dd>

**filterLastEditedAtTimestampLte:** `Date?` — Filter last_edited_at_timestamp <= value.
    
</dd>
</dl>

<dl>
<dd>

**filterLastUsedAtTimestampGte:** `Date?` — Filter last_used_at_timestamp >= value.
    
</dd>
</dl>

<dl>
<dd>

**filterLastUsedAtTimestampLte:** `Date?` — Filter last_used_at_timestamp <= value.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.geofenceTemplates.<a href="/Sources/Resources/Tracking/GeofenceTemplates/GeofenceTemplatesClient.swift">unarchiveV1</a>(geofenceTemplateId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Restores an archived geofence template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.geofenceTemplates.unarchiveV1(geofenceTemplateId: "geofence_template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**geofenceTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.geofenceTemplates.<a href="/Sources/Resources/Tracking/GeofenceTemplates/GeofenceTemplatesClient.swift">updateV1</a>(geofenceTemplateId: String, request: Requests.SessionGeofenceTemplateClientUpdate1, requestOptions: RequestOptions?) -> SessionGeofenceTemplate1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an active geofence template owned by the caller's organization. | authz: min_org_role=operator | (SessionGeofenceTemplateClientUpdate1) -> (SessionGeofenceTemplate1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.geofenceTemplates.updateV1(
        geofenceTemplateId: "geofence_template_id",
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

**geofenceTemplateId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SessionGeofenceTemplateClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.geofenceTemplates.<a href="/Sources/Resources/Tracking/GeofenceTemplates/GeofenceTemplatesClient.swift">createV1</a>(request: Requests.SessionGeofenceTemplateClientCreate1, requestOptions: RequestOptions?) -> SessionGeofenceTemplate1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a geofence template owned by the caller's organization. | authz: min_org_role=operator | (SessionGeofenceTemplateClientCreate1) -> (SessionGeofenceTemplate1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.geofenceTemplates.createV1(request: .init(
        geofences: [
            SessionGeofenceBase1(
                displayName: "display_name",
                location: GeofencePointLocationFeature1(
                    geometry: Point(
                        coordinates: Coordinates.position2D(
                            []
                        ),
                        type: .point
                    ),
                    type: .feature
                ),
                radiusMiles: 1.1
            )
        ],
        name: "name",
        schemaVersion: 1
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

**request:** `Requests.SessionGeofenceTemplateClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.geofenceTemplates.<a href="/Sources/Resources/Tracking/GeofenceTemplates/GeofenceTemplatesClient.swift">getByIdV1</a>(geofenceTemplateId: String, requestOptions: RequestOptions?) -> SessionGeofenceTemplate1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a geofence template owned by the caller's organization. | authz: min_org_role=operator | () -> (SessionGeofenceTemplate1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.geofenceTemplates.getByIdV1(geofenceTemplateId: "geofence_template_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**geofenceTemplateId:** `String` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">createSessionV1</a>(deviceId: String, noAutoTermination: Bool?, request: Requests.SessionsCreateV1Req, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a tracking session with ordered geofences or an organization template and links its device. | auth: api_key | authz: min_org_role=operator | (SessionsCreateV1Req) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**request:** `Requests.SessionsCreateV1Req` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">flightLegsV1</a>(sessionId: String, requestOptions: RequestOptions?) -> [FlightLeg1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the session's flight legs in order, with Cirium-sourced status lazily resolved and refreshed on read. Access restricted to the caller's organization or shared organizations. | auth: api_key | authz: min_org_role=operator | () -> (list[FlightLeg1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.flightLegsV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">flightTrackV1</a>(sessionId: String, flightLegId: String, forceRefresh: Bool?, requestOptions: RequestOptions?) -> FlightTrackRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the raw Cirium positional track for one of the session's flight legs; pass force_refresh=true to bypass the cache. Access restricted to the caller's organization or shared organizations. | auth: api_key | authz: min_org_role=operator | () -> (FlightTrackRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.flightTrackV1(
        sessionId: "session_id",
        flightLegId: "flight_leg_id",
        forceRefresh: true
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

**flightLegId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**forceRefresh:** `Bool?` — Bypass the cache and fetch the latest flight track.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">getV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Session2</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single session by its ID. Access restricted to the caller's organization or shared organizations. | auth: api_key | authz: min_org_role=operator | () -> (Session2)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">listV1</a>(sortBy: SessionSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, search: String?, orgScope: TrackingOrgScopeEnum?, filterTerminated: Bool?, filterPublic: Bool?, filterDeviceId: String?, filterOffChrtReferenceId: String?, filterFlightNumber: String?, filterFlightLoadedStatus: String?, filterHasLastSeen: Bool?, filterCreatedAtTimestampGte: Date?, filterCreatedAtTimestampLte: Date?, filterLastSeenAtTimestampGte: Date?, filterLastSeenAtTimestampLte: Date?, filterTerminationScheduledForTimestampGte: Date?, filterTerminationScheduledForTimestampLte: Date?, filterTerminatedAtTimestampGte: Date?, filterTerminatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> SessionListRes</code></summary>
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
        filterFlightLoadedStatus: "filter_flight_loaded_status",
        filterHasLastSeen: true,
        filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastSeenAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterLastSeenAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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

**filterFlightLoadedStatus:** `String?` — Filter by flight loaded status (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterHasLastSeen:** `Bool?` — Filter by whether both last_seen_at_location and last_seen_at_timestamp are set
    
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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">setFlightInfoV1</a>(request: Requests.SessionSetFlightInfoReq1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the session's followed flights: deletes the existing session-owned FlightLeg documents and creates new ones from the supplied flight details. Each leg's Cirium flightId and status resolve lazily on read. Pass an empty list to clear all flights. | auth: api_key | authz: min_org_role=operator | (SessionSetFlightInfoReq1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.setFlightInfoV1(request: .init(
        flightLegs: [
            FlightLegClientCreate1(
                carrierIata: "carrier_iata",
                destinationIata: "destination_iata",
                flightNumber: "flight_number",
                originIata: "origin_iata",
                provenance: .manual,
                scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1
            )
        ],
        sessionId: "session_id"
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

**request:** `Requests.SessionSetFlightInfoReq1` 
    
</dd>
</dl>

<dl>
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

Terminates a session. Moves device.active_session_id to device.past_session_ids and deactivates the device. | auth: api_key | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">updateV1</a>(sessionId: String, request: Requests.SessionClientUpdate2, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates mutable non-geofence session fields. Use dedicated geofence routes for geofence changes. | auth: api_key | authz: min_org_role=operator | (SessionClientUpdate2) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**request:** `Requests.SessionClientUpdate2` 
    
</dd>
</dl>

<dl>
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

Adds and/or removes org_ids from a session's shared_with_org_ids list. Only the owning org may modify sharing. Removal overrides addition. | auth: api_key | (SessionsUpdateSharedOrgsReq1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Tracking SessionGeofences
<details><summary><code>client.tracking.sessionGeofences.<a href="/Sources/Resources/Tracking/SessionGeofences/SessionGeofencesClient.swift">addV1</a>(sessionId: String, request: SessionGeofenceClientCreate1, requestOptions: RequestOptions?) -> Session2</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a geofence to an active session. | auth: api_key | authz: min_org_role=operator | (SessionGeofenceClientCreate1) -> (Session2)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionGeofences.addV1(
        sessionId: "session_id",
        request: SessionGeofenceClientCreate1(
            displayName: "display_name",
            location: GeofencePointLocationFeature1(
                geometry: Point(
                    coordinates: Coordinates.position2D(
                        []
                    ),
                    type: .point
                ),
                type: .feature
            ),
            radiusMiles: 1.1
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

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `SessionGeofenceClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessionGeofences.<a href="/Sources/Resources/Tracking/SessionGeofences/SessionGeofencesClient.swift">applyTemplateV1</a>(sessionId: String, request: Requests.SessionGeofenceApplyTemplateReq, requestOptions: RequestOptions?) -> Session2</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces an active session's geofences from an active organization template. | auth: api_key | authz: min_org_role=operator | (SessionGeofenceApplyTemplateReq) -> (Session2)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionGeofences.applyTemplateV1(
        sessionId: "session_id",
        request: .init(geofenceTemplateId: "geofence_template_id")
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

**request:** `Requests.SessionGeofenceApplyTemplateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessionGeofences.<a href="/Sources/Resources/Tracking/SessionGeofences/SessionGeofencesClient.swift">reorderV1</a>(sessionId: String, request: Requests.SessionGeofenceReorderReq, requestOptions: RequestOptions?) -> Session2</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reorders an active session's geofences using an exact ID permutation. | auth: api_key | authz: min_org_role=operator | (SessionGeofenceReorderReq) -> (Session2)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionGeofences.reorderV1(
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

**request:** `Requests.SessionGeofenceReorderReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessionGeofences.<a href="/Sources/Resources/Tracking/SessionGeofences/SessionGeofencesClient.swift">updateV1</a>(sessionId: String, geofenceId: String, request: Requests.SessionGeofenceClientUpdate1, requestOptions: RequestOptions?) -> Session2</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a session geofence, resetting entry state only when location or radius changes. | auth: api_key | authz: min_org_role=operator | (SessionGeofenceClientUpdate1) -> (Session2)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionGeofences.updateV1(
        sessionId: "session_id",
        geofenceId: "geofence_id",
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

**geofenceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SessionGeofenceClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessionGeofences.<a href="/Sources/Resources/Tracking/SessionGeofences/SessionGeofencesClient.swift">removeV1</a>(sessionId: String, geofenceId: String, requestOptions: RequestOptions?) -> Session2</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a geofence from an active session. | auth: api_key | authz: min_org_role=operator | () -> (Session2)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionGeofences.removeV1(
        sessionId: "session_id",
        geofenceId: "geofence_id"
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

**geofenceId:** `String` 
    
</dd>
</dl>

<dl>
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

<details><summary><code>client.tracking.sharingSettings.<a href="/Sources/Resources/Tracking/SharingSettings/SharingSettingsClient.swift">cargoByDeviceSettingsV1</a>(request: Requests.CargoByDeviceSharingSettingsUpdateReq, requestOptions: RequestOptions?) -> CargoByDeviceSharingSettings1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the sharing settings for a cargo by device tracking dataset. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, order_creator_org_operators] | (CargoByDeviceSharingSettingsUpdateReq) -> (CargoByDeviceSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        cargoId: "cargo_id",
        deviceId: "device_id",
        public: true,
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

<details><summary><code>client.tracking.sharingSettings.<a href="/Sources/Resources/Tracking/SharingSettings/SharingSettingsClient.swift">cargoByDriverSettingsV1</a>(request: Requests.CargoByDriverSharingSettingsUpdateReq, requestOptions: RequestOptions?) -> CargoByDriverSharingSettings1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the sharing settings for a cargo by driver tracking dataset. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | (CargoByDriverSharingSettingsUpdateReq) -> (CargoByDriverSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        cargoId: "cargo_id",
        public: true,
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

<details><summary><code>client.tracking.sharingSettings.<a href="/Sources/Resources/Tracking/SharingSettings/SharingSettingsClient.swift">taskGroupByDriverSharingSettingsV1</a>(request: Requests.TaskGroupByDriverSharingSettingsUpdateReq, requestOptions: RequestOptions?) -> TaskGroupByDriverSharingSettings1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the sharing settings for a task group by driver tracking dataset. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | (TaskGroupByDriverSharingSettingsUpdateReq) -> (TaskGroupByDriverSharingSettings1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        public: true,
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

## Tracking Timeseries CargoByDevice
<details><summary><code>client.tracking.timeseries.cargoByDevice.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDevice/CargoByDeviceClient.swift">dataPointsV1</a>(cargoId: String, taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> [CargoByDeviceDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a cargo within a task group, intelligently sampled across the time range. Excludes outliers. | auth: api_key | () -> (list[CargoByDeviceDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.timeseries.cargoByDevice.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDevice/CargoByDeviceClient.swift">lastSeenV1</a>(cargoId: String, taskGroupId: String, requestOptions: RequestOptions?) -> CargoByDeviceDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the last seen data point for cargo within a task group. Access granted to the order's coordinator/shipper/executor org or the assigned driver, or via public sharing. | auth: api_key | () -> (CargoByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.timeseries.cargoByDevice.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDevice/CargoByDeviceClient.swift">outlierV1</a>(request: Requests.CargoByDeviceMarkOutliersRequest1, requestOptions: RequestOptions?) -> CargoByDeviceMarkOutliersResponse1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates. | auth: api_key | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (CargoByDeviceMarkOutliersRequest1) -> (CargoByDeviceMarkOutliersResponse1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        outlier: true,
        trackingCargoByDeviceDataPointIds: [
            "tracking_cargo_by_device_data_point_ids"
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

## Tracking Timeseries CargoByDriver
<details><summary><code>client.tracking.timeseries.cargoByDriver.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDriver/CargoByDriverClient.swift">dataPointsV1</a>(cargoId: String, taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> [CargoByDriverDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a cargo within a task group, intelligently sampled across the time range. Excludes outliers. | auth: api_key | () -> (list[CargoByDriverDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.timeseries.cargoByDriver.<a href="/Sources/Resources/Tracking/Timeseries/CargoByDriver/CargoByDriverClient.swift">lastSeenV1</a>(cargoId: String, taskGroupId: String, requestOptions: RequestOptions?) -> CargoByDriverDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent driver location data point for cargo within a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | auth: api_key | () -> (CargoByDriverDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Tracking Timeseries SessionByDevice
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

<details><summary><code>client.tracking.timeseries.sessionByDevice.<a href="/Sources/Resources/Tracking/Timeseries/SessionByDevice/SessionByDeviceClient.swift">outlierV1</a>(request: Requests.SessionByDeviceMarkOutliersRequest1, requestOptions: RequestOptions?) -> SessionByDeviceMarkOutliersResponse1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks data points as outliers or non-outliers. Uses atomic delete and reinsert strategy for time-series collection updates. | auth: api_key | (SessionByDeviceMarkOutliersRequest1) -> (SessionByDeviceMarkOutliersResponse1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        outlier: true,
        trackingSessionByDeviceDataPointIds: [
            "tracking_session_by_device_data_point_ids"
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

## Tracking Timeseries TaskGroupByDriver
<details><summary><code>client.tracking.timeseries.taskGroupByDriver.<a href="/Sources/Resources/Tracking/Timeseries/TaskGroupByDriver/TaskGroupByDriverClient.swift">dataPointsV1</a>(taskGroupId: String, limit: Int?, requestOptions: RequestOptions?) -> TaskGroupByDriverDataPointsRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns sampled driver location data points and the unique drivers for a task group. Excludes outliers. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | () -> (TaskGroupByDriverDataPointsRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.timeseries.taskGroupByDriver.<a href="/Sources/Resources/Tracking/Timeseries/TaskGroupByDriver/TaskGroupByDriverClient.swift">lastSeenV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> TaskGroupByDriverLastSeenRes?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent driver location data point and driver for a task group. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | () -> (TaskGroupByDriverLastSeenRes | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## TrackingIntegrations Reelables Assets
<details><summary><code>client.trackingIntegrations.reelables.assets.<a href="/Sources/Resources/TrackingIntegrations/Reelables/Assets/AssetsClient.swift">createV1</a>(request: Requests.ReelablesAssetClientCreate1, requestOptions: RequestOptions?) -> ReelablesAsset1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates and links a labeled Reelables asset for the caller's organization. | authz: min_org_role=operator | (ReelablesAssetClientCreate1) -> (ReelablesAsset1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.reelables.assets.createV1(request: .init(
        name: "name",
        nfcId: "nfc_id",
        schemaVersion: 1
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

**request:** `Requests.ReelablesAssetClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trackingIntegrations.reelables.assets.<a href="/Sources/Resources/TrackingIntegrations/Reelables/Assets/AssetsClient.swift">getV1</a>(assetId: String, requestOptions: RequestOptions?) -> ReelablesAsset1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a Reelables asset owned by the caller's organization from CHRT. | auth: api_key | authz: min_org_role=operator | () -> (ReelablesAsset1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.reelables.assets.getV1(assetId: "asset_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**assetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trackingIntegrations.reelables.assets.<a href="/Sources/Resources/TrackingIntegrations/Reelables/Assets/AssetsClient.swift">linkLabelV1</a>(assetId: String, request: Requests.ReelablesAssetLabelLinkReq, requestOptions: RequestOptions?) -> ReelablesAsset1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Links a label to an unlinked Reelables asset and starts tracking. Existing labels must be unlinked first. | authz: min_org_role=operator | (ReelablesAssetLabelLinkReq) -> (ReelablesAsset1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.reelables.assets.linkLabelV1(
        assetId: "asset_id",
        request: .init(nfcId: "nfc_id")
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

**assetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ReelablesAssetLabelLinkReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trackingIntegrations.reelables.assets.<a href="/Sources/Resources/TrackingIntegrations/Reelables/Assets/AssetsClient.swift">unlinkLabelV1</a>(assetId: String, requestOptions: RequestOptions?) -> ReelablesAsset1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unlinks the current label from a Reelables asset and stops tracking while retaining the asset and its history. | authz: min_org_role=operator | (None) -> (ReelablesAsset1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.reelables.assets.unlinkLabelV1(assetId: "asset_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**assetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trackingIntegrations.reelables.assets.<a href="/Sources/Resources/TrackingIntegrations/Reelables/Assets/AssetsClient.swift">listV1</a>(sortBy: ReelablesAssetSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> ReelablesAssetListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists Reelables assets owned by the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (ReelablesAssetListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.reelables.assets.listV1(
        sortBy: .assetId,
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

**sortBy:** `ReelablesAssetSortByEnum?` — Field to sort by
    
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

<details><summary><code>client.trackingIntegrations.reelables.assets.<a href="/Sources/Resources/TrackingIntegrations/Reelables/Assets/AssetsClient.swift">updateV1</a>(assetId: String, request: Requests.ReelablesAssetClientUpdate1, requestOptions: RequestOptions?) -> ReelablesAsset1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a Reelables asset, applying name changes upstream before updating CHRT. | authz: min_org_role=operator | (ReelablesAssetClientUpdate1) -> (ReelablesAsset1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.reelables.assets.updateV1(
        assetId: "asset_id",
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

**assetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ReelablesAssetClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TrackingIntegrations Reelables Timeseries
<details><summary><code>client.trackingIntegrations.reelables.timeseries.<a href="/Sources/Resources/TrackingIntegrations/Reelables/Timeseries/ReelablesTimeseriesClient.swift">refreshV1</a>(assetId: String, startTimestamp: Date, endTimestamp: Date, requestOptions: RequestOptions?) -> ReelablesTimeseriesRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Refreshes and returns Reelables location data points within the requested time range. | authz: min_org_role=operator | () -> (ReelablesTimeseriesRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.reelables.timeseries.refreshV1(
        assetId: "asset_id",
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

**assetId:** `String` 
    
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

<details><summary><code>client.trackingIntegrations.reelables.timeseries.<a href="/Sources/Resources/TrackingIntegrations/Reelables/Timeseries/ReelablesTimeseriesClient.swift">dataPointsV1</a>(assetId: String, startTimestamp: Date, endTimestamp: Date, requestOptions: RequestOptions?) -> ReelablesTimeseriesRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns stored Reelables location data points within the requested time range without refreshing from Reelables. | auth: api_key | authz: min_org_role=operator | () -> (ReelablesTimeseriesRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.trackingIntegrations.reelables.timeseries.dataPointsV1(
        assetId: "asset_id",
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

**assetId:** `String` 
    
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

## TrackingIntegrations Tive Devices
<details><summary><code>client.trackingIntegrations.tive.devices.<a href="/Sources/Resources/TrackingIntegrations/Tive/Devices/TiveDevicesClient.swift">getV1</a>(tiveDeviceId: String, requestOptions: RequestOptions?) -> TiveDevice1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single Tive device by its ID. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveDevice1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.trackingIntegrations.tive.devices.<a href="/Sources/Resources/TrackingIntegrations/Tive/Devices/TiveDevicesClient.swift">listV1</a>(sortBy: TiveDeviceSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterTiveAccountId: Int?, filterTiveDeviceId: String?, filterChrtCreatedAtTimestampGte: Date?, filterChrtCreatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> TiveDeviceListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists Tive devices with filtering, sorting, and pagination. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveDeviceListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## TrackingIntegrations Tive Shipments
<details><summary><code>client.trackingIntegrations.tive.shipments.<a href="/Sources/Resources/TrackingIntegrations/Tive/Shipments/ShipmentsClient.swift">getV1</a>(tiveShipmentId: String, requestOptions: RequestOptions?) -> TiveShipment1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single Tive shipment by its ID. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveShipment1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.trackingIntegrations.tive.shipments.<a href="/Sources/Resources/TrackingIntegrations/Tive/Shipments/ShipmentsClient.swift">listV1</a>(sortBy: TiveShipmentSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterTiveDeviceObjectId: String?, filterTiveShipmentId: String?, filterChrtCreatedAtTimestampGte: Date?, filterChrtCreatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> TiveShipmentListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists Tive shipments with filtering, sorting, and pagination. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveShipmentListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## TrackingIntegrations Tive Timeseries
<details><summary><code>client.trackingIntegrations.tive.timeseries.<a href="/Sources/Resources/TrackingIntegrations/Tive/Timeseries/TiveTimeseriesClient.swift">dataPointsV1</a>(tiveShipmentId: String, startTimestamp: Date, endTimestamp: Date, requestOptions: RequestOptions?) -> TiveTimeseriesRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns raw Tive data points for a shipment within the given time range. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveTimeseriesRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.trackingIntegrations.tive.timeseries.<a href="/Sources/Resources/TrackingIntegrations/Tive/Timeseries/TiveTimeseriesClient.swift">lastSeenV1</a>(tiveShipmentId: String, requestOptions: RequestOptions?) -> TiveDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent Tive data point for a shipment. Scoped to the caller's organization. | auth: api_key | authz: min_org_role=operator | () -> (TiveDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Users PrivateData
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

## Utils Root
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

## Utils Dev
<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">postAgentGeographyV1</a>(request: Requests.GeographyReq, requestOptions: RequestOptions?) -> GeographyRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Runs the Pydantic AI Temporal geography sample workflow and returns the response. | (GeographyReq) -> (GeographyRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.postAgentGeographyV1(request: .init(prompt: "prompt"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GeographyReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">postAgentOpenaiPingV1</a>(request: Requests.PingOpenAiReq, requestOptions: RequestOptions?) -> PingOpenAiRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Runs a minimal Temporal workflow that sends a prompt to OpenAI and returns the response. | (PingOpenAIReq) -> (PingOpenAIRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.postAgentOpenaiPingV1(request: .init(prompt: "prompt"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PingOpenAiReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.utils.dev.<a href="/Sources/Resources/Utils/Dev/DevClient.swift">postAgentPingV1</a>(request: Requests.PingReq, requestOptions: RequestOptions?) -> PingRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Runs a lightweight Temporal workflow and activity round trip for developer diagnostics. | (PingReq) -> (PingRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.utils.dev.postAgentPingV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.PingReq` 
    
</dd>
</dl>

<dl>
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

