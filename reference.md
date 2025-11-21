# Reference
## Payments
<details><summary><code>client.payments.<a href="/Sources/Resources/Payments/PaymentsClient.swift">generateInvoiceV1</a>(request: Requests.GenerateInvoiceReq, requestOptions: RequestOptions?) -> GenerateInvoiceRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generates and sends a Stripe invoice for a shipper statement to a courier organization's Connect account. Applies a 10% application fee.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.payments.generateInvoiceV1(request: .init(shipperPayCourierStatementId: "shipper_pay_courier_statement_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.GenerateInvoiceReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/Sources/Resources/Payments/PaymentsClient.swift">createCheckoutSessionV1</a>(request: Requests.CreateCheckoutSessionReq, requestOptions: RequestOptions?) -> CreateCheckoutSessionRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Stripe checkout session for a subscription with pricing based on the selected plan.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Synchronizes subscription data from Stripe to the authentication service for the current user.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.payments.<a href="/Sources/Resources/Payments/PaymentsClient.swift">createConnectAccountV1</a>(requestOptions: RequestOptions?) -> CreateConnectAccountRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a Stripe Connect account for the organization to receive payments. Idempotent - returns existing account if already created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.payments.createConnectAccountV1()
}

try await main()
```
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

<details><summary><code>client.payments.<a href="/Sources/Resources/Payments/PaymentsClient.swift">createConnectAccountLinkV1</a>(requestOptions: RequestOptions?) -> CreateConnectAccountLinkRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an onboarding link for a Stripe Connect account. Used to complete or update account setup.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.payments.createConnectAccountLinkV1()
}

try await main()
```
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

