import Foundation

public final class CargoByDriverClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent driver location data point for cargo within a task group. Access granted to courier or shipper organization. Data written by the driver update endpoint.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingCargoByDriverDataPoint1>? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_driver/last_seen/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingCargoByDriverDataPoint1>?.self
        )
    }
}