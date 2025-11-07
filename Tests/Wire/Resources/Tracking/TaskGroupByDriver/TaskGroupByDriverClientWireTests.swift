import Foundation
import Testing
import Chrt

@Suite("TaskGroupByDriverClient Wire Tests") struct TaskGroupByDriverClientWireTests {
    @Test func lastSeenV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "timestamp": "2024-01-15T09:30:00Z",
                  "metadata": {
                    "driver_id": "driver_id",
                    "task_group_id": "task_group_id",
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
                      "name": "name",
                      "mapbox_id": "mapbox_id"
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
        let expectedResponse = Optional(TrackingTaskGroupByDriverDataPoint1(
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            metadata: TrackingTaskGroupByDriverDataPointMetadata1(
                driverId: "driver_id",
                taskGroupId: "task_group_id",
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
                    name: Optional("name"),
                    mapboxId: Optional("mapbox_id")
                )),
                id: Optional(Id.int(
                    1
                ))
            ),
            id: "_id"
        ))
        let response = try await client.tracking.taskGroupByDriver.lastSeenV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}