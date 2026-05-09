import Foundation

public final class DepartmentsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists department configurations for the caller's organization. | authz: min_org_role=operator | () -> (DepartmentListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterDepartment: Filter by department(s)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: DepartmentSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterDepartment: DepartmentEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> DepartmentListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/departments/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_department": filterDepartment.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: DepartmentListRes.self
        )
    }

    /// Retrieves a single department configuration. | authz: min_org_role=operator | () -> (Department1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(departmentId: String, requestOptions: RequestOptions? = nil) async throws -> Department1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/departments/v1/\(departmentId)",
            requestOptions: requestOptions,
            responseType: Department1.self
        )
    }

    /// Deletes a department configuration. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(departmentId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/departments/v1/\(departmentId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates a department configuration. | authz: min_org_role=administrator | (DepartmentClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(departmentId: String, request: Requests.DepartmentClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/departments/v1/\(departmentId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a new department configuration for the caller's organization. | authz: min_org_role=administrator | (DepartmentClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.DepartmentClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/departments/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Adds an operator to a department. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addOperatorV1(departmentId: String, userId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/departments/add_operator/v1/\(departmentId)/\(userId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes an operator from a department. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeOperatorV1(departmentId: String, userId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/departments/remove_operator/v1/\(departmentId)/\(userId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}