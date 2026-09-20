import Foundation
import Testing
import Chrt

@Suite("CourieOrdersClient Wire Tests") struct CourieOrdersClientWireTests {
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
                    "activities": [
                      {
                        "event": "CREATED",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "customFields": [
                      {}
                    ],
                    "customerCompanyName": "customerCompanyName",
                    "customerId": "customerId",
                    "deliveredAt": "2024-01-15T09:30:00Z",
                    "displayId": 1,
                    "id": "id",
                    "numPackages": 1,
                    "packageDescription": "packageDescription",
                    "packageItems": [
                      {}
                    ],
                    "packageSize": "packageSize",
                    "packageTypeName": "packageTypeName",
                    "packageWeightInPounds": 1.1,
                    "packages": [
                      {}
                    ],
                    "pickedUpAt": "2024-01-15T09:30:00Z",
                    "proofOfDeliveries": [
                      {}
                    ],
                    "proofOfPickUps": [
                      {}
                    ],
                    "referenceNumber": "referenceNumber",
                    "remoteId": "remoteId",
                    "serviceTypeName": "serviceTypeName",
                    "shipmentDate": "shipmentDate",
                    "shipmentType": "shipmentType",
                    "status": "CREATED",
                    "statusDescription": "statusDescription",
                    "stops": [
                      {
                        "type": "PICK_UP"
                      }
                    ],
                    "trackingNumber": "trackingNumber",
                    "trackingUrl": "trackingUrl",
                    "vehicleTypeName": "vehicleTypeName"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "courie",
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
        let expectedResponse = CourieOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: CourieOrderResponse1(
                activities: Optional([
                    CourieOrderEventResponse1(
                        event: CourieOrderEventEnum1.created,
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                customFields: Optional([
                    CourieCustomFieldResponse1(

                    )
                ]),
                customerCompanyName: Optional("customerCompanyName"),
                customerId: "customerId",
                deliveredAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                displayId: Optional(1),
                id: "id",
                numPackages: Optional(1),
                packageDescription: Optional("packageDescription"),
                packageItems: Optional([
                    CouriePackageItemResponse1(

                    )
                ]),
                packageSize: Optional("packageSize"),
                packageTypeName: Optional("packageTypeName"),
                packageWeightInPounds: Optional(1.1),
                packages: Optional([
                    CouriePackageResponse1(

                    )
                ]),
                pickedUpAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                proofOfDeliveries: Optional([
                    CourieProofOfDeliveryResponse1(

                    )
                ]),
                proofOfPickUps: Optional([
                    CourieProofOfDeliveryResponse1(

                    )
                ]),
                referenceNumber: Optional("referenceNumber"),
                remoteId: Optional("remoteId"),
                serviceTypeName: Optional("serviceTypeName"),
                shipmentDate: Optional("shipmentDate"),
                shipmentType: Optional("shipmentType"),
                status: CourieOrderStatusEnum1.created,
                statusDescription: Optional("statusDescription"),
                stops: Optional([
                    CourieStopResponse1(
                        type: CourieStopTypeEnum1.pickUp
                    )
                ]),
                trackingNumber: Optional("trackingNumber"),
                trackingUrl: Optional("trackingUrl"),
                vehicleTypeName: Optional("vehicleTypeName")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .courie,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.courie.orders.detailByIntegrationOrderIdV1(
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
                    "activities": [
                      {
                        "event": "CREATED",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "customFields": [
                      {}
                    ],
                    "customerCompanyName": "customerCompanyName",
                    "customerId": "customerId",
                    "deliveredAt": "2024-01-15T09:30:00Z",
                    "displayId": 1,
                    "id": "id",
                    "numPackages": 1,
                    "packageDescription": "packageDescription",
                    "packageItems": [
                      {}
                    ],
                    "packageSize": "packageSize",
                    "packageTypeName": "packageTypeName",
                    "packageWeightInPounds": 1.1,
                    "packages": [
                      {}
                    ],
                    "pickedUpAt": "2024-01-15T09:30:00Z",
                    "proofOfDeliveries": [
                      {}
                    ],
                    "proofOfPickUps": [
                      {}
                    ],
                    "referenceNumber": "referenceNumber",
                    "remoteId": "remoteId",
                    "serviceTypeName": "serviceTypeName",
                    "shipmentDate": "shipmentDate",
                    "shipmentType": "shipmentType",
                    "status": "CREATED",
                    "statusDescription": "statusDescription",
                    "stops": [
                      {
                        "type": "PICK_UP"
                      }
                    ],
                    "trackingNumber": "trackingNumber",
                    "trackingUrl": "trackingUrl",
                    "vehicleTypeName": "vehicleTypeName"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "courie",
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
        let expectedResponse = CourieOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: CourieOrderResponse1(
                activities: Optional([
                    CourieOrderEventResponse1(
                        event: CourieOrderEventEnum1.created,
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                customFields: Optional([
                    CourieCustomFieldResponse1(

                    )
                ]),
                customerCompanyName: Optional("customerCompanyName"),
                customerId: "customerId",
                deliveredAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                displayId: Optional(1),
                id: "id",
                numPackages: Optional(1),
                packageDescription: Optional("packageDescription"),
                packageItems: Optional([
                    CouriePackageItemResponse1(

                    )
                ]),
                packageSize: Optional("packageSize"),
                packageTypeName: Optional("packageTypeName"),
                packageWeightInPounds: Optional(1.1),
                packages: Optional([
                    CouriePackageResponse1(

                    )
                ]),
                pickedUpAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                proofOfDeliveries: Optional([
                    CourieProofOfDeliveryResponse1(

                    )
                ]),
                proofOfPickUps: Optional([
                    CourieProofOfDeliveryResponse1(

                    )
                ]),
                referenceNumber: Optional("referenceNumber"),
                remoteId: Optional("remoteId"),
                serviceTypeName: Optional("serviceTypeName"),
                shipmentDate: Optional("shipmentDate"),
                shipmentType: Optional("shipmentType"),
                status: CourieOrderStatusEnum1.created,
                statusDescription: Optional("statusDescription"),
                stops: Optional([
                    CourieStopResponse1(
                        type: CourieStopTypeEnum1.pickUp
                    )
                ]),
                trackingNumber: Optional("trackingNumber"),
                trackingUrl: Optional("trackingUrl"),
                vehicleTypeName: Optional("vehicleTypeName")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .courie,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.courie.orders.detailV1(
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
                        "customerId": "customerId",
                        "id": "id",
                        "status": "CREATED"
                      },
                      "provider_payload_hash": "provider_payload_hash",
                      "schema_version": 1,
                      "shipping_integration": "courie",
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
        let expectedResponse = CourieOrderListRes(
            items: [
                CourieOrder1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    providerOrgId: "provider_org_id",
                    providerPayload: CourieOrderResponse1(
                        customerId: "customerId",
                        id: "id",
                        status: CourieOrderStatusEnum1.created
                    ),
                    providerPayloadHash: "provider_payload_hash",
                    schemaVersion: 1,
                    shippingIntegration: .courie,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.courie.orders.listV1(
            sortBy: .mirroredAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterProviderOrgId: [
                "filter_provider_org_id"
            ],
            filterIntegrationOrderId: "filter_integration_order_id",
            filterCustomerId: "filter_customer_id",
            filterProviderStatus: .created,
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
                    "activities": [
                      {
                        "event": "CREATED",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "customFields": [
                      {}
                    ],
                    "customerCompanyName": "customerCompanyName",
                    "customerId": "customerId",
                    "deliveredAt": "2024-01-15T09:30:00Z",
                    "displayId": 1,
                    "id": "id",
                    "numPackages": 1,
                    "packageDescription": "packageDescription",
                    "packageItems": [
                      {}
                    ],
                    "packageSize": "packageSize",
                    "packageTypeName": "packageTypeName",
                    "packageWeightInPounds": 1.1,
                    "packages": [
                      {}
                    ],
                    "pickedUpAt": "2024-01-15T09:30:00Z",
                    "proofOfDeliveries": [
                      {}
                    ],
                    "proofOfPickUps": [
                      {}
                    ],
                    "referenceNumber": "referenceNumber",
                    "remoteId": "remoteId",
                    "serviceTypeName": "serviceTypeName",
                    "shipmentDate": "shipmentDate",
                    "shipmentType": "shipmentType",
                    "status": "CREATED",
                    "statusDescription": "statusDescription",
                    "stops": [
                      {
                        "type": "PICK_UP"
                      }
                    ],
                    "trackingNumber": "trackingNumber",
                    "trackingUrl": "trackingUrl",
                    "vehicleTypeName": "vehicleTypeName"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "courie",
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
        let expectedResponse = CourieOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: CourieOrderResponse1(
                activities: Optional([
                    CourieOrderEventResponse1(
                        event: CourieOrderEventEnum1.created,
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                customFields: Optional([
                    CourieCustomFieldResponse1(

                    )
                ]),
                customerCompanyName: Optional("customerCompanyName"),
                customerId: "customerId",
                deliveredAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                displayId: Optional(1),
                id: "id",
                numPackages: Optional(1),
                packageDescription: Optional("packageDescription"),
                packageItems: Optional([
                    CouriePackageItemResponse1(

                    )
                ]),
                packageSize: Optional("packageSize"),
                packageTypeName: Optional("packageTypeName"),
                packageWeightInPounds: Optional(1.1),
                packages: Optional([
                    CouriePackageResponse1(

                    )
                ]),
                pickedUpAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                proofOfDeliveries: Optional([
                    CourieProofOfDeliveryResponse1(

                    )
                ]),
                proofOfPickUps: Optional([
                    CourieProofOfDeliveryResponse1(

                    )
                ]),
                referenceNumber: Optional("referenceNumber"),
                remoteId: Optional("remoteId"),
                serviceTypeName: Optional("serviceTypeName"),
                shipmentDate: Optional("shipmentDate"),
                shipmentType: Optional("shipmentType"),
                status: CourieOrderStatusEnum1.created,
                statusDescription: Optional("statusDescription"),
                stops: Optional([
                    CourieStopResponse1(
                        type: CourieStopTypeEnum1.pickUp
                    )
                ]),
                trackingNumber: Optional("trackingNumber"),
                trackingUrl: Optional("trackingUrl"),
                vehicleTypeName: Optional("vehicleTypeName")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .courie,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.courie.orders.syncOneV1(
            request: .init(
                integrationOrderId: "integration_order_id",
                providerOrgId: "provider_org_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}