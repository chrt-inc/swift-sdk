import Foundation
import Testing
import Chrt

@Suite("DriverClient Wire Tests") struct DriverClientWireTests {
    @Test func updateV21() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "cargo_tracking_count": 1,
                  "driver_by_driver_ping_recorded": true,
                  "driver_updated": true,
                  "task_group_tracking_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DriverUpdateRes(
            cargoTrackingCount: 1,
            driverByDriverPingRecorded: true,
            driverUpdated: true,
            taskGroupTrackingCount: 1
        )
        let response = try await client.tracking.driver.updateV2(
            request: .init(
                location: LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometryCollectionGeometriesItem.lineString(
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
                schemaVersion: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}