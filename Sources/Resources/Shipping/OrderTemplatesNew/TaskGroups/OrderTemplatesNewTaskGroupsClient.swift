import Foundation

public final class OrderTemplatesNewTaskGroupsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Reorders task groups in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskGroupReorderReq1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.taskGroups.putReorderV1(
    ///         orderTemplateId: "order_template_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func putReorderV1(orderTemplateId: String, request: Requests.OrderTemplateNewTaskGroupReorderReq1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_templates_new/task_groups/reorder/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Adds a task group to an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskGroupClientCreate1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.taskGroups.postCreateV1(
    ///         orderTemplateId: "order_template_id",
    ///         request: .init(taskGroupType: .chrtGroundProvider)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postCreateV1(orderTemplateId: String, request: Requests.OrderTemplateNewTaskGroupClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/task_groups/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Deletes a task group and its embedded tasks from an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.taskGroups.deleteV1(
    ///         orderTemplateId: "order_template_id",
    ///         taskGroupKey: "task_group_key"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderTemplateId: String, taskGroupKey: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_templates_new/task_groups/v1/\(orderTemplateId)/\(taskGroupKey)",
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Updates a task group in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskGroupClientUpdate1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.taskGroups.patchUpdateV1(
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
    public func patchUpdateV1(orderTemplateId: String, taskGroupKey: String, request: Requests.OrderTemplateNewTaskGroupClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_templates_new/task_groups/v1/\(orderTemplateId)/\(taskGroupKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }
}