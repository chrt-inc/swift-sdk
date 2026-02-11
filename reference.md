# Reference
## Payments
<details><summary><code>client.payments.<a href="/Sources/Resources/Payments/PaymentsClient.swift">createCheckoutSessionV1</a>(request: Requests.CreateCheckoutSessionReq, requestOptions: RequestOptions?) -> CreateCheckoutSessionRes</code></summary>
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

    _ = try await client.payments.createCheckoutSessionV1(request: .init(priceName: .courierOps100UsdPerMonth))
}

try await main()
```
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

<details><summary><code>client.payments.<a href="/Sources/Resources/Payments/PaymentsClient.swift">syncStripeToClerkV1</a>(requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.payments.syncStripeToClerkV1()
}

try await main()
```
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

## Connections
<details><summary><code>client.connections.<a href="/Sources/Resources/Connections/ConnectionsClient.swift">listShippersV1</a>(requestOptions: RequestOptions?) -> [ShipperConnectionRes]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists shipper organizations based on the caller's organization type. Couriers see connected shippers, forwarders see connected shippers. | () -> (list[ShipperConnectionRes])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.connections.listShippersV1()
}

try await main()
```
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

<details><summary><code>client.connections.<a href="/Sources/Resources/Connections/ConnectionsClient.swift">listCouriersV1</a>(requestOptions: RequestOptions?) -> [CourierConnectionRes]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists courier organizations based on the caller's organization type. Shippers see connected couriers, forwarders see connected couriers. | () -> (list[CourierConnectionRes])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.connections.listCouriersV1()
}

try await main()
```
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

<details><summary><code>client.connections.<a href="/Sources/Resources/Connections/ConnectionsClient.swift">listForwardersV1</a>(requestOptions: RequestOptions?) -> [ForwarderConnectionRes]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists forwarder organizations based on the caller's organization type. Shippers see connected forwarders, couriers see connected forwarders. | () -> (list[ForwarderConnectionRes])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.connections.listForwardersV1()
}

try await main()
```
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

<details><summary><code>client.connections.<a href="/Sources/Resources/Connections/ConnectionsClient.swift">getByHandleV1</a>(handle: String, requestOptions: RequestOptions?) -> ConnectionsGetByHandleV1Response?</code></summary>
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

    _ = try await client.connections.getByHandleV1(handle: "handle")
}

try await main()
```
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

## OrgProfiles
<details><summary><code>client.orgProfiles.<a href="/Sources/Resources/OrgProfiles/OrgProfilesClient.swift">getV1</a>(requestOptions: RequestOptions?) -> OrgProfileRes1</code></summary>
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

    _ = try await client.orgProfiles.getV1()
}

try await main()
```
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

<details><summary><code>client.orgProfiles.<a href="/Sources/Resources/OrgProfiles/OrgProfilesClient.swift">createCourierV1</a>(request: Requests.CourierOrgProfileClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orgProfiles.createCourierV1(request: .init(
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

<details><summary><code>client.orgProfiles.<a href="/Sources/Resources/OrgProfiles/OrgProfilesClient.swift">createForwarderV1</a>(request: Requests.ForwarderOrgProfileClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orgProfiles.createForwarderV1(request: .init(
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

<details><summary><code>client.orgProfiles.<a href="/Sources/Resources/OrgProfiles/OrgProfilesClient.swift">updateCourierV1</a>(request: Requests.CourierOrgProfileClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orgProfiles.updateCourierV1(request: .init())
}

try await main()
```
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

<details><summary><code>client.orgProfiles.<a href="/Sources/Resources/OrgProfiles/OrgProfilesClient.swift">updateForwarderV1</a>(request: Requests.ForwarderOrgProfileClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orgProfiles.updateForwarderV1(request: .init())
}

try await main()
```
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

<details><summary><code>client.orgProfiles.<a href="/Sources/Resources/OrgProfiles/OrgProfilesClient.swift">getByHandleV1</a>(handle: String, requestOptions: RequestOptions?) -> OrgProfileRes1</code></summary>
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

    _ = try await client.orgProfiles.getByHandleV1(handle: "handle")
}

try await main()
```
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

<details><summary><code>client.orgProfiles.<a href="/Sources/Resources/OrgProfiles/OrgProfilesClient.swift">getAvatarV1</a>(handle: String, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orgProfiles.getAvatarV1(handle: "handle")
}

try await main()
```
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

## Dev
<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">postAgentV1</a>(request: Requests.AgentReq, requestOptions: RequestOptions?) -> AgentRes</code></summary>
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

    _ = try await client.dev.postAgentV1(request: .init())
}

try await main()
```
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

<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">getUserIdV1</a>(requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.dev.getUserIdV1()
}

try await main()
```
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

<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">getUserIdV2</a>(requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.dev.getUserIdV2()
}

try await main()
```
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

<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">getDecodedJwtV1</a>(requestOptions: RequestOptions?) -> DecodedJwtWithOrgAndUserId</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the complete decoded JWT token information for development purposes. | () -> (DecodedJWTWithOrgAndUserId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.dev.getDecodedJwtV1()
}

try await main()
```
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

<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">getEmailV1</a>(requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.dev.getEmailV1()
}

try await main()
```
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

<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">getTemplateV1</a>(requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.dev.getTemplateV1()
}

try await main()
```
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

<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">createTemplateV1</a>(request: Requests.TemplateReq, requestOptions: RequestOptions?) -> TemplateRes</code></summary>
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

    _ = try await client.dev.createTemplateV1(request: .init(
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

<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">getGitInfoV1</a>(requestOptions: RequestOptions?) -> [String: String]</code></summary>
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

    _ = try await client.dev.getGitInfoV1()
}

try await main()
```
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

## Flights
<details><summary><code>client.flights.<a href="/Sources/Resources/Flights/FlightsClient.swift">getFlightInfoForTaskV1</a>(taskId: String, requestOptions: RequestOptions?) -> FlightInfoForTaskRes</code></summary>
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

    _ = try await client.flights.getFlightInfoForTaskV1(taskId: "task_id")
}

