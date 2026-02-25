import Foundation
import Testing
import Chrt

@Suite("CargoByDeviceClient Wire Tests") struct CargoByDeviceClientWireTests {
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
                      "cargo_id": "cargo_id",
                      "device_id": "device_id",
                      "outlier": true,
                      "outlier_labeller": "movingpandas",
                      "pytest": true,
                      "task_group_id": "task_group_id"
                    },
                    "schema_version": 1,
                    "temperature": 1.1,
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
            CargoByDeviceDataPoint1(
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
                metadata: CargoByDeviceDataPointMetadata1(
                    cargoId: "cargo_id",
                    deviceId: "device_id",
                    outlier: Optional(true),
                    outlierLabeller: Optional(.movingpandas),
                    pytest: Optional(true),
                    taskGroupId: "task_group_id"
                ),
                schemaVersion: 1,
                temperature: Optional(1.1),
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.tracking.timeseries.cargoByDevice.dataPointsV1(
            cargoId: "cargo_id",
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
                      "cargo_id": "cargo_id",
                      "device_id": "device_id",
                      "outlier": true,
                      "outlier_labeller": "movingpandas",
                      "pytest": true,
                      "task_group_id": "task_group_id"
                    },
                    "schema_version": 1,
                    "temperature": 1.1,
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
            CargoByDeviceDataPoint1(
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
                metadata: CargoByDeviceDataPointMetadata1(
                    cargoId: "cargo_id",
                    deviceId: "device_id",
                    outlier: Optional(true),
                    outlierLabeller: Optional(.movingpandas),
                    pytest: Optional(true),
                    taskGroupId: "task_group_id"
                ),
                schemaVersion: 1,
                temperature: Optional(1.1),
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.tracking.timeseries.cargoByDevice.dataPointsPublicV1(
            cargoId: "cargo_id",
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
                    "cargo_id": "cargo_id",
                    "device_id": "device_id",
                    "outlier": true,
                    "outlier_labeller": "movingpandas",
                    "pytest": true,
                    "task_group_id": "task_group_id"
                  },
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
        let expectedResponse = Optional(CargoByDeviceDataPoint1(
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
            metadata: CargoByDeviceDataPointMetadata1(
                cargoId: "cargo_id",
                deviceId: "device_id",
                outlier: Optional(true),
                outlierLabeller: Optional(.movingpandas),
                pytest: Optional(true),
                taskGroupId: "task_group_id"
            ),
            schemaVersion: 1,
            temperature: Optional(1.1),
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        ))
        let response = try await client.tracking.timeseries.cargoByDevice.lastSeenV1(
            cargoId: "cargo_id",
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
                    "cargo_id": "cargo_id",
                    "device_id": "device_id",
                    "outlier": true,
                    "outlier_labeller": "movingpandas",
                    "pytest": true,
                    "task_group_id": "task_group_id"
                  },
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
        let expectedResponse = Optional(CargoByDeviceDataPoint1(
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
            metadata: CargoByDeviceDataPointMetadata1(
                cargoId: "cargo_id",
                deviceId: "device_id",
                outlier: Optional(true),
                outlierLabeller: Optional(.movingpandas),
                pytest: Optional(true),
                taskGroupId: "task_group_id"
            ),
            schemaVersion: 1,
            temperature: Optional(1.1),
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        ))
        let response = try await client.tracking.timeseries.cargoByDevice.lastSeenPublicV1(
            cargoId: "cargo_id",
            taskGroupId: "task_group_id",
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
        let expectedResponse = CargoByDeviceMarkOutliersResponse1(
            failedUpdates: 1,
            successfulUpdates: 1
        )
        let response = try await client.tracking.timeseries.cargoByDevice.outlierV1(
            request: .init(
                outlier: true,
                trackingCargoByDeviceDataPointIds: [
                    "tracking_cargo_by_device_data_point_ids"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}