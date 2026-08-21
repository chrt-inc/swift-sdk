import Foundation
import Testing
import Chrt

@Suite("DispatchScienceOrdersClient Wire Tests") struct DispatchScienceOrdersClientWireTests {
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
                    "attachments": [
                      {}
                    ],
                    "charges": [
                      {}
                    ],
                    "createdAt": "createdAt",
                    "distance": 1.1,
                    "distanceUnits": "distanceUnits",
                    "dropoffAddress": {
                      "addressLine1": "addressLine1",
                      "addressLine2": "addressLine2",
                      "city": "city",
                      "company": "company",
                      "postalCode": "postalCode",
                      "stateProvince": "stateProvince"
                    },
                    "dropoffContactInfo": {
                      "email": "email",
                      "id": "id",
                      "language": "language",
                      "name": "name",
                      "phoneNumber": "phoneNumber"
                    },
                    "dropoffLocation": {
                      "isValid": true,
                      "latitude": 1.1,
                      "longitude": 1.1
                    },
                    "dropoffNotes": "dropoffNotes",
                    "dropoffTimeZone": {
                      "ianaTimeZoneId": "ianaTimeZoneId",
                      "isDaylightSavingTime": true,
                      "longDisplayName": "longDisplayName",
                      "offset": 1.1,
                      "shortDisplayName": "shortDisplayName",
                      "systemTimeZoneId": "systemTimeZoneId"
                    },
                    "dropoffWindow": {
                      "end": "end",
                      "start": "start"
                    },
                    "isOnHold": true,
                    "notes": "notes",
                    "numberOfPieces": 1,
                    "orderId": "orderId",
                    "pickupAddress": {
                      "addressLine1": "addressLine1",
                      "addressLine2": "addressLine2",
                      "city": "city",
                      "company": "company",
                      "postalCode": "postalCode",
                      "stateProvince": "stateProvince"
                    },
                    "pickupContactInfo": {
                      "email": "email",
                      "id": "id",
                      "language": "language",
                      "name": "name",
                      "phoneNumber": "phoneNumber"
                    },
                    "pickupLocation": {
                      "isValid": true,
                      "latitude": 1.1,
                      "longitude": 1.1
                    },
                    "pickupNotes": "pickupNotes",
                    "pickupTimeZone": {
                      "ianaTimeZoneId": "ianaTimeZoneId",
                      "isDaylightSavingTime": true,
                      "longDisplayName": "longDisplayName",
                      "offset": 1.1,
                      "shortDisplayName": "shortDisplayName",
                      "systemTimeZoneId": "systemTimeZoneId"
                    },
                    "pickupWindow": {
                      "end": "end",
                      "start": "start"
                    },
                    "readyAt": "readyAt",
                    "receivedBy": "receivedBy",
                    "referenceNumber1": "referenceNumber1",
                    "referenceNumber2": "referenceNumber2",
                    "referenceNumber3": "referenceNumber3",
                    "serviceLevelId": "serviceLevelId",
                    "status": 1,
                    "vehicleTypeId": "vehicleTypeId",
                    "volume": 1.1,
                    "volumeUnits": "volumeUnits",
                    "weight": 1.1,
                    "weightUnits": "weightUnits"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "dispatch_science",
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
        let expectedResponse = DispatchScienceOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: DispatchScienceOrderResponse1(
                attachments: Optional([
                    DispatchScienceAttachmentResponse1(

                    )
                ]),
                charges: Optional([
                    DispatchScienceChargeResponse1(

                    )
                ]),
                createdAt: Optional("createdAt"),
                distance: Optional(1.1),
                distanceUnits: Optional("distanceUnits"),
                dropoffAddress: Optional(DispatchScienceAddressResponse1(
                    addressLine1: Optional("addressLine1"),
                    addressLine2: Optional("addressLine2"),
                    city: Optional("city"),
                    company: Optional("company"),
                    postalCode: Optional("postalCode"),
                    stateProvince: Optional("stateProvince")
                )),
                dropoffContactInfo: Optional(DispatchScienceContactInfoResponse1(
                    email: Optional("email"),
                    id: Optional("id"),
                    language: Optional("language"),
                    name: Optional("name"),
                    phoneNumber: Optional("phoneNumber")
                )),
                dropoffLocation: Optional(DispatchScienceLocationResponse1(
                    isValid: Optional(true),
                    latitude: Optional(1.1),
                    longitude: Optional(1.1)
                )),
                dropoffNotes: Optional("dropoffNotes"),
                dropoffTimeZone: Optional(DispatchScienceTimeZoneResponse1(
                    ianaTimeZoneId: Optional("ianaTimeZoneId"),
                    isDaylightSavingTime: Optional(true),
                    longDisplayName: Optional("longDisplayName"),
                    offset: Optional(1.1),
                    shortDisplayName: Optional("shortDisplayName"),
                    systemTimeZoneId: Optional("systemTimeZoneId")
                )),
                dropoffWindow: Optional(DispatchScienceTimeWindowResponse1(
                    end: Optional("end"),
                    start: Optional("start")
                )),
                isOnHold: Optional(true),
                notes: Optional("notes"),
                numberOfPieces: Optional(1),
                orderId: "orderId",
                pickupAddress: Optional(DispatchScienceAddressResponse1(
                    addressLine1: Optional("addressLine1"),
                    addressLine2: Optional("addressLine2"),
                    city: Optional("city"),
                    company: Optional("company"),
                    postalCode: Optional("postalCode"),
                    stateProvince: Optional("stateProvince")
                )),
                pickupContactInfo: Optional(DispatchScienceContactInfoResponse1(
                    email: Optional("email"),
                    id: Optional("id"),
                    language: Optional("language"),
                    name: Optional("name"),
                    phoneNumber: Optional("phoneNumber")
                )),
                pickupLocation: Optional(DispatchScienceLocationResponse1(
                    isValid: Optional(true),
                    latitude: Optional(1.1),
                    longitude: Optional(1.1)
                )),
                pickupNotes: Optional("pickupNotes"),
                pickupTimeZone: Optional(DispatchScienceTimeZoneResponse1(
                    ianaTimeZoneId: Optional("ianaTimeZoneId"),
                    isDaylightSavingTime: Optional(true),
                    longDisplayName: Optional("longDisplayName"),
                    offset: Optional(1.1),
                    shortDisplayName: Optional("shortDisplayName"),
                    systemTimeZoneId: Optional("systemTimeZoneId")
                )),
                pickupWindow: Optional(DispatchScienceTimeWindowResponse1(
                    end: Optional("end"),
                    start: Optional("start")
                )),
                readyAt: Optional("readyAt"),
                receivedBy: Optional("receivedBy"),
                referenceNumber1: Optional("referenceNumber1"),
                referenceNumber2: Optional("referenceNumber2"),
                referenceNumber3: Optional("referenceNumber3"),
                serviceLevelId: Optional("serviceLevelId"),
                status: 1,
                vehicleTypeId: Optional("vehicleTypeId"),
                volume: Optional(1.1),
                volumeUnits: Optional("volumeUnits"),
                weight: Optional(1.1),
                weightUnits: Optional("weightUnits")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .dispatchScience,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.dispatchScience.orders.detailByIntegrationOrderIdV1(
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
                    "attachments": [
                      {}
                    ],
                    "charges": [
                      {}
                    ],
                    "createdAt": "createdAt",
                    "distance": 1.1,
                    "distanceUnits": "distanceUnits",
                    "dropoffAddress": {
                      "addressLine1": "addressLine1",
                      "addressLine2": "addressLine2",
                      "city": "city",
                      "company": "company",
                      "postalCode": "postalCode",
                      "stateProvince": "stateProvince"
                    },
                    "dropoffContactInfo": {
                      "email": "email",
                      "id": "id",
                      "language": "language",
                      "name": "name",
                      "phoneNumber": "phoneNumber"
                    },
                    "dropoffLocation": {
                      "isValid": true,
                      "latitude": 1.1,
                      "longitude": 1.1
                    },
                    "dropoffNotes": "dropoffNotes",
                    "dropoffTimeZone": {
                      "ianaTimeZoneId": "ianaTimeZoneId",
                      "isDaylightSavingTime": true,
                      "longDisplayName": "longDisplayName",
                      "offset": 1.1,
                      "shortDisplayName": "shortDisplayName",
                      "systemTimeZoneId": "systemTimeZoneId"
                    },
                    "dropoffWindow": {
                      "end": "end",
                      "start": "start"
                    },
                    "isOnHold": true,
                    "notes": "notes",
                    "numberOfPieces": 1,
                    "orderId": "orderId",
                    "pickupAddress": {
                      "addressLine1": "addressLine1",
                      "addressLine2": "addressLine2",
                      "city": "city",
                      "company": "company",
                      "postalCode": "postalCode",
                      "stateProvince": "stateProvince"
                    },
                    "pickupContactInfo": {
                      "email": "email",
                      "id": "id",
                      "language": "language",
                      "name": "name",
                      "phoneNumber": "phoneNumber"
                    },
                    "pickupLocation": {
                      "isValid": true,
                      "latitude": 1.1,
                      "longitude": 1.1
                    },
                    "pickupNotes": "pickupNotes",
                    "pickupTimeZone": {
                      "ianaTimeZoneId": "ianaTimeZoneId",
                      "isDaylightSavingTime": true,
                      "longDisplayName": "longDisplayName",
                      "offset": 1.1,
                      "shortDisplayName": "shortDisplayName",
                      "systemTimeZoneId": "systemTimeZoneId"
                    },
                    "pickupWindow": {
                      "end": "end",
                      "start": "start"
                    },
                    "readyAt": "readyAt",
                    "receivedBy": "receivedBy",
                    "referenceNumber1": "referenceNumber1",
                    "referenceNumber2": "referenceNumber2",
                    "referenceNumber3": "referenceNumber3",
                    "serviceLevelId": "serviceLevelId",
                    "status": 1,
                    "vehicleTypeId": "vehicleTypeId",
                    "volume": 1.1,
                    "volumeUnits": "volumeUnits",
                    "weight": 1.1,
                    "weightUnits": "weightUnits"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "dispatch_science",
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
        let expectedResponse = DispatchScienceOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: DispatchScienceOrderResponse1(
                attachments: Optional([
                    DispatchScienceAttachmentResponse1(

                    )
                ]),
                charges: Optional([
                    DispatchScienceChargeResponse1(

                    )
                ]),
                createdAt: Optional("createdAt"),
                distance: Optional(1.1),
                distanceUnits: Optional("distanceUnits"),
                dropoffAddress: Optional(DispatchScienceAddressResponse1(
                    addressLine1: Optional("addressLine1"),
                    addressLine2: Optional("addressLine2"),
                    city: Optional("city"),
                    company: Optional("company"),
                    postalCode: Optional("postalCode"),
                    stateProvince: Optional("stateProvince")
                )),
                dropoffContactInfo: Optional(DispatchScienceContactInfoResponse1(
                    email: Optional("email"),
                    id: Optional("id"),
                    language: Optional("language"),
                    name: Optional("name"),
                    phoneNumber: Optional("phoneNumber")
                )),
                dropoffLocation: Optional(DispatchScienceLocationResponse1(
                    isValid: Optional(true),
                    latitude: Optional(1.1),
                    longitude: Optional(1.1)
                )),
                dropoffNotes: Optional("dropoffNotes"),
                dropoffTimeZone: Optional(DispatchScienceTimeZoneResponse1(
                    ianaTimeZoneId: Optional("ianaTimeZoneId"),
                    isDaylightSavingTime: Optional(true),
                    longDisplayName: Optional("longDisplayName"),
                    offset: Optional(1.1),
                    shortDisplayName: Optional("shortDisplayName"),
                    systemTimeZoneId: Optional("systemTimeZoneId")
                )),
                dropoffWindow: Optional(DispatchScienceTimeWindowResponse1(
                    end: Optional("end"),
                    start: Optional("start")
                )),
                isOnHold: Optional(true),
                notes: Optional("notes"),
                numberOfPieces: Optional(1),
                orderId: "orderId",
                pickupAddress: Optional(DispatchScienceAddressResponse1(
                    addressLine1: Optional("addressLine1"),
                    addressLine2: Optional("addressLine2"),
                    city: Optional("city"),
                    company: Optional("company"),
                    postalCode: Optional("postalCode"),
                    stateProvince: Optional("stateProvince")
                )),
                pickupContactInfo: Optional(DispatchScienceContactInfoResponse1(
                    email: Optional("email"),
                    id: Optional("id"),
                    language: Optional("language"),
                    name: Optional("name"),
                    phoneNumber: Optional("phoneNumber")
                )),
                pickupLocation: Optional(DispatchScienceLocationResponse1(
                    isValid: Optional(true),
                    latitude: Optional(1.1),
                    longitude: Optional(1.1)
                )),
                pickupNotes: Optional("pickupNotes"),
                pickupTimeZone: Optional(DispatchScienceTimeZoneResponse1(
                    ianaTimeZoneId: Optional("ianaTimeZoneId"),
                    isDaylightSavingTime: Optional(true),
                    longDisplayName: Optional("longDisplayName"),
                    offset: Optional(1.1),
                    shortDisplayName: Optional("shortDisplayName"),
                    systemTimeZoneId: Optional("systemTimeZoneId")
                )),
                pickupWindow: Optional(DispatchScienceTimeWindowResponse1(
                    end: Optional("end"),
                    start: Optional("start")
                )),
                readyAt: Optional("readyAt"),
                receivedBy: Optional("receivedBy"),
                referenceNumber1: Optional("referenceNumber1"),
                referenceNumber2: Optional("referenceNumber2"),
                referenceNumber3: Optional("referenceNumber3"),
                serviceLevelId: Optional("serviceLevelId"),
                status: 1,
                vehicleTypeId: Optional("vehicleTypeId"),
                volume: Optional(1.1),
                volumeUnits: Optional("volumeUnits"),
                weight: Optional(1.1),
                weightUnits: Optional("weightUnits")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .dispatchScience,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.dispatchScience.orders.detailV1(
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
                        "orderId": "orderId",
                        "status": 1
                      },
                      "provider_payload_hash": "provider_payload_hash",
                      "schema_version": 1,
                      "shipping_integration": "dispatch_science",
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
        let expectedResponse = DispatchScienceOrderListRes(
            items: [
                DispatchScienceOrder1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    providerOrgId: "provider_org_id",
                    providerPayload: DispatchScienceOrderResponse1(
                        orderId: "orderId",
                        status: 1
                    ),
                    providerPayloadHash: "provider_payload_hash",
                    schemaVersion: 1,
                    shippingIntegration: .dispatchScience,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.dispatchScience.orders.listV1(
            sortBy: .mirroredAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterProviderOrgId: [
                "filter_provider_org_id"
            ],
            filterIntegrationOrderId: "filter_integration_order_id",
            filterProviderStatus: 1,
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
                    "attachments": [
                      {}
                    ],
                    "charges": [
                      {}
                    ],
                    "createdAt": "createdAt",
                    "distance": 1.1,
                    "distanceUnits": "distanceUnits",
                    "dropoffAddress": {
                      "addressLine1": "addressLine1",
                      "addressLine2": "addressLine2",
                      "city": "city",
                      "company": "company",
                      "postalCode": "postalCode",
                      "stateProvince": "stateProvince"
                    },
                    "dropoffContactInfo": {
                      "email": "email",
                      "id": "id",
                      "language": "language",
                      "name": "name",
                      "phoneNumber": "phoneNumber"
                    },
                    "dropoffLocation": {
                      "isValid": true,
                      "latitude": 1.1,
                      "longitude": 1.1
                    },
                    "dropoffNotes": "dropoffNotes",
                    "dropoffTimeZone": {
                      "ianaTimeZoneId": "ianaTimeZoneId",
                      "isDaylightSavingTime": true,
                      "longDisplayName": "longDisplayName",
                      "offset": 1.1,
                      "shortDisplayName": "shortDisplayName",
                      "systemTimeZoneId": "systemTimeZoneId"
                    },
                    "dropoffWindow": {
                      "end": "end",
                      "start": "start"
                    },
                    "isOnHold": true,
                    "notes": "notes",
                    "numberOfPieces": 1,
                    "orderId": "orderId",
                    "pickupAddress": {
                      "addressLine1": "addressLine1",
                      "addressLine2": "addressLine2",
                      "city": "city",
                      "company": "company",
                      "postalCode": "postalCode",
                      "stateProvince": "stateProvince"
                    },
                    "pickupContactInfo": {
                      "email": "email",
                      "id": "id",
                      "language": "language",
                      "name": "name",
                      "phoneNumber": "phoneNumber"
                    },
                    "pickupLocation": {
                      "isValid": true,
                      "latitude": 1.1,
                      "longitude": 1.1
                    },
                    "pickupNotes": "pickupNotes",
                    "pickupTimeZone": {
                      "ianaTimeZoneId": "ianaTimeZoneId",
                      "isDaylightSavingTime": true,
                      "longDisplayName": "longDisplayName",
                      "offset": 1.1,
                      "shortDisplayName": "shortDisplayName",
                      "systemTimeZoneId": "systemTimeZoneId"
                    },
                    "pickupWindow": {
                      "end": "end",
                      "start": "start"
                    },
                    "readyAt": "readyAt",
                    "receivedBy": "receivedBy",
                    "referenceNumber1": "referenceNumber1",
                    "referenceNumber2": "referenceNumber2",
                    "referenceNumber3": "referenceNumber3",
                    "serviceLevelId": "serviceLevelId",
                    "status": 1,
                    "vehicleTypeId": "vehicleTypeId",
                    "volume": 1.1,
                    "volumeUnits": "volumeUnits",
                    "weight": 1.1,
                    "weightUnits": "weightUnits"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "dispatch_science",
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
        let expectedResponse = DispatchScienceOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: DispatchScienceOrderResponse1(
                attachments: Optional([
                    DispatchScienceAttachmentResponse1(

                    )
                ]),
                charges: Optional([
                    DispatchScienceChargeResponse1(

                    )
                ]),
                createdAt: Optional("createdAt"),
                distance: Optional(1.1),
                distanceUnits: Optional("distanceUnits"),
                dropoffAddress: Optional(DispatchScienceAddressResponse1(
                    addressLine1: Optional("addressLine1"),
                    addressLine2: Optional("addressLine2"),
                    city: Optional("city"),
                    company: Optional("company"),
                    postalCode: Optional("postalCode"),
                    stateProvince: Optional("stateProvince")
                )),
                dropoffContactInfo: Optional(DispatchScienceContactInfoResponse1(
                    email: Optional("email"),
                    id: Optional("id"),
                    language: Optional("language"),
                    name: Optional("name"),
                    phoneNumber: Optional("phoneNumber")
                )),
                dropoffLocation: Optional(DispatchScienceLocationResponse1(
                    isValid: Optional(true),
                    latitude: Optional(1.1),
                    longitude: Optional(1.1)
                )),
                dropoffNotes: Optional("dropoffNotes"),
                dropoffTimeZone: Optional(DispatchScienceTimeZoneResponse1(
                    ianaTimeZoneId: Optional("ianaTimeZoneId"),
                    isDaylightSavingTime: Optional(true),
                    longDisplayName: Optional("longDisplayName"),
                    offset: Optional(1.1),
                    shortDisplayName: Optional("shortDisplayName"),
                    systemTimeZoneId: Optional("systemTimeZoneId")
                )),
                dropoffWindow: Optional(DispatchScienceTimeWindowResponse1(
                    end: Optional("end"),
                    start: Optional("start")
                )),
                isOnHold: Optional(true),
                notes: Optional("notes"),
                numberOfPieces: Optional(1),
                orderId: "orderId",
                pickupAddress: Optional(DispatchScienceAddressResponse1(
                    addressLine1: Optional("addressLine1"),
                    addressLine2: Optional("addressLine2"),
                    city: Optional("city"),
                    company: Optional("company"),
                    postalCode: Optional("postalCode"),
                    stateProvince: Optional("stateProvince")
                )),
                pickupContactInfo: Optional(DispatchScienceContactInfoResponse1(
                    email: Optional("email"),
                    id: Optional("id"),
                    language: Optional("language"),
                    name: Optional("name"),
                    phoneNumber: Optional("phoneNumber")
                )),
                pickupLocation: Optional(DispatchScienceLocationResponse1(
                    isValid: Optional(true),
                    latitude: Optional(1.1),
                    longitude: Optional(1.1)
                )),
                pickupNotes: Optional("pickupNotes"),
                pickupTimeZone: Optional(DispatchScienceTimeZoneResponse1(
                    ianaTimeZoneId: Optional("ianaTimeZoneId"),
                    isDaylightSavingTime: Optional(true),
                    longDisplayName: Optional("longDisplayName"),
                    offset: Optional(1.1),
                    shortDisplayName: Optional("shortDisplayName"),
                    systemTimeZoneId: Optional("systemTimeZoneId")
                )),
                pickupWindow: Optional(DispatchScienceTimeWindowResponse1(
                    end: Optional("end"),
                    start: Optional("start")
                )),
                readyAt: Optional("readyAt"),
                receivedBy: Optional("receivedBy"),
                referenceNumber1: Optional("referenceNumber1"),
                referenceNumber2: Optional("referenceNumber2"),
                referenceNumber3: Optional("referenceNumber3"),
                serviceLevelId: Optional("serviceLevelId"),
                status: 1,
                vehicleTypeId: Optional("vehicleTypeId"),
                volume: Optional(1.1),
                volumeUnits: Optional("volumeUnits"),
                weight: Optional(1.1),
                weightUnits: Optional("weightUnits")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .dispatchScience,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.dispatchScience.orders.syncOneV1(
            request: .init(
                integrationOrderId: "integration_order_id",
                providerOrgId: "provider_org_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}