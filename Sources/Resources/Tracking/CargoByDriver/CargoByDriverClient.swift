import Foundation

public final class CargoByDriverClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent data point in tracking.cargo_by_driver that matches the provided identifiers. Data is written by the unified /driver/update endpoint.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeen(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingCargoByDriverDataPoint1>? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_driver/last_seen",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingCargoByDriverDataPoint1>?.self
        )
    }
}