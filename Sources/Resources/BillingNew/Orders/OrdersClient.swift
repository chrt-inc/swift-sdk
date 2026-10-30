import Foundation

public final class OrdersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists completed, unbilled AWBs with delivery account allocations. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderAwbBillingListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.listAwbBillingForCoordinatorOperatorsV1(
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listAwbBillingForCoordinatorOperatorsV1(page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderAwbBillingListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/orders/awb_billing/list/for_coordinator_operators/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderAwbBillingListRes.self
        )
    }

    /// Retrieves what the order was expected to cost the caller organization when it was staged; 404 when nothing was priced then. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (OrderBillingEstimate1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.getEstimateV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getEstimateV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderBillingEstimate1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/orders/estimate/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderBillingEstimate1.self
        )
    }

    /// Lists coordinator orders with billing summaries and optional party-name expansion. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderBillingExpandedListReq) -> (OrderBillingExpandedListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.listExpandedForCoordinatorOperatorsV1(
    ///         sortBy: .draftStartedAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterOrderIds: [
    ///             "filter_order_ids"
    ///         ],
    ///         filterStatus: [
    ///             .draft
    ///         ],
    ///         filterAwbNumber: "filter_awb_number",
    ///         filterShipperOrgId: "filter_shipper_org_id",
    ///         filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
    ///         filterCoordinatorShipperAccountIds: [
    ///             "filter_coordinator_shipper_account_ids"
    ///         ],
    ///         filterExecutorOrgId: "filter_executor_org_id",
    ///         filterOffChrtExecutorOrgDataId: "filter_off_chrt_executor_org_data_id",
    ///         filterCoordinatorLabels: [
    ///             "filter_coordinator_labels"
    ///         ],
    ///         filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastDeliveryTaskCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastDeliveryTaskCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Order lifecycle or last delivery completion timestamp used for sorting.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter search: Full-text search query for order short ID, off-CHRT reference ID, and AWB.
    /// - Parameter filterOrderIds: Filter by selected order ids
    /// - Parameter filterStatus: Filter by one or more order statuses.
    /// - Parameter filterAwbNumber: Filter by an exact order AWB number.
    /// - Parameter filterShipperOrgId: Filter by an on-CHRT shipper organization.
    /// - Parameter filterOffChrtShipperOrgDataId: Filter by an off-CHRT shipper.
    /// - Parameter filterCoordinatorShipperAccountIds: Filter by one or more coordinator shipper accounts.
    /// - Parameter filterExecutorOrgId: Filter by an on-CHRT executor organization.
    /// - Parameter filterOffChrtExecutorOrgDataId: Filter by an off-CHRT executor.
    /// - Parameter filterCoordinatorLabels: Filter by all supplied coordinator labels (exact matches).
    /// - Parameter filterLastDeliveryTaskCompletedAtTimestampGte: Filter by last delivery completion time, inclusive.
    /// - Parameter filterLastDeliveryTaskCompletedAtTimestampLte: Filter by last delivery completion time, inclusive.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listExpandedForCoordinatorOperatorsV1(sortBy: OrderBillingSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterOrderIds: [String]? = nil, filterStatus: [OrderStatusEnum1]? = nil, filterAwbNumber: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgDataId: String? = nil, filterCoordinatorShipperAccountIds: [String]? = nil, filterExecutorOrgId: String? = nil, filterOffChrtExecutorOrgDataId: String? = nil, filterCoordinatorLabels: [String]? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterLastDeliveryTaskCompletedAtTimestampGte: Date? = nil, filterLastDeliveryTaskCompletedAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, request: Requests.OrderBillingExpandedListReq, requestOptions: RequestOptions? = nil) async throws -> OrderBillingExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/orders/expanded/list/for_coordinator_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_order_ids": filterOrderIds.map { .stringArray($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_awb_number": filterAwbNumber.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_data_id": filterOffChrtShipperOrgDataId.map { .string($0) }, 
                "filter_coordinator_shipper_account_ids": filterCoordinatorShipperAccountIds.map { .stringArray($0) }, 
                "filter_executor_org_id": filterExecutorOrgId.map { .string($0) }, 
                "filter_off_chrt_executor_org_data_id": filterOffChrtExecutorOrgDataId.map { .string($0) }, 
                "filter_coordinator_labels": filterCoordinatorLabels.map { .stringArray($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_gte": filterInProgressAtTimestampGte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_lte": filterInProgressAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_last_delivery_task_completed_at_timestamp_gte": filterLastDeliveryTaskCompletedAtTimestampGte.map { .date($0) }, 
                "filter_last_delivery_task_completed_at_timestamp_lte": filterLastDeliveryTaskCompletedAtTimestampLte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_gte": filterCancelledAtTimestampGte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_lte": filterCancelledAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrderBillingExpandedListRes.self
        )
    }

    /// Chooses the rate sheet for one billing relationship on one segment of an order, overriding the default, or marks it not billed (rate_sheet_id null), then re-prices. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderRateSheetSelectionUpdateReq) -> (OrderPricingRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.updateRateSheetSelectionV1(
    ///         orderId: "order_id",
    ///         request: .init(
    ///             relationshipType: .receivable,
    ///             taskGroupId: "task_group_id"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateRateSheetSelectionV1(orderId: String, request: Requests.OrderRateSheetSelectionUpdateReq, requestOptions: RequestOptions? = nil) async throws -> OrderPricingRes {
        return try await httpClient.performRequest(
            method: .put,
            path: "/billing_new/orders/pricing/rate_sheet_selection/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderPricingRes.self
        )
    }

    /// Prices an order (drafts included) for the caller's organization from its rate sheets and syncs the generated line items. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (OrderPricingRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.refreshPricingV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func refreshPricingV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderPricingRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/orders/pricing/refresh/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderPricingRes.self
        )
    }

    /// Sets the surcharges switched on for an order (dangerous goods, equipment, after hours, weekend, holiday), replacing the list, then re-prices. Each applies the rule of the same type on every sheet that prices the order. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderSurchargesUpdateReq) -> (OrderPricingRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.updateSurchargesV1(
    ///         orderId: "order_id",
    ///         request: .init(enabledSurchargeTypes: [
    ///             .equipment
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateSurchargesV1(orderId: String, request: Requests.OrderSurchargesUpdateReq, requestOptions: RequestOptions? = nil) async throws -> OrderPricingRes {
        return try await httpClient.performRequest(
            method: .put,
            path: "/billing_new/orders/pricing/surcharges/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderPricingRes.self
        )
    }

    /// Retrieves the caller organization's rate-sheet selections and generated line items for an order, as last priced. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators] | () -> (OrderPricingRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.getPricingV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPricingV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderPricingRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/orders/pricing/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderPricingRes.self
        )
    }

    /// Regenerates uninvoiced rate-sheet charges per Order, reporting skips and failures. Detach existing charges before regeneration. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators] | (OrderRateSheetLineItemsGenerateManyReq) -> (OrderRateSheetLineItemsGenerateManyRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.generateRateSheetLineItemsManyV1(request: .init(orderIds: [
    ///         "order_ids"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func generateRateSheetLineItemsManyV1(request: Requests.OrderRateSheetLineItemsGenerateManyReq, requestOptions: RequestOptions? = nil) async throws -> OrderRateSheetLineItemsGenerateManyRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/orders/rate_sheet_line_items/generate_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderRateSheetLineItemsGenerateManyRes.self
        )
    }

    /// Estimates current taxes for uninvoiced ordinary charges grouped by counterparty, direction, and currency. Returns an empty list when no charges qualify. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[InvoicePreviewRes])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.orders.taxEstimatesV1(orderId: "order_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxEstimatesV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> [InvoicePreviewRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/orders/tax_estimates/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: [InvoicePreviewRes].self
        )
    }
}