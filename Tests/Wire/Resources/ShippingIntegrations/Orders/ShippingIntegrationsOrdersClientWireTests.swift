import Foundation
import Testing
import Chrt

@Suite("ShippingIntegrationsOrdersClient Wire Tests") struct ShippingIntegrationsOrdersClientWireTests {
    @Test func detailV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "completed_at_provenance": "reported",
                  "completed_at_timestamp": "2024-01-15T09:30:00Z",
                  "destination": {
                    "city": "city",
                    "company_name": "company_name",
                    "country_code": "country_code",
                    "label": "label",
                    "location": {
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
                    },
                    "postal_code": "postal_code",
                    "state": "state"
                  },
                  "first_mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                  "integration_order_id": "integration_order_id",
                  "last_mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                  "ordered_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "origin": {
                    "city": "city",
                    "company_name": "company_name",
                    "country_code": "country_code",
                    "label": "label",
                    "location": {
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
                    },
                    "postal_code": "postal_code",
                    "state": "state"
                  },
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
                  "provider_status_raw": "provider_status_raw",
                  "reference_numbers": [
                    "reference_numbers"
                  ],
                  "schema_version": 1,
                  "shipper_org": {
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
                  "shipping_integration": "xcelerator",
                  "source_provider_payload_hash": "source_provider_payload_hash",
                  "status": "staged",
                  "stop_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShippingIntegrationOrderExpanded1(
            id: "_id",
            completedAtProvenance: Optional(ShippingIntegrationOrderCompletedAtProvenanceEnum1.reported),
            completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            destination: Optional(ShippingIntegrationOrderPlace1(
                city: Optional("city"),
                companyName: Optional("company_name"),
                countryCode: Optional("country_code"),
                label: "label",
                location: Optional(LocationFeature(
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
                )),
                postalCode: Optional("postal_code"),
                state: Optional("state")
            )),
            firstMirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            lastMirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orderedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orgId: "org_id",
            origin: Optional(ShippingIntegrationOrderPlace1(
                city: Optional("city"),
                companyName: Optional("company_name"),
                countryCode: Optional("country_code"),
                label: "label",
                location: Optional(LocationFeature(
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
                )),
                postalCode: Optional("postal_code"),
                state: Optional("state")
            )),
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
            providerStatusRaw: Optional("provider_status_raw"),
            referenceNumbers: Optional([
                "reference_numbers"
            ]),
            schemaVersion: 1,
            shipperOrg: Optional(OrgPublicData1(
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
            shippingIntegration: OrgShippingIntegrationEnum1.xcelerator,
            sourceProviderPayloadHash: "source_provider_payload_hash",
            status: ShippingIntegrationOrderStatusEnum1.staged,
            stopCount: Optional(1)
        )
        let response = try await client.shippingIntegrations.orders.detailV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForIntegrationExecutorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "completed_at_provenance": "reported",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "destination": {
                        "label": "label"
                      },
                      "first_mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                      "integration_order_id": "integration_order_id",
                      "last_mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                      "ordered_at_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "origin": {
                        "label": "label"
                      },
                      "provider_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "provider_org_id": "provider_org_id",
                      "provider_status_raw": "provider_status_raw",
                      "reference_numbers": [
                        "reference_numbers"
                      ],
                      "schema_version": 1,
                      "shipper_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "shipping_integration": "xcelerator",
                      "source_provider_payload_hash": "source_provider_payload_hash",
                      "status": "staged",
                      "stop_count": 1
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
        let expectedResponse = ShippingIntegrationOrderListRes(
            items: [
                ShippingIntegrationOrderExpanded1(
                    id: "_id",
                    completedAtProvenance: Optional(ShippingIntegrationOrderCompletedAtProvenanceEnum1.reported),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    destination: Optional(ShippingIntegrationOrderPlace1(
                        label: "label"
                    )),
                    firstMirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    lastMirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orderedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orgId: "org_id",
                    origin: Optional(ShippingIntegrationOrderPlace1(
                        label: "label"
                    )),
                    providerOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    providerOrgId: "provider_org_id",
                    providerStatusRaw: Optional("provider_status_raw"),
                    referenceNumbers: Optional([
                        "reference_numbers"
                    ]),
                    schemaVersion: 1,
                    shipperOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    shippingIntegration: OrgShippingIntegrationEnum1.xcelerator,
                    sourceProviderPayloadHash: "source_provider_payload_hash",
                    status: ShippingIntegrationOrderStatusEnum1.staged,
                    stopCount: Optional(1)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.orders.listForIntegrationExecutorOperatorsV1(
            sortBy: .orderedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterShippingIntegration: [
                .xcelerator
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
            filterFirstMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
                      "completed_at_provenance": "reported",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "destination": {
                        "label": "label"
                      },
                      "first_mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                      "integration_order_id": "integration_order_id",
                      "last_mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                      "ordered_at_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "origin": {
                        "label": "label"
                      },
                      "provider_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "provider_org_id": "provider_org_id",
                      "provider_status_raw": "provider_status_raw",
                      "reference_numbers": [
                        "reference_numbers"
                      ],
                      "schema_version": 1,
                      "shipper_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "shipping_integration": "xcelerator",
                      "source_provider_payload_hash": "source_provider_payload_hash",
                      "status": "staged",
                      "stop_count": 1
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
        let expectedResponse = ShippingIntegrationOrderListRes(
            items: [
                ShippingIntegrationOrderExpanded1(
                    id: "_id",
                    completedAtProvenance: Optional(ShippingIntegrationOrderCompletedAtProvenanceEnum1.reported),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    destination: Optional(ShippingIntegrationOrderPlace1(
                        label: "label"
                    )),
                    firstMirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    lastMirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orderedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orgId: "org_id",
                    origin: Optional(ShippingIntegrationOrderPlace1(
                        label: "label"
                    )),
                    providerOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    providerOrgId: "provider_org_id",
                    providerStatusRaw: Optional("provider_status_raw"),
                    referenceNumbers: Optional([
                        "reference_numbers"
                    ]),
                    schemaVersion: 1,
                    shipperOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    shippingIntegration: OrgShippingIntegrationEnum1.xcelerator,
                    sourceProviderPayloadHash: "source_provider_payload_hash",
                    status: ShippingIntegrationOrderStatusEnum1.staged,
                    stopCount: Optional(1)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.orders.listV1(
            sortBy: .orderedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
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
            filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterFirstMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterFirstMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusSummaryV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cancelled_count": 1,
                  "completed_count": 1,
                  "exception_count": 1,
                  "in_progress_count": 1,
                  "staged_count": 1,
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
        let expectedResponse = ShippingIntegrationOrderStatusSummaryRes(
            cancelledCount: 1,
            completedCount: 1,
            exceptionCount: 1,
            inProgressCount: 1,
            stagedCount: 1,
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.orders.statusSummaryV1(
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
            filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterFirstMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterFirstMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "type": "integration_order_id",
                    "values": [
                      "values"
                    ]
                  }
                ]
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            ShippingIntegrationOrderTypeaheadResult(
                type: ShippingIntegrationOrderTypeaheadFieldEnum.integrationOrderId,
                values: [
                    "values"
                ]
            )
        ]
        let response = try await client.shippingIntegrations.orders.typeaheadV1(
            query: "query",
            limit: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}