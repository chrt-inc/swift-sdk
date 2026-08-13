import Foundation

public final class TaskGroupIdClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the task group IDs assigned to the caller (a driver of the executor provider) for an order. | authz_personas=[driver_for_executor] | () -> (list[PydanticObjectId])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.taskGroupId.forDriverV1(orderRef: "order_ref")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forDriverV1(orderRef: String, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/task_group_id/for_driver/v1/\(orderRef)",
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Retrieves task group IDs where the caller's provider org is the coordinator, executor, or both. | authz_personas=[coordinator_org_operators, executor_org_operators] | () -> (list[PydanticObjectId])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.taskGroups.taskGroupId.forProviderOperatorsV1(
    ///         orderRef: "order_ref",
    ///         providerRole: .all
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forProviderOperatorsV1(orderRef: String, providerRole: TaskGroupProviderRoleFilterEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/task_group_id/for_provider_operators/v1/\(orderRef)",
            queryParams: [
                "provider_role": providerRole.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }
}