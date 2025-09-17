import Foundation

public final class CargoByDriverClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the most recent data point in tracking.cargo_by_driver that matches the provided identifiers.
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

    /// Given a driver_id and task_group_id, find cargos on the task group and write tracking points for those with status IN_TRANSIT.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.CargoByDriverUpdateReq, requestOptions: RequestOptions? = nil) async throws -> Int {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/cargo_by_driver/update",
            body: request,
            requestOptions: requestOptions,
            responseType: Int.self
        )
    }
}