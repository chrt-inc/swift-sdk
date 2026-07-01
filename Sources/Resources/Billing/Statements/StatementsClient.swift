import Foundation

public final class StatementsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Attaches a CLOSED, unbundled BillingLedgerPeriod to a STAGED Statement. Parties must match. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachBillingLedgerPeriodV1(statementId: String, billingLedgerPeriodId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/attach_billing_ledger_period/v1/\(statementId)/\(billingLedgerPeriodId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Attaches a FINALIZED, unbundled LineItemGroup to a STAGED Statement. Parties must match; the Statement's settlement_type is written onto the LIG (or matched if previously stamped). | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachLineItemGroupV1(statementId: String, lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/attach_line_item_group/v1/\(statementId)/\(lineItemGroupId)",
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
            path: "/billing/statements/by_lig_id/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Creates an empty STAGED Statement carrying payment parties + settlement_type. Items are attached via the attach_* routes. | authz: allowed_org_types=[provider], min_org_role=operator | (StatementCreateClientReq) -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.StatementCreateClientReq, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Deletes a STAGED Statement that has no attached LineItemGroups or BillingLedgerPeriods. Detach all children first via the detach_* routes. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/statements/delete/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Detaches a BillingLedgerPeriod from a STAGED Statement, freeing it for re-bundling. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detachBillingLedgerPeriodV1(statementId: String, billingLedgerPeriodId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/statements/detach_billing_ledger_period/v1/\(statementId)/\(billingLedgerPeriodId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Detaches a LineItemGroup from a STAGED Statement and recomputes order denormalization. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detachLineItemGroupV1(statementId: String, lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/statements/detach_line_item_group/v1/\(statementId)/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Lists statements with expanded LIGs and task groups, using filtering, sorting, and pagination. | authz_personas=[statement_org_operators, statement_driver] | () -> (StatementsExpandedListRes)
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (ascending or descending)
    /// - Parameter filterStatus: Filter by statement status(es)
    /// - Parameter filterSettlementType: Filter by settlement type
    /// - Parameter filterOrderId: [DEPRECATED — use filter_order_short_id] Filter by order ID (returns statements whose order_ids list contains this value)
    /// - Parameter filterOrderShortId: Filter by order short ID (returns statements whose order_short_ids list contains this value)
    /// - Parameter filterOrderOffChrtReferenceId: Filter by order off-chrt reference ID (returns statements whose order_off_chrt_reference_ids list contains this value)
    /// - Parameter filterPaymentOriginOrgId: Filter by payment origin org ID
    /// - Parameter filterPaymentOriginOffChrtShipperOrgId: Filter by payment origin off-chrt shipper org ID
    /// - Parameter filterPaymentDestinationOrgId: Filter by payment destination org ID
    /// - Parameter filterOwnedByOrgId: Filter by owned by org ID
    /// - Parameter filterStagedAtTimestampGte: Filter by staged_at_timestamp >= value
    /// - Parameter filterStagedAtTimestampLte: Filter by staged_at_timestamp <= value
    /// - Parameter filterOpenedAtTimestampGte: Filter by opened_at_timestamp >= value
    /// - Parameter filterOpenedAtTimestampLte: Filter by opened_at_timestamp <= value
    /// - Parameter filterPaidAtTimestampGte: Filter by paid_at_timestamp >= value
    /// - Parameter filterPaidAtTimestampLte: Filter by paid_at_timestamp <= value
    /// - Parameter filterUncollectibleAtTimestampGte: Filter by uncollectible_at_timestamp >= value
    /// - Parameter filterUncollectibleAtTimestampLte: Filter by uncollectible_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func expandedListV1(sortBy: StatementSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: StatementStatusEnum1? = nil, filterSettlementType: SettlementTypeEnum1? = nil, filterOrderId: String? = nil, filterOrderShortId: String? = nil, filterOrderOffChrtReferenceId: String? = nil, filterPaymentOriginOrgId: String? = nil, filterPaymentOriginOffChrtShipperOrgId: String? = nil, filterPaymentDestinationOrgId: String? = nil, filterOwnedByOrgId: String? = nil, filterStagedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterOpenedAtTimestampGte: Date? = nil, filterOpenedAtTimestampLte: Date? = nil, filterPaidAtTimestampGte: Date? = nil, filterPaidAtTimestampLte: Date? = nil, filterUncollectibleAtTimestampGte: Date? = nil, filterUncollectibleAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> StatementsExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/expanded/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_settlement_type": filterSettlementType.map { .string($0.rawValue) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_order_short_id": filterOrderShortId.map { .string($0) }, 
                "filter_order_off_chrt_reference_id": filterOrderOffChrtReferenceId.map { .string($0) }, 
                "filter_payment_origin_org_id": filterPaymentOriginOrgId.map { .string($0) }, 
                "filter_payment_origin_off_chrt_shipper_org_id": filterPaymentOriginOffChrtShipperOrgId.map { .string($0) }, 
                "filter_payment_destination_org_id": filterPaymentDestinationOrgId.map { .string($0) }, 
                "filter_owned_by_org_id": filterOwnedByOrgId.map { .string($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_opened_at_timestamp_gte": filterOpenedAtTimestampGte.map { .date($0) }, 
                "filter_opened_at_timestamp_lte": filterOpenedAtTimestampLte.map { .date($0) }, 
                "filter_paid_at_timestamp_gte": filterPaidAtTimestampGte.map { .date($0) }, 
                "filter_paid_at_timestamp_lte": filterPaidAtTimestampLte.map { .date($0) }, 
                "filter_uncollectible_at_timestamp_gte": filterUncollectibleAtTimestampGte.map { .date($0) }, 
                "filter_uncollectible_at_timestamp_lte": filterUncollectibleAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: StatementsExpandedListRes.self
        )
    }

    /// Retrieves a statement with its associated LineItemGroups expanded. | authz_personas=[statement_org_operators, statement_driver] | (StatementExpandedRetrieveReq) -> (StatementExpandedRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func expandedRetrieveV1(request: Requests.StatementExpandedRetrieveReq, requestOptions: RequestOptions? = nil) async throws -> StatementExpandedRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/expanded/retrieve/v1",
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
    /// - Parameter filterOrderId: [DEPRECATED — use filter_order_short_id] Filter by order ID (returns statements whose order_ids list contains this value)
    /// - Parameter filterOrderShortId: Filter by order short ID (returns statements whose order_short_ids list contains this value)
    /// - Parameter filterOrderOffChrtReferenceId: Filter by order off-chrt reference ID (returns statements whose order_off_chrt_reference_ids list contains this value)
    /// - Parameter filterPaymentOriginOrgId: Filter by payment origin org ID
    /// - Parameter filterPaymentOriginOffChrtShipperOrgId: Filter by payment origin off-chrt shipper org ID
    /// - Parameter filterPaymentDestinationOrgId: Filter by payment destination org ID
    /// - Parameter filterOwnedByOrgId: Filter by owned by org ID
    /// - Parameter filterStagedAtTimestampGte: Filter by staged_at_timestamp >= value
    /// - Parameter filterStagedAtTimestampLte: Filter by staged_at_timestamp <= value
    /// - Parameter filterOpenedAtTimestampGte: Filter by opened_at_timestamp >= value
    /// - Parameter filterOpenedAtTimestampLte: Filter by opened_at_timestamp <= value
    /// - Parameter filterPaidAtTimestampGte: Filter by paid_at_timestamp >= value
    /// - Parameter filterPaidAtTimestampLte: Filter by paid_at_timestamp <= value
    /// - Parameter filterUncollectibleAtTimestampGte: Filter by uncollectible_at_timestamp >= value
    /// - Parameter filterUncollectibleAtTimestampLte: Filter by uncollectible_at_timestamp <= value
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: StatementSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: StatementStatusEnum1? = nil, filterSettlementType: SettlementTypeEnum1? = nil, filterOrderId: String? = nil, filterOrderShortId: String? = nil, filterOrderOffChrtReferenceId: String? = nil, filterPaymentOriginOrgId: String? = nil, filterPaymentOriginOffChrtShipperOrgId: String? = nil, filterPaymentDestinationOrgId: String? = nil, filterOwnedByOrgId: String? = nil, filterStagedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterOpenedAtTimestampGte: Date? = nil, filterOpenedAtTimestampLte: Date? = nil, filterPaidAtTimestampGte: Date? = nil, filterPaidAtTimestampLte: Date? = nil, filterUncollectibleAtTimestampGte: Date? = nil, filterUncollectibleAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> StatementsListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/statements/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_settlement_type": filterSettlementType.map { .string($0.rawValue) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_order_short_id": filterOrderShortId.map { .string($0) }, 
                "filter_order_off_chrt_reference_id": filterOrderOffChrtReferenceId.map { .string($0) }, 
                "filter_payment_origin_org_id": filterPaymentOriginOrgId.map { .string($0) }, 
                "filter_payment_origin_off_chrt_shipper_org_id": filterPaymentOriginOffChrtShipperOrgId.map { .string($0) }, 
                "filter_payment_destination_org_id": filterPaymentDestinationOrgId.map { .string($0) }, 
                "filter_owned_by_org_id": filterOwnedByOrgId.map { .string($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_opened_at_timestamp_gte": filterOpenedAtTimestampGte.map { .date($0) }, 
                "filter_opened_at_timestamp_lte": filterOpenedAtTimestampLte.map { .date($0) }, 
                "filter_paid_at_timestamp_gte": filterPaidAtTimestampGte.map { .date($0) }, 
                "filter_paid_at_timestamp_lte": filterPaidAtTimestampLte.map { .date($0) }, 
                "filter_uncollectible_at_timestamp_gte": filterUncollectibleAtTimestampGte.map { .date($0) }, 
                "filter_uncollectible_at_timestamp_lte": filterUncollectibleAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: StatementsListRes.self
        )
    }

    /// Off-chrt manual transition: OPEN → PAID. Cascades attached LineItemGroups OPEN → PAID. Stripe-Connect statements transition via Stripe webhook + sync, not this route. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func markPaidOffChrtV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/mark_paid_off_chrt/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Off-chrt manual write-off: OPEN → UNCOLLECTIBLE. Cascades attached LineItemGroups OPEN → UNCOLLECTIBLE. Stripe-Connect statements transition via Stripe webhook + sync_invoice/v1, not this route. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func markUncollectibleOffChrtV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/mark_uncollectible_off_chrt/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Stripe-Connect transition: STAGED → OPEN. Creates and finalizes a Stripe invoice for the Statement; cascades attached LineItemGroups FINALIZED → OPEN. Requires settlement_type=STRIPE_CONNECT and at least one bundled FINALIZED LIG. Off-chrt statements take open_off_chrt/v1 instead. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func openInvoiceV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/open_invoice/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Off-chrt manual transition: STAGED → OPEN. Cascades attached LineItemGroups FINALIZED → OPEN. Stripe-Connect statements take a separate Stripe-invoice path. Requires settlement_type=OFF_CHRT and at least one bundled LIG or period. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func openOffChrtV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/open_off_chrt/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Stripe-Connect manual reconciliation: pulls the live Stripe invoice status and updates the Statement (and cascaded LIG statuses) accordingly. Same backend as the Stripe webhook handler — idempotent, no-op when already in sync. Handles PAID, UNCOLLECTIBLE, and VOID/DELETED transitions. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncInvoiceV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/sync_invoice/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Flips a STAGED Statement's settlement_type between STRIPE_CONNECT and OFF_CHRT and cascades the new value onto every attached LineItemGroup. Rejects if the new value matches the current value. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | (StatementUpdateSettlementTypeReq) -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateSettlementTypeV1(statementId: String, request: Requests.StatementUpdateSettlementTypeReq, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/update_settlement_type/v1/\(statementId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Gets a statement by ID. | authz_personas=[statement_org_operators, statement_driver] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/statements/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }

    /// Stripe-Connect transition: OPEN → STAGED. Voids the Stripe invoice, clears stripe_* fields on the Statement, and cascades attached LineItemGroups OPEN → FINALIZED so they remain re-bundleable into a new Statement. Reversible — the Statement can be re-opened with a fresh open_invoice/v1. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[statement_owner_operators] | () -> (Statement1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func voidInvoiceV1(statementId: String, requestOptions: RequestOptions? = nil) async throws -> Statement1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/statements/void_invoice/v1/\(statementId)",
            requestOptions: requestOptions,
            responseType: Statement1.self
        )
    }
}