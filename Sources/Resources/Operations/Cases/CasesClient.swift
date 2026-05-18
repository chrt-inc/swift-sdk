import Foundation

public final class CasesClient: Sendable {
    public let s3Objects: CasesS3ObjectsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Objects = CasesS3ObjectsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists cases for the caller's organization with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (CaseListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterStatus: Filter by status(es)
    /// - Parameter filterDepartmentId: Filter by department ID(s)
    /// - Parameter filterAssignedOperatorUserId: Filter by assigned operator user ID (matches any case that includes this user)
    /// - Parameter filterNeedsAction: Filter by needs_action flag
    /// - Parameter filterUnassigned: Filter for unassigned cases
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: CaseSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: CaseStatusEnum? = nil, filterDepartmentId: String? = nil, filterAssignedOperatorUserId: String? = nil, filterNeedsAction: Bool? = nil, filterUnassigned: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> CaseListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_department_id": filterDepartmentId.map { .string($0) }, 
                "filter_assigned_operator_user_id": filterAssignedOperatorUserId.map { .string($0) }, 
                "filter_needs_action": filterNeedsAction.map { .bool($0) }, 
                "filter_unassigned": filterUnassigned.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: CaseListRes.self
        )
    }

    /// Retrieves a single case. | authz: min_org_role=operator | () -> (Case1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(caseId: String, requestOptions: RequestOptions? = nil) async throws -> Case1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/v1/\(caseId)",
            requestOptions: requestOptions,
            responseType: Case1.self
        )
    }

    /// Updates a case's department_id. | authz: min_org_role=operator | (CaseClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(caseId: String, request: Requests.CaseClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/cases/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves the case for a given shipping order. | authz: min_org_role=operator | () -> (Case1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Case1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/by_order/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Case1.self
        )
    }

    /// Retrieves the case for a given order ID, short ID, or off-chrt reference ID. | authz: min_org_role=operator | () -> (Case1)
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderRefV1(orderRef: String, requestOptions: RequestOptions? = nil) async throws -> Case1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/by_order_ref/v1/\(orderRef)",
            requestOptions: requestOptions,
            responseType: Case1.self
        )
    }

    /// Retrieves the case for a given order short ID. | authz: min_org_role=operator | () -> (Case1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrderShortIdV1(orderShortId: String, requestOptions: RequestOptions? = nil) async throws -> Case1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/by_order_short_id/v1/\(orderShortId)",
            requestOptions: requestOptions,
            responseType: Case1.self
        )
    }

    /// Updates whether a case needs action. | authz: min_org_role=operator | (CaseNeedsActionReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateNeedsActionV1(caseId: String, request: Requests.CaseNeedsActionReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/cases/needs_action/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates a case's status. Closing a case also clears needs_action. | authz: min_org_role=operator | (CaseStatusReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateStatusV1(caseId: String, request: Requests.CaseStatusReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/cases/status/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds operator(s) to a case. | authz: min_org_role=operator | (CaseAssignReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assignV1(caseId: String, request: Requests.CaseAssignReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/cases/assign/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes operator(s) from a case. | authz: min_org_role=operator | (CaseUnassignReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unassignV1(caseId: String, request: Requests.CaseUnassignReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/cases/unassign/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Appends a message to a case. | authz: min_org_role=operator | (CaseAddMessageReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addMessageV1(caseId: String, request: Requests.CaseAddMessageReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/add_message/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a message from a case. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteMessageV1(caseId: String, messageId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/operations/cases/delete_message/v1/\(caseId)/\(messageId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}