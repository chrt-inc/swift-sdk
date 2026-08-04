import Foundation

public final class OrderTemplatesNewTaskArtifactsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Moves a task artifact to the end of another task. | authz: min_org_role=operator | (OrderTemplateNewTaskArtifactMoveReq1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func putMoveV1(orderTemplateId: String, taskArtifactKey: String, request: Requests.OrderTemplateNewTaskArtifactMoveReq1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_templates_new/task_artifacts/move/v1/\(orderTemplateId)/\(taskArtifactKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Reorders artifacts within one task. | authz: min_org_role=operator | (OrderTemplateNewTaskArtifactReorderReq1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func putReorderV1(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskArtifactReorderReq1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_templates_new/task_artifacts/reorder/v1/\(orderTemplateId)/\(taskKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Deletes a task artifact from an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderTemplateId: String, taskArtifactKey: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_templates_new/task_artifacts/v1/\(orderTemplateId)/\(taskArtifactKey)",
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Updates a task artifact in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskArtifactClientUpdate1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func patchUpdateV1(orderTemplateId: String, taskArtifactKey: String, request: Requests.OrderTemplateNewTaskArtifactClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_templates_new/task_artifacts/v1/\(orderTemplateId)/\(taskArtifactKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Adds an artifact to a task in an active order template. | authz: min_org_role=operator | (OrderTemplateNewTaskArtifactClientCreate1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postCreateV1(orderTemplateId: String, taskKey: String, request: Requests.OrderTemplateNewTaskArtifactClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/task_artifacts/v1/\(orderTemplateId)/\(taskKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }
}