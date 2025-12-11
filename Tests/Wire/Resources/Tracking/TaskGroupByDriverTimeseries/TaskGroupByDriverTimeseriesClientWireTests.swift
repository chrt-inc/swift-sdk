import Foundation
import Testing
import Chrt

@Suite("TaskGroupByDriverTimeseriesClient Wire Tests") struct TaskGroupByDriverTimeseriesClientWireTests {
    @Test func lastSeenV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "timestamp": "2024-01-15T09:30:00Z",
                  "metadata": {
                    "task_group_id": "task_group_id",
                    "driver_id": "driver_id",
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
        let expectedResponse = Optional(TaskGroupByDriverDataPoint1(
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            metadata: TaskGroupByDriverDataPointMetadata1(
                taskGroupId: "task_group_id",
                driverId: "driver_id",
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
            id: "_id"
        ))
        let response = try await client.tracking.taskGroupByDriverTimeseries.lastSeenV1(
            taskGroupId: "task_group_id",
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
                      "task_group_id": "task_group_id",
                      "driver_id": "driver_id",
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
            TaskGroupByDriverDataPoint1(
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                metadata: TaskGroupByDriverDataPointMetadata1(
                    taskGroupId: "task_group_id",
                    driverId: "driver_id",
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
                id: "_id"
            )
        ]
        let response = try await client.tracking.taskGroupByDriverTimeseries.dataPointsV1(
            taskGroupId: "task_group_id",
            limit: 1,
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
                    "task_group_id": "task_group_id",
                    "driver_id": "driver_id",
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
        let expectedResponse = Optional(TaskGroupByDriverDataPoint1(
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            metadata: TaskGroupByDriverDataPointMetadata1(
                taskGroupId: "task_group_id",
                driverId: "driver_id",
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
            id: "_id"
        ))
        let response = try await client.tracking.taskGroupByDriverTimeseries.lastSeenPublicV1(
            taskGroupId: "task_group_id",
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
                      "task_group_id": "task_group_id",
                      "driver_id": "driver_id",
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
            TaskGroupByDriverDataPoint1(
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                metadata: TaskGroupByDriverDataPointMetadata1(
                    taskGroupId: "task_group_id",
                    driverId: "driver_id",
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
                id: "_id"
            )
        ]
        let response = try await client.tracking.taskGroupByDriverTimeseries.dataPointsPublicV1(
            taskGroupId: "task_group_id",
            limit: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}