try await main()
```
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

## Drivers
<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">getForCallerV1</a>(requestOptions: RequestOptions?) -> Driver1</code></summary>
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

    _ = try await client.drivers.getForCallerV1()
}

try await main()
```
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">getByDriverIdV1</a>(driverId: String, requestOptions: RequestOptions?) -> Driver1</code></summary>
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

    _ = try await client.drivers.getByDriverIdV1(driverId: "driver_id")
}

try await main()
```
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">listOrgMembersAndDriversV1</a>(availableAccordingToDriver: Bool?, availableAccordingToOperators: Bool?, requestOptions: RequestOptions?) -> [OrgMembersAndDrivers]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all organization members paired with their driver information if they are drivers. Filter by availability. | () -> (list[OrgMembersAndDrivers])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.listOrgMembersAndDriversV1(
        availableAccordingToDriver: true,
        availableAccordingToOperators: true
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**availableAccordingToDriver:** `Bool?` — Filter by driver's self-reported availability.
    
</dd>
</dl>

<dl>
<dd>

**availableAccordingToOperators:** `Bool?` — Filter by operator-set availability.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">listV1</a>(availableAccordingToDriver: Bool?, availableAccordingToOperators: Bool?, requestOptions: RequestOptions?) -> [Driver1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all drivers belonging to the caller's organization. Filter by availability. | () -> (list[Driver1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.listV1(
        availableAccordingToDriver: true,
        availableAccordingToOperators: true
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**availableAccordingToDriver:** `Bool?` — Filter by driver's self-reported availability.
    
</dd>
</dl>

<dl>
<dd>

**availableAccordingToOperators:** `Bool?` — Filter by operator-set availability.
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">createV1</a>(targetUserId: String?, request: Requests.DriverClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.drivers.createV1(
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">updateV1</a>(driverId: String, request: Requests.DriverClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.drivers.updateV1(
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">clearLastSeenV1</a>(requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.drivers.clearLastSeenV1()
}

try await main()
```
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">updateAvailabilityAccordingToDriverV1</a>(request: DriverUpdateAvailabilityReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.drivers.updateAvailabilityAccordingToDriverV1(request: DriverUpdateAvailabilityReq(
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">updateAvailabilityAccordingToOperatorsV1</a>(driverId: String, request: DriverUpdateAvailabilityReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.drivers.updateAvailabilityAccordingToOperatorsV1(
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

## Cargos
<details><summary><code>client.cargos.<a href="/Sources/Resources/Cargos/CargosClient.swift">updateV1</a>(cargoId: String, request: CargoClientUpdate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.cargos.updateV1(
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

## TaskArtifacts
<details><summary><code>client.taskArtifacts.<a href="/Sources/Resources/TaskArtifacts/TaskArtifactsClient.swift">addToTaskV1</a>(taskId: String, request: Requests.AddTaskArtifactReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.taskArtifacts.addToTaskV1(
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

<details><summary><code>client.taskArtifacts.<a href="/Sources/Resources/TaskArtifacts/TaskArtifactsClient.swift">completeV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskArtifacts.completeV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
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

<details><summary><code>client.taskArtifacts.<a href="/Sources/Resources/TaskArtifacts/TaskArtifactsClient.swift">skipV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskArtifacts.skipV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
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

<details><summary><code>client.taskArtifacts.<a href="/Sources/Resources/TaskArtifacts/TaskArtifactsClient.swift">deleteV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskArtifacts.deleteV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
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

## OffChrtShipperOrg
<details><summary><code>client.offChrtShipperOrg.<a href="/Sources/Resources/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">createV1</a>(request: Requests.OffChrtShipperOrgClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.offChrtShipperOrg.createV1(request: .init(
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

<details><summary><code>client.offChrtShipperOrg.<a href="/Sources/Resources/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [OffChrtShipperOrg1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all off-platform shipper organizations created by the caller's organization. | () -> (list[OffChrtShipperOrg1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.offChrtShipperOrg.listV1()
}

try await main()
```
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

<details><summary><code>client.offChrtShipperOrg.<a href="/Sources/Resources/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> OffChrtShipperOrg1</code></summary>
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

    _ = try await client.offChrtShipperOrg.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.offChrtShipperOrg.<a href="/Sources/Resources/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">deleteByIdV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.offChrtShipperOrg.deleteByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.offChrtShipperOrg.<a href="/Sources/Resources/OffChrtShipperOrg/OffChrtShipperOrgClient.swift">updateByIdV1</a>(id: String, request: Requests.OffChrtShipperOrgClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.offChrtShipperOrg.updateByIdV1(
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

## Orders
<details><summary><code>client.orders.<a href="/Sources/Resources/Orders/OrdersClient.swift">stageV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orders.stageV1(orderId: "order_id")
}

try await main()
```
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

<details><summary><code>client.orders.<a href="/Sources/Resources/Orders/OrdersClient.swift">cancelV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orders.cancelV1(orderId: "order_id")
}

try await main()
```
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

## OrderDrafts
<details><summary><code>client.orderDrafts.<a href="/Sources/Resources/OrderDrafts/OrderDraftsClient.swift">newV1</a>(request: Requests.OrdersNewDraftReq, requestOptions: RequestOptions?) -> OrdersNewDraftRes</code></summary>
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

    _ = try await client.orderDrafts.newV1(request: .init())
}

try await main()
```
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

<details><summary><code>client.orderDrafts.<a href="/Sources/Resources/OrderDrafts/OrderDraftsClient.swift">updateV1</a>(request: Requests.OrdersDraftUpdateReq, requestOptions: RequestOptions?) -> OrdersDraftUpdateRes</code></summary>
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

    _ = try await client.orderDrafts.updateV1(request: .init(orderId: "order_id"))
}

try await main()
```
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

<details><summary><code>client.orderDrafts.<a href="/Sources/Resources/OrderDrafts/OrderDraftsClient.swift">deleteV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.deleteV1(orderId: "order_id")
}

try await main()
```
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

<details><summary><code>client.orderDrafts.<a href="/Sources/Resources/OrderDrafts/OrderDraftsClient.swift">validateV1</a>(orderId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.validateV1(orderId: "order_id")
}

try await main()
```
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

## TaskGroups
<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">startV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts a task group by transitioning it from STAGED to IN_PROGRESS and syncing related order state. | authz_personas=[courier_driver, lig_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.startV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">setTaskOrderingV1</a>(taskGroupId: String, request: Requests.SetTaskOrderingReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.setTaskOrderingV1(
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

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">updateDriverV1</a>(taskGroupId: String, request: Requests.UpdateDriverReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.updateDriverV1(
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

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">removeDriverV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.removeDriverV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">updateCourierOrgV1</a>(taskGroupId: String, request: Requests.UpdateCourierOrgReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.updateCourierOrgV1(
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

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">assignRateSheetV1</a>(rateSheetId: String, taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.assignRateSheetV1(
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

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">setFlightInfoV1</a>(taskGroupId: String, request: SetFlightInfoReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.setFlightInfoV1(
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

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">addMessageV1</a>(taskGroupId: String, request: Requests.AddMessageReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.addMessageV1(
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

## Tasks
<details><summary><code>client.tasks.<a href="/Sources/Resources/Tasks/TasksClient.swift">addToTaskGroupV1</a>(taskGroupId: String, request: Requests.AddTaskToGroupReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.tasks.addToTaskGroupV1(
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

<details><summary><code>client.tasks.<a href="/Sources/Resources/Tasks/TasksClient.swift">updateV1</a>(taskId: String, request: TaskClientUpdate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.tasks.updateV1(
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

<details><summary><code>client.tasks.<a href="/Sources/Resources/Tasks/TasksClient.swift">completeV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.tasks.completeV1(taskId: "task_id")
}

try await main()
```
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

<details><summary><code>client.tasks.<a href="/Sources/Resources/Tasks/TasksClient.swift">skipV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.tasks.skipV1(taskId: "task_id")
}

try await main()
```
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

<details><summary><code>client.tasks.<a href="/Sources/Resources/Tasks/TasksClient.swift">deleteV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.tasks.deleteV1(taskId: "task_id")
}

try await main()
```
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

## DirectoryEntries
<details><summary><code>client.directoryEntries.<a href="/Sources/Resources/DirectoryEntries/DirectoryEntriesClient.swift">getV1</a>(directoryEntryId: String, requestOptions: RequestOptions?) -> DirectoryEntry1</code></summary>
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

    _ = try await client.directoryEntries.getV1(directoryEntryId: "directory_entry_id")
}

try await main()
```
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

<details><summary><code>client.directoryEntries.<a href="/Sources/Resources/DirectoryEntries/DirectoryEntriesClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [DirectoryEntry1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all directory entries created by the caller's organization. | authz: min_org_role=operator | () -> (list[DirectoryEntry1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.directoryEntries.listV1()
}

try await main()
```
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

<details><summary><code>client.directoryEntries.<a href="/Sources/Resources/DirectoryEntries/DirectoryEntriesClient.swift">createV1</a>(request: Requests.DirectoryEntryClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.directoryEntries.createV1(request: .init(schemaVersion: 1))
}

try await main()
```
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

<details><summary><code>client.directoryEntries.<a href="/Sources/Resources/DirectoryEntries/DirectoryEntriesClient.swift">updateV1</a>(directoryEntryId: String, request: Requests.DirectoryEntryClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.directoryEntries.updateV1(
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

<details><summary><code>client.directoryEntries.<a href="/Sources/Resources/DirectoryEntries/DirectoryEntriesClient.swift">deleteV1</a>(directoryEntryId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.directoryEntries.deleteV1(directoryEntryId: "directory_entry_id")
}

try await main()
```
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

## Orgs
<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">getInfoV1</a>(requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves basic organization information from the authentication service. | () -> (dict)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">listMembersV1</a>(requestOptions: RequestOptions?) -> [OrgMemberDetails]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all members of the caller's organization with their roles and details. | () -> (list[OrgMemberDetails])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orgs.listMembersV1()
}

try await main()
```
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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">getOrgPrivateDataV1</a>(requestOptions: RequestOptions?) -> OrgPrivateData1</code></summary>
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

    _ = try await client.orgs.getOrgPrivateDataV1()
}

try await main()
```
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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">getOrgPublicDataV1</a>(requestOptions: RequestOptions?) -> OrgPublicData1</code></summary>
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

    _ = try await client.orgs.getOrgPublicDataV1()
}

