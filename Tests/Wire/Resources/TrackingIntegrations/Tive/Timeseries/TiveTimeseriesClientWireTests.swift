import Foundation
import Testing
import Chrt

@Suite("TiveTimeseriesClient Wire Tests") struct TiveTimeseriesClientWireTests {
    @Test func dataPointsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "data_points": [
                    {
                      "_id": "_id",
                      "acceleration_g": 1.1,
                      "acceleration_x": 1.1,
                      "acceleration_y": 1.1,
                      "acceleration_z": 1.1,
                      "battery": 1,
                      "humidity": 1.1,
                      "light": 1.1,
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
                      "location_method": "location_method",
                      "metadata": {
                        "tive_device_id": "tive_device_id",
                        "tive_shipment_id": "tive_shipment_id"
                      },
                      "motion": 1,
                      "process_time": "2024-01-15T09:30:00Z",
                      "schema_version": 1,
                      "temperature_f": 1.1,
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = TiveTimeseriesRes(
            dataPoints: [
                TiveDataPoint1(
                    id: "_id",
                    accelerationG: Optional(1.1),
                    accelerationX: Optional(1.1),
                    accelerationY: Optional(1.1),
                    accelerationZ: Optional(1.1),
                    battery: Optional(1),
                    humidity: Optional(1.1),
                    light: Optional(1.1),
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
                    locationMethod: Optional("location_method"),
                    metadata: TiveDataPointMetadata1(
                        tiveDeviceId: "tive_device_id",
                        tiveShipmentId: "tive_shipment_id"
                    ),
                    motion: Optional(1),
                    processTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    schemaVersion: 1,
                    temperatureF: Optional(1.1),
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.trackingIntegrations.tive.timeseries.dataPointsV1(
            tiveShipmentId: "tive_shipment_id",
            startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
                  "acceleration_g": 1.1,
                  "acceleration_x": 1.1,
                  "acceleration_y": 1.1,
                  "acceleration_z": 1.1,
                  "battery": 1,
                  "humidity": 1.1,
                  "light": 1.1,
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
                  "location_method": "location_method",
                  "metadata": {
                    "pytest": true,
                    "tive_device_id": "tive_device_id",
                    "tive_shipment_id": "tive_shipment_id"
                  },
                  "motion": 1,
                  "process_time": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "temperature_f": 1.1,
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
        let expectedResponse = Optional(TiveDataPoint1(
            id: "_id",
            accelerationG: Optional(1.1),
            accelerationX: Optional(1.1),
            accelerationY: Optional(1.1),
            accelerationZ: Optional(1.1),
            battery: Optional(1),
            humidity: Optional(1.1),
            light: Optional(1.1),
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
            locationMethod: Optional("location_method"),
            metadata: TiveDataPointMetadata1(
                pytest: Optional(true),
                tiveDeviceId: "tive_device_id",
                tiveShipmentId: "tive_shipment_id"
            ),
            motion: Optional(1),
            processTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            schemaVersion: 1,
            temperatureF: Optional(1.1),
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        ))
        let response = try await client.trackingIntegrations.tive.timeseries.lastSeenV1(
            tiveShipmentId: "tive_shipment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "duplicates_filtered": 1,
                  "new_data_points_count": 1,
                  "skipped_no_location": 1,
                  "total_fetched_from_tive": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TiveTimeseriesSyncRes(
            duplicatesFiltered: 1,
            newDataPointsCount: 1,
            skippedNoLocation: 1,
            totalFetchedFromTive: 1
        )
        let response = try await client.trackingIntegrations.tive.timeseries.syncV1(
            tiveShipmentId: "tive_shipment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}