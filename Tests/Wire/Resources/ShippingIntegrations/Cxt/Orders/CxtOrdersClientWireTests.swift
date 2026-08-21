import Foundation
import Testing
import Chrt

@Suite("CxtOrdersClient Wire Tests") struct CxtOrdersClientWireTests {
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
                  "provider_org": {
                    "_id": "_id",
                    "description": "description",
                    "email_address": "email_address",
                    "handle": "handle",
                    "industry": "industry",
                    "name": "name",
                    "org_id": "org_id",
                    "org_type": "provider",
                    "phone_number": "phone_number",
                    "schema_version": 1,
                    "street_address": {
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1,
                      "type": "Feature"
                    }
                  },
                  "provider_org_id": "provider_org_id",
                  "provider_payload": {
                    "bol": "bol",
                    "caller": "caller",
                    "charges": 1.1,
                    "createdBy": "createdBy",
                    "createdWhen": {
                      "key": "value"
                    },
                    "custId": 1,
                    "customer": {
                      "key": "value"
                    },
                    "destIdIsValid": true,
                    "destination": {
                      "key": "value"
                    },
                    "distance": 1.1,
                    "drivers": [
                      {
                        "key": "value"
                      }
                    ],
                    "fleet": {
                      "key": "value"
                    },
                    "flightInfo": {
                      "key": "value"
                    },
                    "forceLocationScanDelivery": "forceLocationScanDelivery",
                    "forceLocationScanPickup": "forceLocationScanPickup",
                    "hasAssociatedRouteStops": true,
                    "hasAuthorizedCreditCard": true,
                    "id": "id",
                    "isParent": true,
                    "items": [
                      {
                        "key": "value"
                      }
                    ],
                    "masterBol": "masterBol",
                    "notes": [
                      {
                        "key": "value"
                      }
                    ],
                    "orderCount": 1,
                    "orderDate": {
                      "key": "value"
                    },
                    "orderStatus": {
                      "key": "value"
                    },
                    "orderType": 1,
                    "orderTypeDescription": "orderTypeDescription",
                    "origin": {
                      "key": "value"
                    },
                    "originIdIsValid": true,
                    "parcelType": {
                      "key": "value"
                    },
                    "parcels": [
                      {
                        "key": "value"
                      }
                    ],
                    "pieces": 1,
                    "podRequired": true,
                    "reference1": "reference1",
                    "reference2": "reference2",
                    "requiredDriverInput": {
                      "key": "value"
                    },
                    "route": 1,
                    "routeStop": "routeStop",
                    "rowVersion": "rowVersion",
                    "signature": {
                      "key": "value"
                    },
                    "signatureRequired": true,
                    "specialInst": "specialInst",
                    "status": "status",
                    "statusCodes": [
                      {
                        "key": "value"
                      }
                    ],
                    "updatedBy": "updatedBy",
                    "updatedWhen": {
                      "key": "value"
                    },
                    "weight": 1.1,
                    "workstation": "workstation"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "cxt",
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
        let expectedResponse = CxtOrderExpanded1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrg: Optional(OrgPublicData1(
                id: "_id",
                description: Optional("description"),
                emailAddress: Optional("email_address"),
                handle: Optional("handle"),
                industry: Optional("industry"),
                name: "name",
                orgId: "org_id",
                orgType: OrgTypeEnum.provider,
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometriesItem.lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
                                                []
                                            )
                                        ],
                                        additionalProperties: [
                                            "type": JSONValue.string("LineString")
                                        ]
                                    )
                                )
                            ],
                            additionalProperties: [
                                "type": JSONValue.string("GeometryCollection")
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    )),
                    type: .feature
                ))
            )),
            providerOrgId: "provider_org_id",
            providerPayload: CxtOrderExpanded1ProviderPayload.cxtXdUserOrderResponse1(
                CxtXdUserOrderResponse1(
                    bol: Optional("bol"),
                    caller: Optional("caller"),
                    charges: Optional(1.1),
                    createdBy: Optional("createdBy"),
                    createdWhen: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    custId: Optional(1),
                    customer: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    destIdIsValid: Optional(true),
                    destination: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    distance: Optional(1.1),
                    drivers: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    fleet: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    flightInfo: Optional(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    forceLocationScanDelivery: Optional("forceLocationScanDelivery"),
                    forceLocationScanPickup: Optional("forceLocationScanPickup"),
                    hasAssociatedRouteStops: Optional(true),
                    hasAuthorizedCreditCard: Optional(true),
                    id: "id",
                    isParent: Optional(true),
                    items: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    masterBol: Optional("masterBol"),
                    notes: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    orderCount: Optional(1),
                    orderDate: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    orderStatus: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    orderType: Optional(1),
                    orderTypeDescription: Optional("orderTypeDescription"),
                    origin: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    originIdIsValid: Optional(true),
                    parcelType: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    parcels: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    pieces: Optional(1),
                    podRequired: Optional(true),
                    reference1: Optional("reference1"),
                    reference2: Optional("reference2"),
                    requiredDriverInput: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    route: Optional(1),
                    routeStop: Optional("routeStop"),
                    rowVersion: Optional("rowVersion"),
                    signature: Optional(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    signatureRequired: Optional(true),
                    specialInst: Optional("specialInst"),
                    status: Optional("status"),
                    statusCodes: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    updatedBy: Optional("updatedBy"),
                    updatedWhen: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    weight: Optional(1.1),
                    workstation: Optional("workstation")
                )
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .cxt,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.cxt.orders.detailByIntegrationOrderIdV1(
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
                  "provider_org": {
                    "_id": "_id",
                    "description": "description",
                    "email_address": "email_address",
                    "handle": "handle",
                    "industry": "industry",
                    "name": "name",
                    "org_id": "org_id",
                    "org_type": "provider",
                    "phone_number": "phone_number",
                    "schema_version": 1,
                    "street_address": {
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1,
                      "type": "Feature"
                    }
                  },
                  "provider_org_id": "provider_org_id",
                  "provider_payload": {
                    "bol": "bol",
                    "caller": "caller",
                    "charges": 1.1,
                    "createdBy": "createdBy",
                    "createdWhen": {
                      "key": "value"
                    },
                    "custId": 1,
                    "customer": {
                      "key": "value"
                    },
                    "destIdIsValid": true,
                    "destination": {
                      "key": "value"
                    },
                    "distance": 1.1,
                    "drivers": [
                      {
                        "key": "value"
                      }
                    ],
                    "fleet": {
                      "key": "value"
                    },
                    "flightInfo": {
                      "key": "value"
                    },
                    "forceLocationScanDelivery": "forceLocationScanDelivery",
                    "forceLocationScanPickup": "forceLocationScanPickup",
                    "hasAssociatedRouteStops": true,
                    "hasAuthorizedCreditCard": true,
                    "id": "id",
                    "isParent": true,
                    "items": [
                      {
                        "key": "value"
                      }
                    ],
                    "masterBol": "masterBol",
                    "notes": [
                      {
                        "key": "value"
                      }
                    ],
                    "orderCount": 1,
                    "orderDate": {
                      "key": "value"
                    },
                    "orderStatus": {
                      "key": "value"
                    },
                    "orderType": 1,
                    "orderTypeDescription": "orderTypeDescription",
                    "origin": {
                      "key": "value"
                    },
                    "originIdIsValid": true,
                    "parcelType": {
                      "key": "value"
                    },
                    "parcels": [
                      {
                        "key": "value"
                      }
                    ],
                    "pieces": 1,
                    "podRequired": true,
                    "reference1": "reference1",
                    "reference2": "reference2",
                    "requiredDriverInput": {
                      "key": "value"
                    },
                    "route": 1,
                    "routeStop": "routeStop",
                    "rowVersion": "rowVersion",
                    "signature": {
                      "key": "value"
                    },
                    "signatureRequired": true,
                    "specialInst": "specialInst",
                    "status": "status",
                    "statusCodes": [
                      {
                        "key": "value"
                      }
                    ],
                    "updatedBy": "updatedBy",
                    "updatedWhen": {
                      "key": "value"
                    },
                    "weight": 1.1,
                    "workstation": "workstation"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "cxt",
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
        let expectedResponse = CxtOrderExpanded1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrg: Optional(OrgPublicData1(
                id: "_id",
                description: Optional("description"),
                emailAddress: Optional("email_address"),
                handle: Optional("handle"),
                industry: Optional("industry"),
                name: "name",
                orgId: "org_id",
                orgType: OrgTypeEnum.provider,
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometriesItem.lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
                                                []
                                            )
                                        ],
                                        additionalProperties: [
                                            "type": JSONValue.string("LineString")
                                        ]
                                    )
                                )
                            ],
                            additionalProperties: [
                                "type": JSONValue.string("GeometryCollection")
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    )),
                    type: .feature
                ))
            )),
            providerOrgId: "provider_org_id",
            providerPayload: CxtOrderExpanded1ProviderPayload.cxtXdUserOrderResponse1(
                CxtXdUserOrderResponse1(
                    bol: Optional("bol"),
                    caller: Optional("caller"),
                    charges: Optional(1.1),
                    createdBy: Optional("createdBy"),
                    createdWhen: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    custId: Optional(1),
                    customer: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    destIdIsValid: Optional(true),
                    destination: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    distance: Optional(1.1),
                    drivers: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    fleet: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    flightInfo: Optional(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    forceLocationScanDelivery: Optional("forceLocationScanDelivery"),
                    forceLocationScanPickup: Optional("forceLocationScanPickup"),
                    hasAssociatedRouteStops: Optional(true),
                    hasAuthorizedCreditCard: Optional(true),
                    id: "id",
                    isParent: Optional(true),
                    items: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    masterBol: Optional("masterBol"),
                    notes: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    orderCount: Optional(1),
                    orderDate: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    orderStatus: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    orderType: Optional(1),
                    orderTypeDescription: Optional("orderTypeDescription"),
                    origin: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    originIdIsValid: Optional(true),
                    parcelType: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    parcels: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    pieces: Optional(1),
                    podRequired: Optional(true),
                    reference1: Optional("reference1"),
                    reference2: Optional("reference2"),
                    requiredDriverInput: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    route: Optional(1),
                    routeStop: Optional("routeStop"),
                    rowVersion: Optional("rowVersion"),
                    signature: Optional(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    signatureRequired: Optional(true),
                    specialInst: Optional("specialInst"),
                    status: Optional("status"),
                    statusCodes: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    updatedBy: Optional("updatedBy"),
                    updatedWhen: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    weight: Optional(1.1),
                    workstation: Optional("workstation")
                )
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .cxt,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.cxt.orders.detailV1(
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
                      "provider_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "provider_org_id": "provider_org_id",
                      "provider_payload": {
                        "id": "id"
                      },
                      "provider_payload_hash": "provider_payload_hash",
                      "schema_version": 1,
                      "shipping_integration": "cxt",
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
        let expectedResponse = CxtOrderListRes(
            items: [
                CxtOrderExpanded1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    providerOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    providerOrgId: "provider_org_id",
                    providerPayload: CxtOrderExpanded1ProviderPayload.cxtXdUserOrderResponse1(
                        CxtXdUserOrderResponse1(
                            id: "id"
                        )
                    ),
                    providerPayloadHash: "provider_payload_hash",
                    schemaVersion: 1,
                    shippingIntegration: .cxt,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.cxt.orders.listV1(
            sortBy: .mirroredAtTimestamp,
            sortOrder: .asc,
            limit: 1,
            page: 1,
            search: "search",
            filterProviderOrgId: [
                "filter_provider_org_id"
            ],
            filterIntegrationOrderId: "filter_integration_order_id",
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
                    "bol": "bol",
                    "caller": "caller",
                    "charges": 1.1,
                    "createdBy": "createdBy",
                    "createdWhen": {
                      "key": "value"
                    },
                    "custId": 1,
                    "customer": {
                      "key": "value"
                    },
                    "destIdIsValid": true,
                    "destination": {
                      "key": "value"
                    },
                    "distance": 1.1,
                    "drivers": [
                      {
                        "key": "value"
                      }
                    ],
                    "fleet": {
                      "key": "value"
                    },
                    "flightInfo": {
                      "key": "value"
                    },
                    "forceLocationScanDelivery": "forceLocationScanDelivery",
                    "forceLocationScanPickup": "forceLocationScanPickup",
                    "hasAssociatedRouteStops": true,
                    "hasAuthorizedCreditCard": true,
                    "id": "id",
                    "isParent": true,
                    "items": [
                      {
                        "key": "value"
                      }
                    ],
                    "masterBol": "masterBol",
                    "notes": [
                      {
                        "key": "value"
                      }
                    ],
                    "orderCount": 1,
                    "orderDate": {
                      "key": "value"
                    },
                    "orderStatus": {
                      "key": "value"
                    },
                    "orderType": 1,
                    "orderTypeDescription": "orderTypeDescription",
                    "origin": {
                      "key": "value"
                    },
                    "originIdIsValid": true,
                    "parcelType": {
                      "key": "value"
                    },
                    "parcels": [
                      {
                        "key": "value"
                      }
                    ],
                    "pieces": 1,
                    "podRequired": true,
                    "reference1": "reference1",
                    "reference2": "reference2",
                    "requiredDriverInput": {
                      "key": "value"
                    },
                    "route": 1,
                    "routeStop": "routeStop",
                    "rowVersion": "rowVersion",
                    "signature": {
                      "key": "value"
                    },
                    "signatureRequired": true,
                    "specialInst": "specialInst",
                    "status": "status",
                    "statusCodes": [
                      {
                        "key": "value"
                      }
                    ],
                    "updatedBy": "updatedBy",
                    "updatedWhen": {
                      "key": "value"
                    },
                    "weight": 1.1,
                    "workstation": "workstation"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "cxt",
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
        let expectedResponse = CxtOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: CxtOrder1ProviderPayload.cxtXdUserOrderResponse1(
                CxtXdUserOrderResponse1(
                    bol: Optional("bol"),
                    caller: Optional("caller"),
                    charges: Optional(1.1),
                    createdBy: Optional("createdBy"),
                    createdWhen: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    custId: Optional(1),
                    customer: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    destIdIsValid: Optional(true),
                    destination: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    distance: Optional(1.1),
                    drivers: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    fleet: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    flightInfo: Optional(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    forceLocationScanDelivery: Optional("forceLocationScanDelivery"),
                    forceLocationScanPickup: Optional("forceLocationScanPickup"),
                    hasAssociatedRouteStops: Optional(true),
                    hasAuthorizedCreditCard: Optional(true),
                    id: "id",
                    isParent: Optional(true),
                    items: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    masterBol: Optional("masterBol"),
                    notes: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    orderCount: Optional(1),
                    orderDate: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    orderStatus: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    orderType: Optional(1),
                    orderTypeDescription: Optional("orderTypeDescription"),
                    origin: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    originIdIsValid: Optional(true),
                    parcelType: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    parcels: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    pieces: Optional(1),
                    podRequired: Optional(true),
                    reference1: Optional("reference1"),
                    reference2: Optional("reference2"),
                    requiredDriverInput: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    route: Optional(1),
                    routeStop: Optional("routeStop"),
                    rowVersion: Optional("rowVersion"),
                    signature: Optional(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    signatureRequired: Optional(true),
                    specialInst: Optional("specialInst"),
                    status: Optional("status"),
                    statusCodes: Optional([
                        [
                            "key": JSONValue.string("value")
                        ]
                    ]),
                    updatedBy: Optional("updatedBy"),
                    updatedWhen: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    weight: Optional(1.1),
                    workstation: Optional("workstation")
                )
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .cxt,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.cxt.orders.syncOneV1(
            request: .init(
                integrationOrderId: "integration_order_id",
                providerOrgId: "provider_org_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}