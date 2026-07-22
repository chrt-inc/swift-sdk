import Foundation

public final class WorkspacesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists cached Reelables workspaces for the caller's organization. | authz: min_org_role=operator | () -> (ReelablesWorkspaceListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: ReelablesWorkspaceSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ReelablesWorkspaceListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/tracking_integrations/reelables/workspaces/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ReelablesWorkspaceListRes.self
        )
    }

    /// Synchronizes Reelables workspaces available to the caller's organization without deleting missing workspaces. | authz: min_org_role=operator | () -> (ReelablesWorkspaceSyncRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncV1(requestOptions: RequestOptions? = nil) async throws -> ReelablesWorkspaceSyncRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/tracking_integrations/reelables/workspaces/sync/v1",
            requestOptions: requestOptions,
            responseType: ReelablesWorkspaceSyncRes.self
        )
    }
}