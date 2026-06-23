import Foundation
import Testing
import Chrt

@Suite("SessionsClient Wire Tests") struct SessionsClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "comments": "comments",
                      "public": true,
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z",
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "org_id": "org_id",
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "terminated": true,
                      "terminated_at_timestamp": "2024-01-15T09:30:00Z",
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
                      "last_seen_at_location_city": "last_seen_at_location_city",
                      "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                      "destination_geofence_location": {
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
                      "destination_geofence_radius_miles": 1.1,
                      "destination_geofence_entered": true,
                      "flight_leg_ids": [
                        "flight_leg_ids"
                      ],
                      "flight_numbers": [
                        "flight_numbers"
                      ],
                      "flight_loaded_statuses": [
                        "flight_loaded_statuses"
                      ],
                      "_id": "_id"
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
                    schemaVersion: 1,
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    comments: Optional("comments"),
                    public: Optional(true),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    orgId: "org_id",
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    terminated: Optional(true),
                    terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
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
                    lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                    lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                    destinationGeofenceLocation: Optional(LocationFeature(
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
                    destinationGeofenceRadiusMiles: Optional(1.1),
                    destinationGeofenceEntered: Optional(true),
                    flightLegIds: Optional([
                        "flight_leg_ids"
                    ]),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
                    flightLoadedStatuses: Optional([
                        "flight_loaded_statuses"
                    ]),
                    id: "_id"
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

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "off_chrt_reference_id": "off_chrt_reference_id",
                  "comments": "comments",
                  "public": true,
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z",
                  "device_id": "device_id",
                  "device_mac_address": "device_mac_address",
                  "org_id": "org_id",
                  "shared_with_org_ids": [
                    "shared_with_org_ids"
                  ],
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "terminated": true,
                  "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_seen_at_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
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
                    "properties": {
                      "address": "address",
                      "name": "name"
                    },
                    "id": 1
                  },
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_seen_at_location_city": "last_seen_at_location_city",
                  "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                  "destination_geofence_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
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
                    "properties": {
                      "address": "address",
                      "name": "name"
                    },
                    "id": 1
                  },
                  "destination_geofence_radius_miles": 1.1,
                  "destination_geofence_entered": true,
                  "flight_leg_ids": [
                    "flight_leg_ids"
                  ],
                  "flight_numbers": [
                    "flight_numbers"
                  ],
                  "flight_loaded_statuses": [
                    "flight_loaded_statuses"
                  ],
                  "flight_loaded_status_by_flight_leg_id": {
                    "key": "value"
                  },
                  "_id": "_id"
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
            schemaVersion: 1,
            offChrtReferenceId: Optional("off_chrt_reference_id"),
            comments: Optional("comments"),
            public: Optional(true),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            deviceId: "device_id",
            deviceMacAddress: "device_mac_address",
            orgId: "org_id",
            sharedWithOrgIds: Optional([
                "shared_with_org_ids"
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            terminated: Optional(true),
            terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                id: Optional(Id.int(
                    1
                ))
            )),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            destinationGeofenceLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                id: Optional(Id.int(
                    1
                ))
            )),
            destinationGeofenceRadiusMiles: Optional(1.1),
            destinationGeofenceEntered: Optional(true),
            flightLegIds: Optional([
                "flight_leg_ids"
            ]),
            flightNumbers: Optional([
                "flight_numbers"
            ]),
            flightLoadedStatuses: Optional([
                "flight_loaded_statuses"
            ]),
            flightLoadedStatusByFlightLegId: Optional([
                "key": Optional("value")
            ]),
            id: "_id"
        )
        let response = try await client.tracking.sessions.getV1(
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

    @Test func flightLegsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "task_group_id": "task_group_id",
                    "session_id": "session_id",
                    "flight_number": "flight_number",
                    "provenance": "manual",
                    "origin_iata": "origin_iata",
                    "destination_iata": "destination_iata",
                    "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                    "carrier_iata": "carrier_iata",
                    "carrier_icao": "carrier_icao",
                    "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                    "cirium_flight_id": 1,
                    "flight_status": "scheduled",
                    "estimated_departure_utc": "2024-01-15T09:30:00Z",
                    "actual_departure_utc": "2024-01-15T09:30:00Z",
                    "estimated_arrival_utc": "2024-01-15T09:30:00Z",
                    "actual_arrival_utc": "2024-01-15T09:30:00Z",
                    "departure_gate": "departure_gate",
                    "arrival_gate": "arrival_gate",
                    "departure_terminal": "departure_terminal",
                    "arrival_terminal": "arrival_terminal",
                    "flight_status_source": "live",
                    "flight_status_fetched_at_utc": "2024-01-15T09:30:00Z"
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
                schemaVersion: 1,
                id: "_id",
                orderId: Optional("order_id"),
                taskGroupId: Optional("task_group_id"),
                sessionId: Optional("session_id"),
                flightNumber: "flight_number",
                provenance: .manual,
                originIata: "origin_iata",
                destinationIata: "destination_iata",
                scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                carrierIata: "carrier_iata",
                carrierIcao: Optional("carrier_icao"),
                scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                ciriumFlightId: Optional(1),
                flightStatus: Optional(.scheduled),
                estimatedDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                actualDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                estimatedArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                actualArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                departureGate: Optional("departure_gate"),
                arrivalGate: Optional("arrival_gate"),
                departureTerminal: Optional("departure_terminal"),
                arrivalTerminal: Optional("arrival_terminal"),
                flightStatusSource: Optional(.live),
                flightStatusFetchedAtUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
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
                  "cirium_flight_id": 1,
                  "positions": [
                    {
                      "lat": 1.1,
                      "lon": 1.1,
                      "altitude_ft": 1,
                      "speed_mph": 1,
                      "source": "source",
                      "date_utc": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "waypoints": [
                    {
                      "lat": 1.1,
                      "lon": 1.1
                    }
                  ],
                  "legacy_route": "legacy_route",
                  "bearing": 1.1,
                  "heading": 1.1
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
            ciriumFlightId: Optional(1),
            positions: Optional([
                FlightTrackPosition1(
                    lat: Optional(1.1),
                    lon: Optional(1.1),
                    altitudeFt: Optional(1),
                    speedMph: Optional(1),
                    source: Optional("source"),
                    dateUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            waypoints: Optional([
                FlightTrackWaypoint1(
                    lat: Optional(1.1),
                    lon: Optional(1.1)
                )
            ]),
            legacyRoute: Optional("legacy_route"),
            bearing: Optional(1.1),
            heading: Optional(1.1)
        )
        let response = try await client.tracking.sessions.flightTrackV1(
            sessionId: "session_id",
            flightLegId: "flight_leg_id",
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
                sessionId: "session_id",
                flightLegs: [
                    FlightLegClientCreate1(
                        schemaVersion: 1,
                        flightNumber: "flight_number",
                        provenance: .manual,
                        originIata: "origin_iata",
                        destinationIata: "destination_iata",
                        scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        carrierIata: "carrier_iata"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}