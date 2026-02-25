import Foundation
import Testing
import Chrt

@Suite("DriverClient Wire Tests") struct DriverClientWireTests {
    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "cargo_tracking_count": 1,
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
            driverUpdated: true,
            taskGroupTrackingCount: 1
        )
        let response = try await client.tracking.driver.updateV1(
            request: LocationFeature(
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
                ),
                type: .feature
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}