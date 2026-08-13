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
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "integration_order_id": "integration_order_id",
                  "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "provider_org_id": "provider_org_id",
                  "provider_status_raw": "provider_status_raw",
                  "reference_numbers": [
                    "reference_numbers"
                  ],
                  "schema_version": 1,
                  "shipping_integration": "xcelerator",
                  "source_provider_payload_hash": "source_provider_payload_hash",
                  "status": "staged",
                  "stop_count": 1,
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
        let expectedResponse = ShippingIntegrationOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
            providerOrgId: "provider_org_id",
            providerStatusRaw: Optional("provider_status_raw"),
            referenceNumbers: Optional([
                "reference_numbers"
            ]),
            schemaVersion: 1,
            shippingIntegration: OrgShippingIntegrationEnum1.xcelerator,
            sourceProviderPayloadHash: "source_provider_payload_hash",
            status: ShippingIntegrationOrderStatusEnum1.staged,
            stopCount: Optional(1),
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.orders.detailV1(
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
                      "destination": {
                        "label": "label"
                      },
                      "integration_order_id": "integration_order_id",
                      "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                      "ordered_at_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "origin": {
                        "label": "label"
                      },
                      "provider_org_id": "provider_org_id",
                      "provider_status_raw": "provider_status_raw",
                      "reference_numbers": [
                        "reference_numbers"
                      ],
                      "schema_version": 1,
                      "shipping_integration": "xcelerator",
                      "source_provider_payload_hash": "source_provider_payload_hash",
                      "status": "staged",
                      "stop_count": 1,
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
        let expectedResponse = ShippingIntegrationOrderListRes(
            items: [
                ShippingIntegrationOrder1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    destination: Optional(ShippingIntegrationOrderPlace1(
                        label: "label"
                    )),
                    integrationOrderId: "integration_order_id",
                    mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orderedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orgId: "org_id",
                    origin: Optional(ShippingIntegrationOrderPlace1(
                        label: "label"
                    )),
                    providerOrgId: "provider_org_id",
                    providerStatusRaw: Optional("provider_status_raw"),
                    referenceNumbers: Optional([
                        "reference_numbers"
                    ]),
                    schemaVersion: 1,
                    shippingIntegration: OrgShippingIntegrationEnum1.xcelerator,
                    sourceProviderPayloadHash: "source_provider_payload_hash",
                    status: ShippingIntegrationOrderStatusEnum1.staged,
                    stopCount: Optional(1),
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.orders.listV1(
            sortBy: .orderedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
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
}