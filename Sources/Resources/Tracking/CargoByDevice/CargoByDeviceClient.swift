import Foundation

public final class CargoByDeviceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent device location data point for cargo within a task group. Access granted to courier or shipper organization. | () -> (TrackingCargoByDeviceDataPoint1 | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeenV1(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TrackingCargoByDeviceDataPoint1? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_device/last_seen/v1",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: TrackingCargoByDeviceDataPoint1?.self
        )
    }
}