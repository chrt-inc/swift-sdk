import Foundation

public final class DirectoryEntriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates an organization-owned directory entry. | authz: min_org_role=operator | (DirectoryEntryClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.DirectoryEntryClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/directory_entries/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes an organization-owned directory entry. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(directoryEntryId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/directory_entries/delete/v1/\(directoryEntryId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists organization-owned directory entries with association filters and search. | authz: min_org_role=operator | () -> (DirectoryEntryListRes)
    ///
    /// - Parameter search: Full-text search query
    /// - Parameter filterEntryOrgId: Filter by associated on-CHRT organization
    /// - Parameter filterEntryOffChrtOrgDataId: Filter by associated off-CHRT organization data
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(search: String? = nil, filterEntryOrgId: String? = nil, filterEntryOffChrtOrgDataId: String? = nil, sortBy: DirectoryEntrySortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> DirectoryEntryListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/directory_entries/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "filter_entry_org_id": filterEntryOrgId.map { .string($0) }, 
                "filter_entry_off_chrt_org_data_id": filterEntryOffChrtOrgDataId.map { .string($0) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: DirectoryEntryListRes.self
        )
    }

    /// Updates an organization-owned directory entry. | authz: min_org_role=operator | (DirectoryEntryClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(directoryEntryId: String, request: Requests.DirectoryEntryClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/directory_entries/update/v1/\(directoryEntryId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves an organization-owned directory entry. | authz: min_org_role=operator | () -> (DirectoryEntry1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(directoryEntryId: String, requestOptions: RequestOptions? = nil) async throws -> DirectoryEntry1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/directory_entries/v1/\(directoryEntryId)",
            requestOptions: requestOptions,
            responseType: DirectoryEntry1.self
        )
    }
}