import Foundation
import Testing
import Chrt

@Suite("SessionByDeviceClient Wire Tests") struct SessionByDeviceClientWireTests {
    @Test func dataPointsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "data_points": [
                    {
                      "_id": "_id",
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
                        "type": "Feature"
                      },
                      "metadata": {
                        "session_id": "session_id"
                      },
                      "received_at_timestamp": "2024-01-15T09:30:00Z",
                      "schema_version": 1,
                      "temperature": 1.1,
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "stationary_clusters": [
                    {
                      "centroid_location": {
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
                      "end_timestamp": "2024-01-15T09:30:00Z",
                      "point_count": 1,
                      "radius_miles": 1.1,
                      "start_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = SessionByDeviceHistoryRes1(
            dataPoints: [
                SessionByDeviceDataPoint1(
                    id: "_id",
                    location: LocationFeature(
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
                        type: .feature
                    ),
                    metadata: SessionByDeviceDataPointMetadata1(
                        sessionId: "session_id"
                    ),
                    receivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    schemaVersion: 1,
                    temperature: Optional(1.1),
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            stationaryClusters: [
                StationaryCluster(
                    centroidLocation: LocationFeature(
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
                        type: .feature
                    ),
                    endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    pointCount: 1,
                    radiusMiles: 1.1,
                    startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.tracking.timeseries.sessionByDevice.dataPointsV1(
            sessionId: "session_id",
            startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            bucketSeconds: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func dataPointsPublicV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "data_points": [
                    {
                      "_id": "_id",
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
                        "type": "Feature"
                      },
                      "metadata": {
                        "session_id": "session_id"
                      },
                      "received_at_timestamp": "2024-01-15T09:30:00Z",
                      "schema_version": 1,
                      "temperature": 1.1,
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "stationary_clusters": [
                    {
                      "centroid_location": {
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
                      "end_timestamp": "2024-01-15T09:30:00Z",
                      "point_count": 1,
                      "radius_miles": 1.1,
                      "start_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = SessionByDeviceHistoryRes1(
            dataPoints: [
                SessionByDeviceDataPoint1(
                    id: "_id",
                    location: LocationFeature(
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
                        type: .feature
                    ),
                    metadata: SessionByDeviceDataPointMetadata1(
                        sessionId: "session_id"
                    ),
                    receivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    schemaVersion: 1,
                    temperature: Optional(1.1),
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            stationaryClusters: [
                StationaryCluster(
                    centroidLocation: LocationFeature(
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
                        type: .feature
                    ),
                    endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    pointCount: 1,
                    radiusMiles: 1.1,
                    startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.tracking.timeseries.sessionByDevice.dataPointsPublicV1(
            sessionId: "session_id",
            startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            bucketSeconds: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func lastSeenV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "location": {
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
                  "metadata": {
                    "outlier": true,
                    "outlier_labeller": "movingpandas",
                    "paused": true,
                    "pytest": true,
                    "session_id": "session_id"
                  },
                  "received_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "temperature": 1.1,
                  "timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Optional(SessionByDeviceDataPoint1(
            id: "_id",
            location: LocationFeature(
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
            ),
            metadata: SessionByDeviceDataPointMetadata1(
                outlier: Optional(true),
                outlierLabeller: Optional(.movingpandas),
                paused: Optional(true),
                pytest: Optional(true),
                sessionId: "session_id"
            ),
            receivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            schemaVersion: 1,
            temperature: Optional(1.1),
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        ))
        let response = try await client.tracking.timeseries.sessionByDevice.lastSeenV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func lastSeenPublicV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "location": {
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
                  "metadata": {
                    "outlier": true,
                    "outlier_labeller": "movingpandas",
                    "paused": true,
                    "pytest": true,
                    "session_id": "session_id"
                  },
                  "received_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "temperature": 1.1,
                  "timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Optional(SessionByDeviceDataPoint1(
            id: "_id",
            location: LocationFeature(
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
            ),
            metadata: SessionByDeviceDataPointMetadata1(
                outlier: Optional(true),
                outlierLabeller: Optional(.movingpandas),
                paused: Optional(true),
                pytest: Optional(true),
                sessionId: "session_id"
            ),
            receivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            schemaVersion: 1,
            temperature: Optional(1.1),
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        ))
        let response = try await client.tracking.timeseries.sessionByDevice.lastSeenPublicV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func outlierV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "failed_updates": 1,
                  "successful_updates": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SessionByDeviceMarkOutliersResponse1(
            failedUpdates: 1,
            successfulUpdates: 1
        )
        let response = try await client.tracking.timeseries.sessionByDevice.outlierV1(
            request: .init(
                outlier: true,
                trackingSessionByDeviceDataPointIds: [
                    "tracking_session_by_device_data_point_ids"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}