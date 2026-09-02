import Foundation

public final class OrdersClient: Sendable {
    public let rateSheetLineItems: RateSheetLineItemsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.rateSheetLineItems = RateSheetLineItemsClient(config: config)
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
    ///         filterCoordinatorLabel: "filter_coordinator_label",
    ///         filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
    /// - Parameter sortBy: Order lifecycle timestamp used for sorting.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter search: Full-text search query for order short ID, off-CHRT reference ID, and AWB.
    /// - Parameter filterStatus: Filter by one or more order statuses.
    /// - Parameter filterAwbNumber: Filter by an exact order AWB number.
    /// - Parameter filterShipperOrgId: Filter by an on-CHRT shipper organization.
    /// - Parameter filterOffChrtShipperOrgDataId: Filter by an off-CHRT shipper.
    /// - Parameter filterCoordinatorShipperAccountIds: Filter by one or more coordinator shipper accounts.
    /// - Parameter filterExecutorOrgId: Filter by an on-CHRT executor organization.
    /// - Parameter filterOffChrtExecutorOrgDataId: Filter by an off-CHRT executor.
    /// - Parameter filterCoordinatorLabel: Filter by an exact coordinator label.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listExpandedForCoordinatorOperatorsV1(sortBy: OrderBillingSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: [OrderStatusEnum1]? = nil, filterAwbNumber: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgDataId: String? = nil, filterCoordinatorShipperAccountIds: [String]? = nil, filterExecutorOrgId: String? = nil, filterOffChrtExecutorOrgDataId: String? = nil, filterCoordinatorLabel: String? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, request: Requests.OrderBillingExpandedListReq, requestOptions: RequestOptions? = nil) async throws -> OrderBillingExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/orders/expanded/list/for_coordinator_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_awb_number": filterAwbNumber.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_data_id": filterOffChrtShipperOrgDataId.map { .string($0) }, 
                "filter_coordinator_shipper_account_ids": filterCoordinatorShipperAccountIds.map { .stringArray($0) }, 
                "filter_executor_org_id": filterExecutorOrgId.map { .string($0) }, 
                "filter_off_chrt_executor_org_data_id": filterOffChrtExecutorOrgDataId.map { .string($0) }, 
                "filter_coordinator_label": filterCoordinatorLabel.map { .string($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_gte": filterInProgressAtTimestampGte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_lte": filterInProgressAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
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
}