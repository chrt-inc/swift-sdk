import Foundation
import Testing
import Chrt

@Suite("SessionsClient Wire Tests") struct SessionsClientWireTests {
    @Test func createSessionV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.createSessionV1(
            deviceId: "device_id",
            noAutoTermination: true,
            request: .init(schemaVersion: 1),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func flightLegsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "actual_arrival_utc": "2024-01-15T09:30:00Z",
                    "actual_departure_utc": "2024-01-15T09:30:00Z",
                    "arrival_gate": "arrival_gate",
                    "arrival_terminal": "arrival_terminal",
                    "carrier_iata": "carrier_iata",
                    "carrier_icao": "carrier_icao",
                    "cirium_flight_id": 1,
                    "departure_gate": "departure_gate",
                    "departure_terminal": "departure_terminal",
                    "destination_iata": "destination_iata",
                    "estimated_arrival_utc": "2024-01-15T09:30:00Z",
                    "estimated_departure_utc": "2024-01-15T09:30:00Z",
                    "flight_number": "flight_number",
                    "flight_status": "scheduled",
                    "flight_status_fetched_at_utc": "2024-01-15T09:30:00Z",
                    "flight_status_source": "live",
                    "order_id": "order_id",
                    "origin_iata": "origin_iata",
                    "provenance": "manual",
                    "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                    "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "session_id": "session_id",
                    "task_group_id": "task_group_id"
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
            FlightLeg1(
                id: "_id",
                actualArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                actualDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                arrivalGate: Optional("arrival_gate"),
                arrivalTerminal: Optional("arrival_terminal"),
                carrierIata: "carrier_iata",
                carrierIcao: Optional("carrier_icao"),
                ciriumFlightId: Optional(1),
                departureGate: Optional("departure_gate"),
                departureTerminal: Optional("departure_terminal"),
                destinationIata: "destination_iata",
                estimatedArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                estimatedDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                flightNumber: "flight_number",
                flightStatus: Optional(.scheduled),
                flightStatusFetchedAtUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                flightStatusSource: Optional(.live),
                orderId: Optional("order_id"),
                originIata: "origin_iata",
                provenance: .manual,
                scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1,
                sessionId: Optional("session_id"),
                taskGroupId: Optional("task_group_id")
            )
        ]
        let response = try await client.tracking.sessions.flightLegsV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func flightTrackV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "bearing": 1.1,
                  "cirium_flight_id": 1,
                  "heading": 1.1,
                  "legacy_route": "legacy_route",
                  "positions": [
                    {
                      "altitude_ft": 1,
                      "date_utc": "2024-01-15T09:30:00Z",
                      "lat": 1.1,
                      "lon": 1.1,
                      "source": "source",
                      "speed_mph": 1
                    }
                  ],
                  "waypoints": [
                    {
                      "lat": 1.1,
                      "lon": 1.1
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
        let expectedResponse = FlightTrackRes(
            bearing: Optional(1.1),
            ciriumFlightId: Optional(1),
            heading: Optional(1.1),
            legacyRoute: Optional("legacy_route"),
            positions: Optional([
                FlightTrackPosition1(
                    altitudeFt: Optional(1),
                    dateUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lat: Optional(1.1),
                    lon: Optional(1.1),
                    source: Optional("source"),
                    speedMph: Optional(1)
                )
            ]),
            waypoints: Optional([
                FlightTrackWaypoint1(
                    lat: Optional(1.1),
                    lon: Optional(1.1)
                )
            ])
        )
        let response = try await client.tracking.sessions.flightTrackV1(
            sessionId: "session_id",
            flightLegId: "flight_leg_id",
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
                  "_id": "_id",
                  "comments": "comments",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "destination_geofence_entered": true,
                  "destination_geofence_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
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
                    "properties": {
                      "address": "address",
                      "name": "name"
                    },
                    "type": "Feature"
                  },
                  "destination_geofence_radius_miles": 1.1,
                  "device_id": "device_id",
                  "device_mac_address": "device_mac_address",
                  "flight_leg_ids": [
                    "flight_leg_ids"
                  ],
                  "flight_loaded_status_by_flight_leg_id": {
                    "key": "value"
                  },
                  "flight_loaded_statuses": [
                    "flight_loaded_statuses"
                  ],
                  "flight_numbers": [
                    "flight_numbers"
                  ],
                  "last_seen_at_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
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
                    "properties": {
                      "address": "address",
                      "name": "name"
                    },
                    "type": "Feature"
                  },
                  "last_seen_at_location_city": "last_seen_at_location_city",
                  "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
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
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Session1(
            id: "_id",
            comments: Optional("comments"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            destinationGeofenceEntered: Optional(true),
            destinationGeofenceLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            destinationGeofenceRadiusMiles: Optional(1.1),
            deviceId: "device_id",
            deviceMacAddress: "device_mac_address",
            flightLegIds: Optional([
                "flight_leg_ids"
            ]),
            flightLoadedStatusByFlightLegId: Optional([
                "key": Optional("value")
            ]),
            flightLoadedStatuses: Optional([
                "flight_loaded_statuses"
            ]),
            flightNumbers: Optional([
                "flight_numbers"
            ]),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
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
        let response = try await client.tracking.sessions.getV1(
            sessionId: "session_id",
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
                  "items": [
                    {
                      "_id": "_id",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "destination_geofence_entered": true,
                      "destination_geofence_location": {
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
                      "destination_geofence_radius_miles": 1.1,
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "flight_leg_ids": [
                        "flight_leg_ids"
                      ],
                      "flight_loaded_statuses": [
                        "flight_loaded_statuses"
                      ],
                      "flight_numbers": [
                        "flight_numbers"
                      ],
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
                      "last_seen_at_location_city": "last_seen_at_location_city",
                      "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
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
        let expectedResponse = SessionListRes(
            items: [
                Session1(
                    id: "_id",
                    comments: Optional("comments"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    destinationGeofenceEntered: Optional(true),
                    destinationGeofenceLocation: Optional(LocationFeature(
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
                    destinationGeofenceRadiusMiles: Optional(1.1),
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    flightLegIds: Optional([
                        "flight_leg_ids"
                    ]),
                    flightLoadedStatuses: Optional([
                        "flight_loaded_statuses"
                    ]),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
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
                    lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                    lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
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
            ],
            totalCount: 1
        )
        let response = try await client.tracking.sessions.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            orgScope: .owned,
            filterTerminated: true,
            filterPublic: true,
            filterDeviceId: "filter_device_id",
            filterOffChrtReferenceId: "filter_off_chrt_reference_id",
            filterFlightNumber: "filter_flight_number",
            filterFlightLoadedStatus: "filter_flight_loaded_status",
            filterHasLastSeen: true,
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastSeenAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastSeenAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTerminationScheduledForTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTerminationScheduledForTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTerminatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTerminatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setFlightInfoV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.setFlightInfoV1(
            request: .init(
                flightLegs: [
                    FlightLegClientCreate1(
                        carrierIata: "carrier_iata",
                        destinationIata: "destination_iata",
                        flightNumber: "flight_number",
                        originIata: "origin_iata",
                        provenance: .manual,
                        scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1
                    )
                ],
                sessionId: "session_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func terminateV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.terminateV1(
            sessionId: "session_id",
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
        let response = try await client.tracking.sessions.typeaheadV1(
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
        let response = try await client.tracking.sessions.updateV1(
            sessionId: "session_id",
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
        let response = try await client.tracking.sessions.updateSharedOrgsV1(
            request: .init(sessionId: "session_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}