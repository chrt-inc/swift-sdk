import Foundation

public final class BillingLedgersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a billing ledger the caller's org owns or is a payment counterparty on. | authz_personas=[billing_ledger_org_operators] | () -> (BillingLedger1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> BillingLedger1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/billing_ledgers/by_id/v1/\(id)",
            requestOptions: requestOptions,
            responseType: BillingLedger1.self
        )
    }

    /// Lists billing ledgers the caller's org owns or is a payment counterparty on. | authz_personas=[billing_ledger_org_operators] | () -> (BillingLedgerListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterStatus: Filter by status(es). Multi-select.
    /// - Parameter filterTaskGroupType: Filter to ledgers scoped to this TaskGroup type. Omit to include both type-scoped and type-agnostic ledgers.
    /// - Parameter filterPaymentOriginOrgId: Filter by payment origin on-chrt org id.
    /// - Parameter filterPaymentDestinationOrgId: Filter by payment destination on-chrt org id.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: BillingLedgerSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: BillingLedgerStatusEnum? = nil, filterTaskGroupType: TaskGroupTypeEnum1? = nil, filterPaymentOriginOrgId: String? = nil, filterPaymentDestinationOrgId: String? = nil, requestOptions: RequestOptions? = nil) async throws -> BillingLedgerListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/billing_ledgers/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_task_group_type": filterTaskGroupType.map { .string($0.rawValue) }, 
                "filter_payment_origin_org_id": filterPaymentOriginOrgId.map { .string($0) }, 
                "filter_payment_destination_org_id": filterPaymentDestinationOrgId.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: BillingLedgerListRes.self
        )
    }

    /// Creates a billing ledger owned by the caller's org. Caller must be the receiving provider for shipper-pay-provider, or the paying provider for provider-pay-provider/driver. | authz: allowed_org_types=[provider], min_org_role=operator | (BillingLedgerClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.BillingLedgerClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/billing_ledgers/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates a billing ledger's `comments`. Cycle and rate are per-period values supplied at `billing_ledger_periods/open/v1` time; the ledger does not carry them. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_owner_operators] | (BillingLedgerClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(id: String, request: Requests.BillingLedgerClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/billing_ledgers/update/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Flips a billing ledger to INACTIVE and stamps `inactive_at_timestamp`. Idempotent; the current OPEN period is left untouched. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[billing_ledger_owner_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deactivateV1(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/billing_ledgers/deactivate/v1/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}