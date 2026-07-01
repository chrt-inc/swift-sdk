import Foundation

public final class BillingLedgerPeriodsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a billing ledger period the caller's org owns or is a payment counterparty on. | authz_personas=[billing_ledger_period_org_operators] | () -> (BillingLedgerPeriod1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> BillingLedgerPeriod1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/billing_ledger_periods/by_id/v1/\(id)",
            requestOptions: requestOptions,
            responseType: BillingLedgerPeriod1.self
        )
    }

    /// Closes an OPEN billing ledger period. 400 if the period is already CLOSED. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_period_owner_operators] | () -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func closeV1(billingLedgerPeriodId: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/billing_ledger_periods/close/v1/\(billingLedgerPeriodId)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Lists billing ledger periods the caller's org owns or is a payment counterparty on. | authz_personas=[billing_ledger_period_org_operators] | () -> (BillingLedgerPeriodListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterBillingLedgerId: Filter by parent billing ledger id.
    /// - Parameter filterOwnedByOrgId: Filter by owner org id.
    /// - Parameter filterStatus: Filter by status(es). Multi-select.
    /// - Parameter filterStatementId: Filter to periods rolled into this statement.
    /// - Parameter filterAttachedToStatement: Filter by whether the period is bundled into a statement (`statement_id is not None` if true, `is None` if false). Used by the statement-bundling worklist to find unbundled periods.
    /// - Parameter filterPeriodEndAtTimestampBefore: Filter to periods whose `period_end_at_timestamp` is strictly before this instant. Combined with `filter_status=open` this yields the 'needs cycling' worklist.
    /// - Parameter filterPeriodEndAtTimestampAfter: Filter to periods whose `period_end_at_timestamp` is strictly after this instant.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: BillingLedgerPeriodSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterBillingLedgerId: String? = nil, filterOwnedByOrgId: String? = nil, filterStatus: BillingLedgerPeriodStatusEnum? = nil, filterStatementId: String? = nil, filterAttachedToStatement: Bool? = nil, filterPeriodEndAtTimestampBefore: Date? = nil, filterPeriodEndAtTimestampAfter: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> BillingLedgerPeriodListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/billing_ledger_periods/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_billing_ledger_id": filterBillingLedgerId.map { .string($0) }, 
                "filter_owned_by_org_id": filterOwnedByOrgId.map { .string($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_statement_id": filterStatementId.map { .string($0) }, 
                "filter_attached_to_statement": filterAttachedToStatement.map { .bool($0) }, 
                "filter_period_end_at_timestamp_before": filterPeriodEndAtTimestampBefore.map { .date($0) }, 
                "filter_period_end_at_timestamp_after": filterPeriodEndAtTimestampAfter.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: BillingLedgerPeriodListRes.self
        )
    }

    /// Opens a new period on an ACTIVE billing ledger. Operator supplies `cycle`, `rate_usd`, and at least one of `(period_start_at_timestamp, period_end_at_timestamp)` — the other is derived from `cycle` (calendar-aware). A period spans exactly one cycle. Multiple OPEN periods per ledger are allowed and may overlap. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_owner_operators] | (OpenPeriodReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func openV1(billingLedgerId: String, request: Requests.OpenPeriodReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/billing_ledger_periods/open/v1/\(billingLedgerId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates an OPEN billing ledger period's bounds, cycle, and/or rate_usd. Lenient: only `end > start` is enforced after the patch — span need not equal cycle. CLOSED periods are immutable. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_period_owner_operators] | (BillingLedgerPeriodClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(billingLedgerPeriodId: String, request: Requests.BillingLedgerPeriodClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/billing_ledger_periods/update/v1/\(billingLedgerPeriodId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}