import Foundation
import Testing
import Chrt

@Suite("AtlasOrdersClient Wire Tests") struct AtlasOrdersClientWireTests {
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
                    "clientReference": "clientReference",
                    "dateCreated": "dateCreated",
                    "dateEnd": "dateEnd",
                    "destination": "destination",
                    "id": "id",
                    "numStops": 1,
                    "origin": "origin",
                    "status": "status",
                    "stops": [
                      {}
                    ],
                    "trailer": "trailer"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "atlas",
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
        let expectedResponse = AtlasOrderExpanded1(
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
            providerPayload: AtlasOrderResponse1(
                clientReference: Optional("clientReference"),
                dateCreated: Optional("dateCreated"),
                dateEnd: Optional("dateEnd"),
                destination: Optional("destination"),
                id: "id",
                numStops: Optional(1),
                origin: Optional("origin"),
                status: Optional("status"),
                stops: Optional([
                    AtlasStopResponse1(

                    )
                ]),
                trailer: Optional("trailer")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .atlas,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.atlas.orders.detailByIntegrationOrderIdV1(
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
                    "clientReference": "clientReference",
                    "dateCreated": "dateCreated",
                    "dateEnd": "dateEnd",
                    "destination": "destination",
                    "id": "id",
                    "numStops": 1,
                    "origin": "origin",
                    "status": "status",
                    "stops": [
                      {}
                    ],
                    "trailer": "trailer"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "atlas",
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
        let expectedResponse = AtlasOrderExpanded1(
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
            providerPayload: AtlasOrderResponse1(
                clientReference: Optional("clientReference"),
                dateCreated: Optional("dateCreated"),
                dateEnd: Optional("dateEnd"),
                destination: Optional("destination"),
                id: "id",
                numStops: Optional(1),
                origin: Optional("origin"),
                status: Optional("status"),
                stops: Optional([
                    AtlasStopResponse1(

                    )
                ]),
                trailer: Optional("trailer")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .atlas,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.atlas.orders.detailV1(
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
                      "shipping_integration": "atlas",
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
        let expectedResponse = AtlasOrderListRes(
            items: [
                AtlasOrderExpanded1(
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
                    providerPayload: AtlasOrderResponse1(
                        id: "id"
                    ),
                    providerPayloadHash: "provider_payload_hash",
                    schemaVersion: 1,
                    shippingIntegration: .atlas,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.atlas.orders.listV1(
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
                    "clientReference": "clientReference",
                    "dateCreated": "dateCreated",
                    "dateEnd": "dateEnd",
                    "destination": "destination",
                    "id": "id",
                    "numStops": 1,
                    "origin": "origin",
                    "status": "status",
                    "stops": [
                      {}
                    ],
                    "trailer": "trailer"
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "atlas",
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
        let expectedResponse = AtlasOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: AtlasOrderResponse1(
                clientReference: Optional("clientReference"),
                dateCreated: Optional("dateCreated"),
                dateEnd: Optional("dateEnd"),
                destination: Optional("destination"),
                id: "id",
                numStops: Optional(1),
                origin: Optional("origin"),
                status: Optional("status"),
                stops: Optional([
                    AtlasStopResponse1(

                    )
                ]),
                trailer: Optional("trailer")
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .atlas,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.atlas.orders.syncOneV1(
            request: .init(
                integrationOrderId: "integration_order_id",
                providerOrgId: "provider_org_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}