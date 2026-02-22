import Foundation
import Testing
import Chrt

@Suite("DevicesClient Wire Tests") struct DevicesClientWireTests {
    @Test func registerToOrgV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.tracking.devices.registerToOrgV1(
            request: .init(
                schemaVersion: 1,
                deviceMacAddress: "device_mac_address"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.tracking.devices.updateV1(
            deviceId: "device_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func archiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.tracking.devices.archiveV1(
            deviceId: "device_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateSharedOrgsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.tracking.devices.updateSharedOrgsV1(
            request: .init(deviceId: "device_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "device": {
                    "_id": "_id",
                    "schema_version": 1,
                    "org_id": "org_id",
                    "device_mac_address": "device_mac_address",
                    "device_token": "device_token",
                    "type": "D15N-tag",
                    "comments": "comments",
                    "off_chrt_reference_id": "off_chrt_reference_id",
                    "registered_at_timestamp": "2024-01-15T09:30:00Z",
                    "first_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_at_location": {
                      "type": "Feature",
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
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_battery_level": "last_seen_battery_level",
                    "archived": true,
                    "shared_with_org_ids": [
                      "shared_with_org_ids"
                    ],
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "active_session_id": "active_session_id",
                    "active_cargo_id": "active_cargo_id"
                  },
                  "active_session": {
                    "schema_version": 1,
                    "off_chrt_reference_id": "off_chrt_reference_id",
                    "comments": "comments",
                    "public": true,
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z",
                    "flight_numbers": [
                      "flight_numbers"
                    ],
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "device_id": "device_id",
                    "device_mac_address": "device_mac_address",
                    "org_id": "org_id",
                    "shared_with_org_ids": [
                      "shared_with_org_ids"
                    ],
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "terminated": true,
                    "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                    "fa_alert_ids": [
                      1
                    ],
                    "flight_loaded_statuses": [
                      "flight_loaded_statuses"
                    ],
                    "fa_alert_id_by_flight_number": {
                      "key": 1
                    },
                    "flight_status_by_fa_flight_id": {
                      "key": "unknown"
                    },
                    "flight_loaded_status_by_fa_flight_id": {
                      "key": "value"
                    },
                    "_id": "_id"
                  },
                  "active_cargo": {
                    "schema_version": 1,
                    "cargo_type": "spare_parts",
                    "quantity": 1,
                    "weight_pounds": 1.1,
                    "length_inches": 1.1,
                    "width_inches": 1.1,
                    "height_inches": 1.1,
                    "turnable": true,
                    "stackable": true,
                    "description": "description",
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "device_ids": [
                      "device_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                    "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "past_sessions": [
                    {
                      "schema_version": 1,
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "comments": "comments",
                      "public": true,
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z",
                      "flight_numbers": [
                        "flight_numbers"
                      ],
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "org_id": "org_id",
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "terminated": true,
                      "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                      "fa_alert_ids": [
                        1
                      ],
                      "flight_loaded_statuses": [
                        "flight_loaded_statuses"
                      ],
                      "fa_alert_id_by_flight_number": {
                        "key": 1
                      },
                      "flight_status_by_fa_flight_id": {
                        "key": "unknown"
                      },
                      "_id": "_id"
                    }
                  ],
                  "past_cargos": [
                    {
                      "schema_version": 1,
                      "cargo_type": "spare_parts",
                      "quantity": 1,
                      "weight_pounds": 1.1,
                      "length_inches": 1.1,
                      "width_inches": 1.1,
                      "height_inches": 1.1,
                      "turnable": true,
                      "stackable": true,
                      "description": "description",
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "device_ids": [
                        "device_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                      "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ]
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeviceExpandedRes(
            device: DeviceLimitedForList1(
                id: "_id",
                schemaVersion: 1,
                orgId: "org_id",
                deviceMacAddress: "device_mac_address",
                deviceToken: Optional("device_token"),
                type: Optional(.d15NTag),
                comments: Optional("comments"),
                offChrtReferenceId: Optional("off_chrt_reference_id"),
                registeredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                firstSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenBatteryLevel: Optional("last_seen_battery_level"),
                archived: Optional(true),
                sharedWithOrgIds: Optional([
                    "shared_with_org_ids"
                ]),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                activeSessionId: Optional("active_session_id"),
                activeCargoId: Optional("active_cargo_id")
            ),
            activeSession: Optional(Session1(
                schemaVersion: 1,
                offChrtReferenceId: Optional("off_chrt_reference_id"),
                comments: Optional("comments"),
                public: Optional(true),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                flightNumbers: Optional([
                    "flight_numbers"
                ]),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                deviceId: "device_id",
                deviceMacAddress: "device_mac_address",
                orgId: "org_id",
                sharedWithOrgIds: Optional([
                    "shared_with_org_ids"
                ]),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                terminated: Optional(true),
                terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                faAlertIds: Optional([
                    1
                ]),
                flightLoadedStatuses: Optional([
                    "flight_loaded_statuses"
                ]),
                faAlertIdByFlightNumber: Optional([
                    "key": 1
                ]),
                flightStatusByFaFlightId: Optional([
                    "key": .unknown
                ]),
                flightLoadedStatusByFaFlightId: Optional([
                    "key": Optional("value")
                ]),
                id: "_id"
            )),
            activeCargo: Optional(Cargo1(
                schemaVersion: 1,
                cargoType: .spareParts,
                quantity: Optional(1),
                weightPounds: Optional(1.1),
                lengthInches: Optional(1.1),
                widthInches: Optional(1.1),
                heightInches: Optional(1.1),
                turnable: Optional(true),
                stackable: Optional(true),
                description: Optional("description"),
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                deviceIds: Optional([
                    "device_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )),
            pastSessions: Optional([
                Session1(
                    schemaVersion: 1,
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    comments: Optional("comments"),
                    public: Optional(true),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    orgId: "org_id",
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    terminated: Optional(true),
                    terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    faAlertIds: Optional([
                        1
                    ]),
                    flightLoadedStatuses: Optional([
                        "flight_loaded_statuses"
                    ]),
                    faAlertIdByFlightNumber: Optional([
                        "key": 1
                    ]),
                    flightStatusByFaFlightId: Optional([
                        "key": .unknown
                    ]),
                    id: "_id"
                )
            ]),
            pastCargos: Optional([
                Cargo1(
                    schemaVersion: 1,
                    cargoType: .spareParts,
                    quantity: Optional(1),
                    weightPounds: Optional(1.1),
                    lengthInches: Optional(1.1),
                    widthInches: Optional(1.1),
                    heightInches: Optional(1.1),
                    turnable: Optional(true),
                    stackable: Optional(true),
                    description: Optional("description"),
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    deviceIds: Optional([
                        "device_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ])
        )
        let response = try await client.tracking.devices.getV1(
            deviceId: "device_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "devices": [
                    {
                      "_id": "_id",
                      "schema_version": 1,
                      "org_id": "org_id",
                      "device_mac_address": "device_mac_address",
                      "device_token": "device_token",
                      "type": "D15N-tag",
                      "comments": "comments",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "registered_at_timestamp": "2024-01-15T09:30:00Z",
                      "first_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_at_location": {
                        "type": "Feature",
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
                        }
                      },
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_battery_level": "last_seen_battery_level",
                      "archived": true,
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "active_session_id": "active_session_id",
                      "active_cargo_id": "active_cargo_id"
                    }
                  ],
                  "total_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeviceListRes(
            devices: [
                DeviceLimitedForList1(
                    id: "_id",
                    schemaVersion: 1,
                    orgId: "org_id",
                    deviceMacAddress: "device_mac_address",
                    deviceToken: Optional("device_token"),
                    type: Optional(.d15NTag),
                    comments: Optional("comments"),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    registeredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    firstSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenAtLocation: Optional(LocationFeature(
                        type: .feature,
                        geometry: .geometryCollection(
                            .init(
                                geometries: [
                                    .lineString(
                                        .init(
                                            coordinates: [
                                                LineStringCoordinatesItem.position2D(
                                                    []
                                                )
                                            ]
                                        )
                                    )
                                ]
                            )
                        )
                    )),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenBatteryLevel: Optional("last_seen_battery_level"),
                    archived: Optional(true),
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    activeSessionId: Optional("active_session_id"),
                    activeCargoId: Optional("active_cargo_id")
                )
            ],
            totalCount: 1
        )
        let response = try await client.tracking.devices.listV1(
            sortBy: .registeredAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            orgScope: .owned,
            filterOffChrtReferenceId: "filter_off_chrt_reference_id",
            filterType: .d15NTag,
            filterActiveCargoId: "filter_active_cargo_id",
            filterActiveSessionId: "filter_active_session_id",
            filterRegisteredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterRegisteredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastSeenAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastSeenAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "type": "device_mac_address",
                    "values": [
                      "values"
                    ]
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            TrackingTypeaheadResult(
                type: .deviceMacAddress,
                values: [
                    "values"
                ]
            )
        ]
        let response = try await client.tracking.devices.typeaheadV1(
            query: "query",
            limit: 1,
            orgScope: .owned,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func searchV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "devices": [
                    {
                      "_id": "_id",
                      "schema_version": 1,
                      "org_id": "org_id",
                      "device_mac_address": "device_mac_address",
                      "device_token": "device_token",
                      "type": "D15N-tag",
                      "comments": "comments",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "registered_at_timestamp": "2024-01-15T09:30:00Z",
                      "first_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_at_location": {
                        "type": "Feature",
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
                        }
                      },
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_battery_level": "last_seen_battery_level",
                      "archived": true,
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "active_session_id": "active_session_id",
                      "active_cargo_id": "active_cargo_id"
                    }
                  ],
                  "total_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeviceSearchRes(
            devices: [
                DeviceLimitedForList1(
                    id: "_id",
                    schemaVersion: 1,
                    orgId: "org_id",
                    deviceMacAddress: "device_mac_address",
                    deviceToken: Optional("device_token"),
                    type: Optional(.d15NTag),
                    comments: Optional("comments"),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    registeredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    firstSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenAtLocation: Optional(LocationFeature(
                        type: .feature,
                        geometry: .geometryCollection(
                            .init(
                                geometries: [
                                    .lineString(
                                        .init(
                                            coordinates: [
                                                LineStringCoordinatesItem.position2D(
                                                    []
                                                )
                                            ]
                                        )
                                    )
                                ]
                            )
                        )
                    )),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenBatteryLevel: Optional("last_seen_battery_level"),
                    archived: Optional(true),
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    activeSessionId: Optional("active_session_id"),
                    activeCargoId: Optional("active_cargo_id")
                )
            ],
            totalCount: 1
        )
        let response = try await client.tracking.devices.searchV1(
            query: "query",
            page: 1,
            pageSize: 1,
            orgScope: .owned,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}