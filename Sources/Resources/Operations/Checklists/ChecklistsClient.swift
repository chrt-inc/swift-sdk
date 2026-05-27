import Foundation

public final class ChecklistsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists Checklists for the caller's organization with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (ChecklistListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterArchived: Filter by archived flag. None=all, True=archived only, False=unarchived only.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: ChecklistSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterArchived: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> ChecklistListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/checklists/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_archived": filterArchived.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: ChecklistListRes.self
        )
    }

    /// Retrieves a single Checklist by id. | authz: min_org_role=operator | () -> (Checklist1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(checklistId: String, requestOptions: RequestOptions? = nil) async throws -> Checklist1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/checklists/v1/\(checklistId)",
            requestOptions: requestOptions,
            responseType: Checklist1.self
        )
    }

    /// Updates scalar fields (name, description) on a Checklist. | authz: min_org_role=operator | (ChecklistClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(checklistId: String, request: Requests.ChecklistClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/checklists/v1/\(checklistId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a new Checklist for the caller's organization. | authz: min_org_role=operator | (ChecklistClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ChecklistClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/checklists/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Adds checks to a Checklist. Idempotent for identical checks. | authz: min_org_role=operator | (ChecklistChecksAdd1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addChecksV1(checklistId: String, request: Requests.ChecklistChecksAdd1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/checklists/checks/add/v1/\(checklistId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes entries from a Checklist's `checks` list by CheckEnum. | authz: min_org_role=operator | (ChecklistChecksRemove1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeChecksV1(checklistId: String, request: Requests.ChecklistChecksRemove1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/checklists/checks/remove/v1/\(checklistId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Soft-deletes a Checklist by setting `archived=True`. Existing Cases that applied this Checklist are unaffected (copy-on-write). | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(checklistId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/checklists/archive/v1/\(checklistId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Restores an archived Checklist by setting `archived=False`. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unarchiveV1(checklistId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/checklists/unarchive/v1/\(checklistId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}