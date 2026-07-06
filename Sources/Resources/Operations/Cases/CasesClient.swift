import Foundation

public final class CasesClient: Sendable {
    public let s3Objects: CasesS3ObjectsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Objects = CasesS3ObjectsClient(config: config)
        self.httpClient = HTTPClient(config: config)
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

    /// Lists the dispatcher Case view by exact case tag with related order and party data. | authz: min_org_role=operator | () -> (CasesExpandedListRes)
    ///
    /// - Parameter filterCaseTag: Exact case tag to list cases for
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func expandedListV1(filterCaseTag: String, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> CasesExpandedListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/expanded/list/v1",
            queryParams: [
                "filter_case_tag": .string(filterCaseTag), 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: CasesExpandedListRes.self
        )
    }

    /// Lists cases for the caller's organization with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (CaseListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter filterDepartmentId: Filter by department ID(s)
    /// - Parameter filterCaseTag: Filter by case tag(s)
    /// - Parameter filterAssignedUserId: Filter by assigned user ID (matches any case that includes this user)
    /// - Parameter filterUnassigned: Filter for unassigned cases
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: CaseSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterDepartmentId: String? = nil, filterCaseTag: String? = nil, filterAssignedUserId: String? = nil, filterUnassigned: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> CaseListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_department_id": filterDepartmentId.map { .string($0) }, 
                "filter_case_tag": filterCaseTag.map { .string($0) }, 
                "filter_assigned_user_id": filterAssignedUserId.map { .string($0) }, 
                "filter_unassigned": filterUnassigned.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: CaseListRes.self
        )
    }

    /// Sets the case's operator billing-review status. | authz: min_org_role=operator | (CaseSetBillingReviewStatusReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setBillingReviewStatusV1(caseId: String, request: Requests.CaseSetBillingReviewStatusReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/operations/cases/set_billing_review_status/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Returns the department this case's order would map to from the shipper connection — a non-binding default for the UI. Department is never auto-applied; the frontend applies it explicitly via the update route. | authz: min_org_role=operator | () -> (PydanticObjectId | None)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getSuggestedDepartmentV1(caseId: String, requestOptions: RequestOptions? = nil) async throws -> String? {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/suggested_department/v1/\(caseId)",
            requestOptions: requestOptions,
            responseType: String?.self
        )
    }

    /// Adds a task list to apply when the order is staged. | authz: min_org_role=operator | (UTCDatetime | None) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addTaskListToApplyAtOrderStagingV1(caseId: String, taskListId: String, request: Date?, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/task_lists_to_apply_at_order_staging/add/v1/\(caseId)/\(taskListId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a pending staging task list to apply from a draft order case. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeTaskListToApplyAtOrderStagingV1(caseId: String, taskListId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/task_lists_to_apply_at_order_staging/remove/v1/\(caseId)/\(taskListId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Returns distinct case_tag values matching the query via case-insensitive regex for the caller's organization. | authz: min_org_role=operator | () -> (list[CaseTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [CaseTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/operations/cases/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [CaseTypeaheadResult].self
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

    /// Updates a case's department and tag. | authz: min_org_role=operator | (CaseClientUpdate1) -> (bool)
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
}