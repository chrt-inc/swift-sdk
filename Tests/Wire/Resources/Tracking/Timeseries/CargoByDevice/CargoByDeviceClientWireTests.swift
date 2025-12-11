import Foundation
import Testing
import Chrt

@Suite("CargoByDeviceClient Wire Tests") struct CargoByDeviceClientWireTests {
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
                    "cargo_id": "cargo_id",
                    "device_id": "device_id",
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
        let expectedResponse = Optional(CargoByDeviceDataPoint1(
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            metadata: CargoByDeviceDataPointMetadata1(
                taskGroupId: "task_group_id",
                cargoId: "cargo_id",
                deviceId: "device_id",
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
        let response = try await client.tracking.timeseries.cargoByDevice.lastSeenV1(
            cargoId: "cargo_id",
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
                      "cargo_id": "cargo_id",
                      "device_id": "device_id",
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
            CargoByDeviceDataPoint1(
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                metadata: CargoByDeviceDataPointMetadata1(
                    taskGroupId: "task_group_id",
                    cargoId: "cargo_id",
                    deviceId: "device_id",
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
                    id: Optional(Id.int(
                        1
                    ))
                ),
                temperature: Optional(1.1),
                id: "_id"
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
        let expectedResponse = CargoByDeviceMarkOutliersResponse1(
            successfulUpdates: 1,
            failedUpdates: 1
        )
        let response = try await client.tracking.timeseries.cargoByDevice.outlierV1(
            request: .init(
                trackingCargoByDeviceDataPointIds: [
                    "tracking_cargo_by_device_data_point_ids"
                ],
                outlier: true
            ),
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
                    "cargo_id": "cargo_id",
                    "device_id": "device_id",
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
        let expectedResponse = Optional(CargoByDeviceDataPoint1(
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            metadata: CargoByDeviceDataPointMetadata1(
                taskGroupId: "task_group_id",
                cargoId: "cargo_id",
                deviceId: "device_id",
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
        let response = try await client.tracking.timeseries.cargoByDevice.lastSeenPublicV1(
            cargoId: "cargo_id",
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
                      "cargo_id": "cargo_id",
                      "device_id": "device_id",
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
            CargoByDeviceDataPoint1(
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                metadata: CargoByDeviceDataPointMetadata1(
                    taskGroupId: "task_group_id",
                    cargoId: "cargo_id",
                    deviceId: "device_id",
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
                    id: Optional(Id.int(
                        1
                    ))
                ),
                temperature: Optional(1.1),
                id: "_id"
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
}