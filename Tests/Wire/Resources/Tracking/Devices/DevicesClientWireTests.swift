import Foundation
import Testing
import Chrt

@Suite("DevicesClient Wire Tests") struct DevicesClientWireTests {
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

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "active_cargo": {
                    "_id": "_id",
                    "cargo_type": "spare_parts",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                    "description": "description",
                    "device_ids": [
                      "device_ids"
                    ],
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "height_inches": 1.1,
                    "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                    "length_inches": 1.1,
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "quantity": 1,
                    "schema_version": 1,
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "stackable": true,
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "turnable": true,
                    "weight_pounds": 1.1,
                    "width_inches": 1.1
                  },
                  "active_session": {
                    "_id": "_id",
                    "comments": "comments",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "device_id": "device_id",
                    "device_mac_address": "device_mac_address",
                    "fa_alert_id_by_flight_number": {
                      "key": 1
                    },
                    "fa_alert_ids": [
                      1
                    ],
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "flight_loaded_status_by_fa_flight_id": {
                      "key": "value"
                    },
                    "flight_loaded_statuses": [
                      "flight_loaded_statuses"
                    ],
                    "flight_numbers": [
                      "flight_numbers"
                    ],
                    "flight_status_by_fa_flight_id": {
                      "key": "unknown"
                    },
                    "off_chrt_reference_id": "off_chrt_reference_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "org_id": "org_id",
                    "public": true,
                    "schema_version": 1,
                    "shared_with_org_ids": [
                      "shared_with_org_ids"
                    ],
                    "terminated": true,
                    "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                    "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "device": {
                    "_id": "_id",
                    "active_cargo_id": "active_cargo_id",
                    "active_session_id": "active_session_id",
                    "archived": true,
                    "comments": "comments",
                    "device_mac_address": "device_mac_address",
                    "device_token": "device_token",
                    "first_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_at_location": {
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
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_battery_level": "last_seen_battery_level",
                    "off_chrt_reference_id": "off_chrt_reference_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "org_id": "org_id",
                    "registered_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "shared_with_org_ids": [
                      "shared_with_org_ids"
                    ],
                    "type": "D15N-tag"
                  },
                  "past_cargos": [
                    {
                      "_id": "_id",
                      "cargo_type": "spare_parts",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                      "description": "description",
                      "device_ids": [
                        "device_ids"
                      ],
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "height_inches": 1.1,
                      "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                      "length_inches": 1.1,
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "quantity": 1,
                      "schema_version": 1,
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "stackable": true,
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "draft",
                      "turnable": true,
                      "weight_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "past_sessions": [
                    {
                      "_id": "_id",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "fa_alert_id_by_flight_number": {
                        "key": 1
                      },
                      "fa_alert_ids": [
                        1
                      ],
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "flight_loaded_statuses": [
                        "flight_loaded_statuses"
                      ],
                      "flight_numbers": [
                        "flight_numbers"
                      ],
                      "flight_status_by_fa_flight_id": {
                        "key": "unknown"
                      },
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "org_id": "org_id",
                      "public": true,
                      "schema_version": 1,
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "terminated": true,
                      "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                      "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z"
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
            activeCargo: Optional(Cargo1(
                id: "_id",
                cargoType: .spareParts,
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                description: Optional("description"),
                deviceIds: Optional([
                    "device_ids"
                ]),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                heightInches: Optional(1.1),
                inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lengthInches: Optional(1.1),
                orderId: "order_id",
                orderShortId: "order_short_id",
                quantity: Optional(1),
                schemaVersion: 1,
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stackable: Optional(true),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                turnable: Optional(true),
                weightPounds: Optional(1.1),
                widthInches: Optional(1.1)
            )),
            activeSession: Optional(Session1(
                id: "_id",
                comments: Optional("comments"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                deviceId: "device_id",
                deviceMacAddress: "device_mac_address",
                faAlertIdByFlightNumber: Optional([
                    "key": 1
                ]),
                faAlertIds: Optional([
                    1
                ]),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                flightLoadedStatusByFaFlightId: Optional([
                    "key": Optional("value")
                ]),
                flightLoadedStatuses: Optional([
                    "flight_loaded_statuses"
                ]),
                flightNumbers: Optional([
                    "flight_numbers"
                ]),
                flightStatusByFaFlightId: Optional([
                    "key": .unknown
                ]),
                offChrtReferenceId: Optional("off_chrt_reference_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                orgId: "org_id",
                public: Optional(true),
                schemaVersion: 1,
                sharedWithOrgIds: Optional([
                    "shared_with_org_ids"
                ]),
                terminated: Optional(true),
                terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )),
            device: DeviceLimitedForList1(
                id: "_id",
                activeCargoId: Optional("active_cargo_id"),
                activeSessionId: Optional("active_session_id"),
                archived: Optional(true),
                comments: Optional("comments"),
                deviceMacAddress: "device_mac_address",
                deviceToken: Optional("device_token"),
                firstSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenAtLocation: Optional(LocationFeature(
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
                    )),
                    type: .feature
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenBatteryLevel: Optional("last_seen_battery_level"),
                offChrtReferenceId: Optional("off_chrt_reference_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                orgId: "org_id",
                registeredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                schemaVersion: 1,
                sharedWithOrgIds: Optional([
                    "shared_with_org_ids"
                ]),
                type: Optional(.d15NTag)
            ),
            pastCargos: Optional([
                Cargo1(
                    id: "_id",
                    cargoType: .spareParts,
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    description: Optional("description"),
                    deviceIds: Optional([
                        "device_ids"
                    ]),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    heightInches: Optional(1.1),
                    inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lengthInches: Optional(1.1),
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    quantity: Optional(1),
                    schemaVersion: 1,
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stackable: Optional(true),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(.draft),
                    turnable: Optional(true),
                    weightPounds: Optional(1.1),
                    widthInches: Optional(1.1)
                )
            ]),
            pastSessions: Optional([
                Session1(
                    id: "_id",
                    comments: Optional("comments"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    faAlertIdByFlightNumber: Optional([
                        "key": 1
                    ]),
                    faAlertIds: Optional([
                        1
                    ]),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    flightLoadedStatuses: Optional([
                        "flight_loaded_statuses"
                    ]),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
                    flightStatusByFaFlightId: Optional([
                        "key": .unknown
                    ]),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    orgId: "org_id",
                    public: Optional(true),
                    schemaVersion: 1,
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    terminated: Optional(true),
                    terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
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
                      "active_cargo_id": "active_cargo_id",
                      "active_session_id": "active_session_id",
                      "archived": true,
                      "comments": "comments",
                      "device_mac_address": "device_mac_address",
                      "device_token": "device_token",
                      "first_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_at_location": {
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
                        "type": "Feature"
                      },
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_battery_level": "last_seen_battery_level",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "org_id": "org_id",
                      "registered_at_timestamp": "2024-01-15T09:30:00Z",
                      "schema_version": 1,
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "type": "D15N-tag"
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
                    activeCargoId: Optional("active_cargo_id"),
                    activeSessionId: Optional("active_session_id"),
                    archived: Optional(true),
                    comments: Optional("comments"),
                    deviceMacAddress: "device_mac_address",
                    deviceToken: Optional("device_token"),
                    firstSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenAtLocation: Optional(LocationFeature(
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
                        type: .feature
                    )),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenBatteryLevel: Optional("last_seen_battery_level"),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    orgId: "org_id",
                    registeredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    schemaVersion: 1,
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    type: Optional(.d15NTag)
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
            filterHasActiveSession: true,
            filterHasActiveCargo: true,
            filterRegisteredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterRegisteredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastSeenAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastSeenAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterArchived: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
                deviceMacAddress: "device_mac_address",
                schemaVersion: 1
            ),
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
                      "active_cargo_id": "active_cargo_id",
                      "active_session_id": "active_session_id",
                      "archived": true,
                      "comments": "comments",
                      "device_mac_address": "device_mac_address",
                      "device_token": "device_token",
                      "first_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_at_location": {
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
                        "type": "Feature"
                      },
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_battery_level": "last_seen_battery_level",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "org_id": "org_id",
                      "registered_at_timestamp": "2024-01-15T09:30:00Z",
                      "schema_version": 1,
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "type": "D15N-tag"
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
                    activeCargoId: Optional("active_cargo_id"),
                    activeSessionId: Optional("active_session_id"),
                    archived: Optional(true),
                    comments: Optional("comments"),
                    deviceMacAddress: "device_mac_address",
                    deviceToken: Optional("device_token"),
                    firstSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenAtLocation: Optional(LocationFeature(
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
                        type: .feature
                    )),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenBatteryLevel: Optional("last_seen_battery_level"),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    orgId: "org_id",
                    registeredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    schemaVersion: 1,
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    type: Optional(.d15NTag)
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
}