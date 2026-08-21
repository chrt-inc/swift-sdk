import Foundation
import Testing
import Chrt

@Suite("Ontime360OrdersClient Wire Tests") struct Ontime360OrdersClientWireTests {
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
                    "BasePrice": 1.1,
                    "CODAmount": 1.1,
                    "CollectionArrivalDate": "CollectionArrivalDate",
                    "CollectionArrivalWindow": {
                      "EarliestTime": "EarliestTime",
                      "LatestTime": "LatestTime",
                      "Length": "Length"
                    },
                    "CollectionAssignedDriver": "CollectionAssignedDriver",
                    "CollectionContactName": "CollectionContactName",
                    "CollectionLocation": {
                      "AddressLine1": "AddressLine1",
                      "AddressLine2": "AddressLine2",
                      "City": "City",
                      "CompanyName": "CompanyName",
                      "ContactName": "ContactName",
                      "Country": "Country",
                      "ID": "ID",
                      "LatitudeLongitude": "LatitudeLongitude",
                      "PostalCode": "PostalCode",
                      "State": "State"
                    },
                    "CollectionSignatureRequired": true,
                    "Comments": "Comments",
                    "Customer": "Customer",
                    "DateSubmitted": "DateSubmitted",
                    "DeclaredValue": 1.1,
                    "DeliveryArrivalDate": "DeliveryArrivalDate",
                    "DeliveryArrivalWindow": {
                      "EarliestTime": "EarliestTime",
                      "LatestTime": "LatestTime",
                      "Length": "Length"
                    },
                    "DeliveryAssignedDriver": "DeliveryAssignedDriver",
                    "DeliveryContactName": "DeliveryContactName",
                    "DeliveryLocation": {
                      "AddressLine1": "AddressLine1",
                      "AddressLine2": "AddressLine2",
                      "City": "City",
                      "CompanyName": "CompanyName",
                      "ContactName": "ContactName",
                      "Country": "Country",
                      "ID": "ID",
                      "LatitudeLongitude": "LatitudeLongitude",
                      "PostalCode": "PostalCode",
                      "State": "State"
                    },
                    "DeliverySignatureRequired": true,
                    "Description": "Description",
                    "Dispatcher": "Dispatcher",
                    "Distance": 1.1,
                    "DriverCoordinatesOnCollection": "DriverCoordinatesOnCollection",
                    "DriverCoordinatesOnDelivery": "DriverCoordinatesOnDelivery",
                    "DriverCurrentlyAssigned": "DriverCurrentlyAssigned",
                    "Height": 1.1,
                    "ID": "ID",
                    "IncomingTrackingNumber": "IncomingTrackingNumber",
                    "Items": [
                      {}
                    ],
                    "Length": 1.1,
                    "OutgoingTrackingNumber": "OutgoingTrackingNumber",
                    "PriceAdjustment": 1.1,
                    "PriceModifierTotalCost": 1.1,
                    "PriceModifiers": [
                      {}
                    ],
                    "PurchaseOrderNumber": "PurchaseOrderNumber",
                    "Quantity": 1,
                    "ReferenceNumber": "ReferenceNumber",
                    "RequestedBy": "RequestedBy",
                    "RouteName": "RouteName",
                    "Status": {
                      "Description": "Description",
                      "ID": "ID",
                      "Level": 1,
                      "Name": "Name",
                      "Timestamp": "Timestamp"
                    },
                    "StatusLevel": 1,
                    "SubmissionSource": "SubmissionSource",
                    "Subtotal": 1.1,
                    "TaxTotal": 1.1,
                    "TotalCost": 1.1,
                    "TrackingNumber": "TrackingNumber",
                    "Weight": 1.1,
                    "Width": 1.1
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "ontime360",
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
        let expectedResponse = OnTime360Order1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: OnTime360OrderResponse1(
                basePrice: Optional(1.1),
                codAmount: Optional(1.1),
                collectionArrivalDate: Optional("CollectionArrivalDate"),
                collectionArrivalWindow: Optional(OnTime360TimeWindowResponse1(
                    earliestTime: Optional("EarliestTime"),
                    latestTime: Optional("LatestTime"),
                    length: Optional("Length")
                )),
                collectionAssignedDriver: Optional("CollectionAssignedDriver"),
                collectionContactName: Optional("CollectionContactName"),
                collectionLocation: Optional(OnTime360LocationResponse1(
                    addressLine1: Optional("AddressLine1"),
                    addressLine2: Optional("AddressLine2"),
                    city: Optional("City"),
                    companyName: Optional("CompanyName"),
                    contactName: Optional("ContactName"),
                    country: Optional("Country"),
                    id: Optional("ID"),
                    latitudeLongitude: Optional("LatitudeLongitude"),
                    postalCode: Optional("PostalCode"),
                    state: Optional("State")
                )),
                collectionSignatureRequired: Optional(true),
                comments: Optional("Comments"),
                customer: Optional("Customer"),
                dateSubmitted: Optional("DateSubmitted"),
                declaredValue: Optional(1.1),
                deliveryArrivalDate: Optional("DeliveryArrivalDate"),
                deliveryArrivalWindow: Optional(OnTime360TimeWindowResponse1(
                    earliestTime: Optional("EarliestTime"),
                    latestTime: Optional("LatestTime"),
                    length: Optional("Length")
                )),
                deliveryAssignedDriver: Optional("DeliveryAssignedDriver"),
                deliveryContactName: Optional("DeliveryContactName"),
                deliveryLocation: Optional(OnTime360LocationResponse1(
                    addressLine1: Optional("AddressLine1"),
                    addressLine2: Optional("AddressLine2"),
                    city: Optional("City"),
                    companyName: Optional("CompanyName"),
                    contactName: Optional("ContactName"),
                    country: Optional("Country"),
                    id: Optional("ID"),
                    latitudeLongitude: Optional("LatitudeLongitude"),
                    postalCode: Optional("PostalCode"),
                    state: Optional("State")
                )),
                deliverySignatureRequired: Optional(true),
                description: Optional("Description"),
                dispatcher: Optional("Dispatcher"),
                distance: Optional(1.1),
                driverCoordinatesOnCollection: Optional("DriverCoordinatesOnCollection"),
                driverCoordinatesOnDelivery: Optional("DriverCoordinatesOnDelivery"),
                driverCurrentlyAssigned: Optional("DriverCurrentlyAssigned"),
                height: Optional(1.1),
                id: "ID",
                incomingTrackingNumber: Optional("IncomingTrackingNumber"),
                items: Optional([
                    OnTime360ItemResponse1(

                    )
                ]),
                length: Optional(1.1),
                outgoingTrackingNumber: Optional("OutgoingTrackingNumber"),
                priceAdjustment: Optional(1.1),
                priceModifierTotalCost: Optional(1.1),
                priceModifiers: Optional([
                    OnTime360PriceModifierResponse1(

                    )
                ]),
                purchaseOrderNumber: Optional("PurchaseOrderNumber"),
                quantity: Optional(1),
                referenceNumber: Optional("ReferenceNumber"),
                requestedBy: Optional("RequestedBy"),
                routeName: Optional("RouteName"),
                status: Optional(OnTime360StatusResponse1(
                    description: Optional("Description"),
                    id: Optional("ID"),
                    level: Optional(1),
                    name: Optional("Name"),
                    timestamp: Optional("Timestamp")
                )),
                statusLevel: Optional(1),
                submissionSource: Optional("SubmissionSource"),
                subtotal: Optional(1.1),
                taxTotal: Optional(1.1),
                totalCost: Optional(1.1),
                trackingNumber: Optional("TrackingNumber"),
                weight: Optional(1.1),
                width: Optional(1.1)
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .ontime360,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.ontime360.orders.detailByIntegrationOrderIdV1(
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
                    "BasePrice": 1.1,
                    "CODAmount": 1.1,
                    "CollectionArrivalDate": "CollectionArrivalDate",
                    "CollectionArrivalWindow": {
                      "EarliestTime": "EarliestTime",
                      "LatestTime": "LatestTime",
                      "Length": "Length"
                    },
                    "CollectionAssignedDriver": "CollectionAssignedDriver",
                    "CollectionContactName": "CollectionContactName",
                    "CollectionLocation": {
                      "AddressLine1": "AddressLine1",
                      "AddressLine2": "AddressLine2",
                      "City": "City",
                      "CompanyName": "CompanyName",
                      "ContactName": "ContactName",
                      "Country": "Country",
                      "ID": "ID",
                      "LatitudeLongitude": "LatitudeLongitude",
                      "PostalCode": "PostalCode",
                      "State": "State"
                    },
                    "CollectionSignatureRequired": true,
                    "Comments": "Comments",
                    "Customer": "Customer",
                    "DateSubmitted": "DateSubmitted",
                    "DeclaredValue": 1.1,
                    "DeliveryArrivalDate": "DeliveryArrivalDate",
                    "DeliveryArrivalWindow": {
                      "EarliestTime": "EarliestTime",
                      "LatestTime": "LatestTime",
                      "Length": "Length"
                    },
                    "DeliveryAssignedDriver": "DeliveryAssignedDriver",
                    "DeliveryContactName": "DeliveryContactName",
                    "DeliveryLocation": {
                      "AddressLine1": "AddressLine1",
                      "AddressLine2": "AddressLine2",
                      "City": "City",
                      "CompanyName": "CompanyName",
                      "ContactName": "ContactName",
                      "Country": "Country",
                      "ID": "ID",
                      "LatitudeLongitude": "LatitudeLongitude",
                      "PostalCode": "PostalCode",
                      "State": "State"
                    },
                    "DeliverySignatureRequired": true,
                    "Description": "Description",
                    "Dispatcher": "Dispatcher",
                    "Distance": 1.1,
                    "DriverCoordinatesOnCollection": "DriverCoordinatesOnCollection",
                    "DriverCoordinatesOnDelivery": "DriverCoordinatesOnDelivery",
                    "DriverCurrentlyAssigned": "DriverCurrentlyAssigned",
                    "Height": 1.1,
                    "ID": "ID",
                    "IncomingTrackingNumber": "IncomingTrackingNumber",
                    "Items": [
                      {}
                    ],
                    "Length": 1.1,
                    "OutgoingTrackingNumber": "OutgoingTrackingNumber",
                    "PriceAdjustment": 1.1,
                    "PriceModifierTotalCost": 1.1,
                    "PriceModifiers": [
                      {}
                    ],
                    "PurchaseOrderNumber": "PurchaseOrderNumber",
                    "Quantity": 1,
                    "ReferenceNumber": "ReferenceNumber",
                    "RequestedBy": "RequestedBy",
                    "RouteName": "RouteName",
                    "Status": {
                      "Description": "Description",
                      "ID": "ID",
                      "Level": 1,
                      "Name": "Name",
                      "Timestamp": "Timestamp"
                    },
                    "StatusLevel": 1,
                    "SubmissionSource": "SubmissionSource",
                    "Subtotal": 1.1,
                    "TaxTotal": 1.1,
                    "TotalCost": 1.1,
                    "TrackingNumber": "TrackingNumber",
                    "Weight": 1.1,
                    "Width": 1.1
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "ontime360",
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
        let expectedResponse = OnTime360Order1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: OnTime360OrderResponse1(
                basePrice: Optional(1.1),
                codAmount: Optional(1.1),
                collectionArrivalDate: Optional("CollectionArrivalDate"),
                collectionArrivalWindow: Optional(OnTime360TimeWindowResponse1(
                    earliestTime: Optional("EarliestTime"),
                    latestTime: Optional("LatestTime"),
                    length: Optional("Length")
                )),
                collectionAssignedDriver: Optional("CollectionAssignedDriver"),
                collectionContactName: Optional("CollectionContactName"),
                collectionLocation: Optional(OnTime360LocationResponse1(
                    addressLine1: Optional("AddressLine1"),
                    addressLine2: Optional("AddressLine2"),
                    city: Optional("City"),
                    companyName: Optional("CompanyName"),
                    contactName: Optional("ContactName"),
                    country: Optional("Country"),
                    id: Optional("ID"),
                    latitudeLongitude: Optional("LatitudeLongitude"),
                    postalCode: Optional("PostalCode"),
                    state: Optional("State")
                )),
                collectionSignatureRequired: Optional(true),
                comments: Optional("Comments"),
                customer: Optional("Customer"),
                dateSubmitted: Optional("DateSubmitted"),
                declaredValue: Optional(1.1),
                deliveryArrivalDate: Optional("DeliveryArrivalDate"),
                deliveryArrivalWindow: Optional(OnTime360TimeWindowResponse1(
                    earliestTime: Optional("EarliestTime"),
                    latestTime: Optional("LatestTime"),
                    length: Optional("Length")
                )),
                deliveryAssignedDriver: Optional("DeliveryAssignedDriver"),
                deliveryContactName: Optional("DeliveryContactName"),
                deliveryLocation: Optional(OnTime360LocationResponse1(
                    addressLine1: Optional("AddressLine1"),
                    addressLine2: Optional("AddressLine2"),
                    city: Optional("City"),
                    companyName: Optional("CompanyName"),
                    contactName: Optional("ContactName"),
                    country: Optional("Country"),
                    id: Optional("ID"),
                    latitudeLongitude: Optional("LatitudeLongitude"),
                    postalCode: Optional("PostalCode"),
                    state: Optional("State")
                )),
                deliverySignatureRequired: Optional(true),
                description: Optional("Description"),
                dispatcher: Optional("Dispatcher"),
                distance: Optional(1.1),
                driverCoordinatesOnCollection: Optional("DriverCoordinatesOnCollection"),
                driverCoordinatesOnDelivery: Optional("DriverCoordinatesOnDelivery"),
                driverCurrentlyAssigned: Optional("DriverCurrentlyAssigned"),
                height: Optional(1.1),
                id: "ID",
                incomingTrackingNumber: Optional("IncomingTrackingNumber"),
                items: Optional([
                    OnTime360ItemResponse1(

                    )
                ]),
                length: Optional(1.1),
                outgoingTrackingNumber: Optional("OutgoingTrackingNumber"),
                priceAdjustment: Optional(1.1),
                priceModifierTotalCost: Optional(1.1),
                priceModifiers: Optional([
                    OnTime360PriceModifierResponse1(

                    )
                ]),
                purchaseOrderNumber: Optional("PurchaseOrderNumber"),
                quantity: Optional(1),
                referenceNumber: Optional("ReferenceNumber"),
                requestedBy: Optional("RequestedBy"),
                routeName: Optional("RouteName"),
                status: Optional(OnTime360StatusResponse1(
                    description: Optional("Description"),
                    id: Optional("ID"),
                    level: Optional(1),
                    name: Optional("Name"),
                    timestamp: Optional("Timestamp")
                )),
                statusLevel: Optional(1),
                submissionSource: Optional("SubmissionSource"),
                subtotal: Optional(1.1),
                taxTotal: Optional(1.1),
                totalCost: Optional(1.1),
                trackingNumber: Optional("TrackingNumber"),
                weight: Optional(1.1),
                width: Optional(1.1)
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .ontime360,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.ontime360.orders.detailV1(
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
                        "ID": "ID"
                      },
                      "provider_payload_hash": "provider_payload_hash",
                      "schema_version": 1,
                      "shipping_integration": "ontime360",
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
        let expectedResponse = OnTime360OrderListRes(
            items: [
                OnTime360Order1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    providerOrgId: "provider_org_id",
                    providerPayload: OnTime360OrderResponse1(
                        id: "ID"
                    ),
                    providerPayloadHash: "provider_payload_hash",
                    schemaVersion: 1,
                    shippingIntegration: .ontime360,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.ontime360.orders.listV1(
            sortBy: .mirroredAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterProviderOrgId: [
                "filter_provider_org_id"
            ],
            filterIntegrationOrderId: "filter_integration_order_id",
            filterProviderStatusLevel: 1,
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
                    "BasePrice": 1.1,
                    "CODAmount": 1.1,
                    "CollectionArrivalDate": "CollectionArrivalDate",
                    "CollectionArrivalWindow": {
                      "EarliestTime": "EarliestTime",
                      "LatestTime": "LatestTime",
                      "Length": "Length"
                    },
                    "CollectionAssignedDriver": "CollectionAssignedDriver",
                    "CollectionContactName": "CollectionContactName",
                    "CollectionLocation": {
                      "AddressLine1": "AddressLine1",
                      "AddressLine2": "AddressLine2",
                      "City": "City",
                      "CompanyName": "CompanyName",
                      "ContactName": "ContactName",
                      "Country": "Country",
                      "ID": "ID",
                      "LatitudeLongitude": "LatitudeLongitude",
                      "PostalCode": "PostalCode",
                      "State": "State"
                    },
                    "CollectionSignatureRequired": true,
                    "Comments": "Comments",
                    "Customer": "Customer",
                    "DateSubmitted": "DateSubmitted",
                    "DeclaredValue": 1.1,
                    "DeliveryArrivalDate": "DeliveryArrivalDate",
                    "DeliveryArrivalWindow": {
                      "EarliestTime": "EarliestTime",
                      "LatestTime": "LatestTime",
                      "Length": "Length"
                    },
                    "DeliveryAssignedDriver": "DeliveryAssignedDriver",
                    "DeliveryContactName": "DeliveryContactName",
                    "DeliveryLocation": {
                      "AddressLine1": "AddressLine1",
                      "AddressLine2": "AddressLine2",
                      "City": "City",
                      "CompanyName": "CompanyName",
                      "ContactName": "ContactName",
                      "Country": "Country",
                      "ID": "ID",
                      "LatitudeLongitude": "LatitudeLongitude",
                      "PostalCode": "PostalCode",
                      "State": "State"
                    },
                    "DeliverySignatureRequired": true,
                    "Description": "Description",
                    "Dispatcher": "Dispatcher",
                    "Distance": 1.1,
                    "DriverCoordinatesOnCollection": "DriverCoordinatesOnCollection",
                    "DriverCoordinatesOnDelivery": "DriverCoordinatesOnDelivery",
                    "DriverCurrentlyAssigned": "DriverCurrentlyAssigned",
                    "Height": 1.1,
                    "ID": "ID",
                    "IncomingTrackingNumber": "IncomingTrackingNumber",
                    "Items": [
                      {}
                    ],
                    "Length": 1.1,
                    "OutgoingTrackingNumber": "OutgoingTrackingNumber",
                    "PriceAdjustment": 1.1,
                    "PriceModifierTotalCost": 1.1,
                    "PriceModifiers": [
                      {}
                    ],
                    "PurchaseOrderNumber": "PurchaseOrderNumber",
                    "Quantity": 1,
                    "ReferenceNumber": "ReferenceNumber",
                    "RequestedBy": "RequestedBy",
                    "RouteName": "RouteName",
                    "Status": {
                      "Description": "Description",
                      "ID": "ID",
                      "Level": 1,
                      "Name": "Name",
                      "Timestamp": "Timestamp"
                    },
                    "StatusLevel": 1,
                    "SubmissionSource": "SubmissionSource",
                    "Subtotal": 1.1,
                    "TaxTotal": 1.1,
                    "TotalCost": 1.1,
                    "TrackingNumber": "TrackingNumber",
                    "Weight": 1.1,
                    "Width": 1.1
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "ontime360",
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
        let expectedResponse = OnTime360Order1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: OnTime360OrderResponse1(
                basePrice: Optional(1.1),
                codAmount: Optional(1.1),
                collectionArrivalDate: Optional("CollectionArrivalDate"),
                collectionArrivalWindow: Optional(OnTime360TimeWindowResponse1(
                    earliestTime: Optional("EarliestTime"),
                    latestTime: Optional("LatestTime"),
                    length: Optional("Length")
                )),
                collectionAssignedDriver: Optional("CollectionAssignedDriver"),
                collectionContactName: Optional("CollectionContactName"),
                collectionLocation: Optional(OnTime360LocationResponse1(
                    addressLine1: Optional("AddressLine1"),
                    addressLine2: Optional("AddressLine2"),
                    city: Optional("City"),
                    companyName: Optional("CompanyName"),
                    contactName: Optional("ContactName"),
                    country: Optional("Country"),
                    id: Optional("ID"),
                    latitudeLongitude: Optional("LatitudeLongitude"),
                    postalCode: Optional("PostalCode"),
                    state: Optional("State")
                )),
                collectionSignatureRequired: Optional(true),
                comments: Optional("Comments"),
                customer: Optional("Customer"),
                dateSubmitted: Optional("DateSubmitted"),
                declaredValue: Optional(1.1),
                deliveryArrivalDate: Optional("DeliveryArrivalDate"),
                deliveryArrivalWindow: Optional(OnTime360TimeWindowResponse1(
                    earliestTime: Optional("EarliestTime"),
                    latestTime: Optional("LatestTime"),
                    length: Optional("Length")
                )),
                deliveryAssignedDriver: Optional("DeliveryAssignedDriver"),
                deliveryContactName: Optional("DeliveryContactName"),
                deliveryLocation: Optional(OnTime360LocationResponse1(
                    addressLine1: Optional("AddressLine1"),
                    addressLine2: Optional("AddressLine2"),
                    city: Optional("City"),
                    companyName: Optional("CompanyName"),
                    contactName: Optional("ContactName"),
                    country: Optional("Country"),
                    id: Optional("ID"),
                    latitudeLongitude: Optional("LatitudeLongitude"),
                    postalCode: Optional("PostalCode"),
                    state: Optional("State")
                )),
                deliverySignatureRequired: Optional(true),
                description: Optional("Description"),
                dispatcher: Optional("Dispatcher"),
                distance: Optional(1.1),
                driverCoordinatesOnCollection: Optional("DriverCoordinatesOnCollection"),
                driverCoordinatesOnDelivery: Optional("DriverCoordinatesOnDelivery"),
                driverCurrentlyAssigned: Optional("DriverCurrentlyAssigned"),
                height: Optional(1.1),
                id: "ID",
                incomingTrackingNumber: Optional("IncomingTrackingNumber"),
                items: Optional([
                    OnTime360ItemResponse1(

                    )
                ]),
                length: Optional(1.1),
                outgoingTrackingNumber: Optional("OutgoingTrackingNumber"),
                priceAdjustment: Optional(1.1),
                priceModifierTotalCost: Optional(1.1),
                priceModifiers: Optional([
                    OnTime360PriceModifierResponse1(

                    )
                ]),
                purchaseOrderNumber: Optional("PurchaseOrderNumber"),
                quantity: Optional(1),
                referenceNumber: Optional("ReferenceNumber"),
                requestedBy: Optional("RequestedBy"),
                routeName: Optional("RouteName"),
                status: Optional(OnTime360StatusResponse1(
                    description: Optional("Description"),
                    id: Optional("ID"),
                    level: Optional(1),
                    name: Optional("Name"),
                    timestamp: Optional("Timestamp")
                )),
                statusLevel: Optional(1),
                submissionSource: Optional("SubmissionSource"),
                subtotal: Optional(1.1),
                taxTotal: Optional(1.1),
                totalCost: Optional(1.1),
                trackingNumber: Optional("TrackingNumber"),
                weight: Optional(1.1),
                width: Optional(1.1)
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .ontime360,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.ontime360.orders.syncOneV1(
            request: .init(
                integrationOrderId: "integration_order_id",
                providerOrgId: "provider_org_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}