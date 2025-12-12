import Foundation

public final class SharingSettingsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all tracking datasets and their sharing settings for a given order. | authz_personas=[shipper_org_operators, forwarder_org_operators, courier_org_operators] | () -> (list[TrackingSharingSettingsRes])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSettingsV1(orderIdOrShortId: String, requestOptions: RequestOptions? = nil) async throws -> [TrackingSharingSettingsRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sharing_settings/by_order/v1/\(orderIdOrShortId)",
            requestOptions: requestOptions,
            responseType: [TrackingSharingSettingsRes].self
        )
    }

    /// Updates the sharing settings for a task group by driver tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | (TaskGroupByDriverSharingSettingsUpdateReq) -> (TaskGroupByDriverSharingSettings1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taskGroupByDriverSharingSettingsV1(request: Requests.TaskGroupByDriverSharingSettingsUpdateReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverSharingSettings1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sharing_settings/task_group_by_driver/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverSharingSettings1.self
        )
    }

    /// Updates the sharing settings for a cargo by driver tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, courier_org_operators, courier_driver] | (CargoByDriverSharingSettingsUpdateReq) -> (CargoByDriverSharingSettings1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cargoByDriverSettingsV1(request: Requests.CargoByDriverSharingSettingsUpdateReq, requestOptions: RequestOptions? = nil) async throws -> CargoByDriverSharingSettings1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sharing_settings/cargo_by_driver/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoByDriverSharingSettings1.self
        )
    }

    /// Updates the sharing settings for a cargo by device tracking dataset. | authz_personas=[forwarder_org_operators, shipper_org_operators, order_creator_org_operators] | (CargoByDeviceSharingSettingsUpdateReq) -> (CargoByDeviceSharingSettings1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cargoByDeviceSettingsV1(request: Requests.CargoByDeviceSharingSettingsUpdateReq, requestOptions: RequestOptions? = nil) async throws -> CargoByDeviceSharingSettings1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking/sharing_settings/cargo_by_device/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CargoByDeviceSharingSettings1.self
        )
    }
}