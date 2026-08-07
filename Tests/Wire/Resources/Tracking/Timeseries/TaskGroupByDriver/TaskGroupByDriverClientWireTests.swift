import Foundation
import Testing
import Chrt

@Suite("TaskGroupByDriverClient Wire Tests") struct TaskGroupByDriverClientWireTests {
    @Test func dataPointsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
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
                      "id": 1,
                      "type": "Feature"
                    },
                    "metadata": {
                      "driver_id": "driver_id",
                      "outlier": true,
                      "outlier_labeller": "movingpandas",
                      "pytest": true,
                      "task_group_id": "task_group_id"
                    },
                    "schema_version": 1,
                    "timestamp": "2024-01-15T09:30:00Z"
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
            TaskGroupByDriverDataPoint1(
                id: "_id",
                location: LocationFeature(
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
                ),
                metadata: TaskGroupByDriverDataPointMetadata1(
                    driverId: "driver_id",
                    outlier: Optional(true),
                    outlierLabeller: Optional(.movingpandas),
                    pytest: Optional(true),
                    taskGroupId: "task_group_id"
                ),
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.tracking.timeseries.taskGroupByDriver.dataPointsV1(
            taskGroupId: "task_group_id",
            limit: 1,
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
                      "id": 1,
                      "type": "Feature"
                    },
                    "metadata": {
                      "driver_id": "driver_id",
                      "outlier": true,
                      "outlier_labeller": "movingpandas",
                      "pytest": true,
                      "task_group_id": "task_group_id"
                    },
                    "schema_version": 1,
                    "timestamp": "2024-01-15T09:30:00Z"
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
            TaskGroupByDriverDataPoint1(
                id: "_id",
                location: LocationFeature(
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
                ),
                metadata: TaskGroupByDriverDataPointMetadata1(
                    driverId: "driver_id",
                    outlier: Optional(true),
                    outlierLabeller: Optional(.movingpandas),
                    pytest: Optional(true),
                    taskGroupId: "task_group_id"
                ),
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.tracking.timeseries.taskGroupByDriver.dataPointsPublicV1(
            taskGroupId: "task_group_id",
            limit: 1,
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
                    "driver_id": "driver_id",
                    "outlier": true,
                    "outlier_labeller": "movingpandas",
                    "pytest": true,
                    "task_group_id": "task_group_id"
                  },
                  "schema_version": 1,
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
        let expectedResponse = Optional(TaskGroupByDriverDataPoint1(
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
            ),
            metadata: TaskGroupByDriverDataPointMetadata1(
                driverId: "driver_id",
                outlier: Optional(true),
                outlierLabeller: Optional(.movingpandas),
                pytest: Optional(true),
                taskGroupId: "task_group_id"
            ),
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        ))
        let response = try await client.tracking.timeseries.taskGroupByDriver.lastSeenV1(
            taskGroupId: "task_group_id",
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
                    "driver_id": "driver_id",
                    "outlier": true,
                    "outlier_labeller": "movingpandas",
                    "pytest": true,
                    "task_group_id": "task_group_id"
                  },
                  "schema_version": 1,
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
        let expectedResponse = Optional(TaskGroupByDriverDataPoint1(
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
            ),
            metadata: TaskGroupByDriverDataPointMetadata1(
                driverId: "driver_id",
                outlier: Optional(true),
                outlierLabeller: Optional(.movingpandas),
                pytest: Optional(true),
                taskGroupId: "task_group_id"
            ),
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        ))
        let response = try await client.tracking.timeseries.taskGroupByDriver.lastSeenPublicV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}