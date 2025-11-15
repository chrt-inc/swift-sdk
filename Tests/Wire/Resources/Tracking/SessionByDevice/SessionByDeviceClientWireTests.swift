import Foundation
import Testing
import Chrt

@Suite("SessionByDeviceClient Wire Tests") struct SessionByDeviceClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "device_id": "device_id",
                    "device_mac_address": "device_mac_address",
                    "org_id": "org_id",
                    "comments": "comments",
                    "recording": true,
                    "terminated": true,
                    "session_created_at_timestamp": "2024-01-15T09:30:00Z",
                    "recording_initiated_at_timestamp": "2024-01-15T09:30:00Z",
                    "public": true,
                    "_id": "_id"
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
            Session1(
                schemaVersion: 1,
                deviceId: "device_id",
                deviceMacAddress: "device_mac_address",
                orgId: "org_id",
                comments: Optional("comments"),
                recording: Optional(true),
                terminated: Optional(true),
                sessionCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                recordingInitiatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                public: Optional(true),
                id: "_id"
            )
        ]
        let response = try await client.tracking.sessionByDevice.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "device_id": "device_id",
                  "device_mac_address": "device_mac_address",
                  "org_id": "org_id",
                  "comments": "comments",
                  "recording": true,
                  "terminated": true,
                  "session_created_at_timestamp": "2024-01-15T09:30:00Z",
                  "recording_initiated_at_timestamp": "2024-01-15T09:30:00Z",
                  "public": true,
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
            deviceId: "device_id",
            deviceMacAddress: "device_mac_address",
            orgId: "org_id",
            comments: Optional("comments"),
            recording: Optional(true),
            terminated: Optional(true),
            sessionCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            recordingInitiatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            public: Optional(true),
            id: "_id"
        )
        let response = try await client.tracking.sessionByDevice.getV1(
            sessionId: "session_id",
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
                  "schema_version": 1,
                  "timestamp": "2024-01-15T09:30:00Z",
                  "metadata": {
                    "session_id": "session_id",
                    "outlier": true,
                    "outlier_labeller": "movingpandas",
                    "pytest": true
                  },
                  "location": {
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
                  "temperature": 1.1,
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
        let expectedResponse = Optional(TrackingSessionByDeviceDataPoint1(
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            metadata: TrackingSessionByDeviceDataPointMetadata1(
                sessionId: "session_id",
                outlier: Optional(true),
                outlierLabeller: Optional(.movingpandas),
                pytest: Optional(true)
            ),
            location: LocationFeature(
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
            ),
            temperature: Optional(1.1),
            id: "_id"
        ))
        let response = try await client.tracking.sessionByDevice.lastSeenV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func dataPointsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "timestamp": "2024-01-15T09:30:00Z",
                    "metadata": {
                      "session_id": "session_id",
                      "outlier": true,
                      "outlier_labeller": "movingpandas",
                      "pytest": true
                    },
                    "location": {
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
                        "address": null,
                        "name": null
                      },
                      "id": 1
                    },
                    "temperature": 1.1,
                    "_id": "_id"
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
            TrackingSessionByDeviceDataPoint1(
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                metadata: TrackingSessionByDeviceDataPointMetadata1(
                    sessionId: "session_id",
                    outlier: Optional(true),
                    outlierLabeller: Optional(.movingpandas),
                    pytest: Optional(true)
                ),
                location: LocationFeature(
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
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
                ),
                temperature: Optional(1.1),
                id: "_id"
            )
        ]
        let response = try await client.tracking.sessionByDevice.dataPointsV1(
            sessionId: "session_id",
            limit: 1,
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
        let response = try await client.tracking.sessionByDevice.createSessionV1(
            request: .init(deviceMacAddress: "device_mac_address"),
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
        let response = try await client.tracking.sessionByDevice.updateV1(
            request: .init(sessionId: "session_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func startV11() async throws -> Void {
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
        let response = try await client.tracking.sessionByDevice.startV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pauseRecordingV11() async throws -> Void {
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
        let response = try await client.tracking.sessionByDevice.pauseRecordingV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func resumeRecordingV11() async throws -> Void {
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
        let response = try await client.tracking.sessionByDevice.resumeRecordingV1(
            sessionId: "session_id",
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
        let response = try await client.tracking.sessionByDevice.terminateV1(
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
                  "successful_updates": 1,
                  "failed_updates": 1
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
            successfulUpdates: 1,
            failedUpdates: 1
        )
        let response = try await client.tracking.sessionByDevice.outlierV1(
            request: .init(
                trackingSessionByDeviceDataPointIds: [
                    "tracking_session_by_device_data_point_ids"
                ],
                outlier: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "session_deleted": true,
                  "tracking_session_by_device_data_points_deleted": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SessionByDeviceDeleteResponse1(
            sessionDeleted: true,
            trackingSessionByDeviceDataPointsDeleted: 1
        )
        let response = try await client.tracking.sessionByDevice.deleteV1(
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
                  "schema_version": 1,
                  "timestamp": "2024-01-15T09:30:00Z",
                  "metadata": {
                    "session_id": "session_id",
                    "outlier": true,
                    "outlier_labeller": "movingpandas",
                    "pytest": true
                  },
                  "location": {
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
                  "temperature": 1.1,
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
        let expectedResponse = Optional(TrackingSessionByDeviceDataPoint1(
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            metadata: TrackingSessionByDeviceDataPointMetadata1(
                sessionId: "session_id",
                outlier: Optional(true),
                outlierLabeller: Optional(.movingpandas),
                pytest: Optional(true)
            ),
            location: LocationFeature(
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
            ),
            temperature: Optional(1.1),
            id: "_id"
        ))
        let response = try await client.tracking.sessionByDevice.lastSeenPublicV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func dataPointsPublicV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "timestamp": "2024-01-15T09:30:00Z",
                    "metadata": {
                      "session_id": "session_id",
                      "outlier": true,
                      "outlier_labeller": "movingpandas",
                      "pytest": true
                    },
                    "location": {
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
                        "address": null,
                        "name": null
                      },
                      "id": 1
                    },
                    "temperature": 1.1,
                    "_id": "_id"
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
            TrackingSessionByDeviceDataPoint1(
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                metadata: TrackingSessionByDeviceDataPointMetadata1(
                    sessionId: "session_id",
                    outlier: Optional(true),
                    outlierLabeller: Optional(.movingpandas),
                    pytest: Optional(true)
                ),
                location: LocationFeature(
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
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
                ),
                temperature: Optional(1.1),
                id: "_id"
            )
        ]
        let response = try await client.tracking.sessionByDevice.dataPointsPublicV1(
            sessionId: "session_id",
            limit: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}