import Foundation

public final class StatementsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Gets a statement by ID. | authz_personas=[statement_org_operators, statement_driver] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Gets a statement by its associated LineItemGroup ID. | authz_personas=[statement_org_operators, statement_driver] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByLigIdV1(lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/by_lig_id/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Retrieves a statement with its associated LineItemGroups expanded. | authz_personas=[statement_org_operators, statement_driver] | (StatementExpandedRetrieveReq) -> (StatementExpandedRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func expandedRetrieveV1(request: Requests.StatementExpandedRetrieveReq, requestOptions: RequestOptions? = nil) async throws -> StatementExpandedRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/expanded/retrieve/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: StatementExpandedRes.self
        )
    }

    /// Lists statements with filtering, sorting, and pagination. | authz_personas=[statement_org_operators, statement_driver] | () -> (StatementsListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (ascending or descending)
    /// - Parameter filterStatus: Filter by statement status(es)
    /// - Parameter filterSettlementType: Filter by settlement type
    /// - Parameter filterPaymentOriginOrgId: Filter by payment origin org ID
    /// - Parameter filterPaymentDestinationOrgId: Filter by payment destination org ID
    /// - Parameter filterOwnedByOrgId: Filter by owned by org ID
    /// - Parameter filterStagedAtTimestampGte: Filter by staged_at_timestamp >= value
    /// - Parameter filterStagedAtTimestampLte: Filter by staged_at_timestamp <= value
    /// - Parameter filterOpenedAtTimestampGte: Filter by opened_at_timestamp >= value
    /// - Parameter filterOpenedAtTimestampLte: Filter by opened_at_timestamp <= value
    /// - Parameter filterPaidAtTimestampGte: Filter by paid_at_timestamp >= value
    /// - Parameter filterPaidAtTimestampLte: Filter by paid_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: StatementSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: StatementStatusEnum1? = nil, filterSettlementType: SettlementTypeEnum1? = nil, filterPaymentOriginOrgId: String? = nil, filterPaymentDestinationOrgId: String? = nil, filterOwnedByOrgId: String? = nil, filterStagedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterOpenedAtTimestampGte: Date? = nil, filterOpenedAtTimestampLte: Date? = nil, filterPaidAtTimestampGte: Date? = nil, filterPaidAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> StatementsListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_settlement_type": filterSettlementType.map { .string($0.rawValue) }, 
                "filter_payment_origin_org_id": filterPaymentOriginOrgId.map { .string($0) }, 
                "filter_payment_destination_org_id": filterPaymentDestinationOrgId.map { .string($0) }, 
                "filter_owned_by_org_id": filterOwnedByOrgId.map { .string($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_opened_at_timestamp_gte": filterOpenedAtTimestampGte.map { .date($0) }, 
                "filter_opened_at_timestamp_lte": filterOpenedAtTimestampLte.map { .date($0) }, 
                "filter_paid_at_timestamp_gte": filterPaidAtTimestampGte.map { .date($0) }, 
                "filter_paid_at_timestamp_lte": filterPaidAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: StatementsListRes.self
        )
    }

    /// Creates a new statement without LIG IDs, starting in STAGED status. Requires payment vector, origin, and destination. | authz: org_type=[courier, forwarder], min_org_role=operator | (CreateStatementReq) -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CreateStatementReq, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Deletes a statement. Only allowed if statement has no LineItemGroup IDs. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/delete/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the settlement type of a statement. Statement must be in STAGED status. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators], statement_status=STAGED | (SettlementTypeEnum1) -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateSettlementTypeV1(statementId: String, request: Requests.BodyStatementsPatchUpdateSettlementTypeV1BillingUpdateSettlementTypeV1StatementIdPatch, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/update_settlement_type/v1/\(statementId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Updates the status of an off-CHRT settlement statement. Used to manually transition OFF_CHRT statements between STAGED, OPEN, PAID, and VOID. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators] | (StatementStatusEnum1) -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateOffChrtSettlementStateV1(statementId: String, request: Requests.BodyStatementsPatchUpdateOffChrtSettlementStateV1BillingUpdateOffChrtSettlementStateV1StatementIdPatch, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/update_off_chrt_settlement_state/v1/\(statementId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Opens a Stripe Connect invoice for a statement and attempt to send via email. Org must have a Stripe Connect account. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators], statement_status=STAGED, line_item_groups_status=FINALIZED | (OpenInvoiceReq) -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func openInvoiceV1(statementId: String, request: Requests.OpenInvoiceReq, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/open_invoice/v1/\(statementId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Syncs invoice state from Stripe Connect to the Statement and LineItemGroups. The webhook usually keeps invoices up to date, but users can manually trigger a sync. | authz: org_type=[courier, forwarder, shipper], min_org_role=operator, authz_personas=[statement_org_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncInvoiceV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/sync_invoice/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Voids a Stripe Connect invoice. Statement reverts to STAGED and LIGs revert to FINALIZED. | authz: org_type=[courier, forwarder], min_org_role=operator, authz_personas=[statement_owner_operators], statement_status=OPEN | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func voidInvoiceV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/void_invoice/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }
}