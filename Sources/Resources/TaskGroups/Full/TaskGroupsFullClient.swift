import Foundation

public final class TaskGroupsFullClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all task groups for the authenticated courier organization with complete tasks, milestones, and cargo details.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByCourierOrgIdV1(requestOptions: RequestOptions? = nil) async throws -> MultipleTaskGroupsDetailsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/by_courier_org_id/list/full/v1",
            requestOptions: requestOptions,
            responseType: MultipleTaskGroupsDetailsResponse.self
        )
    }

    /// Retrieves a specific task group with complete tasks, milestones, and cargo information.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByTaskGroupIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> TaskGroupWithDetails {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/task_groups/v1/\(id)/full",
            requestOptions: requestOptions,
            responseType: TaskGroupWithDetails.self
        )
    }
}