import Foundation
import Testing
import Chrt

@Suite("EcourierOrdersClient Wire Tests") struct EcourierOrdersClientWireTests {
    @Test func detailByIntegrationOrderIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "integration_order_id": "integration_order_id",
                  "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "provider_org_id": "provider_org_id",
                  "provider_payload": {
                    "@AmountCharged": "@AmountCharged",
                    "@Auth": "@Auth",
                    "@Caller": "@Caller",
                    "@CallerEmail": "@CallerEmail",
                    "@CallerPhone": "@CallerPhone",
                    "@CreateDate": "@CreateDate",
                    "@CreateUserName": "@CreateUserName",
                    "@CustomerID": "@CustomerID",
                    "@DeliveredDateTime": "@DeliveredDateTime",
                    "@DispatchDateTime": "@DispatchDateTime",
                    "@DueDateTime": "@DueDateTime",
                    "@InvoiceStatus": "@InvoiceStatus",
                    "@LastChanged": "@LastChanged",
                    "@OperationalStatus": "@OperationalStatus",
                    "@OrderAlias": "@OrderAlias",
                    "@OrderDate": "@OrderDate",
                    "@OrderGUID": "@OrderGUID",
                    "@OrderID": "@OrderID",
                    "@OrderNumber": "@OrderNumber",
                    "@OrderStatus": "@OrderStatus",
                    "@PickedUpDateTime": "@PickedUpDateTime",
                    "@Pieces": "@Pieces",
                    "@PodDateTime": "@PodDateTime",
                    "@PodName": "@PodName",
                    "@Service": "@Service",
                    "@ServiceDesc": "@ServiceDesc",
                    "@SiteCode": "@SiteCode",
                    "@TotalMiles": "@TotalMiles",
                    "@Weight": "@Weight",
                    "Customer": {
                      "@CustomerCode": "@CustomerCode",
                      "@CustomerID": "@CustomerID",
                      "@Name": "@Name"
                    },
                    "Stops": [
                      {}
                    ]
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "ecourier",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EcourierOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: EcourierOrderResponse1(
                amountCharged: Optional("@AmountCharged"),
                auth: Optional("@Auth"),
                caller: Optional("@Caller"),
                callerEmail: Optional("@CallerEmail"),
                callerPhone: Optional("@CallerPhone"),
                createDate: Optional("@CreateDate"),
                createUserName: Optional("@CreateUserName"),
                customerId: Optional("@CustomerID"),
                deliveredDateTime: Optional("@DeliveredDateTime"),
                dispatchDateTime: Optional("@DispatchDateTime"),
                dueDateTime: Optional("@DueDateTime"),
                invoiceStatus: Optional("@InvoiceStatus"),
                lastChanged: Optional("@LastChanged"),
                operationalStatus: Optional("@OperationalStatus"),
                orderAlias: Optional("@OrderAlias"),
                orderDate: Optional("@OrderDate"),
                orderGuid: Optional("@OrderGUID"),
                orderId: Optional("@OrderID"),
                orderNumber: Optional("@OrderNumber"),
                orderStatus: Optional("@OrderStatus"),
                pickedUpDateTime: Optional("@PickedUpDateTime"),
                pieces: Optional("@Pieces"),
                podDateTime: Optional("@PodDateTime"),
                podName: Optional("@PodName"),
                service: Optional("@Service"),
                serviceDesc: Optional("@ServiceDesc"),
                siteCode: Optional("@SiteCode"),
                totalMiles: Optional("@TotalMiles"),
                weight: Optional("@Weight"),
                customer: Optional(EcourierOrderCustomerResponse1(
                    customerCode: Optional("@CustomerCode"),
                    customerId: Optional("@CustomerID"),
                    name: Optional("@Name")
                )),
                stops: Optional([
                    EcourierOrderStopResponse1(

                    )
                ])
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .ecourier,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.ecourier.orders.detailByIntegrationOrderIdV1(
            orgId: "org_id",
            integrationOrderId: "integration_order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detailV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "integration_order_id": "integration_order_id",
                  "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "provider_org_id": "provider_org_id",
                  "provider_payload": {
                    "@AmountCharged": "@AmountCharged",
                    "@Auth": "@Auth",
                    "@Caller": "@Caller",
                    "@CallerEmail": "@CallerEmail",
                    "@CallerPhone": "@CallerPhone",
                    "@CreateDate": "@CreateDate",
                    "@CreateUserName": "@CreateUserName",
                    "@CustomerID": "@CustomerID",
                    "@DeliveredDateTime": "@DeliveredDateTime",
                    "@DispatchDateTime": "@DispatchDateTime",
                    "@DueDateTime": "@DueDateTime",
                    "@InvoiceStatus": "@InvoiceStatus",
                    "@LastChanged": "@LastChanged",
                    "@OperationalStatus": "@OperationalStatus",
                    "@OrderAlias": "@OrderAlias",
                    "@OrderDate": "@OrderDate",
                    "@OrderGUID": "@OrderGUID",
                    "@OrderID": "@OrderID",
                    "@OrderNumber": "@OrderNumber",
                    "@OrderStatus": "@OrderStatus",
                    "@PickedUpDateTime": "@PickedUpDateTime",
                    "@Pieces": "@Pieces",
                    "@PodDateTime": "@PodDateTime",
                    "@PodName": "@PodName",
                    "@Service": "@Service",
                    "@ServiceDesc": "@ServiceDesc",
                    "@SiteCode": "@SiteCode",
                    "@TotalMiles": "@TotalMiles",
                    "@Weight": "@Weight",
                    "Customer": {
                      "@CustomerCode": "@CustomerCode",
                      "@CustomerID": "@CustomerID",
                      "@Name": "@Name"
                    },
                    "Stops": [
                      {}
                    ]
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "ecourier",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EcourierOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: EcourierOrderResponse1(
                amountCharged: Optional("@AmountCharged"),
                auth: Optional("@Auth"),
                caller: Optional("@Caller"),
                callerEmail: Optional("@CallerEmail"),
                callerPhone: Optional("@CallerPhone"),
                createDate: Optional("@CreateDate"),
                createUserName: Optional("@CreateUserName"),
                customerId: Optional("@CustomerID"),
                deliveredDateTime: Optional("@DeliveredDateTime"),
                dispatchDateTime: Optional("@DispatchDateTime"),
                dueDateTime: Optional("@DueDateTime"),
                invoiceStatus: Optional("@InvoiceStatus"),
                lastChanged: Optional("@LastChanged"),
                operationalStatus: Optional("@OperationalStatus"),
                orderAlias: Optional("@OrderAlias"),
                orderDate: Optional("@OrderDate"),
                orderGuid: Optional("@OrderGUID"),
                orderId: Optional("@OrderID"),
                orderNumber: Optional("@OrderNumber"),
                orderStatus: Optional("@OrderStatus"),
                pickedUpDateTime: Optional("@PickedUpDateTime"),
                pieces: Optional("@Pieces"),
                podDateTime: Optional("@PodDateTime"),
                podName: Optional("@PodName"),
                service: Optional("@Service"),
                serviceDesc: Optional("@ServiceDesc"),
                siteCode: Optional("@SiteCode"),
                totalMiles: Optional("@TotalMiles"),
                weight: Optional("@Weight"),
                customer: Optional(EcourierOrderCustomerResponse1(
                    customerCode: Optional("@CustomerCode"),
                    customerId: Optional("@CustomerID"),
                    name: Optional("@Name")
                )),
                stops: Optional([
                    EcourierOrderStopResponse1(

                    )
                ])
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .ecourier,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.ecourier.orders.detailV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "integration_order_id": "integration_order_id",
                      "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "provider_org_id": "provider_org_id",
                      "provider_payload": {},
                      "provider_payload_hash": "provider_payload_hash",
                      "schema_version": 1,
                      "shipping_integration": "ecourier",
                      "updated_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EcourierOrderListRes(
            items: [
                EcourierOrder1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    providerOrgId: "provider_org_id",
                    providerPayload: EcourierOrderResponse1(

                    ),
                    providerPayloadHash: "provider_payload_hash",
                    schemaVersion: 1,
                    shippingIntegration: .ecourier,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.ecourier.orders.listV1(
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
            filterUpdatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncOneV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "integration_order_id": "integration_order_id",
                  "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "provider_org_id": "provider_org_id",
                  "provider_payload": {
                    "@AmountCharged": "@AmountCharged",
                    "@Auth": "@Auth",
                    "@Caller": "@Caller",
                    "@CallerEmail": "@CallerEmail",
                    "@CallerPhone": "@CallerPhone",
                    "@CreateDate": "@CreateDate",
                    "@CreateUserName": "@CreateUserName",
                    "@CustomerID": "@CustomerID",
                    "@DeliveredDateTime": "@DeliveredDateTime",
                    "@DispatchDateTime": "@DispatchDateTime",
                    "@DueDateTime": "@DueDateTime",
                    "@InvoiceStatus": "@InvoiceStatus",
                    "@LastChanged": "@LastChanged",
                    "@OperationalStatus": "@OperationalStatus",
                    "@OrderAlias": "@OrderAlias",
                    "@OrderDate": "@OrderDate",
                    "@OrderGUID": "@OrderGUID",
                    "@OrderID": "@OrderID",
                    "@OrderNumber": "@OrderNumber",
                    "@OrderStatus": "@OrderStatus",
                    "@PickedUpDateTime": "@PickedUpDateTime",
                    "@Pieces": "@Pieces",
                    "@PodDateTime": "@PodDateTime",
                    "@PodName": "@PodName",
                    "@Service": "@Service",
                    "@ServiceDesc": "@ServiceDesc",
                    "@SiteCode": "@SiteCode",
                    "@TotalMiles": "@TotalMiles",
                    "@Weight": "@Weight",
                    "Customer": {
                      "@CustomerCode": "@CustomerCode",
                      "@CustomerID": "@CustomerID",
                      "@Name": "@Name"
                    },
                    "Stops": [
                      {}
                    ]
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "ecourier",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EcourierOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: EcourierOrderResponse1(
                amountCharged: Optional("@AmountCharged"),
                auth: Optional("@Auth"),
                caller: Optional("@Caller"),
                callerEmail: Optional("@CallerEmail"),
                callerPhone: Optional("@CallerPhone"),
                createDate: Optional("@CreateDate"),
                createUserName: Optional("@CreateUserName"),
                customerId: Optional("@CustomerID"),
                deliveredDateTime: Optional("@DeliveredDateTime"),
                dispatchDateTime: Optional("@DispatchDateTime"),
                dueDateTime: Optional("@DueDateTime"),
                invoiceStatus: Optional("@InvoiceStatus"),
                lastChanged: Optional("@LastChanged"),
                operationalStatus: Optional("@OperationalStatus"),
                orderAlias: Optional("@OrderAlias"),
                orderDate: Optional("@OrderDate"),
                orderGuid: Optional("@OrderGUID"),
                orderId: Optional("@OrderID"),
                orderNumber: Optional("@OrderNumber"),
                orderStatus: Optional("@OrderStatus"),
                pickedUpDateTime: Optional("@PickedUpDateTime"),
                pieces: Optional("@Pieces"),
                podDateTime: Optional("@PodDateTime"),
                podName: Optional("@PodName"),
                service: Optional("@Service"),
                serviceDesc: Optional("@ServiceDesc"),
                siteCode: Optional("@SiteCode"),
                totalMiles: Optional("@TotalMiles"),
                weight: Optional("@Weight"),
                customer: Optional(EcourierOrderCustomerResponse1(
                    customerCode: Optional("@CustomerCode"),
                    customerId: Optional("@CustomerID"),
                    name: Optional("@Name")
                )),
                stops: Optional([
                    EcourierOrderStopResponse1(

                    )
                ])
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .ecourier,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.ecourier.orders.syncOneV1(
            request: .init(
                integrationOrderId: "integration_order_id",
                providerOrgId: "provider_org_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}