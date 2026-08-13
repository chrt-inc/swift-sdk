import Foundation

public final class OrderTemplatesNewTasksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Replaces a task's cargo associations. | authz: min_org_role=operator | (OrderTemplateNewTaskCargoAssociationsReq1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.tasks.putCargoAssociationsV1(
    ///         orderTemplateId: "order_template_id",
    ///         taskKey: "task_key",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func putCargoAssociationsV1(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskCargoAssociationsReq1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_templates_new/tasks/cargo_associations/v1/\(orderTemplateId)/\(taskKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Moves a task to the end of another task group. | authz: min_org_role=operator | (OrderTemplateNewTaskMoveReq1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.tasks.putMoveV1(
    ///         orderTemplateId: "order_template_id",
    ///         taskKey: "task_key",
    ///         request: .init(targetTaskGroupKey: "target_task_group_key")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func putMoveV1(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskMoveReq1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_templates_new/tasks/move/v1/\(orderTemplateId)/\(taskKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Reorders tasks within one task group. | authz: min_org_role=operator | (OrderTemplateNewTaskReorderReq1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.tasks.putReorderV1(
    ///         orderTemplateId: "order_template_id",
    ///         taskGroupKey: "task_group_key",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func putReorderV1(orderTemplateId: String, taskGroupKey: String, request: Requests.OrderTemplateNewTaskReorderReq1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_templates_new/tasks/reorder/v1/\(orderTemplateId)/\(taskGroupKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Adds a task to a task group in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskClientCreate1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.tasks.postCreateV1(
    ///         orderTemplateId: "order_template_id",
    ///         taskGroupKey: "task_group_key",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postCreateV1(orderTemplateId: String, taskGroupKey: String, request: Requests.OrderTemplateNewTaskClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/tasks/v1/\(orderTemplateId)/\(taskGroupKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Deletes a task and its embedded artifacts from an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.tasks.deleteV1(
    ///         orderTemplateId: "order_template_id",
    ///         taskKey: "task_key"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderTemplateId: String, taskKey: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_templates_new/tasks/v1/\(orderTemplateId)/\(taskKey)",
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Updates a task in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskClientUpdate1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.tasks.patchUpdateV1(
    ///         orderTemplateId: "order_template_id",
    ///         taskKey: "task_key",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func patchUpdateV1(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_templates_new/tasks/v1/\(orderTemplateId)/\(taskKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }
}