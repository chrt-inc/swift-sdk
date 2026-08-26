import Foundation
import Testing
import Chrt

@Suite("AssetsClient Wire Tests") struct AssetsClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "asset_id": "asset_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "label": {
                    "added_at_timestamp": "2024-01-15T09:30:00Z",
                    "ble_id": 1,
                    "config__reporting_interval": "config__reporting_interval",
                    "nfc_id": "nfc_id"
                  },
                  "label_activated_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "name": "name",
                  "org_id": "org_id",
                  "pause_windows": [
                    {
                      "end_timestamp": "2024-01-15T09:30:00Z",
                      "start_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "paused": true,
                  "schema_version": 1,
                  "synced_at_timestamp": "2024-01-15T09:30:00Z",
                  "workspace_id": "workspace_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReelablesAsset1(
            id: "_id",
            assetId: "asset_id",
            createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            destinationGeofenceLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            destinationGeofenceRadiusMiles: Optional(1.1),
            label: Optional(ReelablesLabel1(
                addedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                bleId: 1,
                configReportingInterval: Optional("config__reporting_interval"),
                nfcId: "nfc_id"
            )),
            labelActivatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            orgId: "org_id",
            pauseWindows: Optional([
                ReelablesAssetPausedTimeWindow1(
                    endTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            paused: Optional(true),
            schemaVersion: 1,
            syncedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            workspaceId: "workspace_id"
        )
        let response = try await client.trackingIntegrations.reelables.assets.createV1(
            request: .init(
                name: "name",
                nfcId: "nfc_id",
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
                  "asset_id": "asset_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "label": {
                    "added_at_timestamp": "2024-01-15T09:30:00Z",
                    "ble_id": 1,
                    "config__reporting_interval": "config__reporting_interval",
                    "nfc_id": "nfc_id"
                  },
                  "label_activated_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "name": "name",
                  "org_id": "org_id",
                  "pause_windows": [
                    {
                      "end_timestamp": "2024-01-15T09:30:00Z",
                      "start_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "paused": true,
                  "schema_version": 1,
                  "synced_at_timestamp": "2024-01-15T09:30:00Z",
                  "workspace_id": "workspace_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReelablesAsset1(
            id: "_id",
            assetId: "asset_id",
            createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            destinationGeofenceLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            destinationGeofenceRadiusMiles: Optional(1.1),
            label: Optional(ReelablesLabel1(
                addedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                bleId: 1,
                configReportingInterval: Optional("config__reporting_interval"),
                nfcId: "nfc_id"
            )),
            labelActivatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            orgId: "org_id",
            pauseWindows: Optional([
                ReelablesAssetPausedTimeWindow1(
                    endTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            paused: Optional(true),
            schemaVersion: 1,
            syncedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            workspaceId: "workspace_id"
        )
        let response = try await client.trackingIntegrations.reelables.assets.getV1(
            assetId: "asset_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func linkLabelV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "asset_id": "asset_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "label": {
                    "added_at_timestamp": "2024-01-15T09:30:00Z",
                    "ble_id": 1,
                    "config__reporting_interval": "config__reporting_interval",
                    "nfc_id": "nfc_id"
                  },
                  "label_activated_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "name": "name",
                  "org_id": "org_id",
                  "pause_windows": [
                    {
                      "end_timestamp": "2024-01-15T09:30:00Z",
                      "start_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "paused": true,
                  "schema_version": 1,
                  "synced_at_timestamp": "2024-01-15T09:30:00Z",
                  "workspace_id": "workspace_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReelablesAsset1(
            id: "_id",
            assetId: "asset_id",
            createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            destinationGeofenceLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            destinationGeofenceRadiusMiles: Optional(1.1),
            label: Optional(ReelablesLabel1(
                addedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                bleId: 1,
                configReportingInterval: Optional("config__reporting_interval"),
                nfcId: "nfc_id"
            )),
            labelActivatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            orgId: "org_id",
            pauseWindows: Optional([
                ReelablesAssetPausedTimeWindow1(
                    endTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            paused: Optional(true),
            schemaVersion: 1,
            syncedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            workspaceId: "workspace_id"
        )
        let response = try await client.trackingIntegrations.reelables.assets.linkLabelV1(
            assetId: "asset_id",
            request: .init(nfcId: "nfc_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unlinkLabelV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "asset_id": "asset_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "label": {
                    "added_at_timestamp": "2024-01-15T09:30:00Z",
                    "ble_id": 1,
                    "config__reporting_interval": "config__reporting_interval",
                    "nfc_id": "nfc_id"
                  },
                  "label_activated_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "name": "name",
                  "org_id": "org_id",
                  "pause_windows": [
                    {
                      "end_timestamp": "2024-01-15T09:30:00Z",
                      "start_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "paused": true,
                  "schema_version": 1,
                  "synced_at_timestamp": "2024-01-15T09:30:00Z",
                  "workspace_id": "workspace_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReelablesAsset1(
            id: "_id",
            assetId: "asset_id",
            createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            destinationGeofenceLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            destinationGeofenceRadiusMiles: Optional(1.1),
            label: Optional(ReelablesLabel1(
                addedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                bleId: 1,
                configReportingInterval: Optional("config__reporting_interval"),
                nfcId: "nfc_id"
            )),
            labelActivatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            orgId: "org_id",
            pauseWindows: Optional([
                ReelablesAssetPausedTimeWindow1(
                    endTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            paused: Optional(true),
            schemaVersion: 1,
            syncedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            workspaceId: "workspace_id"
        )
        let response = try await client.trackingIntegrations.reelables.assets.unlinkLabelV1(
            assetId: "asset_id",
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
                      "asset_id": "asset_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                      "label": {
                        "added_at_timestamp": "2024-01-15T09:30:00Z",
                        "ble_id": 1,
                        "nfc_id": "nfc_id"
                      },
                      "label_activated_at_timestamp": "2024-01-15T09:30:00Z",
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
                      "name": "name",
                      "org_id": "org_id",
                      "pause_windows": [
                        {
                          "start_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "paused": true,
                      "schema_version": 1,
                      "synced_at_timestamp": "2024-01-15T09:30:00Z",
                      "workspace_id": "workspace_id"
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
        let expectedResponse = ReelablesAssetListRes(
            items: [
                ReelablesAsset1(
                    id: "_id",
                    assetId: "asset_id",
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    destinationGeofenceLocation: Optional(LocationFeature(
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
                        type: .feature
                    )),
                    destinationGeofenceRadiusMiles: Optional(1.1),
                    label: Optional(ReelablesLabel1(
                        addedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        bleId: 1,
                        nfcId: "nfc_id"
                    )),
                    labelActivatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenAtLocation: Optional(LocationFeature(
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
                        type: .feature
                    )),
                    lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                    lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    name: "name",
                    orgId: "org_id",
                    pauseWindows: Optional([
                        ReelablesAssetPausedTimeWindow1(
                            startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    paused: Optional(true),
                    schemaVersion: 1,
                    syncedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    workspaceId: "workspace_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.trackingIntegrations.reelables.assets.listV1(
            sortBy: .assetId,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pauseV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.trackingIntegrations.reelables.assets.pauseV1(
            assetId: "asset_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unpauseV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.trackingIntegrations.reelables.assets.unpauseV1(
            assetId: "asset_id",
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
                  "asset_id": "asset_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "label": {
                    "added_at_timestamp": "2024-01-15T09:30:00Z",
                    "ble_id": 1,
                    "config__reporting_interval": "config__reporting_interval",
                    "nfc_id": "nfc_id"
                  },
                  "label_activated_at_timestamp": "2024-01-15T09:30:00Z",
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
                  "name": "name",
                  "org_id": "org_id",
                  "pause_windows": [
                    {
                      "end_timestamp": "2024-01-15T09:30:00Z",
                      "start_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "paused": true,
                  "schema_version": 1,
                  "synced_at_timestamp": "2024-01-15T09:30:00Z",
                  "workspace_id": "workspace_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReelablesAsset1(
            id: "_id",
            assetId: "asset_id",
            createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            destinationGeofenceLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            destinationGeofenceRadiusMiles: Optional(1.1),
            label: Optional(ReelablesLabel1(
                addedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                bleId: 1,
                configReportingInterval: Optional("config__reporting_interval"),
                nfcId: "nfc_id"
            )),
            labelActivatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            orgId: "org_id",
            pauseWindows: Optional([
                ReelablesAssetPausedTimeWindow1(
                    endTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            paused: Optional(true),
            schemaVersion: 1,
            syncedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            workspaceId: "workspace_id"
        )
        let response = try await client.trackingIntegrations.reelables.assets.updateV1(
            assetId: "asset_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}