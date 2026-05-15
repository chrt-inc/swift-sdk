import Foundation

public final class LineItemGroupsClient: Sendable {
    public let messages: MessagesClient
    public let s3Objects: S3ObjectsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.messages = MessagesClient(config: config)
        self.s3Objects = S3ObjectsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a LineItemGroup the caller owns, is a payment counterparty on, or is the destination driver for. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_item_groups/by_id/v1/\(id)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Retrieves all LineItems referenced by a LineItemGroup the caller can access. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroupLineItemsRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getLineItemsV1(lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroupLineItemsRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_item_groups/line_items/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: LineItemGroupLineItemsRes.self
        )
    }

    /// Lists LineItemGroups the caller owns, is a payment counterparty on, or is the destination driver for. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroupListRes)
    ///
    /// - Parameter sortOrder: Sort order on `_id` (proxy for creation order; LIGs have no user-facing timestamps to sort by).
    /// - Parameter filterStatus: Filter by LineItemGroup status(es). Multi-select.
    /// - Parameter filterTaskGroupId: Filter by parent task group id.
    /// - Parameter filterOrderId: Filter by parent order id.
    /// - Parameter filterOrderShortId: Filter by order short id.
    /// - Parameter filterOrderOffChrtReferenceId: Filter by order off-chrt reference id.
    /// - Parameter filterOwnedByOrgId: Filter by owner org id.
    /// - Parameter filterPaymentOriginOrgId: Filter by payment origin org id.
    /// - Parameter filterPaymentDestinationOrgId: Filter by payment destination org id.
    /// - Parameter filterPaymentDestinationDriverId: Filter by payment destination driver id.
    /// - Parameter filterRateSheetId: Filter by source rate sheet id (None for ad-hoc/pro-forma LIGs).
    /// - Parameter filterStatementId: Filter to LineItemGroups bundled into this statement.
    /// - Parameter filterAttachedToStatement: Filter by whether the LineItemGroup is bundled into a statement (`statement_id is not None` if true, `is None` if false). Used by the statement-bundling worklist to find unbundled LIGs.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: LineItemGroupStatusEnum1? = nil, filterTaskGroupId: String? = nil, filterOrderId: String? = nil, filterOrderShortId: String? = nil, filterOrderOffChrtReferenceId: String? = nil, filterOwnedByOrgId: String? = nil, filterPaymentOriginOrgId: String? = nil, filterPaymentDestinationOrgId: String? = nil, filterPaymentDestinationDriverId: String? = nil, filterRateSheetId: String? = nil, filterStatementId: String? = nil, filterAttachedToStatement: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> LineItemGroupListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_item_groups/list/v1",
            queryParams: [
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_task_group_id": filterTaskGroupId.map { .string($0) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_order_short_id": filterOrderShortId.map { .string($0) }, 
                "filter_order_off_chrt_reference_id": filterOrderOffChrtReferenceId.map { .string($0) }, 
                "filter_owned_by_org_id": filterOwnedByOrgId.map { .string($0) }, 
                "filter_payment_origin_org_id": filterPaymentOriginOrgId.map { .string($0) }, 
                "filter_payment_destination_org_id": filterPaymentDestinationOrgId.map { .string($0) }, 
                "filter_payment_destination_driver_id": filterPaymentDestinationDriverId.map { .string($0) }, 
                "filter_rate_sheet_id": filterRateSheetId.map { .string($0) }, 
                "filter_statement_id": filterStatementId.map { .string($0) }, 
                "filter_attached_to_statement": filterAttachedToStatement.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: LineItemGroupListRes.self
        )
    }

    /// Creates a detached ad-hoc LineItemGroup. The LIG is not linked to any TaskGroup at create time — operator follows up with `/shipping/task_groups/attach_lig_to_<vector>/v1` to populate the TG vector link field and the `task_group_id` back-ref together (one txn). | authz: allowed_org_types=[provider, shipper], min_org_role=operator | (LineItemGroupAdHocCreateClientReq) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func adHocCreateV1(request: Requests.LineItemGroupAdHocCreateClientReq, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/ad_hoc/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Appends an owner-direct AD_HOC LineItem to the amendment bucket of a LineItemGroup that has not yet been finalized. The agreement bucket is reserved for the original deal at creation; everything added after lands in amendment. | authz_personas=[lig_org_operators] | (LineItemClientCreate1) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func adHocAddLineItemV1(lineItemGroupId: String, request: LineItemClientCreate1, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/ad_hoc/add_line_item/v1/\(lineItemGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Removes an AD_HOC LineItem from a LineItemGroup that has not yet been finalized. | authz_personas=[lig_org_operators] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func adHocRemoveLineItemV1(lineItemGroupId: String, lineItemId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/line_item_groups/ad_hoc/remove_line_item/v1/\(lineItemGroupId)/\(lineItemId)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Locks a LineItemGroup, transitioning STAGED → FINALIZED. Required precondition for attaching to a Statement. Owner-only. Rejects if the LIG has no items in agreement_line_item_ids ∪ amendment_line_item_ids, or if pending_line_item_ids is non-empty (counterparty proposals must be resolved first). | authz: allowed_org_types=[provider, shipper], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func finalizeV1(lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/finalize/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Counterparty proposes a draft AD_HOC LineItem on a non-FINALIZED LineItemGroup. The item lands in pending_line_item_ids with ad_hoc__status=PENDING; the owner resolves it via approve/deny. Caller must be on the LIG (origin or destination) but not the owner. | authz_personas=[lig_org_operators] | (LineItemClientCreate1) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func proposeLineItemV1(lineItemGroupId: String, request: LineItemClientCreate1, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/propose_line_item/v1/\(lineItemGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Counterparty pulls back their own pending LineItem on a non-FINALIZED LineItemGroup. Only the proposing org can withdraw; the LineItem doc is deleted (no breadcrumb). | authz_personas=[lig_org_operators] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func withdrawLineItemV1(lineItemGroupId: String, lineItemId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/line_item_groups/withdraw_line_item/v1/\(lineItemGroupId)/\(lineItemId)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Owner approves a counterparty-proposed LineItem on a non-FINALIZED LineItemGroup, moving it from pending_line_item_ids to amendment_line_item_ids and stamping ad_hoc__status=APPROVED. The agreement bucket is reserved for the original deal at creation; counterparty additions land in amendment by construction. | authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func approveLineItemV1(lineItemGroupId: String, lineItemId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/approve_line_item/v1/\(lineItemGroupId)/\(lineItemId)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Owner denies a counterparty-proposed LineItem on a non-FINALIZED LineItemGroup, moving it from pending_line_item_ids to denied_line_item_ids and stamping ad_hoc__status=DENIED. | authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func denyLineItemV1(lineItemGroupId: String, lineItemId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/deny_line_item/v1/\(lineItemGroupId)/\(lineItemId)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Owner-only operator cleanup: deletes a STAGED LineItemGroup and cascades. Cascades: (1) deletes every LineItem referenced across the four buckets (agreement / amendment / pending / denied); (2) if the LIG is attached to a parent TaskGroup vector, clears that vector's `_line_item_group_id` and `_rate_sheet_id` (the LIG's `task_group_id` back-ref disappears with the LIG itself). Refuses if the LIG is already attached to a Statement (defense-in-depth — should be unreachable since attach requires FINALIZED). FINALIZED-or-beyond LIGs cannot be deleted (audit records). | authz_personas=[lig_owner_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/line_item_groups/delete/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Atomically materialises a STAGED LineItemGroup from a rate sheet AND attaches it to the SPP vector of the named TaskGroup (one transaction; both sides of the LIG ↔ TG link populated together). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. Rejects if the SPP vector already has a LIG attached, or if a billing ledger period is attached (rate-sheet/ledger exclusivity). | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (CreateLigFromRateSheetForVectorClientReq) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func fromRateSheetCreateForShipperPayProviderV1(request: CreateLigFromRateSheetForVectorClientReq, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/from_rate_sheet/create_for_shipper_pay_provider/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Atomically materialises a STAGED LineItemGroup from a rate sheet AND attaches it to the PPP vector of the named TaskGroup (one transaction; both sides of the LIG ↔ TG link populated together). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. Rejects if the PPP vector already has a LIG attached, or if a billing ledger period is attached (rate-sheet/ledger exclusivity). | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (CreateLigFromRateSheetForVectorClientReq) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func fromRateSheetCreateForProviderPayProviderV1(request: CreateLigFromRateSheetForVectorClientReq, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/from_rate_sheet/create_for_provider_pay_provider/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Atomically materialises a STAGED LineItemGroup from a rate sheet AND attaches it to the PPD vector of the named TaskGroup (one transaction; both sides of the LIG ↔ TG link populated together). Auto-resolves the rate sheet via RateSheetMapping1 unless body.rate_sheet_id is provided. Rejects if the PPD vector already has a LIG attached, or if a billing ledger period is attached (rate-sheet/ledger exclusivity). | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | (CreateLigFromRateSheetForVectorClientReq) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func fromRateSheetCreateForProviderPayDriverV1(request: CreateLigFromRateSheetForVectorClientReq, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/from_rate_sheet/create_for_provider_pay_driver/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }
}