## CourierPayDriverLineItemGroups
<details><summary><code>client.courierPayDriverLineItemGroups.<a href="/Sources/Resources/CourierPayDriverLineItemGroups/CourierPayDriverLineItemGroupsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> CourierPayDriverLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a courier driver line item group by its ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverLineItemGroups.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverLineItemGroups.<a href="/Sources/Resources/CourierPayDriverLineItemGroups/CourierPayDriverLineItemGroupsClient.swift">byTaskGroupIdV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> CourierPayDriverLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a courier driver line item group by its associated task group ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverLineItemGroups.byTaskGroupIdV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverLineItemGroups.<a href="/Sources/Resources/CourierPayDriverLineItemGroups/CourierPayDriverLineItemGroupsClient.swift">previewV1</a>(driverId: String, request: CourierPayDriverLineItemGroupCreateReq, requestOptions: RequestOptions?) -> CourierPayDriverLineItemGroupServerCreate1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Previews calculated line items for a driver based on a rate sheet and task group. Does not write to the database.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverLineItemGroups.previewV1(
        driverId: "driver_id",
        request: CourierPayDriverLineItemGroupCreateReq(
            courierPayDriverRateSheetId: "courier_pay_driver_rate_sheet_id",
            taskGroupId: "task_group_id"
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

**request:** `CourierPayDriverLineItemGroupCreateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.courierPayDriverLineItemGroups.<a href="/Sources/Resources/CourierPayDriverLineItemGroups/CourierPayDriverLineItemGroupsClient.swift">createV1</a>(request: CourierPayDriverLineItemGroupCreateReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a courier pay driver line item group by calculating items from a rate sheet and task group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverLineItemGroups.createV1(request: CourierPayDriverLineItemGroupCreateReq(
        courierPayDriverRateSheetId: "courier_pay_driver_rate_sheet_id",
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

**request:** `CourierPayDriverLineItemGroupCreateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CourierPayDriverPayouts
<details><summary><code>client.courierPayDriverPayouts.<a href="/Sources/Resources/CourierPayDriverPayouts/CourierPayDriverPayoutsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> CourierPayDriverStatement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific courier driver payout by ID for the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverPayouts.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverPayouts.<a href="/Sources/Resources/CourierPayDriverPayouts/CourierPayDriverPayoutsClient.swift">listByDriverIdV1</a>(driverId: String, requestOptions: RequestOptions?) -> [CourierPayDriverStatement1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all payouts for a specific driver within the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverPayouts.listByDriverIdV1(driverId: "driver_id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverPayouts.<a href="/Sources/Resources/CourierPayDriverPayouts/CourierPayDriverPayoutsClient.swift">createV1</a>(request: CourierPayDriverStatementClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new driver payout from selected line item groups and calculates the total amount.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverPayouts.createV1(request: CourierPayDriverStatementClientCreate1(
        schemaVersion: 1,
        courierPayDriverLineItemGroupIds: [
            "courier_pay_driver_line_item_group_ids"
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

**request:** `CourierPayDriverStatementClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.courierPayDriverPayouts.<a href="/Sources/Resources/CourierPayDriverPayouts/CourierPayDriverPayoutsClient.swift">updateStatusV1</a>(id: String, request: CourierPayDriverStatementClientUpdate1, requestOptions: RequestOptions?) -> CourierPayDriverStatement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the status of a courier driver payout with validation of allowed state transitions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverPayouts.updateStatusV1(
        id: "id",
        request: CourierPayDriverStatementClientUpdate1(

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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `CourierPayDriverStatementClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CourierPayDriverRateSheets
<details><summary><code>client.courierPayDriverRateSheets.<a href="/Sources/Resources/CourierPayDriverRateSheets/CourierPayDriverRateSheetsClient.swift">listByCourierOrgIdV1</a>(requestOptions: RequestOptions?) -> [CourierPayDriverRateSheet1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all driver rate sheets for the authenticated courier organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverRateSheets.listByCourierOrgIdV1()
}

try await main()
```
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

<details><summary><code>client.courierPayDriverRateSheets.<a href="/Sources/Resources/CourierPayDriverRateSheets/CourierPayDriverRateSheetsClient.swift">listByDriverIdV1</a>(driverId: String, requestOptions: RequestOptions?) -> [CourierPayDriverRateSheet1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves all rate sheets assigned to a specific driver.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverRateSheets.listByDriverIdV1(driverId: "driver_id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverRateSheets.<a href="/Sources/Resources/CourierPayDriverRateSheets/CourierPayDriverRateSheetsClient.swift">createV1</a>(request: Requests.CourierPayDriverRateSheetClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new driver rate sheet for calculating courier payments.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverRateSheets.createV1(request: .init(
        schemaVersion: 1,
        courierOrgId: "courier_org_id",
        baseMileageDistanceMiles: 1.1,
        baseMileageRateUsdPerInstance: 1.1,
        additionalMileageRateUsdPerMile: 1.1,
        longDistanceSurchargeMilesBeforeSurcharge: 1.1,
        longDistanceSurchargeRateUsdPerMile: 1.1,
        fuelSurchargeRateUsdPerMile: 1.1,
        waitTimeBeforeChargeMinutes: 1.1,
        waitTimeRateUsdPerMinute: 1.1,
        extraStopRateUsd: 1.1,
        dangerousGoodsRateUsdPerInstance: 1.1,
        afterHours: 1.1,
        weekend: 1.1,
        holiday: 1.1
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

**request:** `Requests.CourierPayDriverRateSheetClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.courierPayDriverRateSheets.<a href="/Sources/Resources/CourierPayDriverRateSheets/CourierPayDriverRateSheetsClient.swift">getV1</a>(id: String, requestOptions: RequestOptions?) -> CourierPayDriverRateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single rate sheet by its ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverRateSheets.getV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverRateSheets.<a href="/Sources/Resources/CourierPayDriverRateSheets/CourierPayDriverRateSheetsClient.swift">deleteByIdV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a driver rate sheet owned by the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverRateSheets.deleteByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverRateSheets.<a href="/Sources/Resources/CourierPayDriverRateSheets/CourierPayDriverRateSheetsClient.swift">updateByIdV1</a>(id: String, request: Requests.CourierPayDriverRateSheetClientUpdate1, requestOptions: RequestOptions?) -> CourierPayDriverRateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing driver rate sheet owned by the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverRateSheets.updateByIdV1(
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

**request:** `Requests.CourierPayDriverRateSheetClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CourierPayDriverStatements
<details><summary><code>client.courierPayDriverStatements.<a href="/Sources/Resources/CourierPayDriverStatements/CourierPayDriverStatementsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> CourierPayDriverStatement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific courier driver statement by ID for the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverStatements.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverStatements.<a href="/Sources/Resources/CourierPayDriverStatements/CourierPayDriverStatementsClient.swift">listByDriverIdV1</a>(driverId: String, requestOptions: RequestOptions?) -> [CourierPayDriverStatement1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all statements for a specific driver within the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverStatements.listByDriverIdV1(driverId: "driver_id")
}

try await main()
```
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

<details><summary><code>client.courierPayDriverStatements.<a href="/Sources/Resources/CourierPayDriverStatements/CourierPayDriverStatementsClient.swift">createV1</a>(request: CourierPayDriverStatementClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new driver statement from selected line item groups and calculates the total amount.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverStatements.createV1(request: CourierPayDriverStatementClientCreate1(
        schemaVersion: 1,
        courierPayDriverLineItemGroupIds: [
            "courier_pay_driver_line_item_group_ids"
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

**request:** `CourierPayDriverStatementClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.courierPayDriverStatements.<a href="/Sources/Resources/CourierPayDriverStatements/CourierPayDriverStatementsClient.swift">updateStatusV1</a>(id: String, request: CourierPayDriverStatementClientUpdate1, requestOptions: RequestOptions?) -> CourierPayDriverStatement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the status of a courier driver statement with validation of allowed state transitions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverStatements.updateStatusV1(
        id: "id",
        request: CourierPayDriverStatementClientUpdate1(

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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `CourierPayDriverStatementClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ShipperPayCourierLineItemGroups
<details><summary><code>client.shipperPayCourierLineItemGroups.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/ShipperPayCourierLineItemGroupsClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> ShipperPayCourierLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipper pay courier line item group by its ID for the authenticated courier organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierLineItemGroups.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/ShipperPayCourierLineItemGroupsClient.swift">deleteByIdV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a shipper pay courier line item group by its ID if not referenced by any payment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.deleteByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierLineItemGroups.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/ShipperPayCourierLineItemGroupsClient.swift">byTaskGroupIdV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> ShipperPayCourierLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipper pay courier line item group by its associated task group ID for the authenticated courier organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.byTaskGroupIdV1(taskGroupId: "task_group_id")
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierLineItemGroups.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/ShipperPayCourierLineItemGroupsClient.swift">previewV1</a>(request: ShipperPayCourierLineItemGroupCreateReq, requestOptions: RequestOptions?) -> ShipperPayCourierLineItemGroupServerCreate1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Previews calculated line items for a shipper pay courier based on rate sheet and task group without creating the group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.previewV1(request: ShipperPayCourierLineItemGroupCreateReq(
        shipperPayCourierRateSheetId: "shipper_pay_courier_rate_sheet_id",
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

**request:** `ShipperPayCourierLineItemGroupCreateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierLineItemGroups.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/ShipperPayCourierLineItemGroupsClient.swift">createV1</a>(request: ShipperPayCourierLineItemGroupCreateReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a shipper pay courier line item group by calculating items from rate sheet and task group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.createV1(request: ShipperPayCourierLineItemGroupCreateReq(
        shipperPayCourierRateSheetId: "shipper_pay_courier_rate_sheet_id",
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

**request:** `ShipperPayCourierLineItemGroupCreateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ShipperPayCourierPayments
<details><summary><code>client.shipperPayCourierPayments.<a href="/Sources/Resources/ShipperPayCourierPayments/ShipperPayCourierPaymentsClient.swift">getByIdV1</a>(shipperPayCourierPaymentId: String, requestOptions: RequestOptions?) -> ShipperPayCourierStatement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipper pay courier payment by its ID with Stripe invoice sync.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierPayments.getByIdV1(shipperPayCourierPaymentId: "shipper_pay_courier_payment_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**shipperPayCourierPaymentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierPayments.<a href="/Sources/Resources/ShipperPayCourierPayments/ShipperPayCourierPaymentsClient.swift">deleteV1</a>(shipperPayCourierPaymentId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a shipper-to-courier payment record if invoice not yet created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierPayments.deleteV1(shipperPayCourierPaymentId: "shipper_pay_courier_payment_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**shipperPayCourierPaymentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierPayments.<a href="/Sources/Resources/ShipperPayCourierPayments/ShipperPayCourierPaymentsClient.swift">getByOrderIdOrShortIdV1</a>(orderIdOrShortId: String, requestOptions: RequestOptions?) -> ShipperPayCourierStatement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipper pay courier payment by order ID or short ID with Stripe invoice sync.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierPayments.getByOrderIdOrShortIdV1(orderIdOrShortId: "order_id_or_short_id")
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierPayments.<a href="/Sources/Resources/ShipperPayCourierPayments/ShipperPayCourierPaymentsClient.swift">listByShipperOrgIdV1</a>(request: Requests.ListPaymentsByShipperReq, requestOptions: RequestOptions?) -> GetShipperPayCourierPaymentsForShipperRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists shipper pay courier payments by shipper org ID with status filtering and Stripe sync.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierPayments.listByShipperOrgIdV1(request: .init(statuses: [
        .invoiceNotYetCreated
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

**request:** `Requests.ListPaymentsByShipperReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierPayments.<a href="/Sources/Resources/ShipperPayCourierPayments/ShipperPayCourierPaymentsClient.swift">listByCourierOrgIdV1</a>(request: Requests.ListPaymentsByCourierReq, requestOptions: RequestOptions?) -> GetShipperPayCourierPaymentsForShipperRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists shipper pay courier payments by courier org ID with status filtering and Stripe sync.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierPayments.listByCourierOrgIdV1(request: .init(statuses: [
        .invoiceNotYetCreated
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

**request:** `Requests.ListPaymentsByCourierReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierPayments.<a href="/Sources/Resources/ShipperPayCourierPayments/ShipperPayCourierPaymentsClient.swift">createV1</a>(request: CreateShipperPayCourierPaymentReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a shipper-to-courier payment record based on all task groups in an order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierPayments.createV1(request: CreateShipperPayCourierPaymentReq(
        orderIdOrShortId: "order_id_or_short_id"
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

**request:** `CreateShipperPayCourierPaymentReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierPayments.<a href="/Sources/Resources/ShipperPayCourierPayments/ShipperPayCourierPaymentsClient.swift">previewV1</a>(request: CreateShipperPayCourierPaymentReq, requestOptions: RequestOptions?) -> PaymentPreviewResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Previews a shipper-to-courier payment showing task groups, line item groups, total amount, and readiness status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierPayments.previewV1(request: CreateShipperPayCourierPaymentReq(
        orderIdOrShortId: "order_id_or_short_id"
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

**request:** `CreateShipperPayCourierPaymentReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ShipperPayCourierRateSheets
<details><summary><code>client.shipperPayCourierRateSheets.<a href="/Sources/Resources/ShipperPayCourierRateSheets/ShipperPayCourierRateSheetsClient.swift">listByCourierOrgIdV1</a>(requestOptions: RequestOptions?) -> [ShipperPayCourierRateSheet1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all rate sheets created by the authenticated courier organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierRateSheets.listByCourierOrgIdV1()
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierRateSheets.<a href="/Sources/Resources/ShipperPayCourierRateSheets/ShipperPayCourierRateSheetsClient.swift">createV1</a>(request: Requests.ShipperPayCourierRateSheetClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new rate sheet for a courier to charge shippers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierRateSheets.createV1(request: .init(
        schemaVersion: 1,
        baseMileageDistanceMiles: 1.1,
        baseMileageRateUsdPerInstance: 1.1,
        additionalMileageRateUsdPerMile: 1.1,
        longDistanceSurchargeMilesBeforeSurcharge: 1.1,
        longDistanceSurchargeRateUsdPerMile: 1.1,
        fuelSurchargeRateUsdPerMile: 1.1,
        waitTimeBeforeChargeMinutes: 1.1,
        waitTimeRateUsdPerMinute: 1.1,
        extraStopRateUsd: 1.1,
        dangerousGoodsRateUsdPerInstance: 1.1,
        afterHours: 1.1,
        weekend: 1.1,
        holiday: 1.1
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

**request:** `Requests.ShipperPayCourierRateSheetClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierRateSheets.<a href="/Sources/Resources/ShipperPayCourierRateSheets/ShipperPayCourierRateSheetsClient.swift">getV1</a>(id: String, requestOptions: RequestOptions?) -> ShipperPayCourierRateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single rate sheet by its ID (courier access only).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierRateSheets.getV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierRateSheets.<a href="/Sources/Resources/ShipperPayCourierRateSheets/ShipperPayCourierRateSheetsClient.swift">deleteByIdV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a rate sheet owned by the authenticated courier organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierRateSheets.deleteByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierRateSheets.<a href="/Sources/Resources/ShipperPayCourierRateSheets/ShipperPayCourierRateSheetsClient.swift">updateByIdV1</a>(id: String, request: Requests.ShipperPayCourierRateSheetClientUpdate1, requestOptions: RequestOptions?) -> ShipperPayCourierRateSheet1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing rate sheet owned by the authenticated courier organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierRateSheets.updateByIdV1(
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

**request:** `Requests.ShipperPayCourierRateSheetClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ShipperPayCourierStatements
<details><summary><code>client.shipperPayCourierStatements.<a href="/Sources/Resources/ShipperPayCourierStatements/ShipperPayCourierStatementsClient.swift">getByIdV1</a>(shipperPayCourierStatementId: String, requestOptions: RequestOptions?) -> ShipperPayCourierStatement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipper pay courier statement by its ID with Stripe invoice sync.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierStatements.getByIdV1(shipperPayCourierStatementId: "shipper_pay_courier_statement_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**shipperPayCourierStatementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierStatements.<a href="/Sources/Resources/ShipperPayCourierStatements/ShipperPayCourierStatementsClient.swift">deleteV1</a>(shipperPayCourierStatementId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a shipper-to-courier statement record if invoice not yet created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierStatements.deleteV1(shipperPayCourierStatementId: "shipper_pay_courier_statement_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**shipperPayCourierStatementId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierStatements.<a href="/Sources/Resources/ShipperPayCourierStatements/ShipperPayCourierStatementsClient.swift">getByOrderIdOrShortIdV1</a>(orderIdOrShortId: String, requestOptions: RequestOptions?) -> ShipperPayCourierStatement1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipper pay courier statement by order ID or short ID with Stripe invoice sync.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierStatements.getByOrderIdOrShortIdV1(orderIdOrShortId: "order_id_or_short_id")
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierStatements.<a href="/Sources/Resources/ShipperPayCourierStatements/ShipperPayCourierStatementsClient.swift">listByShipperOrgIdV1</a>(request: Requests.ListStatementsByShipperReq, requestOptions: RequestOptions?) -> GetShipperPayCourierStatementsForShipperRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists shipper pay courier statements by shipper org ID with status filtering and Stripe sync.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierStatements.listByShipperOrgIdV1(request: .init(statuses: [
        .invoiceNotYetCreated
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

**request:** `Requests.ListStatementsByShipperReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierStatements.<a href="/Sources/Resources/ShipperPayCourierStatements/ShipperPayCourierStatementsClient.swift">listByCourierOrgIdV1</a>(request: Requests.ListStatementsByCourierReq, requestOptions: RequestOptions?) -> GetShipperPayCourierStatementsForShipperRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists shipper pay courier statements by courier org ID with status filtering and Stripe sync.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierStatements.listByCourierOrgIdV1(request: .init(statuses: [
        .invoiceNotYetCreated
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

**request:** `Requests.ListStatementsByCourierReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierStatements.<a href="/Sources/Resources/ShipperPayCourierStatements/ShipperPayCourierStatementsClient.swift">createV1</a>(request: CreateShipperPayCourierStatementReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a shipper-to-courier statement record based on all task groups in an order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierStatements.createV1(request: CreateShipperPayCourierStatementReq(
        orderIdOrShortId: "order_id_or_short_id"
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

**request:** `CreateShipperPayCourierStatementReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperPayCourierStatements.<a href="/Sources/Resources/ShipperPayCourierStatements/ShipperPayCourierStatementsClient.swift">previewV1</a>(request: CreateShipperPayCourierStatementReq, requestOptions: RequestOptions?) -> StatementPreviewResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Previews a shipper-to-courier statement showing task groups, line item groups, total amount, and readiness status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierStatements.previewV1(request: CreateShipperPayCourierStatementReq(
        orderIdOrShortId: "order_id_or_short_id"
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

**request:** `CreateShipperPayCourierStatementReq` 
    
</dd>
</dl>

<dl>
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

Lists shipper organizations based on the authenticated organization type. Couriers see connected shippers, forwarders see connected shippers. | () -> (list[ShipperConnectionRes])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Lists courier organizations based on the authenticated organization type. Shippers see connected couriers, forwarders see connected couriers. | () -> (list[CourierConnectionRes])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Lists forwarder organizations based on the authenticated organization type. Shippers see connected forwarders, couriers see connected forwarders. | () -> (list[ForwarderConnectionRes])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Gets connection between authenticated org and org with specified handle. | () -> (ShipperCourierConnection1 | ShipperForwarderConnection1 | ForwarderCourierConnection1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Retrieves the courier or forwarder organization profile for the authenticated organization. | () -> (OrgProfileRes1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">getAgentV1</a>(requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Experimental endpoint for running AI agentic workflows. Returns the authenticated user's ID for testing purposes. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.dev.getAgentV1()
}

try await main()
```
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

Retrieves the primary email address for the authenticated user from the authentication service. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.dev.<a href="/Sources/Resources/Dev/DevClient.swift">getDurableV1</a>(requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Experimental endpoint for running durable execution workflows. Returns the authenticated user's ID for testing purposes. | () -> (dict[str, Any])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.dev.getDurableV1()
}

try await main()
```
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

Development template endpoint that returns the authenticated user's ID for testing. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## TaskArtifactNotifications
<details><summary><code>client.taskArtifactNotifications.<a href="/Sources/Resources/TaskArtifactNotifications/TaskArtifactNotificationsClient.swift">getPreferencesV1</a>(requestOptions: RequestOptions?) -> TaskArtifactNotificationPreferences1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves task_artifact notification preferences for the authenticated organization. | () -> (TaskArtifactNotificationPreferences1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskArtifactNotifications.getPreferencesV1()
}

try await main()
```
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

<details><summary><code>client.taskArtifactNotifications.<a href="/Sources/Resources/TaskArtifactNotifications/TaskArtifactNotificationsClient.swift">upsertPreferencesV1</a>(request: Requests.TaskArtifactNotificationPreferencesClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or updates task_artifact notification preferences for the authenticated organization. | (TaskArtifactNotificationPreferencesClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskArtifactNotifications.upsertPreferencesV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TaskArtifactNotificationPreferencesClientCreate1` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">listOrgMembersAndDriversV1</a>(requestOptions: RequestOptions?) -> [OrgMembersAndDrivers]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all organization members paired with their driver information if they are drivers. | () -> (list[OrgMembersAndDrivers])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.listOrgMembersAndDriversV1()
}

try await main()
```
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [Driver1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all drivers belonging to the authenticated organization. | () -> (list[Driver1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.listV1()
}

try await main()
```
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">createV1</a>(request: Requests.DriverCreateReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new driver profile for an organization member with optional vehicle type assignments. | (DriverCreateReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.createV1(request: .init(orgMember: OrgMemberDetails(
        role: .owner,
        userId: "user_id"
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

**request:** `Requests.DriverCreateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">getV1</a>(requestOptions: RequestOptions?) -> Driver1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves driver information for the authenticated user within their organization. | () -> (Driver1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.getV1()
}

try await main()
```
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">deleteV1</a>(driverId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a driver from the organization and removes them from associated rate sheets. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.deleteV1(driverId: "driver_id")
}

try await main()
```
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">setActivationV1</a>(request: Requests.SetDriverActivationReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the activation status of a driver (active/inactive) within the organization. | (SetDriverActivationReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.setActivationV1(request: .init(
        driverObjectId: "driver_object_id",
        active: true
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

**request:** `Requests.SetDriverActivationReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">lastSeenV1</a>(request: Requests.DriverLastSeenReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the driver's last known location and timestamp for tracking purposes. | (DriverLastSeenReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.lastSeenV1(request: .init(location: LocationFeature(
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

**request:** `Requests.DriverLastSeenReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">lastSeenClearV1</a>(requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.drivers.lastSeenClearV1()
}

try await main()
```
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

<details><summary><code>client.drivers.<a href="/Sources/Resources/Drivers/DriversClient.swift">updateDriverV1</a>(request: Requests.UpdateDriverDetailsReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates driver contact details and vehicle type assignments within the organization. | (UpdateDriverDetailsReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.drivers.updateDriverV1(request: .init(driverObjectId: "driver_object_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.UpdateDriverDetailsReq` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.taskArtifacts.<a href="/Sources/Resources/TaskArtifacts/TaskArtifactsClient.swift">completeV1</a>(taskArtifactId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Completes a task_artifact and updates all related task, cargo, task group, and order statuses. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.taskArtifacts.<a href="/Sources/Resources/TaskArtifacts/TaskArtifactsClient.swift">updateCommentsV1</a>(request: Requests.TaskArtifactUpdateCommentsReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the completor comments on a task_artifact without affecting completion status. | (TaskArtifactUpdateCommentsReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskArtifacts.updateCommentsV1(request: .init(
        taskArtifactId: "task_artifact_id",
        completorComments: "completor_comments"
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

**request:** `Requests.TaskArtifactUpdateCommentsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskArtifacts.<a href="/Sources/Resources/TaskArtifacts/TaskArtifactsClient.swift">addToTaskV1</a>(request: Requests.TaskArtifactAddToTaskReq, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a new task_artifact to an existing task. | (TaskArtifactAddToTaskReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskArtifacts.addToTaskV1(request: .init(
        taskId: "task_id",
        taskArtifactType: .image,
        taskArtifactIsCompleted: true
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

**request:** `Requests.TaskArtifactAddToTaskReq` 
    
</dd>
</dl>

<dl>
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

Lists all off-platform shipper organizations created by the authenticated organization. | () -> (list[OffChrtShipperOrg1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Deletes off-platform shipper organization owned by the authenticated organization. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates existing off-platform shipper organization owned by the authenticated organization. | (OffChrtShipperOrgClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orderDrafts.<a href="/Sources/Resources/OrderDrafts/OrderDraftsClient.swift">expandedV1</a>(orderIdOrShortId: String, request: Requests.OrderDraftExpandedReq, requestOptions: RequestOptions?) -> OrderDraftExpandedRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a single draft order with optional expanded related data. Only the creator of the draft order can access it. | (OrderDraftExpandedReq) -> (OrderDraftExpandedRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orderDrafts.expandedV1(
        orderIdOrShortId: "order_id_or_short_id",
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

**orderIdOrShortId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.OrderDraftExpandedReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orderDrafts.<a href="/Sources/Resources/OrderDrafts/OrderDraftsClient.swift">expandedListV1</a>(request: Requests.OrderDraftExpandedListReq, requestOptions: RequestOptions?) -> OrderDraftExpandedListRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all draft orders created by the authenticated user with optional expanded related data. | (OrderDraftExpandedListReq) -> (OrderDraftExpandedListRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orderDrafts.expandedListV1(request: .init())
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.OrderDraftExpandedListReq` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">setTaskOrderingV1</a>(taskGroupId: String, request: Requests.SetTaskOrderingReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the ordering of tasks in a task group. Task group must be in STAGED or IN_PROGRESS status. | authz_personas=[lig_org_operators] | (SetTaskOrderingReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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
        request: .init(taskOrdering: [
            "task_ordering"
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

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">setFlightNumberV1</a>(taskGroupId: String, request: Requests.SetFlightNumberReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the flight number on both task group and all its tasks. Task group must be in STAGED or IN_PROGRESS status. | authz_personas=[lig_org_operators] | (SetFlightNumberReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.setFlightNumberV1(
        taskGroupId: "task_group_id",
        request: .init(flightNumber: "flight_number")
    )
}

try await main()
```
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

**request:** `Requests.SetFlightNumberReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">updateDriverV1</a>(taskGroupId: String, request: Requests.UpdateTaskGroupDriverReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or removes the driver assigned to a task group. | authz_personas=[courier_org_operators] | (UpdateTaskGroupDriverReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**request:** `Requests.UpdateTaskGroupDriverReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">updateCourierOrgV1</a>(taskGroupId: String, request: Requests.UpdateTaskGroupCourierOrgReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or removes the courier organization assigned to a task group. | authz_personas=[forwarder_org_operators] | (UpdateTaskGroupCourierOrgReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

**request:** `Requests.UpdateTaskGroupCourierOrgReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskGroups.<a href="/Sources/Resources/TaskGroups/TaskGroupsClient.swift">startV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts a task group by changing its status to in-progress and updating the order status. | authz_personas=[courier_driver, lig_org_operators] | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## ShipperContactInfo
<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">getByJwtUserIdV1</a>(requestOptions: RequestOptions?) -> ShipperContact1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the authenticated user's own shipper contact information. | () -> (ShipperContact1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.getByJwtUserIdV1()
}

try await main()
```
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

<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">listByJwtOrgIdV1</a>(requestOptions: RequestOptions?) -> [ShipperContact1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all shipper contacts created by the authenticated organization. | () -> (list[ShipperContact1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.listByJwtOrgIdV1()
}

try await main()
```
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

<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">listCourierContactsByShipperOrgIdV1</a>(shipperOrgId: String, requestOptions: RequestOptions?) -> [ShipperContact1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all shipper contacts accessible to the courier organization for a specific on-platform shipper. | () -> (list[ShipperContact1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.listCourierContactsByShipperOrgIdV1(shipperOrgId: "shipper_org_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**shipperOrgId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">listByOffChrtShipperOrgIdV1</a>(offChrtShipperOrgId: String, requestOptions: RequestOptions?) -> [ShipperContact1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all shipper contacts for a specific off-platform shipper connection. | () -> (list[ShipperContact1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.listByOffChrtShipperOrgIdV1(offChrtShipperOrgId: "off_chrt_shipper_org_id")
}

try await main()
```
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

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> ShipperContact1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a specific shipper contact by ID if authorized to access it. | () -> (ShipperContact1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">createOnPlatformV1</a>(request: ShipperContactClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates contact information for an on-platform shipper organization or user. | (ShipperContactClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.createOnPlatformV1(request: ShipperContactClientCreate1(
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

**request:** `ShipperContactClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">createOffPlatformV1</a>(request: ShipperContactClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates contact information for an off-platform shipper using connection info. | (ShipperContactClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.createOffPlatformV1(request: ShipperContactClientCreate1(
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

**request:** `ShipperContactClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">updateV1</a>(shipperContactInfoId: String, request: Requests.ShipperContactClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates existing shipper contact information owned by the authenticated organization. | (ShipperContactClientUpdate1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.updateV1(
        shipperContactInfoId: "shipper_contact_info_id",
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

**shipperContactInfoId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ShipperContactClientUpdate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipperContactInfo.<a href="/Sources/Resources/ShipperContactInfo/ShipperContactInfoClient.swift">deleteByIdV1</a>(id: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes shipper contact information owned by the authenticated organization. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperContactInfo.deleteByIdV1(id: "id")
}

try await main()
```
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

Lists all members of the authenticated organization with their roles and details. | () -> (list[OrgMemberDetails])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orgs.<a href="/Sources/Resources/Orgs/OrgsClient.swift">getOrgPublicDataV1</a>(requestOptions: RequestOptions?) -> OrgPublicData1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves public organization data for the authenticated organization. | () -> (OrgPublicData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Creates org_public_data and org_private_data documents for the authenticated organization using org_type from JWT. | (CreateOrgPublicDataReq) -> (CreateOrgPublicDataRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates the handle and/or company_name for the authenticated organization. | (UpdateOrgPublicDataReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Retrieves the Stripe Connect account ID for the authenticated organization. Returns 404 if not set. | () -> (str)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Retrieves public user data for the authenticated user. | () -> (UserPublicData1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## CourierPayDriverLineItemGroups AddLineItems
<details><summary><code>client.courierPayDriverLineItemGroups.addLineItems.<a href="/Sources/Resources/CourierPayDriverLineItemGroups/AddLineItems/AddLineItemsClient.swift">byIdV1</a>(id: String, request: Requests.CourierPayDriverLineItemGroupAddLineItemsReq, requestOptions: RequestOptions?) -> CourierPayDriverLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds additional line items to an existing courier driver line item group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverLineItemGroups.addLineItems.byIdV1(
        id: "id",
        request: .init(lineItems: [
            LineItemClientCreate1(
                schemaVersion: 1,
                item: .baseRate,
                quantity: 1.1,
                rate: 1.1
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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CourierPayDriverLineItemGroupAddLineItemsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CourierPayDriverLineItemGroups RemoveLineItems
<details><summary><code>client.courierPayDriverLineItemGroups.removeLineItems.<a href="/Sources/Resources/CourierPayDriverLineItemGroups/RemoveLineItems/RemoveLineItemsClient.swift">byIdV1</a>(id: String, request: Requests.CourierPayDriverLineItemGroupRemoveLineItemsReq, requestOptions: RequestOptions?) -> CourierPayDriverLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes specific line items from a courier driver line item group by their UUID identifiers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.courierPayDriverLineItemGroups.removeLineItems.byIdV1(
        id: "id",
        request: .init(lineItemUuidStrs: [
            "line_item_uuid_strs"
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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CourierPayDriverLineItemGroupRemoveLineItemsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications Shipper
<details><summary><code>client.notifications.shipper.<a href="/Sources/Resources/Notifications/Shipper/ShipperClient.swift">getPreferencesV1</a>(requestOptions: RequestOptions?) -> ShipperNotificationPreferences1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves notification preferences for the authenticated shipper organization. | () -> (ShipperNotificationPreferences1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.shipper.getPreferencesV1()
}

try await main()
```
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

<details><summary><code>client.notifications.shipper.<a href="/Sources/Resources/Notifications/Shipper/ShipperClient.swift">upsertPreferencesV1</a>(request: Requests.ShipperNotificationPreferencesClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or updates notification preferences for the authenticated shipper organization. | (ShipperNotificationPreferencesClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.shipper.upsertPreferencesV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.ShipperNotificationPreferencesClientCreate1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications Courier
<details><summary><code>client.notifications.courier.<a href="/Sources/Resources/Notifications/Courier/CourierClient.swift">getPreferencesV1</a>(requestOptions: RequestOptions?) -> CourierNotificationPreferences1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves notification preferences for the authenticated courier organization. | () -> (CourierNotificationPreferences1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.courier.getPreferencesV1()
}

try await main()
```
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

<details><summary><code>client.notifications.courier.<a href="/Sources/Resources/Notifications/Courier/CourierClient.swift">upsertPreferencesV1</a>(request: Requests.CourierNotificationPreferencesClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or updates notification preferences for the authenticated courier organization. | (CourierNotificationPreferencesClientCreate1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.notifications.courier.upsertPreferencesV1(request: .init(schemaVersion: 1))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.CourierNotificationPreferencesClientCreate1` 
    
</dd>
</dl>

<dl>
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

<details><summary><code>client.orderDrafts.taskGroup.<a href="/Sources/Resources/OrderDrafts/TaskGroup/TaskGroupClient.swift">updateV1</a>(taskGroupId: String, request: Requests.UpdateTaskGroupDraftReq, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets or removes courier org. Sets task ordering (must provide all task ids). | (UpdateTaskGroupDraftReq) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orderDrafts.taskGroup.updateV1(
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

**request:** `Requests.UpdateTaskGroupDraftReq` 
    
</dd>
</dl>

<dl>
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

Adds a task to an existing task group in a draft order. Validates order is in DRAFT status and task action type matches task group type. | (OrderDraftAddTaskReqV1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates a task in an existing draft order. | (OrderDraftUpdateTaskReq) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Deletes a task from a draft order, including all task artifacts. Cargo is preserved. Task is removed from task group. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Orders Expanded
<details><summary><code>client.orders.expanded.<a href="/Sources/Resources/Orders/Expanded/ExpandedClient.swift">postForShipperByOrderIdV1</a>(orderIdOrShortId: String, request: OrderExpandedForShipperReq, requestOptions: RequestOptions?) -> OrderExpandedForShipper</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a single order for the shipper organization with optional expanded related data. | (OrderExpandedForShipperReq) -> (OrderExpandedForShipper)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orders.expanded.postForShipperByOrderIdV1(
        orderIdOrShortId: "order_id_or_short_id",
        request: OrderExpandedForShipperReq(

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

**request:** `OrderExpandedForShipperReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orders.expanded.<a href="/Sources/Resources/Orders/Expanded/ExpandedClient.swift">postForOrderCreatorByOrderIdV1</a>(orderIdOrShortId: String, request: OrderExpandedForOrderCreatorReq, requestOptions: RequestOptions?) -> OrderExpandedForOrderCreator</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a single order for the organization that created it with optional expanded related data. | (OrderExpandedForOrderCreatorReq) -> (OrderExpandedForOrderCreator)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orders.expanded.postForOrderCreatorByOrderIdV1(
        orderIdOrShortId: "order_id_or_short_id",
        request: OrderExpandedForOrderCreatorReq(

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

**request:** `OrderExpandedForOrderCreatorReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Orders ExpandedList
<details><summary><code>client.orders.expandedList.<a href="/Sources/Resources/Orders/ExpandedList/ExpandedListClient.swift">postShipperExpandedListV1</a>(page: Int?, pageSize: Int?, sortBy: OrderExpandedListSortFieldEnum?, sortOrder: SortOrderEnum?, filterDraftStartedAtGte: Date?, filterDraftStartedAtLte: Date?, filterStatuses: OrderStatusEnum1?, filterOrderCancelled: Bool?, request: OrderExpandedForShipperReq, requestOptions: RequestOptions?) -> OrdersExpandedForShipperRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves orders expanded list for the shipper organization with optional filters and related data. | (OrderExpandedForShipperReq) -> (OrdersExpandedForShipperRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orders.expandedList.postShipperExpandedListV1(
        page: 1,
        pageSize: 1,
        sortBy: .draftStartedAt,
        sortOrder: .asc,
        filterDraftStartedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderCancelled: true,
        request: .init(body: OrderExpandedForShipperReq(

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

**sortBy:** `OrderExpandedListSortFieldEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStatuses:** `OrderStatusEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOrderCancelled:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderExpandedForShipperReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.orders.expandedList.<a href="/Sources/Resources/Orders/ExpandedList/ExpandedListClient.swift">postOrderCreatorExpandedListV1</a>(page: Int?, pageSize: Int?, sortBy: OrderExpandedListSortFieldEnum?, sortOrder: SortOrderEnum?, filterDraftStartedAtGte: Date?, filterDraftStartedAtLte: Date?, filterStatuses: OrderStatusEnum1?, filterOrderCancelled: Bool?, includeShipperOrgIds: String?, excludeShipperOrgIds: String?, request: OrderExpandedForOrderCreatorReq, requestOptions: RequestOptions?) -> OrdersExpandedForOrderCreatorRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves orders expanded list for order creator org with optional filters, shipper includes, and exclusions. | (OrderExpandedForOrderCreatorReq) -> (OrdersExpandedForOrderCreatorRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.orders.expandedList.postOrderCreatorExpandedListV1(
        page: 1,
        pageSize: 1,
        sortBy: .draftStartedAt,
        sortOrder: .asc,
        filterDraftStartedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterDraftStartedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderCancelled: true,
        request: .init(body: OrderExpandedForOrderCreatorReq(

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

**sortBy:** `OrderExpandedListSortFieldEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterDraftStartedAtLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStatuses:** `OrderStatusEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOrderCancelled:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**includeShipperOrgIds:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**excludeShipperOrgIds:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `OrderExpandedForOrderCreatorReq` 
    
</dd>
</dl>

<dl>
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
<details><summary><code>client.orgInfoForConnections.shipper.<a href="/Sources/Resources/OrgInfoForConnections/Shipper/OrgInfoForConnectionsShipperClient.swift">getV1</a>(requestOptions: RequestOptions?) -> ShipperOrgInfoForConnections1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves shipper organization connection information for the authenticated organization. | () -> (ShipperOrgInfoForConnections1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orgInfoForConnections.shipper.<a href="/Sources/Resources/OrgInfoForConnections/Shipper/OrgInfoForConnectionsShipperClient.swift">createV1</a>(request: Requests.ShipperOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

<details><summary><code>client.orgInfoForConnections.shipper.<a href="/Sources/Resources/OrgInfoForConnections/Shipper/OrgInfoForConnectionsShipperClient.swift">updateV1</a>(request: Requests.ShipperOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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
<details><summary><code>client.orgInfoForConnections.courier.<a href="/Sources/Resources/OrgInfoForConnections/Courier/OrgInfoForConnectionsCourierClient.swift">getV1</a>(requestOptions: RequestOptions?) -> CourierOrgInfoForConnections1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves courier organization connection information for the authenticated organization. | () -> (CourierOrgInfoForConnections1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.orgInfoForConnections.courier.<a href="/Sources/Resources/OrgInfoForConnections/Courier/OrgInfoForConnectionsCourierClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [CourierOrgInfoForConnections1]</code></summary>
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

<details><summary><code>client.orgInfoForConnections.courier.<a href="/Sources/Resources/OrgInfoForConnections/Courier/OrgInfoForConnectionsCourierClient.swift">createV1</a>(request: Requests.CourierOrgInfoForConnectionsClientCreate1, requestOptions: RequestOptions?) -> String</code></summary>
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

<details><summary><code>client.orgInfoForConnections.courier.<a href="/Sources/Resources/OrgInfoForConnections/Courier/OrgInfoForConnectionsCourierClient.swift">updateV1</a>(request: Requests.CourierOrgInfoForConnectionsClientUpdate1, requestOptions: RequestOptions?) -> Bool</code></summary>
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

## ShipperPayCourierLineItemGroups Shipper
<details><summary><code>client.shipperPayCourierLineItemGroups.shipper.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/Shipper/ShipperPayCourierLineItemGroupsShipperClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [ShipperPayCourierLineItemGroup1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all shipper pay courier line item groups for the authenticated shipper organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.shipper.listV1()
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierLineItemGroups.shipper.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/Shipper/ShipperPayCourierLineItemGroupsShipperClient.swift">getByIdV1</a>(id: String, requestOptions: RequestOptions?) -> ShipperPayCourierLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipper pay courier line item group by its ID for the authenticated shipper organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.shipper.getByIdV1(id: "id")
}

try await main()
```
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

<details><summary><code>client.shipperPayCourierLineItemGroups.shipper.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/Shipper/ShipperPayCourierLineItemGroupsShipperClient.swift">byTaskGroupIdV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> ShipperPayCourierLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipper pay courier line item group by its associated task group ID for the authenticated shipper organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.shipper.byTaskGroupIdV1(taskGroupId: "task_group_id")
}

try await main()
```
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

## ShipperPayCourierLineItemGroups Courier
<details><summary><code>client.shipperPayCourierLineItemGroups.courier.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/Courier/ShipperPayCourierLineItemGroupsCourierClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [ShipperPayCourierLineItemGroup1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists all shipper pay courier line item groups for the authenticated courier organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.courier.listV1()
}

try await main()
```
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

## ShipperPayCourierLineItemGroups AddLineItems
<details><summary><code>client.shipperPayCourierLineItemGroups.addLineItems.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/AddLineItems/ShipperPayCourierLineItemGroupsAddLineItemsClient.swift">byIdV1</a>(id: String, request: Requests.ShipperPayCourierLineItemGroupAddLineItemsReq, requestOptions: RequestOptions?) -> ShipperPayCourierLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds additional line items to an existing shipper pay courier line item group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.addLineItems.byIdV1(
        id: "id",
        request: .init(lineItems: [
            LineItemClientCreate1(
                schemaVersion: 1,
                item: .baseRate,
                quantity: 1.1,
                rate: 1.1
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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ShipperPayCourierLineItemGroupAddLineItemsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ShipperPayCourierLineItemGroups RemoveLineItems
<details><summary><code>client.shipperPayCourierLineItemGroups.removeLineItems.<a href="/Sources/Resources/ShipperPayCourierLineItemGroups/RemoveLineItems/ShipperPayCourierLineItemGroupsRemoveLineItemsClient.swift">byIdV1</a>(id: String, request: Requests.ShipperPayCourierLineItemGroupRemoveLineItemsReq, requestOptions: RequestOptions?) -> ShipperPayCourierLineItemGroup1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes specific line items from a shipper pay courier line item group by their UUID identifiers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.shipperPayCourierLineItemGroups.removeLineItems.byIdV1(
        id: "id",
        request: .init(lineItemUuidStrs: [
            "line_item_uuid_strs"
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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ShipperPayCourierLineItemGroupRemoveLineItemsReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TaskArtifacts Images
<details><summary><code>client.taskArtifacts.images.<a href="/Sources/Resources/TaskArtifacts/Images/ImagesClient.swift">getByMetadataIdV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Streams a task_artifact image file from S3 storage. | () -> (StreamingResponse)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskArtifacts.images.getByMetadataIdV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
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

<details><summary><code>client.taskArtifacts.images.<a href="/Sources/Resources/TaskArtifacts/Images/ImagesClient.swift">uploadByTaskArtifactIdV1</a>(taskArtifactId: String, request: Requests.BodyPostTaskArtifactsUploadImageV1OortTaskArtifactsImagesUploadV1TaskArtifactIdPost, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads an image file to a task_artifact with automatic blurhash generation. | (UploadFile) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskArtifacts.images.uploadByTaskArtifactIdV1(
        taskArtifactId: "task_artifact_id",
        request: .init(image: .init(data: Data("".utf8)))
    )
}

try await main()
```
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

**request:** `Requests.BodyPostTaskArtifactsUploadImageV1OortTaskArtifactsImagesUploadV1TaskArtifactIdPost` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskArtifacts.images.<a href="/Sources/Resources/TaskArtifacts/Images/ImagesClient.swift">deleteByMetadataIdV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a task_artifact image from both S3 storage and database metadata. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskArtifacts.images.deleteByMetadataIdV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
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

## TaskArtifacts Blurhash
<details><summary><code>client.taskArtifacts.blurhash.<a href="/Sources/Resources/TaskArtifacts/Blurhash/BlurhashClient.swift">getByMetadataIdV1</a>(taskArtifactS3ObjectMetadataId: String, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the blurhash string for a task_artifact image for fast placeholder loading. | () -> (BlurHash)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskArtifacts.blurhash.getByMetadataIdV1(taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id")
}

try await main()
```
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

## TaskGroups Expanded
<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forCourierAdministratorByIdV1</a>(id: String, request: TaskGroupExpandedForCourierAdministratorReq, requestOptions: RequestOptions?) -> TaskGroupExpandedForCourierAdministrator</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches an expanded task group for the courier org with expanded related data. | (TaskGroupExpandedForCourierAdministratorReq) -> (TaskGroupExpandedForCourierAdministrator)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.expanded.forCourierAdministratorByIdV1(
        id: "id",
        request: TaskGroupExpandedForCourierAdministratorReq(

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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `TaskGroupExpandedForCourierAdministratorReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forCourierDriverByIdV1</a>(id: String, request: TaskGroupExpandedForCourierDriverReq, requestOptions: RequestOptions?) -> TaskGroupExpandedForCourierDriver</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches an expanded task group assigned to a courier driver with optional expanded related data. | (TaskGroupExpandedForCourierDriverReq) -> (TaskGroupExpandedForCourierDriver)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.expanded.forCourierDriverByIdV1(
        id: "id",
        request: TaskGroupExpandedForCourierDriverReq(

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

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `TaskGroupExpandedForCourierDriverReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskGroups.expanded.<a href="/Sources/Resources/TaskGroups/Expanded/TaskGroupsExpandedClient.swift">forShipperByIdV1</a>(id: String, request: Requests.TaskGroupExpandedForShipperReq, requestOptions: RequestOptions?) -> TaskGroupExpandedForShipper</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches an expanded task group for the shipper org with expanded related data. | (TaskGroupExpandedForShipperReq) -> (TaskGroupExpandedForShipper)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.expanded.forShipperByIdV1(
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

**request:** `Requests.TaskGroupExpandedForShipperReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TaskGroups ExpandedList
<details><summary><code>client.taskGroups.expandedList.<a href="/Sources/Resources/TaskGroups/ExpandedList/TaskGroupsExpandedListClient.swift">forCourierAdministratorV1</a>(page: Int?, pageSize: Int?, sortBy: TaskGroupExpandedSortFieldEnum?, sortOrder: SortOrderEnum?, filterCreatedAtGte: Date?, filterCreatedAtLte: Date?, filterStartedAtGte: Date?, filterStartedAtLte: Date?, filterCompletedAtGte: Date?, filterCompletedAtLte: Date?, filterOrderCancelled: Bool?, filterStatuses: TaskGroupStatusEnum1?, filterCompleted: Bool?, filterPaused: Bool?, request: TaskGroupExpandedForCourierAdministratorReq, requestOptions: RequestOptions?) -> TaskGroupsExpandedForCourierAdministratorRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches expanded task groups for the courier org with optional filters and expanded related data. | (TaskGroupExpandedForCourierAdministratorReq) -> (TaskGroupsExpandedForCourierAdministratorRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.expandedList.forCourierAdministratorV1(
        page: 1,
        pageSize: 1,
        sortBy: .stagedAtTimestamp,
        sortOrder: .asc,
        filterCreatedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStartedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStartedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderCancelled: true,
        filterCompleted: true,
        filterPaused: true,
        request: .init(body: TaskGroupExpandedForCourierAdministratorReq(

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

**sortBy:** `TaskGroupExpandedSortFieldEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStartedAtGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStartedAtLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOrderCancelled:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStatuses:** `TaskGroupStatusEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompleted:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterPaused:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `TaskGroupExpandedForCourierAdministratorReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.taskGroups.expandedList.<a href="/Sources/Resources/TaskGroups/ExpandedList/TaskGroupsExpandedListClient.swift">forCourierDriverV1</a>(page: Int?, pageSize: Int?, sortBy: TaskGroupExpandedSortFieldEnum?, sortOrder: SortOrderEnum?, filterCreatedAtGte: Date?, filterCreatedAtLte: Date?, filterStartedAtGte: Date?, filterStartedAtLte: Date?, filterCompletedAtGte: Date?, filterCompletedAtLte: Date?, filterOrderCancelled: Bool?, filterStatuses: TaskGroupStatusEnum1?, filterCompleted: Bool?, filterPaused: Bool?, request: TaskGroupExpandedForCourierDriverReq, requestOptions: RequestOptions?) -> TaskGroupsExpandedForCourierDriverRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches expanded task groups assigned to a courier driver with optional expanded related data. | (TaskGroupExpandedForCourierDriverReq) -> (TaskGroupsExpandedForCourierDriverRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.taskGroups.expandedList.forCourierDriverV1(
        page: 1,
        pageSize: 1,
        sortBy: .stagedAtTimestamp,
        sortOrder: .asc,
        filterCreatedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCreatedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStartedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterStartedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterCompletedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        filterOrderCancelled: true,
        filterCompleted: true,
        filterPaused: true,
        request: .init(body: TaskGroupExpandedForCourierDriverReq(

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

**sortBy:** `TaskGroupExpandedSortFieldEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**sortOrder:** `SortOrderEnum?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCreatedAtLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStartedAtGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStartedAtLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtGte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompletedAtLte:** `Date?` 
    
</dd>
</dl>

<dl>
<dd>

**filterOrderCancelled:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterStatuses:** `TaskGroupStatusEnum1?` 
    
</dd>
</dl>

<dl>
<dd>

**filterCompleted:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**filterPaused:** `Bool?` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `TaskGroupExpandedForCourierDriverReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking CargoByDevice
<details><summary><code>client.tracking.cargoByDevice.<a href="/Sources/Resources/Tracking/CargoByDevice/CargoByDeviceClient.swift">lastSeenV1</a>(cargoId: String, taskGroupId: String, requestOptions: RequestOptions?) -> TrackingCargoByDeviceDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent device location data point for cargo within a task group. Access granted to courier or shipper organization. | () -> (TrackingCargoByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.cargoByDevice.lastSeenV1(
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

## Tracking CargoByDriver
<details><summary><code>client.tracking.cargoByDriver.<a href="/Sources/Resources/Tracking/CargoByDriver/CargoByDriverClient.swift">lastSeenV1</a>(cargoId: String, taskGroupId: String, requestOptions: RequestOptions?) -> TrackingCargoByDriverDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent driver location data point for cargo within a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | () -> (TrackingCargoByDriverDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.cargoByDriver.lastSeenV1(
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

## Tracking Devices
<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">registerToOrgV1</a>(request: Requests.DevicesRegisterToOrgReq1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a tracking device to the authenticated user's organization. If device is already registered to a different organization, registration is blocked. | (DevicesRegisterToOrgReq1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Updates a device's type and/or comments. Can update one or both fields, or delete them by setting delete flags. | (DevicesUpdateRequest1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Deletes a device by ID or MAC address. Device must be unlinked from any session or cargo before deletion. | () -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

<details><summary><code>client.tracking.devices.<a href="/Sources/Resources/Tracking/Devices/DevicesClient.swift">getV1</a>(deviceMacAddress: String?, deviceId: String?, requestOptions: RequestOptions?) -> Device1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single device by its MAC address or ID. Access restricted to the device's organization. | () -> (Device1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

Returns all tracking devices registered to the authenticated user's organization. | () -> (list[Device1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

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

## Tracking Driver
<details><summary><code>client.tracking.driver.<a href="/Sources/Resources/Tracking/Driver/DriverClient.swift">updateV1</a>(request: Requests.DriverUpdateReq, requestOptions: RequestOptions?) -> DriverUpdateRes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records driver location updates for a task group. Automatically writes to task group tracking if IN_PROGRESS and cargo tracking if IN_TRANSIT. Updates driver's last seen timestamp and location. | (DriverUpdateReq) -> (DriverUpdateRes)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.driver.updateV1(request: .init(
        taskGroupId: "task_group_id",
        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
        location: LocationFeature(
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

**request:** `Requests.DriverUpdateReq` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tracking SessionByDevice
<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">listV1</a>(requestOptions: RequestOptions?) -> [Session1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns all tracking sessions for the authenticated user's organization. | () -> (list[Session1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.listV1()
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">getV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Session1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single session by its ID. Access restricted to the session's organization. | () -> (Session1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.getV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">lastSeenV1</a>(sessionId: String, requestOptions: RequestOptions?) -> TrackingSessionByDeviceDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent data point for a session, excluding outliers. Access restricted to the session's organization. | () -> (TrackingSessionByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.lastSeenV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">dataPointsV1</a>(sessionId: String, limit: Int?, requestOptions: RequestOptions?) -> [TrackingSessionByDeviceDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a session, intelligently sampled across the time range. Excludes outliers. | () -> (list[TrackingSessionByDeviceDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.dataPointsV1(
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">createSessionV1</a>(request: Requests.SessionByDeviceCreateSessionRequest1, requestOptions: RequestOptions?) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new tracking session for a device and links the device to it. The device must be registered to the caller's organization. | (SessionByDeviceCreateSessionRequest1) -> (PydanticObjectId)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.createSessionV1(request: .init(deviceMacAddress: "device_mac_address"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionByDeviceCreateSessionRequest1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">updateV1</a>(request: Requests.SessionByDeviceUpdateRequest1, requestOptions: RequestOptions?) -> Bool</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a session's comments and/or public visibility status. Can update one or both fields. | (SessionByDeviceUpdateRequest1) -> (bool)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.updateV1(request: .init(sessionId: "session_id"))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.SessionByDeviceUpdateRequest1` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">startV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.tracking.sessionByDevice.startV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">pauseRecordingV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.tracking.sessionByDevice.pauseRecordingV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">resumeRecordingV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.tracking.sessionByDevice.resumeRecordingV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">terminateV1</a>(sessionId: String, requestOptions: RequestOptions?) -> Bool</code></summary>
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

    _ = try await client.tracking.sessionByDevice.terminateV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">outlierV1</a>(request: Requests.SessionByDeviceMarkOutliersRequest1, requestOptions: RequestOptions?) -> SessionByDeviceMarkOutliersResponse1</code></summary>
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

    _ = try await client.tracking.sessionByDevice.outlierV1(request: .init(
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">deleteV1</a>(sessionId: String, requestOptions: RequestOptions?) -> SessionByDeviceDeleteResponse1</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a terminated session and all its associated timeseries data points. Only sessions marked as terminated can be deleted. | () -> (SessionByDeviceDeleteResponse1)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.deleteV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">lastSeenPublicV1</a>(sessionId: String, requestOptions: RequestOptions?) -> TrackingSessionByDeviceDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent data point for a public session, excluding outliers. No authentication required if session has public visibility enabled. | () -> (TrackingSessionByDeviceDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.lastSeenPublicV1(sessionId: "session_id")
}

try await main()
```
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

<details><summary><code>client.tracking.sessionByDevice.<a href="/Sources/Resources/Tracking/SessionByDevice/SessionByDeviceClient.swift">dataPointsPublicV1</a>(sessionId: String, limit: Int?, requestOptions: RequestOptions?) -> [TrackingSessionByDeviceDataPoint1]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns up to the specified number of data points for a public session, intelligently sampled across the time range. Excludes outliers. No authentication required if session has public visibility enabled. | () -> (list[TrackingSessionByDeviceDataPoint1])
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.sessionByDevice.dataPointsPublicV1(
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

## Tracking TaskGroupByDriver
<details><summary><code>client.tracking.taskGroupByDriver.<a href="/Sources/Resources/Tracking/TaskGroupByDriver/TaskGroupByDriverClient.swift">lastSeenV1</a>(taskGroupId: String, requestOptions: RequestOptions?) -> TrackingTaskGroupByDriverDataPoint1?</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the most recent driver location data point for a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint. | () -> (TrackingTaskGroupByDriverDataPoint1 | None)
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Chrt

private func main() async throws {
    let client = ChrtClient(token: "<token>")

    _ = try await client.tracking.taskGroupByDriver.lastSeenV1(taskGroupId: "task_group_id")
}

try await main()
```
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

