import Foundation

public final class DraftClient: Sendable {
    public let expanded: DraftExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = DraftExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a new draft order with org assignments based on caller's organization type.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func newV1(request: Requests.OrdersNewDraftReq, requestOptions: RequestOptions? = nil) async throws -> OrdersNewDraftRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/draft/new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersNewDraftRes.self
        )
    }

    /// Updates forwarder and/or shipper org assignments for a draft order
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.OrdersDraftUpdateReq, requestOptions: RequestOptions? = nil) async throws -> OrdersDraftUpdateRes {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/orders/draft/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersDraftUpdateRes.self
        )
    }

    /// Deletes a draft order and all associated entities
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/orders/draft/delete/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a task group to an existing draft order. Validates order is in DRAFT status and owned by caller.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addTaskGroupV1(request: Requests.OrderDraftAddTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/draft/add_task_group/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a task group and all associated entities (tasks, task artifacts, S3 metadata). The task group must belong to a DRAFT order.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteTaskGroupV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/orders/draft/delete_task_group/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a task to an existing task group in a draft order. Validates order is in DRAFT status and task action type matches task group type.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addTaskV1(request: Requests.OrderDraftAddTaskReqV1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/draft/add_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a task in an existing draft order
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateTaskV1(request: Requests.OrderDraftUpdateTaskReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/orders/draft/update_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a task from a draft order, including all task artifacts. Cargo is preserved. Task is removed from task group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteTaskV1(taskId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/orders/draft/delete_task/v1/\(taskId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a task artifact to an existing task in a draft order.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addTaskArtifactV1(request: Requests.OrderDraftAddTaskArtifactReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/draft/add_task_artifact/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a task artifact from a draft order and removes it from the associated task.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteTaskArtifactV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/orders/draft/delete_task_artifact/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a cargo item in an existing draft order. Validates order is in DRAFT status and owned by caller.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createCargoV1(request: Requests.OrderDraftCreateCargoReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/draft/create_cargo/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Associates existing cargo with a task in a draft order.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func associateCargoWithTaskV1(request: Requests.OrderDraftAssociateCargoWithTaskReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/draft/associate_cargo_with_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates a cargo item in an existing draft order. Validates order is in DRAFT status and owned by caller.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateCargoV1(request: Requests.OrderDraftUpdateCargoReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/orders/draft/update_cargo/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a cargo item from a draft order and removes references from associated tasks
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteCargoV1(cargoId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/orders/draft/delete_cargo/v1/\(cargoId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Checks whether the draft order satisfies all requirements to move into staging.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getDraftValidateV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/orders/draft/validate/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}