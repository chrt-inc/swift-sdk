import Foundation
import Testing
import Chrt

@Suite("TiveTimeseriesClient Wire Tests") struct TiveTimeseriesClientWireTests {
    @Test func lastSeenV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "timestamp": "2024-01-15T09:30:00Z",
                  "metadata": {
                    "tive_shipment_id": "tive_shipment_id",
                    "tive_device_id": "tive_device_id",
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
                  "temperature_f": 1.1,
                  "humidity": 1.1,
                  "acceleration_g": 1.1,
                  "acceleration_x": 1.1,
                  "acceleration_y": 1.1,
                  "acceleration_z": 1.1,
                  "light": 1.1,
                  "motion": 1,
                  "battery": 1,
                  "location_method": "location_method",
                  "process_time": "2024-01-15T09:30:00Z",
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
        let expectedResponse = Optional(TiveDataPoint1(
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            metadata: TiveDataPointMetadata1(
                tiveShipmentId: "tive_shipment_id",
                tiveDeviceId: "tive_device_id",
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
            temperatureF: Optional(1.1),
            humidity: Optional(1.1),
            accelerationG: Optional(1.1),
            accelerationX: Optional(1.1),
            accelerationY: Optional(1.1),
            accelerationZ: Optional(1.1),
            light: Optional(1.1),
            motion: Optional(1),
            battery: Optional(1),
            locationMethod: Optional("location_method"),
            processTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: "_id"
        ))
        let response = try await client.trackingIntegrations.tive.timeseries.lastSeenV1(
            tiveShipmentId: "tive_shipment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func dataPointsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "data_points": [
                    {
                      "schema_version": 1,
                      "timestamp": "2024-01-15T09:30:00Z",
                      "metadata": {
                        "tive_shipment_id": "tive_shipment_id",
                        "tive_device_id": "tive_device_id"
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
                        }
                      },
                      "temperature_f": 1.1,
                      "humidity": 1.1,
                      "acceleration_g": 1.1,
                      "acceleration_x": 1.1,
                      "acceleration_y": 1.1,
                      "acceleration_z": 1.1,
                      "light": 1.1,
                      "motion": 1,
                      "battery": 1,
                      "location_method": "location_method",
                      "process_time": "2024-01-15T09:30:00Z",
                      "_id": "_id"
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
                    schemaVersion: 1,
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    metadata: TiveDataPointMetadata1(
                        tiveShipmentId: "tive_shipment_id",
                        tiveDeviceId: "tive_device_id"
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
                        )
                    ),
                    temperatureF: Optional(1.1),
                    humidity: Optional(1.1),
                    accelerationG: Optional(1.1),
                    accelerationX: Optional(1.1),
                    accelerationY: Optional(1.1),
                    accelerationZ: Optional(1.1),
                    light: Optional(1.1),
                    motion: Optional(1),
                    battery: Optional(1),
                    locationMethod: Optional("location_method"),
                    processTime: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    id: "_id"
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

    @Test func syncV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "total_fetched_from_tive": 1,
                  "skipped_no_location": 1,
                  "duplicates_filtered": 1,
                  "new_data_points_count": 1
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
            totalFetchedFromTive: 1,
            skippedNoLocation: 1,
            duplicatesFiltered: 1,
            newDataPointsCount: 1
        )
        let response = try await client.trackingIntegrations.tive.timeseries.syncV1(
            tiveShipmentId: "tive_shipment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}