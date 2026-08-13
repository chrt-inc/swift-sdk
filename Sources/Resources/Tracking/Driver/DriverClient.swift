import Foundation

public final class DriverClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Records driver location updates with a client-supplied capture timestamp. Writes a driver_by_driver ping on every call, updates the driver's last seen, and records tracking data for all IN_PROGRESS task groups and their associated IN_TRANSIT cargos. | auth: api_key | (DriverByDriverDataPointClientCreate1) -> (DriverUpdateRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.driver.updateV2(request: .init(
    ///         location: LocationFeature(
    ///             geometry: Geometry.geometryCollection(
    ///                 GeometryCollection(
    ///                     geometries: [
    ///                         GeometriesItem.lineString(
    ///                             LineString(
    ///                                 coordinates: [
    ///                                     CoordinatesItem.position2D(
    ///                                         []
    ///                                     )
    ///                                 ]
    ///                             )
    ///                         )
    ///                     ]
    ///                 )
    ///             ),
    ///             type: .feature
    ///         ),
    ///         schemaVersion: 1,
    ///         timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV2(request: Requests.DriverByDriverDataPointClientCreate1, requestOptions: RequestOptions? = nil) async throws -> DriverUpdateRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/driver/update/v2",
            body: request,
            requestOptions: requestOptions,
            responseType: DriverUpdateRes.self
        )
    }
}