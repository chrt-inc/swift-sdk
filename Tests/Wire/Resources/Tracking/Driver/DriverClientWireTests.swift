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
                  "driver_by_driver_ping_recorded": true,
                  "driver_updated": true,
                  "task_group_tracking_count": 1,
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
        let expectedResponse = DriverUpdateRes(
            driverByDriverPingRecorded: true,
            driverUpdated: true,
            taskGroupTrackingCount: 1,
            cargoTrackingCount: 1
        )
        let response = try await client.tracking.driver.updateV1(
            request: LocationFeature(
                type: .feature,
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
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV21() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "driver_by_driver_ping_recorded": true,
                  "driver_updated": true,
                  "task_group_tracking_count": 1,
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
        let expectedResponse = DriverUpdateRes(
            driverByDriverPingRecorded: true,
            driverUpdated: true,
            taskGroupTrackingCount: 1,
            cargoTrackingCount: 1
        )
        let response = try await client.tracking.driver.updateV2(
            request: .init(
                schemaVersion: 1,
                location: LocationFeature(
                    type: .feature,
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
                    )
                ),
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}