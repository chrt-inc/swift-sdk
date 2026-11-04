import Foundation
import Testing
import Chrt

@Suite("AlvysOrdersClient Wire Tests") struct AlvysOrdersClientWireTests {
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
                    "CancelledAt": "CancelledAt",
                    "CreatedAt": "CreatedAt",
                    "CustomerId": "CustomerId",
                    "CustomerName": "CustomerName",
                    "DeliveredAt": "DeliveredAt",
                    "Destination": {
                      "City": "City",
                      "CompanyId": "CompanyId",
                      "Country": "Country",
                      "State": "State",
                      "Street": "Street",
                      "ZipCode": "ZipCode"
                    },
                    "Id": "Id",
                    "IsDeleted": true,
                    "LoadNumber": "LoadNumber",
                    "OrderNumber": "OrderNumber",
                    "Origin": {
                      "City": "City",
                      "CompanyId": "CompanyId",
                      "Country": "Country",
                      "State": "State",
                      "Street": "Street",
                      "ZipCode": "ZipCode"
                    },
                    "PONumber": "PONumber",
                    "PickedUpAt": "PickedUpAt",
                    "Status": "Status",
                    "Stops": [
                      {}
                    ],
                    "UpdatedAt": "UpdatedAt"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "alvys",
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
        let expectedResponse = AlvysOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: AlvysOrderResponse1(
                cancelledAt: Optional("CancelledAt"),
                createdAt: Optional("CreatedAt"),
                customerId: "CustomerId",
                customerName: Optional("CustomerName"),
                deliveredAt: Optional("DeliveredAt"),
                destination: Optional(AlvysOrderEndpointResponse1(
                    city: Optional("City"),
                    companyId: Optional("CompanyId"),
                    country: Optional("Country"),
                    state: Optional("State"),
                    street: Optional("Street"),
                    zipCode: Optional("ZipCode")
                )),
                id: "Id",
                isDeleted: Optional(true),
                loadNumber: Optional("LoadNumber"),
                orderNumber: Optional("OrderNumber"),
                origin: Optional(AlvysOrderEndpointResponse1(
                    city: Optional("City"),
                    companyId: Optional("CompanyId"),
                    country: Optional("Country"),
                    state: Optional("State"),
                    street: Optional("Street"),
                    zipCode: Optional("ZipCode")
                )),
                poNumber: Optional("PONumber"),
                pickedUpAt: Optional("PickedUpAt"),
                status: Optional("Status"),
                stops: Optional([
                    AlvysStopResponse1(

                    )
                ]),
                updatedAt: Optional("UpdatedAt")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .alvys,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.alvys.orders.detailByIntegrationOrderIdV1(
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
                    "CancelledAt": "CancelledAt",
                    "CreatedAt": "CreatedAt",
                    "CustomerId": "CustomerId",
                    "CustomerName": "CustomerName",
                    "DeliveredAt": "DeliveredAt",
                    "Destination": {
                      "City": "City",
                      "CompanyId": "CompanyId",
                      "Country": "Country",
                      "State": "State",
                      "Street": "Street",
                      "ZipCode": "ZipCode"
                    },
                    "Id": "Id",
                    "IsDeleted": true,
                    "LoadNumber": "LoadNumber",
                    "OrderNumber": "OrderNumber",
                    "Origin": {
                      "City": "City",
                      "CompanyId": "CompanyId",
                      "Country": "Country",
                      "State": "State",
                      "Street": "Street",
                      "ZipCode": "ZipCode"
                    },
                    "PONumber": "PONumber",
                    "PickedUpAt": "PickedUpAt",
                    "Status": "Status",
                    "Stops": [
                      {}
                    ],
                    "UpdatedAt": "UpdatedAt"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "alvys",
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
        let expectedResponse = AlvysOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: AlvysOrderResponse1(
                cancelledAt: Optional("CancelledAt"),
                createdAt: Optional("CreatedAt"),
                customerId: "CustomerId",
                customerName: Optional("CustomerName"),
                deliveredAt: Optional("DeliveredAt"),
                destination: Optional(AlvysOrderEndpointResponse1(
                    city: Optional("City"),
                    companyId: Optional("CompanyId"),
                    country: Optional("Country"),
                    state: Optional("State"),
                    street: Optional("Street"),
                    zipCode: Optional("ZipCode")
                )),
                id: "Id",
                isDeleted: Optional(true),
                loadNumber: Optional("LoadNumber"),
                orderNumber: Optional("OrderNumber"),
                origin: Optional(AlvysOrderEndpointResponse1(
                    city: Optional("City"),
                    companyId: Optional("CompanyId"),
                    country: Optional("Country"),
                    state: Optional("State"),
                    street: Optional("Street"),
                    zipCode: Optional("ZipCode")
                )),
                poNumber: Optional("PONumber"),
                pickedUpAt: Optional("PickedUpAt"),
                status: Optional("Status"),
                stops: Optional([
                    AlvysStopResponse1(

                    )
                ]),
                updatedAt: Optional("UpdatedAt")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .alvys,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.alvys.orders.detailV1(
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
                      "provider_payload": {
                        "CustomerId": "CustomerId",
                        "Id": "Id"
                      },
                      "provider_payload_hash": "provider_payload_hash",
                      "schema_version": 1,
                      "shipping_integration": "alvys",
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
        let expectedResponse = AlvysOrderListRes(
            items: [
                AlvysOrder1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    providerOrgId: "provider_org_id",
                    providerPayload: AlvysOrderResponse1(
                        customerId: "CustomerId",
                        id: "Id"
                    ),
                    providerPayloadHash: "provider_payload_hash",
                    schemaVersion: 1,
                    shippingIntegration: .alvys,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.alvys.orders.listV1(
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
                    "CancelledAt": "CancelledAt",
                    "CreatedAt": "CreatedAt",
                    "CustomerId": "CustomerId",
                    "CustomerName": "CustomerName",
                    "DeliveredAt": "DeliveredAt",
                    "Destination": {
                      "City": "City",
                      "CompanyId": "CompanyId",
                      "Country": "Country",
                      "State": "State",
                      "Street": "Street",
                      "ZipCode": "ZipCode"
                    },
                    "Id": "Id",
                    "IsDeleted": true,
                    "LoadNumber": "LoadNumber",
                    "OrderNumber": "OrderNumber",
                    "Origin": {
                      "City": "City",
                      "CompanyId": "CompanyId",
                      "Country": "Country",
                      "State": "State",
                      "Street": "Street",
                      "ZipCode": "ZipCode"
                    },
                    "PONumber": "PONumber",
                    "PickedUpAt": "PickedUpAt",
                    "Status": "Status",
                    "Stops": [
                      {}
                    ],
                    "UpdatedAt": "UpdatedAt"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "alvys",
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
        let expectedResponse = AlvysOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: AlvysOrderResponse1(
                cancelledAt: Optional("CancelledAt"),
                createdAt: Optional("CreatedAt"),
                customerId: "CustomerId",
                customerName: Optional("CustomerName"),
                deliveredAt: Optional("DeliveredAt"),
                destination: Optional(AlvysOrderEndpointResponse1(
                    city: Optional("City"),
                    companyId: Optional("CompanyId"),
                    country: Optional("Country"),
                    state: Optional("State"),
                    street: Optional("Street"),
                    zipCode: Optional("ZipCode")
                )),
                id: "Id",
                isDeleted: Optional(true),
                loadNumber: Optional("LoadNumber"),
                orderNumber: Optional("OrderNumber"),
                origin: Optional(AlvysOrderEndpointResponse1(
                    city: Optional("City"),
                    companyId: Optional("CompanyId"),
                    country: Optional("Country"),
                    state: Optional("State"),
                    street: Optional("Street"),
                    zipCode: Optional("ZipCode")
                )),
                poNumber: Optional("PONumber"),
                pickedUpAt: Optional("PickedUpAt"),
                status: Optional("Status"),
                stops: Optional([
                    AlvysStopResponse1(

                    )
                ]),
                updatedAt: Optional("UpdatedAt")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .alvys,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.alvys.orders.syncOneV1(
            request: .init(
                integrationOrderId: "integration_order_id",
                providerOrgId: "provider_org_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}