try await main()
```
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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">createOrgPublicDataV1</a>(request: Requests.CreateOrgPublicDataReq, requestOptions: RequestOptions?) -> CreateOrgPublicDataRes</code></summary>
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

    _ = try await client.orgs.createOrgPublicDataV1(request: .init())
}

try await main()
```
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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">updateOrgPublicDataV1</a>(request: Requests.UpdateOrgPublicDataReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orgs.updateOrgPublicDataV1(request: .init())
}

try await main()
```
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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">getOrgPublicDataByOrgIdV1</a>(orgId: String, requestOptions: RequestOptions?) -> OrgPublicData1</code></summary>
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

    _ = try await client.orgs.getOrgPublicDataByOrgIdV1(orgId: "org_id")
}

try await main()
```
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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">getOrgPublicDataHandleAvailabilityV1</a>(handle: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orgs.getOrgPublicDataHandleAvailabilityV1(handle: "handle")
}

try await main()
```
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

## Root
<details><summary><code>client.root.<a href="/Sources/Resources/Root/RootClient.swift">pingAuthd</a>(requestOptions: RequestOptions?) -> [String: String]</code></summary>
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

    _ = try await client.root.pingAuthd()
}

try await main()
```
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

<details><summary><code>client.root.<a href="/Sources/Resources/Root/RootClient.swift">pingOptionallyAuthd</a>(requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
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

    _ = try await client.root.pingOptionallyAuthd()
}

try await main()
```
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

<details><summary><code>client.root.<a href="/Sources/Resources/Root/RootClient.swift">pingUnauthd</a>(requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
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

    _ = try await client.root.pingUnauthd()
}

try await main()
```
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

<details><summary><code>client.root.<a href="/Sources/Resources/Root/RootClient.swift">health</a>(requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
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

    _ = try await client.root.health()
}

try await main()
```
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

<details><summary><code>client.root.<a href="/Sources/Resources/Root/RootClient.swift">failure</a>(requestOptions: RequestOptions?) -> JSONValue</code></summary>
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

    _ = try await client.root.failure()
}

try await main()
```
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

## Users
<details><summary><code>client.users.<a href="/Sources/Resources/Users/UsersClient.swift">getUserPublicDataV1</a>(requestOptions: RequestOptions?) -> UserPublicData1</code></summary>
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

    _ = try await client.users.getUserPublicDataV1()
}

