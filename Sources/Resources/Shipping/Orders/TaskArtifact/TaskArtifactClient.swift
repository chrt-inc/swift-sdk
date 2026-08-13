import Foundation

public final class TaskArtifactClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a task artifact to an order task. Draft orders require draft_creator_org_operator and create DRAFT artifacts; operational orders require driver_for_executor, executor_org_operators, or coordinator_org_operators and create STAGED or COMPLETED artifacts. | authz_personas=[draft_creator_org_operator, driver_for_executor, executor_org_operators, coordinator_org_operators] | (OrdersAddTaskArtifactReq) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskArtifact.addV1(
    ///         taskId: "task_id",
    ///         request: .init(taskArtifact: TaskArtifactClientCreate1(
    ///             schemaVersion: 1,
    ///             type: .image
    ///         ))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(taskId: String, request: Requests.OrdersAddTaskArtifactReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/task_artifact/add/v1/\(taskId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a task artifact and removes it from its task. Artifacts with S3 objects must have those objects deleted first. Draft orders require draft_creator_org_operator; operational orders require task_group_operating_org_operators. | authz_personas=[draft_creator_org_operator, task_group_operating_org_operators] | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.taskArtifact.deleteV1(taskArtifactId: "task_artifact_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(taskArtifactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/task_artifact/delete/v1/\(taskArtifactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}