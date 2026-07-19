import Foundation

public final class TaskGroupClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a task group to an existing order draft. The task group is created without an executor; use draft assignment routes to assign executor or driver before staging. | (OrderDraftAddTaskGroupReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.OrderDraftAddTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/task_group/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Assigns an executor organization to a draft task group. Coordinator-only; coordinator-executor direct assignments require auto-assign consent. | authz_personas=[task_group_coordinator_operators] | (OrderDraftAddExecutorReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addExecutorV1(taskGroupId: String, request: Requests.OrderDraftAddExecutorReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/drafts/task_group/add_executor/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a task group and all associated entities (tasks, task artifacts, S3 metadata). The task group must belong to a DRAFT order. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/drafts/task_group/delete/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the driver on a draft task group. Only the executor org may remove drivers. | authz_personas=[executor_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/drafts/task_group/remove_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the executor, driver, and PPP/PPD billing attachments from a draft task group. Coordinator-only. | authz_personas=[task_group_coordinator_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeExecutorV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/drafts/task_group/remove_executor/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Replaces the ordered list of flights on a draft task group. | (SetFlightInfoReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setFlightInfoV1(taskGroupId: String, request: SetFlightInfoReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/drafts/task_group/set_flight_info/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets rate sheet IDs on a draft task group. Forwarder mode (SPF/FPC) and direct shipper mode (SPC) are mutually exclusive. CPD is independent. | (SetRateSheetsReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setRateSheetsV1(taskGroupId: String, request: Requests.SetRateSheetsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/drafts/task_group/set_rate_sheets/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the ordering of tasks within a draft task group. Must provide all task IDs with no duplicates. | (SetTaskOrderingDraftReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskOrderingV1(taskGroupId: String, request: Requests.SetTaskOrderingDraftReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/drafts/task_group/set_task_ordering/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the vehicle type on a draft task group. | authz_personas=[draft_creator_org_operator] | (SetVehicleTypeReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setVehicleTypeV1(taskGroupId: String, request: Requests.SetVehicleTypeReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/drafts/task_group/set_vehicle_type/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Assigns or swaps the driver on a draft task group. Only the executor org may assign drivers. | authz_personas=[executor_org_operators] | (OrderDraftUpdateDriverReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriverV1(taskGroupId: String, request: Requests.OrderDraftUpdateDriverReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/drafts/task_group/update_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}