try await main()
```
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

<details><summary><code>client.users.<a href="/Sources/Resources/Users/UsersClient.swift">getUserPrivateDataV1</a>(requestOptions: RequestOptions?) -> UserPrivateData1</code></summary>
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

    _ = try await client.users.getUserPrivateDataV1()
}

try await main()
```
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

<details><summary><code>client.users.<a href="/Sources/Resources/Users/UsersClient.swift">createUserPrivateDataV1</a>(request: Requests.UserPrivateDataClientCreate1, requestOptions: RequestOptions?) -> UserPrivateData1</code></summary>
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

    _ = try await client.users.createUserPrivateDataV1(request: .init(schemaVersion: 1))
}

try await main()
```
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

<details><summary><code>client.users.<a href="/Sources/Resources/Users/UsersClient.swift">updateUserPrivateDataV1</a>(request: Requests.UserPrivateDataClientUpdate1, requestOptions: RequestOptions?) -> UserPrivateData1</code></summary>
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

    _ = try await client.users.updateUserPrivateDataV1(request: .init())
}

try await main()
```
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

<details><summary><code>client.users.<a href="/Sources/Resources/Users/UsersClient.swift">upsertFirebaseCloudMessagingTokenV1</a>(request: Requests.FirebaseCloudMessagingTokenClientCreate1, requestOptions: RequestOptions?) -> UserPrivateData1</code></summary>
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

    _ = try await client.users.upsertFirebaseCloudMessagingTokenV1(request: .init(firebaseCloudMessagingToken: "firebase_cloud_messaging_token"))
}

try await main()
```
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

<details><summary><code>client.billing.lineItemGroups.<a href="/Sources/Resources/Billing/LineItemGroups/LineItemGroupsClient.swift">listForCourierOrgV1</a>(filterDriverId: String?, filterStatus: LineItemGroupStatusEnum1?, filterAttachedToStatement: Bool?, filterPaymentRole: PaymentRoleFilterEnum?, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> LineItemGroupListRes</code></summary>
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
        filterPaymentRole: .origin,
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

**filterPaymentRole:** `PaymentRoleFilterEnum?` — Filter by payment role: origin (courier pays) or destination (courier receives). Returns both if not specified.
    
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

<details><summary><code>client.billing.rateSheets.<a href="/Sources/Resources/Billing/RateSheets/RateSheetsClient.swift">listByOrgV1</a>(sortBy: RateSheetSortByEnum?, sortOrder: RateSheetsListByOrgV1RequestSortOrder?, page: Int?, pageSize: Int?, filterArchived: Bool?, filterPaymentVectorType: PaymentVectorTypeEnum1?, filterServiceType: ServiceTypeEnum1?, filterCargoType: CargoTypeEnum1?, filterVehicleType: VehicleTypeEnum?, requestOptions: RequestOptions?) -> RateSheetListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists rate sheets for the caller's organization with filtering, sorting, and pagination. | authz: allowed_org_types=[courier, forwarder], min_org_role=operator | () -> (RateSheetListResponse)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        sortOrder: .ascending,
        page: 1,
        pageSize: 1,
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

**sortOrder:** `RateSheetsListByOrgV1RequestSortOrder?` 
    
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">listV1</a>(sortBy: StatementSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterStatus: StatementStatusEnum1?, filterSettlementType: SettlementTypeEnum1?, filterPaymentOriginOrgId: String?, filterPaymentDestinationOrgId: String?, filterOwnedByOrgId: String?, filterStagedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterOpenedAtTimestampGte: Date?, filterOpenedAtTimestampLte: Date?, filterPaidAtTimestampGte: Date?, filterPaidAtTimestampLte: Date?, requestOptions: RequestOptions?) -> StatementsListRes</code></summary>
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
        filterPaymentOriginOrgId: "filter_payment_origin_org_id",
        filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
        filterOwnedByOrgId: "filter_owned_by_org_id",
        filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOpenedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOpenedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPaidAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterPaidAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    )
}

try await main()
```
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

**filterPaymentOriginOrgId:** `String?` — Filter by payment origin org ID
    
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

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">updateSettlementTypeV1</a>(statementId: String, request: Requests.BodyStatementsPatchUpdateSettlementTypeV1BillingUpdateSettlementTypeV1StatementIdPatch, requestOptions: RequestOptions?) -> Statement1</code></summary>
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

**request:** `Requests.BodyStatementsPatchUpdateSettlementTypeV1BillingUpdateSettlementTypeV1StatementIdPatch` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.billing.statements.<a href="/Sources/Resources/Billing/Statements/StatementsClient.swift">updateOffChrtSettlementStateV1</a>(statementId: String, request: Requests.BodyStatementsPatchUpdateOffChrtSettlementStateV1BillingUpdateOffChrtSettlementStateV1StatementIdPatch, requestOptions: RequestOptions?) -> Statement1</code></summary>
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

**request:** `Requests.BodyStatementsPatchUpdateOffChrtSettlementStateV1BillingUpdateOffChrtSettlementStateV1StatementIdPatch` 
    
</dd>
</dl>

<dl>
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

