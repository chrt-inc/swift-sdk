import Foundation
import Testing
import Chrt

@Suite("ReelablesTimeseriesClient Wire Tests") struct ReelablesTimeseriesClientWireTests {
    @Test func dataPointsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "data_points": [
                    {
                      "_id": "_id",
                      "accuracy_meters": 1,
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
                        "asset_id": "asset_id"
                      },
                      "schema_version": 1,
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
        let expectedResponse = ReelablesTimeseriesRes(
            dataPoints: [
                ReelablesDataPoint1(
                    id: "_id",
                    accuracyMeters: Optional(1),
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
                        type: .feature
                    ),
                    metadata: ReelablesDataPointMetadata1(
                        assetId: "asset_id"
                    ),
                    schemaVersion: 1,
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.trackingIntegrations.reelables.timeseries.dataPointsV1(
            assetId: "asset_id",
            startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}