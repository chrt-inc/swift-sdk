import Foundation

public final class CasesClient: Sendable {
    public let s3Objects: CasesS3ObjectsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.s3Objects = CasesS3ObjectsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Records image-analysis workflow results onto every participating org's Case for the order. Walks task_artifact -> task -> order, authorizes the caller against the shipping graph, then fans out to all Cases keyed on `order_id` — upserting one Check1 per surviving result keyed by (check, task_artifact_id) on each Case whose effective check set (`enabled - disabled`) includes it. Silently drops results for checks not in the image-uploaded event family, results for checks not in a given Case's effective set, and results whose existing row on that Case is DISMISSED. Returns True if any Case was updated. Intended to be called by the shipping_task_image_analysis Temporal workflow via an internal delegation JWT. | authz_personas=[driver_for_executor, executor_org_operators, shipper_org_operators, coordinator_org_operators] | (CaseChecksRecordImageAnalysisResultsReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func recordImageAnalysisResultsV1(taskArtifactId: String, request: Requests.CaseChecksRecordImageAnalysisResultsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/checks/record_image_analysis_results/v1/\(taskArtifactId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds the Checklist's checks to the Case's enabled_check_keys (deduped) and records the Checklist id. Does not touch existing check runs. Idempotent. | authz: min_org_role=operator | (CaseChecksApplyChecklistReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func applyChecklistV1(caseId: String, request: Requests.CaseChecksApplyChecklistReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/checks/apply_checklist/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a CheckEnum to the Case's disabled_check_keys (operator override). The Checklist that enabled the check stays applied; the workflow's effective set becomes enabled - disabled. Requires the CheckEnum to currently be in enabled_check_keys; otherwise 400. Existing check runs are untouched — operators dismiss them individually if they also want them out of summary counts. | authz: min_org_role=operator | (CaseChecksDisableReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func disableCheckV1(caseId: String, request: CaseChecksDisableReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/checks/disable/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a CheckEnum from the Case's disabled_check_keys, restoring it to the workflow's effective set. Inverse of disable. No-op if the CheckEnum isn't currently disabled. | authz: min_org_role=operator | (CaseChecksDisableReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func enableCheckV1(caseId: String, request: CaseChecksDisableReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/checks/enable/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Transitions one (check, entity_id) Check1 to status=DISMISSED. Does not affect other runs of the same check on different entity_ids. | authz: min_org_role=operator | (CaseChecksDismissReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dismissCheckV1(caseId: String, request: CaseChecksDismissReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/checks/dismiss/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Transitions a DISMISSED (check, entity_id) Check1 back to NOT_STARTED so the next matching event re-evaluates it. No-op if not currently DISMISSED. | authz: min_org_role=operator | (CaseChecksDismissReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func undismissCheckV1(caseId: String, request: CaseChecksDismissReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/operations/cases/checks/undismiss/v1/\(caseId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
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