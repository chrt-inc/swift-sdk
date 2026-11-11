import Foundation

public final class OperationsTaskListDefaultsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Deletes a task-list default; tasks it already put on orders are kept, and drafts staged afterwards no longer get its staging lists. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTaskListDefaults.deleteV1(operationsTaskListDefaultId: "operations_task_list_default_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(operationsTaskListDefaultId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/operations_task_list_defaults/delete/v1/\(operationsTaskListDefaultId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists the caller organization's default task lists by shipper and service line. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[OperationsTaskListDefault1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTaskListDefaults.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [OperationsTaskListDefault1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/operations_task_list_defaults/list/v1",
            requestOptions: requestOptions,
            responseType: [OperationsTaskListDefault1].self
        )
    }

    /// Sets the task lists applied at order creation and at staging to every order with one shipper on one service line, added to any chosen on a template or by hand. | authz: allowed_org_types=[provider], min_org_role=operator | (OperationsTaskListDefaultClientCreate1) -> (OperationsTaskListDefault1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.operations.operationsTaskListDefaults.setV1(request: .init(
    ///         schemaVersion: 1,
    ///         serviceLine: .onDemand
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setV1(request: Requests.OperationsTaskListDefaultClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OperationsTaskListDefault1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/operations/operations_task_list_defaults/set/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OperationsTaskListDefault1.self
        )
    }
}