Creates an ad-hoc line item group (not associated with a TaskGroup). Starts as ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator | (CreateAdHocLineItemGroupReq) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Adds a line item to an ad-hoc line item group. LIG must be ad-hoc (task_group_id is None) and ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | (LineItemClientCreate1) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Removes a line item from an ad-hoc line item group. LIG must be ad-hoc (task_group_id is None) and ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | (line_item_uuid_str) -> (LineItemGroup1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Deletes an ad-hoc line item group. LIG must be ad-hoc (task_group_id is None) and ADJUSTABLE or FINALIZED. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Connections ConnectionToCourier
<details><summary><code>client.connections.connectionToCourier.<a href="/Sources/Resources/Connections/ConnectionToCourier/ConnectionToCourierClient.swift">createV1</a>(request: CreateConnectionReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.connections.connectionToCourier.createV1(request: CreateConnectionReq(
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

## Connections ConnectionToShipper
<details><summary><code>client.connections.connectionToShipper.<a href="/Sources/Resources/Connections/ConnectionToShipper/ConnectionToShipperClient.swift">createV1</a>(request: CreateConnectionReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.connections.connectionToShipper.createV1(request: CreateConnectionReq(
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

## Connections ConnectionToForwarder
<details><summary><code>client.connections.connectionToForwarder.<a href="/Sources/Resources/Connections/ConnectionToForwarder/ConnectionToForwarderClient.swift">createV1</a>(request: CreateConnectionReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.connections.connectionToForwarder.createV1(request: CreateConnectionReq(
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

## Notifications AdHoc
<details><summary><code>client.notifications.adHoc.<a href="/Sources/Resources/Notifications/AdHoc/NotificationsAdHocClient.swift">listByOrderIdV1</a>(orderId: String, requestOptions: RequestOptions?) -> [NotificationIntentAdHoc1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all ad-hoc notification intents for an order. | authz: min_org_role=operator | () -> (list[NotificationIntentAdHoc1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.adHoc.listByOrderIdV1(orderId: "order_id")
}

try await main()
```
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
<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">listByOrgV1</a>(requestOptions: RequestOptions?) -> [NotificationGroup1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all notification groups for the caller's organization. | authz: min_org_role=operator | () -> (list[NotificationGroup1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.listByOrgV1()
}

try await main()
```
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

<details><summary><code>client.notifications.groups.<a href="/Sources/Resources/Notifications/Groups/GroupsClient.swift">listByUserV1</a>(requestOptions: RequestOptions?) -> [NotificationGroupLimitedForDriver1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists notification groups the caller is a member of. | () -> (list[NotificationGroupLimitedForDriver1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.groups.listByUserV1()
}

try await main()
```
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

## OrderDrafts TaskGroup
<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">addV1</a>(request: Requests.OrderDraftAddTaskGroupReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orderDrafts.taskGroup.addV1(request: .init(
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

<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">setFlightInfoV1</a>(taskGroupId: String, request: SetFlightInfoReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.taskGroup.setFlightInfoV1(
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

<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">updateCourierOrgV1</a>(taskGroupId: String, request: Requests.UpdateCourierOrgDraftReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.taskGroup.updateCourierOrgV1(
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

<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">removeCourierOrgV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.taskGroup.removeCourierOrgV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">setTaskOrderingV1</a>(taskGroupId: String, request: Requests.SetTaskOrderingDraftReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.taskGroup.setTaskOrderingV1(
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

<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">setRateSheetsV1</a>(taskGroupId: String, request: Requests.SetRateSheetsReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.taskGroup.setRateSheetsV1(
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

<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">setServiceTypeV1</a>(taskGroupId: String, request: Requests.SetServiceTypeReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.taskGroup.setServiceTypeV1(
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

<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">deleteV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.taskGroup.deleteV1(taskGroupId: "task_group_id")
}

try await main()
```
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

## OrderDrafts Task
<details><summary><code>client.orderDrafts.task.<a href="/Sources/Resources/OrderDrafts/Task/TaskClient.swift">addV1</a>(request: Requests.OrderDraftAddTaskReqV1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orderDrafts.task.addV1(request: .init(
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

<details><summary><code>client.orderDrafts.task.<a href="/Sources/Resources/OrderDrafts/Task/TaskClient.swift">updateV1</a>(request: Requests.OrderDraftUpdateTaskReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orderDrafts.task.updateV1(request: .init(
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

<details><summary><code>client.orderDrafts.task.<a href="/Sources/Resources/OrderDrafts/Task/TaskClient.swift">deleteV1</a>(taskId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.task.deleteV1(taskId: "task_id")
}

try await main()
```
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

## OrderDrafts TaskArtifact
<details><summary><code>client.orderDrafts.taskArtifact.<a href="/Sources/Resources/OrderDrafts/TaskArtifact/TaskArtifactClient.swift">addV1</a>(request: Requests.OrderDraftAddTaskArtifactReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orderDrafts.taskArtifact.addV1(request: .init(
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

<details><summary><code>client.orderDrafts.taskArtifact.<a href="/Sources/Resources/OrderDrafts/TaskArtifact/TaskArtifactClient.swift">deleteV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.taskArtifact.deleteV1(taskArtifactId: "task_artifact_id")
}

try await main()
```
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

## OrderDrafts Cargo
<details><summary><code>client.orderDrafts.cargo.<a href="/Sources/Resources/OrderDrafts/Cargo/CargoClient.swift">addV1</a>(request: Requests.OrderDraftAddCargoReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orderDrafts.cargo.addV1(request: .init(
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

<details><summary><code>client.orderDrafts.cargo.<a href="/Sources/Resources/OrderDrafts/Cargo/CargoClient.swift">associateWithTaskV1</a>(request: Requests.OrderDraftAssociateCargoWithTaskReq, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.cargo.associateWithTaskV1(request: .init(
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

<details><summary><code>client.orderDrafts.cargo.<a href="/Sources/Resources/OrderDrafts/Cargo/CargoClient.swift">updateV1</a>(request: Requests.OrderDraftUpdateCargoReq, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orderDrafts.cargo.updateV1(request: .init(
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

<details><summary><code>client.orderDrafts.cargo.<a href="/Sources/Resources/OrderDrafts/Cargo/CargoClient.swift">deleteV1</a>(cargoId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orderDrafts.cargo.deleteV1(cargoId: "cargo_id")
}

try await main()
```
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

## OrderDrafts Expanded
<details><summary><code>client.orderDrafts.expanded.<a href="/Sources/Resources/OrderDrafts/Expanded/ExpandedClient.swift">retrieveV1</a>(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderDraftExpanded</code></summary>
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

    _ = try await client.orderDrafts.expanded.retrieveV1(
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

<details><summary><code>client.orderDrafts.expanded.<a href="/Sources/Resources/OrderDrafts/Expanded/ExpandedClient.swift">listV1</a>(sortBy: OrderDraftSortByEnum?, sortOrder: ExpandedListV1RequestSortOrder?, page: Int?, pageSize: Int?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderDraftExpandedListRes</code></summary>
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

    _ = try await client.orderDrafts.expanded.listV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .ascending,
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

**sortOrder:** `ExpandedListV1RequestSortOrder?` 
    
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

## Orders Expanded
<details><summary><code>client.orders.expanded.<a href="/Sources/Resources/Orders/Expanded/OrdersExpandedClient.swift">forShipperOperatorsV1</a>(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderExpanded</code></summary>
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

    _ = try await client.orders.expanded.forShipperOperatorsV1(
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

<details><summary><code>client.orders.expanded.<a href="/Sources/Resources/Orders/Expanded/OrdersExpandedClient.swift">forForwarderOperatorsV1</a>(orderIdOrShortId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrderExpanded</code></summary>
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

    _ = try await client.orders.expanded.forForwarderOperatorsV1(
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

<details><summary><code>client.orders.expanded.<a href="/Sources/Resources/Orders/Expanded/OrdersExpandedClient.swift">listForForwarderOperatorsV1</a>(sortBy: OrderSortByEnum?, sortOrder: ExpandedListForForwarderOperatorsV1RequestSortOrder?, page: Int?, pageSize: Int?, filterStatus: OrderStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterOrderCancelledAtTimestampLte: Date?, filterOrderCancelledAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrdersExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded orders for forwarder operators with filtering, sorting, and pagination. | authz: allowed_org_types=[forwarder], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orders.expanded.listForForwarderOperatorsV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .ascending,
        page: 1,
        pageSize: 1,
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

**sortOrder:** `ExpandedListForForwarderOperatorsV1RequestSortOrder?` 
    
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

<details><summary><code>client.orders.expanded.<a href="/Sources/Resources/Orders/Expanded/OrdersExpandedClient.swift">listForShipperOperatorsV1</a>(sortBy: OrderSortByEnum?, sortOrder: ExpandedListForShipperOperatorsV1RequestSortOrder?, page: Int?, pageSize: Int?, filterStatus: OrderStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, filterOrderCancelledAtTimestampLte: Date?, filterOrderCancelledAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> OrdersExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded orders for shipper operators with filtering, sorting, and pagination. | authz: allowed_org_types=[shipper], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orders.expanded.listForShipperOperatorsV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .ascending,
        page: 1,
        pageSize: 1,
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

**sortOrder:** `ExpandedListForShipperOperatorsV1RequestSortOrder?` 
    
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

## OrgInfoForConnections Shipper
<details><summary><code>client.orgInfoForConnections.shipper.<a href="/Sources/Resources/OrgInfoForConnections/Shipper/ShipperClient.swift">getV1</a>(requestOptions: RequestOptions?) -> ShipperOrgInfoForConnections1</code></summary>
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

    _ = try await client.orgInfoForConnections.shipper.getV1()
}

try await main()
```
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

<details><summary><code>client.orgInfoForConnections.shipper.<a href="/Sources/Resources/OrgInfoForConnections/Shipper/ShipperClient.swift">createV1</a>(request: Requests.ShipperOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orgInfoForConnections.shipper.createV1(request: .init(
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

<details><summary><code>client.orgInfoForConnections.shipper.<a href="/Sources/Resources/OrgInfoForConnections/Shipper/ShipperClient.swift">updateV1</a>(request: Requests.ShipperOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orgInfoForConnections.shipper.updateV1(request: .init())
}

try await main()
```
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

## OrgInfoForConnections Courier
<details><summary><code>client.orgInfoForConnections.courier.<a href="/Sources/Resources/OrgInfoForConnections/Courier/CourierClient.swift">getV1</a>(requestOptions: RequestOptions?) -> CourierOrgInfoForConnections1</code></summary>
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

    _ = try await client.orgInfoForConnections.courier.getV1()
}

try await main()
```
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

<details><summary><code>client.orgInfoForConnections.courier.<a href="/Sources/Resources/OrgInfoForConnections/Courier/CourierClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [CourierOrgInfoForConnections1]</code></summary>
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

    _ = try await client.orgInfoForConnections.courier.listV1()
}

try await main()
```
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

<details><summary><code>client.orgInfoForConnections.courier.<a href="/Sources/Resources/OrgInfoForConnections/Courier/CourierClient.swift">createV1</a>(request: Requests.CourierOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orgInfoForConnections.courier.createV1(request: .init(
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

<details><summary><code>client.orgInfoForConnections.courier.<a href="/Sources/Resources/OrgInfoForConnections/Courier/CourierClient.swift">updateV1</a>(request: Requests.CourierOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orgInfoForConnections.courier.updateV1(request: .init())
}

try await main()
```
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

## OrgInfoForConnections Forwarder
<details><summary><code>client.orgInfoForConnections.forwarder.<a href="/Sources/Resources/OrgInfoForConnections/Forwarder/ForwarderClient.swift">getV1</a>(requestOptions: RequestOptions?) -> ForwarderOrgInfoForConnections1</code></summary>
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

    _ = try await client.orgInfoForConnections.forwarder.getV1()
}

try await main()
```
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

<details><summary><code>client.orgInfoForConnections.forwarder.<a href="/Sources/Resources/OrgInfoForConnections/Forwarder/ForwarderClient.swift">createV1</a>(request: Requests.ForwarderOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

    _ = try await client.orgInfoForConnections.forwarder.createV1(request: .init(
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

<details><summary><code>client.orgInfoForConnections.forwarder.<a href="/Sources/Resources/OrgInfoForConnections/Forwarder/ForwarderClient.swift">updateV1</a>(request: Requests.ForwarderOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.orgInfoForConnections.forwarder.updateV1(request: .init())
}

try await main()
```
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

## TaskArtifacts S3Object
<details><summary><code>client.taskArtifacts.s3Object.<a href="/Sources/Resources/TaskArtifacts/S3Object/S3ObjectClient.swift">getS3ObjectMetadataV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> TaskArtifactS3ObjectMetadata1</code></summary>
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

    _ = try await client.taskArtifacts.s3Object.getS3ObjectMetadataV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
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

<details><summary><code>client.taskArtifacts.s3Object.<a href="/Sources/Resources/TaskArtifacts/S3Object/S3ObjectClient.swift">getV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
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

    _ = try await client.taskArtifacts.s3Object.getV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
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

<details><summary><code>client.taskArtifacts.s3Object.<a href="/Sources/Resources/TaskArtifacts/S3Object/S3ObjectClient.swift">addV1</a>(taskArtifactId: String, request: Requests.BodyPostTaskArtifactsS3ObjectAddV1OortTaskArtifactsS3ObjectAddV1TaskArtifactIdPost, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskArtifacts.s3Object.addV1(
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

**request:** `Requests.BodyPostTaskArtifactsS3ObjectAddV1OortTaskArtifactsS3ObjectAddV1TaskArtifactIdPost` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskArtifacts.s3Object.<a href="/Sources/Resources/TaskArtifacts/S3Object/S3ObjectClient.swift">deleteV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskArtifacts.s3Object.deleteV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
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

## TaskGroups TaskGroupId
<details><summary><code>client.taskGroups.taskGroupId.<a href="/Sources/Resources/TaskGroups/TaskGroupId/TaskGroupIdClient.swift">forCourierOperatorsV1</a>(orderIdOrShortId: String, requestOptions: RequestOptions?) -> [String]</code></summary>
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

    _ = try await client.taskGroups.taskGroupId.forCourierOperatorsV1(orderIdOrShortId: "order_id_or_short_id")
}

try await main()
```
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

<details><summary><code>client.taskGroups.taskGroupId.<a href="/Sources/Resources/TaskGroups/TaskGroupId/TaskGroupIdClient.swift">forCourierDriverV1</a>(orderIdOrShortId: String, requestOptions: RequestOptions?) -> [String]</code></summary>
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

    _ = try await client.taskGroups.taskGroupId.forCourierDriverV1(orderIdOrShortId: "order_id_or_short_id")
}

try await main()
```
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

## TaskGroups S3Object
<details><summary><code>client.taskGroups.s3Object.<a href="/Sources/Resources/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">getS3ObjectMetadataV1</a>(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> TaskGroupS3ObjectMetadata1</code></summary>
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

    _ = try await client.taskGroups.s3Object.getS3ObjectMetadataV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
}

try await main()
```
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

<details><summary><code>client.taskGroups.s3Object.<a href="/Sources/Resources/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">getV1</a>(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
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

    _ = try await client.taskGroups.s3Object.getV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
}

try await main()
```
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

<details><summary><code>client.taskGroups.s3Object.<a href="/Sources/Resources/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">addV1</a>(taskGroupId: String, request: Requests.BodyPostTaskGroupsS3ObjectAddV1OortTaskGroupsS3ObjectAddV1TaskGroupIdPost, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.s3Object.addV1(
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

**request:** `Requests.BodyPostTaskGroupsS3ObjectAddV1OortTaskGroupsS3ObjectAddV1TaskGroupIdPost` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskGroups.s3Object.<a href="/Sources/Resources/TaskGroups/S3Object/TaskGroupsS3ObjectClient.swift">deleteV1</a>(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.taskGroups.s3Object.deleteV1(taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id")
}

try await main()
```
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

## TaskGroups Expanded
<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forCourierOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
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

    _ = try await client.taskGroups.expanded.forCourierOperatorsV1(
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

<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forCourierDriverV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
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

    _ = try await client.taskGroups.expanded.forCourierDriverV1(
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

<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forShipperOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
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

    _ = try await client.taskGroups.expanded.forShipperOperatorsV1(
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

<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forForwarderOperatorsV1</a>(taskGroupId: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpanded</code></summary>
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

    _ = try await client.taskGroups.expanded.forForwarderOperatorsV1(
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

<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">listForCourierOperatorsV1</a>(sortBy: TaskGroupSortByEnum?, sortOrder: ExpandedListForCourierOperatorsV1RequestSortOrder?, page: Int?, pageSize: Int?, filterStatus: TaskGroupStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterSkippedAtTimestampLte: Date?, filterSkippedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded task groups for courier operators with filtering, sorting, and pagination. | authz_personas=[courier_org_operators] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.expanded.listForCourierOperatorsV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .ascending,
        page: 1,
        pageSize: 1,
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

**sortOrder:** `ExpandedListForCourierOperatorsV1RequestSortOrder?` 
    
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

<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">listForCourierDriverV1</a>(sortBy: TaskGroupSortByEnum?, sortOrder: ExpandedListForCourierDriverV1RequestSortOrder?, page: Int?, pageSize: Int?, filterStatus: TaskGroupStatusEnum1?, filterDraftStartedAtTimestampLte: Date?, filterDraftStartedAtTimestampGte: Date?, filterStagedAtTimestampLte: Date?, filterStagedAtTimestampGte: Date?, filterInProgressAtTimestampLte: Date?, filterInProgressAtTimestampGte: Date?, filterCompletedAtTimestampLte: Date?, filterCompletedAtTimestampGte: Date?, filterSkippedAtTimestampLte: Date?, filterSkippedAtTimestampGte: Date?, filterExceptionAtTimestampLte: Date?, filterExceptionAtTimestampGte: Date?, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions?) -> TaskGroupExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists expanded task groups for courier driver with filtering, sorting, and pagination. | authz_personas=[courier_driver] | (OrderAndTaskGroupExpandedReq) -> (TaskGroupExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.expanded.listForCourierDriverV1(
        sortBy: .draftStartedAtTimestamp,
        sortOrder: .ascending,
        page: 1,
        pageSize: 1,
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

**sortOrder:** `ExpandedListForCourierDriverV1RequestSortOrder?` 
    
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

## Tracking Devices
<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">registerToOrgV1</a>(request: Requests.DevicesRegisterToOrgReq1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a tracking device to the caller's organization. If device is already registered to a different organization, registration is blocked. | (DevicesRegisterToOrgReq1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.registerToOrgV1(request: .init(deviceMacAddress: "device_mac_address"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DevicesRegisterToOrgReq1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">updateV1</a>(request: Requests.DevicesUpdateRequest1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a device's type, comments, and/or off_chrt_order_id. Can update one or more fields, or delete them by setting delete flags. | (DevicesUpdateRequest1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.updateV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.DevicesUpdateRequest1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">deleteV1</a>(deviceId: String?, deviceMacAddress: String?, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a device by ID or MAC address. Device must be unlinked from any session or cargo before deletion. Deregisters from Shiprec (transfers to deactivate account) before removing from database. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.deleteV1(
        deviceId: "device_id",
        deviceMacAddress: "device_mac_address"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**deviceMacAddress:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">linkToCargoV1</a>(deviceMacAddress: String, cargoId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Links a device to cargo with bidirectional references. Device must not already be linked to a session or different cargo. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.linkToCargoV1(
        deviceMacAddress: "device_mac_address",
        cargoId: "cargo_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceMacAddress:** `String` 
    
</dd>
</dl>

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

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">unlinkFromCargoV1</a>(deviceMacAddress: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unlinks a device from its linked cargo, removing the bidirectional reference. Returns false if device is not linked to any cargo. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.unlinkFromCargoV1(deviceMacAddress: "device_mac_address")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceMacAddress:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">getV1</a>(deviceMacAddress: String?, deviceId: String?, requestOptions: RequestOptions?) -> Device1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single device by its MAC address or ID. Access restricted to the caller's organization. | authz: min_org_role=operator | () -> (Device1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.getV1(
        deviceMacAddress: "device_mac_address",
        deviceId: "device_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**deviceMacAddress:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**deviceId:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [Device1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns all tracking devices registered to the caller's organization. | authz: min_org_role=operator | () -> (list[Device1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.devices.listV1()
}

try await main()
```
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
                    GeometryCollectionOutputGeometriesItem.lineString(
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
<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">listV1</a>(sortBy: SessionSortByEnum?, sortOrder: SortOrderEnum?, page: Int?, pageSize: Int?, filterRecording: Bool?, filterTerminated: Bool?, filterPublic: Bool?, filterDeviceId: String?, filterOffChrtOrderId: String?, filterFlightNumber: String?, filterSessionCreatedAtTimestampGte: Date?, filterSessionCreatedAtTimestampLte: Date?, filterRecordingInitiatedAtTimestampGte: Date?, filterRecordingInitiatedAtTimestampLte: Date?, requestOptions: RequestOptions?) -> SessionListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists sessions with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (SessionListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        sortBy: .sessionCreatedAtTimestamp,
        sortOrder: .asc,
        page: 1,
        pageSize: 1,
        filterRecording: true,
        filterTerminated: true,
        filterPublic: true,
        filterDeviceId: "filter_device_id",
        filterOffChrtOrderId: "filter_off_chrt_order_id",
        filterFlightNumber: "filter_flight_number",
        filterSessionCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterSessionCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterRecordingInitiatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterRecordingInitiatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    )
}

try await main()
```
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

**filterRecording:** `Bool?` — Filter by recording status
    
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

**filterOffChrtOrderId:** `String?` — Filter by off-CHRT order ID (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterFlightNumber:** `String?` — Filter by flight number (exact match)
    
</dd>
</dl>

<dl>
<dd>

**filterSessionCreatedAtTimestampGte:** `Date?` — Filter by session_created_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterSessionCreatedAtTimestampLte:** `Date?` — Filter by session_created_at_timestamp <= value
    
</dd>
</dl>

<dl>
<dd>

**filterRecordingInitiatedAtTimestampGte:** `Date?` — Filter by recording_initiated_at_timestamp >= value
    
</dd>
</dl>

<dl>
<dd>

**filterRecordingInitiatedAtTimestampLte:** `Date?` — Filter by recording_initiated_at_timestamp <= value
    
</dd>
</dl>

<dl>
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

Retrieves a single session by its ID. Access restricted to the caller's organization. | authz: min_org_role=operator | () -> (Session1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">typeaheadOffChrtOrderIdV1</a>(query: String, limit: Int?, requestOptions: RequestOptions?) -> [String]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns distinct off_chrt_order_id values matching the query via case-insensitive regex, searching across both sessions and devices. | authz: min_org_role=operator | () -> (list[str])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.typeaheadOffChrtOrderIdV1(
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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">searchV1</a>(query: String, page: Int?, pageSize: Int?, requestOptions: RequestOptions?) -> SessionSearchRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Full-text search across session comments, device_mac_address, flight_number, and off_chrt_order_id using Atlas Search. | authz: min_org_role=operator | () -> (SessionSearchRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.searchV1(
        query: "query",
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

**query:** `String` — Full-text search query
    
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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">createSessionV1</a>(request: Requests.SessionCreateSessionRequest1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new tracking session for a device and links the device to it. The device must be registered to the caller's organization. | (SessionCreateSessionRequest1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.createSessionV1(request: .init(deviceMacAddress: "device_mac_address"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionCreateSessionRequest1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">updateV1</a>(request: Requests.SessionUpdateRequest1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a session's mutable fields (comments, public, off_chrt_order_id, flight_number, fa_flight_ids). | (SessionUpdateRequest1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.updateV1(request: .init(sessionId: "session_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionUpdateRequest1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">startV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts location recording for a session by setting recording status to true. Sets the recording initiated timestamp on first start. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.startV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">pauseRecordingV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pauses location recording for a session by setting recording status to false. Device remains linked to the session. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.pauseRecordingV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">resumeRecordingV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resumes location recording for a session by setting recording status to true. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.resumeRecordingV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">terminateV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Terminates a session by setting recording to false and marking it as terminated. Unlinks the device from the session. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.sessions.<a href="/Sources/Resources/Tracking/Sessions/SessionsClient.swift">deleteV1</a>(sessionId: String, requestOptions: RequestOptions?) -> SessionDeleteResponse1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a terminated session and all its associated timeseries data points. Only sessions marked as terminated can be deleted. | () -> (SessionDeleteResponse1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessions.deleteV1(sessionId: "session_id")
}

try await main()
```
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

Returns the most recent data point for a session, excluding outliers. Access restricted to the caller's organization. | authz: min_org_role=operator | () -> (SessionByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.timeseries.sessionByDevice.<a href="/Sources/Resources/Tracking/Timeseries/SessionByDevice/SessionByDeviceClient.swift">dataPointsV1</a>(sessionId: String, limit: Int?, requestOptions: RequestOptions?) -> [SessionByDeviceDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a session, intelligently sampled across the time range. Excludes outliers. | () -> (list[SessionByDeviceDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**sessionId:** `String` 
    
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

<details><summary><code>client.tracking.timeseries.sessionByDevice.<a href="/Sources/Resources/Tracking/Timeseries/SessionByDevice/SessionByDeviceClient.swift">dataPointsPublicV1</a>(sessionId: String, limit: Int?, requestOptions: RequestOptions?) -> [SessionByDeviceDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a public session, intelligently sampled across the time range. Excludes outliers. No authentication required if session has public visibility enabled. | () -> (list[SessionByDeviceDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**sessionId:** `String` 
    
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

