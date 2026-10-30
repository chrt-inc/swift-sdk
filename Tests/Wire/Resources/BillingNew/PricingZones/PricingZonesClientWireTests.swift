import Foundation
import Testing
import Chrt

@Suite("PricingZonesClient Wire Tests") struct PricingZonesClientWireTests {
    @Test func archiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "map_area": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
                    "coordinates": [
                      [
                        []
                      ]
                    ],
                    "type": "Polygon"
                  },
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "postal_code_country_code": "postal_code_country_code",
                  "postal_codes": [
                    "postal_codes"
                  ],
                  "schema_version": 1,
                  "shipper_account_ids": [
                    "shipper_account_ids"
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PricingZone1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            mapArea: Optional(PricingZone1MapArea.polygon(
                Polygon(
                    bbox: Optional([
                        JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ]),
                    coordinates: [
                        [
                            CoordinatesItemItem.position2D(
                                []
                            )
                        ]
                    ],
                    type: .polygon
                )
            )),
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            postalCodeCountryCode: Optional("postal_code_country_code"),
            postalCodes: Optional([
                "postal_codes"
            ]),
            schemaVersion: 1,
            shipperAccountIds: Optional([
                "shipper_account_ids"
            ])
        )
        let response = try await client.billingNew.pricingZones.archiveV1(
            pricingZoneId: "pricing_zone_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "map_area": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
                    "coordinates": [
                      [
                        []
                      ]
                    ],
                    "type": "Polygon"
                  },
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "postal_code_country_code": "postal_code_country_code",
                  "postal_codes": [
                    "postal_codes"
                  ],
                  "schema_version": 1,
                  "shipper_account_ids": [
                    "shipper_account_ids"
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PricingZone1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            mapArea: Optional(PricingZone1MapArea.polygon(
                Polygon(
                    bbox: Optional([
                        JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ]),
                    coordinates: [
                        [
                            CoordinatesItemItem.position2D(
                                []
                            )
                        ]
                    ],
                    type: .polygon
                )
            )),
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            postalCodeCountryCode: Optional("postal_code_country_code"),
            postalCodes: Optional([
                "postal_codes"
            ]),
            schemaVersion: 1,
            shipperAccountIds: Optional([
                "shipper_account_ids"
            ])
        )
        let response = try await client.billingNew.pricingZones.createV1(
            request: .init(
                name: "name",
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "map_area": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
                    "coordinates": [
                      [
                        []
                      ]
                    ],
                    "type": "Polygon"
                  },
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "postal_code_country_code": "postal_code_country_code",
                  "postal_codes": [
                    "postal_codes"
                  ],
                  "schema_version": 1,
                  "shipper_account_ids": [
                    "shipper_account_ids"
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PricingZone1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            mapArea: Optional(PricingZone1MapArea.polygon(
                Polygon(
                    bbox: Optional([
                        JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ]),
                    coordinates: [
                        [
                            CoordinatesItemItem.position2D(
                                []
                            )
                        ]
                    ],
                    type: .polygon
                )
            )),
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            postalCodeCountryCode: Optional("postal_code_country_code"),
            postalCodes: Optional([
                "postal_codes"
            ]),
            schemaVersion: 1,
            shipperAccountIds: Optional([
                "shipper_account_ids"
            ])
        )
        let response = try await client.billingNew.pricingZones.getV1(
            pricingZoneId: "pricing_zone_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "_id": "_id",
                    "archived_at_timestamp": "2024-01-15T09:30:00Z",
                    "archived_by_user_id": "archived_by_user_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "map_area": {
                      "coordinates": [
                        [
                          []
                        ]
                      ],
                      "type": "Polygon"
                    },
                    "name": "name",
                    "owned_by_org_id": "owned_by_org_id",
                    "postal_code_country_code": "postal_code_country_code",
                    "postal_codes": [
                      "postal_codes"
                    ],
                    "schema_version": 1,
                    "shipper_account_ids": [
                      "shipper_account_ids"
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
            PricingZone1(
                id: "_id",
                archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                archivedByUserId: Optional("archived_by_user_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                mapArea: Optional(PricingZone1MapArea.polygon(
                    Polygon(
                        coordinates: [
                            [
                                CoordinatesItemItem.position2D(
                                    []
                                )
                            ]
                        ],
                        type: .polygon
                    )
                )),
                name: "name",
                ownedByOrgId: "owned_by_org_id",
                postalCodeCountryCode: Optional("postal_code_country_code"),
                postalCodes: Optional([
                    "postal_codes"
                ]),
                schemaVersion: 1,
                shipperAccountIds: Optional([
                    "shipper_account_ids"
                ])
            )
        ]
        let response = try await client.billingNew.pricingZones.listV1(
            includeArchived: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "map_area": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
                    "coordinates": [
                      [
                        []
                      ]
                    ],
                    "type": "Polygon"
                  },
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "postal_code_country_code": "postal_code_country_code",
                  "postal_codes": [
                    "postal_codes"
                  ],
                  "schema_version": 1,
                  "shipper_account_ids": [
                    "shipper_account_ids"
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PricingZone1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            mapArea: Optional(PricingZone1MapArea.polygon(
                Polygon(
                    bbox: Optional([
                        JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ]),
                    coordinates: [
                        [
                            CoordinatesItemItem.position2D(
                                []
                            )
                        ]
                    ],
                    type: .polygon
                )
            )),
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            postalCodeCountryCode: Optional("postal_code_country_code"),
            postalCodes: Optional([
                "postal_codes"
            ]),
            schemaVersion: 1,
            shipperAccountIds: Optional([
                "shipper_account_ids"
            ])
        )
        let response = try await client.billingNew.pricingZones.updateV1(
            pricingZoneId: "pricing_zone_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}