import Foundation
import Testing
import Chrt

@Suite("DriverClient Wire Tests") struct DriverClientWireTests {
    @Test func updateV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "driver_updated": true,
                  "task_group_tracking_written": true,
                  "cargo_tracking_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DriverUpdateResp(
            driverUpdated: true,
            taskGroupTrackingWritten: true,
            cargoTrackingCount: 1
        )
        let response = try await client.tracking.driver.updateV1(request: .init(
            taskGroupId: "task_group_id",
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            location: LocationFeature(
                type: .feature,
                geometry: Geometry.geometryCollection(
                    .init(
                        geometries: [
                            GeometryCollectionOutputGeometriesItem.lineString(
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
            )
        ))
        try #require(response == expectedResponse)
    }
}