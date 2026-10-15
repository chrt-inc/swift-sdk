import Foundation

public final class SharingSettingsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists the tracking datasets on an order that the caller is authorized for, with their sharing settings. | auth: api_key | authz_personas=[shipper_org_operators, coordinator_org_operators, executor_org_operators, driver_for_executor] | () -> (list[TrackingSharingSettingsRes])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sharingSettings.getSettingsV1(orderRef: "order_ref")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSettingsV1(orderRef: String, requestOptions: RequestOptions? = nil) async throws -> [TrackingSharingSettingsRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sharing_settings/by_order/v1/\(orderRef)",
            requestOptions: requestOptions,
            responseType: [TrackingSharingSettingsRes].self
        )
    }

    /// Updates the sharing settings for a cargo by device tracking dataset. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, order_creator_org_operators] | (CargoByDeviceSharingSettingsUpdateReq) -> (CargoByDeviceSharingSettings1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sharingSettings.cargoByDeviceSettingsV1(request: .init(
    ///         cargoId: "cargo_id",
    ///         deviceId: "device_id",
    ///         public: true,
    ///         taskGroupId: "task_group_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Updates the sharing settings for a cargo by driver tracking dataset. Making it public issues a public link token; making it private revokes it. | auth: api_key | authz_personas=[coordinator_org_operators, executor_org_operators, driver_for_executor] | (CargoByDriverSharingSettingsUpdateReq) -> (CargoByDriverSharingSettings1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sharingSettings.cargoByDriverSettingsV1(request: .init(
    ///         cargoId: "cargo_id",
    ///         public: true,
    ///         taskGroupId: "task_group_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Returns a cargo's driver tracking sharing settings and when its public link expires; sharing_settings is null when tracking was never shared. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | () -> (CargoByDriverSharingSettingsRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sharingSettings.getCargoByDriverV1(
    ///         taskGroupId: "task_group_id",
    ///         cargoId: "cargo_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getCargoByDriverV1(taskGroupId: String, cargoId: String, requestOptions: RequestOptions? = nil) async throws -> CargoByDriverSharingSettingsRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sharing_settings/cargo_by_driver/v1/\(taskGroupId)/\(cargoId)",
            requestOptions: requestOptions,
            responseType: CargoByDriverSharingSettingsRes.self
        )
    }

    /// Updates the sharing settings for a task group by driver tracking dataset. Making it public issues a public link token; making it private revokes it. | auth: api_key | authz_personas=[coordinator_org_operators, executor_org_operators, driver_for_executor] | (TaskGroupByDriverSharingSettingsUpdateReq) -> (TaskGroupByDriverSharingSettings1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sharingSettings.taskGroupByDriverSharingSettingsV1(request: .init(
    ///         public: true,
    ///         taskGroupId: "task_group_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Returns a task group's driver tracking sharing settings and when its public link expires; sharing_settings is null when tracking was never shared. | auth: api_key | authz_personas=[coordinator_org_operators, shipper_org_operators, executor_org_operators, driver_for_executor] | () -> (TaskGroupByDriverSharingSettingsRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.tracking.sharingSettings.getTaskGroupByDriverV1(taskGroupId: "task_group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getTaskGroupByDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupByDriverSharingSettingsRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking/sharing_settings/task_group_by_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: TaskGroupByDriverSharingSettingsRes.self
        )
    }
}