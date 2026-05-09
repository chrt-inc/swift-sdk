import Foundation

public final class TaskGroupIdClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves the task group IDs where the caller's provider org is the executor for an order's task groups. | authz_personas=[executor_org_operators] | () -> (list[PydanticObjectId])
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forExecutorOperatorsV1(orderRef: String, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/task_group_id/for_executor_operators/v1/\(orderRef)",
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }

    /// Retrieves the task group IDs assigned to the caller (a driver of the executor provider) for an order. | authz_personas=[driver_for_executor] | () -> (list[PydanticObjectId])
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forDriverForExecutorV1(orderRef: String, requestOptions: RequestOptions? = nil) async throws -> [String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/task_groups/task_group_id/for_driver_for_executor/v1/\(orderRef)",
            requestOptions: requestOptions,
            responseType: [String].self
        )
    }
}