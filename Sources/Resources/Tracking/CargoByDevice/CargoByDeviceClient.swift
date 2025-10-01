import Foundation

public final class CargoByDeviceClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// For a given cargo_id and task_group_id, returns the single most recent data point from tracking.cargo_by_device.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lastSeen(cargoId: String, taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Nullable<TrackingCargoByDeviceDataPoint1> {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/cargo_by_device/last_seen",
            queryParams: [
                "cargo_id": .string(cargoId), 
                "task_group_id": .string(taskGroupId)
            ],
            requestOptions: requestOptions,
            responseType: Nullable<TrackingCargoByDeviceDataPoint1>.self
        )
    }
}