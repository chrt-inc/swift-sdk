import Foundation
import Testing
import Chrt

@Suite("SessionGeofencesClient Wire Tests") struct SessionGeofencesClientWireTests {
    @Test func addV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "comments": "comments",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "geofences": [
                    {
                      "display_name": "display_name",
                      "entered": true,
                      "entered_at_timestamp": "2024-01-15T09:30:00Z",
                      "geofence_id": "geofence_id",
                      "location": {
                        "geometry": {
                          "coordinates": [],
                          "type": "Point"
                        },
                        "type": "Feature"
                      },
                      "radius_miles": 1.1
                    }
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
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
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
        let expectedResponse = Session2(
            id: "_id",
            comments: Optional("comments"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
            geofences: Optional([
                SessionGeofence1(
                    displayName: "display_name",
                    entered: Optional(true),
                    enteredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    geofenceId: "geofence_id",
                    location: GeofencePointLocationFeature1(
                        geometry: Point(
                            coordinates: Coordinates.position2D(
                                []
                            ),
                            type: .point
                        ),
                        type: .feature
                    ),
                    radiusMiles: 1.1
                )
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
                                        CoordinatesItem.position2D(
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
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
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
        let response = try await client.tracking.sessionGeofences.addV1(
            sessionId: "session_id",
            request: SessionGeofenceClientCreate1(
                displayName: "display_name",
                location: GeofencePointLocationFeature1(
                    geometry: Point(
                        coordinates: Coordinates.position2D(
                            []
                        ),
                        type: .point
                    ),
                    type: .feature
                ),
                radiusMiles: 1.1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func applyTemplateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "comments": "comments",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "geofences": [
                    {
                      "display_name": "display_name",
                      "entered": true,
                      "entered_at_timestamp": "2024-01-15T09:30:00Z",
                      "geofence_id": "geofence_id",
                      "location": {
                        "geometry": {
                          "coordinates": [],
                          "type": "Point"
                        },
                        "type": "Feature"
                      },
                      "radius_miles": 1.1
                    }
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
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
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
        let expectedResponse = Session2(
            id: "_id",
            comments: Optional("comments"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
            geofences: Optional([
                SessionGeofence1(
                    displayName: "display_name",
                    entered: Optional(true),
                    enteredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    geofenceId: "geofence_id",
                    location: GeofencePointLocationFeature1(
                        geometry: Point(
                            coordinates: Coordinates.position2D(
                                []
                            ),
                            type: .point
                        ),
                        type: .feature
                    ),
                    radiusMiles: 1.1
                )
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
                                        CoordinatesItem.position2D(
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
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
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
        let response = try await client.tracking.sessionGeofences.applyTemplateV1(
            sessionId: "session_id",
            request: .init(geofenceTemplateId: "geofence_template_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "comments": "comments",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "geofences": [
                    {
                      "display_name": "display_name",
                      "entered": true,
                      "entered_at_timestamp": "2024-01-15T09:30:00Z",
                      "geofence_id": "geofence_id",
                      "location": {
                        "geometry": {
                          "coordinates": [],
                          "type": "Point"
                        },
                        "type": "Feature"
                      },
                      "radius_miles": 1.1
                    }
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
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
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
        let expectedResponse = Session2(
            id: "_id",
            comments: Optional("comments"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
            geofences: Optional([
                SessionGeofence1(
                    displayName: "display_name",
                    entered: Optional(true),
                    enteredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    geofenceId: "geofence_id",
                    location: GeofencePointLocationFeature1(
                        geometry: Point(
                            coordinates: Coordinates.position2D(
                                []
                            ),
                            type: .point
                        ),
                        type: .feature
                    ),
                    radiusMiles: 1.1
                )
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
                                        CoordinatesItem.position2D(
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
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
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
        let response = try await client.tracking.sessionGeofences.reorderV1(
            sessionId: "session_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "comments": "comments",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "geofences": [
                    {
                      "display_name": "display_name",
                      "entered": true,
                      "entered_at_timestamp": "2024-01-15T09:30:00Z",
                      "geofence_id": "geofence_id",
                      "location": {
                        "geometry": {
                          "coordinates": [],
                          "type": "Point"
                        },
                        "type": "Feature"
                      },
                      "radius_miles": 1.1
                    }
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
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
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
        let expectedResponse = Session2(
            id: "_id",
            comments: Optional("comments"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
            geofences: Optional([
                SessionGeofence1(
                    displayName: "display_name",
                    entered: Optional(true),
                    enteredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    geofenceId: "geofence_id",
                    location: GeofencePointLocationFeature1(
                        geometry: Point(
                            coordinates: Coordinates.position2D(
                                []
                            ),
                            type: .point
                        ),
                        type: .feature
                    ),
                    radiusMiles: 1.1
                )
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
                                        CoordinatesItem.position2D(
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
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
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
        let response = try await client.tracking.sessionGeofences.updateV1(
            sessionId: "session_id",
            geofenceId: "geofence_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "comments": "comments",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "geofences": [
                    {
                      "display_name": "display_name",
                      "entered": true,
                      "entered_at_timestamp": "2024-01-15T09:30:00Z",
                      "geofence_id": "geofence_id",
                      "location": {
                        "geometry": {
                          "coordinates": [],
                          "type": "Point"
                        },
                        "type": "Feature"
                      },
                      "radius_miles": 1.1
                    }
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
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
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
        let expectedResponse = Session2(
            id: "_id",
            comments: Optional("comments"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
            geofences: Optional([
                SessionGeofence1(
                    displayName: "display_name",
                    entered: Optional(true),
                    enteredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    geofenceId: "geofence_id",
                    location: GeofencePointLocationFeature1(
                        geometry: Point(
                            coordinates: Coordinates.position2D(
                                []
                            ),
                            type: .point
                        ),
                        type: .feature
                    ),
                    radiusMiles: 1.1
                )
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
                                        CoordinatesItem.position2D(
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
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
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
        let response = try await client.tracking.sessionGeofences.removeV1(
            sessionId: "session_id",
            geofenceId: "geofence_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}