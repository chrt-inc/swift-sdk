import Foundation

public final class ExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves an expanded order for a provider org that is the coordinator, an executor, or both. Executor-only callers receive only their task groups. Drafts are visible only to operators in the creating provider org; coordinator responses include unassigned_cargos when expand_cargos is requested. | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpandedForProvider)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.expanded.forProviderOperatorsV1(
    ///         orderRef: "order_ref",
    ///         request: OrderAndTaskGroupExpandedReq(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forProviderOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpandedForProvider {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/for_provider_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpandedForProvider.self
        )
    }

    /// Retrieves an expanded order with optional related data for shipper operators. Drafts are visible only to operators in the creating shipper org; when expand_cargos is requested, the response includes unassigned_cargos. | authz_personas=[shipper_org_operators] | (OrderAndTaskGroupExpandedReq) -> (OrderExpandedForShipper)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.expanded.forShipperOperatorsV1(
    ///         orderRef: "order_ref",
    ///         request: OrderAndTaskGroupExpandedReq(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter orderRef: Order ID, short ID, or off-chrt reference ID
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forShipperOperatorsV1(orderRef: String, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderExpandedForShipper {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/for_shipper_operators/v1/\(orderRef)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderExpandedForShipper.self
        )
    }

    /// Lists expanded orders where the caller's provider org is the coordinator, an executor, or both. Each order appears once with role-filtered task-group details. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListForProviderRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.expanded.listForProviderOperatorsV1(
    ///         providerRole: .all,
    ///         sortBy: .draftStartedAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterStatus: [
    ///             .draft
    ///         ],
    ///         filterServiceLine: [
    ///             .onDemand
    ///         ],
    ///         filterOrderClassificationByTaskGroupType: [
    ///             .chrtGroundProvider
    ///         ],
    ///         filterAwbNumber: "filter_awb_number",
    ///         filterHasInvoice: true,
    ///         filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterExecutorOrgId: "filter_executor_org_id",
    ///         filterExecutorDepartmentId: "filter_executor_department_id",
    ///         filterOffChrtExecutorOrgDataId: "filter_off_chrt_executor_org_data_id",
    ///         filterCoordinatorOrgId: "filter_coordinator_org_id",
    ///         filterShipperOrgId: "filter_shipper_org_id",
    ///         filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
    ///         filterCoordinatorShipperAccountIds: [
    ///             "filter_coordinator_shipper_account_ids"
    ///         ],
    ///         filterCoordinatorDepartmentId: "filter_coordinator_department_id",
    ///         filterCoordinatorAssignedUserIds: [
    ///             "filter_coordinator_assigned_user_ids"
    ///         ],
    ///         filterCoordinatorLabel: "filter_coordinator_label",
    ///         request: OrderAndTaskGroupExpandedReq(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short ID, off-CHRT reference ID, and AWB)
    /// - Parameter filterServiceLine: Filter by service line
    /// - Parameter filterOrderClassificationByTaskGroupType: Filter by global order classification (OBC takes precedence over flight, then ground)
    /// - Parameter filterAwbNumber: Filter by exact AWB number
    /// - Parameter filterHasInvoice: Filter by whether the order has any invoice
    /// - Parameter filterExecutorDepartmentId: Filter by executor department ID
    /// - Parameter filterOffChrtExecutorOrgDataId: Filter by off-CHRT executor org data ID
    /// - Parameter filterCoordinatorShipperAccountIds: Filter by coordinator shipper account IDs
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForProviderOperatorsV1(providerRole: OrderProviderRoleFilterEnum? = nil, sortBy: OrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: [OrderStatusEnum1]? = nil, filterServiceLine: [ServiceLineEnum]? = nil, filterOrderClassificationByTaskGroupType: [TaskGroupTypeEnum1]? = nil, filterAwbNumber: String? = nil, filterHasInvoice: Bool? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterExecutorOrgId: String? = nil, filterExecutorDepartmentId: String? = nil, filterOffChrtExecutorOrgDataId: String? = nil, filterCoordinatorOrgId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgDataId: String? = nil, filterCoordinatorShipperAccountIds: [String]? = nil, filterCoordinatorDepartmentId: String? = nil, filterCoordinatorAssignedUserIds: [String]? = nil, filterCoordinatorLabel: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListForProviderRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/list/for_provider_operators/v1",
            queryParams: [
                "provider_role": providerRole.map { .string($0.rawValue) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_service_line": filterServiceLine.map { .unknown($0) }, 
                "filter_order_classification_by_task_group_type": filterOrderClassificationByTaskGroupType.map { .unknown($0) }, 
                "filter_awb_number": filterAwbNumber.map { .string($0) }, 
                "filter_has_invoice": filterHasInvoice.map { .bool($0) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_lte": filterInProgressAtTimestampLte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_gte": filterInProgressAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_lte": filterCancelledAtTimestampLte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_gte": filterCancelledAtTimestampGte.map { .date($0) }, 
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_executor_org_id": filterExecutorOrgId.map { .string($0) }, 
                "filter_executor_department_id": filterExecutorDepartmentId.map { .string($0) }, 
                "filter_off_chrt_executor_org_data_id": filterOffChrtExecutorOrgDataId.map { .string($0) }, 
                "filter_coordinator_org_id": filterCoordinatorOrgId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_data_id": filterOffChrtShipperOrgDataId.map { .string($0) }, 
                "filter_coordinator_shipper_account_ids": filterCoordinatorShipperAccountIds.map { .stringArray($0) }, 
                "filter_coordinator_department_id": filterCoordinatorDepartmentId.map { .string($0) }, 
                "filter_coordinator_assigned_user_ids": filterCoordinatorAssignedUserIds.map { .stringArray($0) }, 
                "filter_coordinator_label": filterCoordinatorLabel.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListForProviderRes.self
        )
    }

    /// Lists expanded orders for shipper operators with filtering, sorting, pagination, and optional search. | authz: allowed_org_types=[shipper], min_org_role=operator | (OrderAndTaskGroupExpandedReq) -> (OrdersExpandedListForShipperRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.expanded.listForShipperOperatorsV1(
    ///         sortBy: .draftStartedAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterStatus: [
    ///             .draft
    ///         ],
    ///         filterServiceLine: [
    ///             .onDemand
    ///         ],
    ///         filterOrderClassificationByTaskGroupType: [
    ///             .chrtGroundProvider
    ///         ],
    ///         filterAwbNumber: "filter_awb_number",
    ///         filterHasInvoice: true,
    ///         filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterExecutorOrgId: "filter_executor_org_id",
    ///         filterCoordinatorOrgId: "filter_coordinator_org_id",
    ///         request: OrderAndTaskGroupExpandedReq(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter search: Full-text search query (searches order short ID, off-CHRT reference ID, and AWB)
    /// - Parameter filterServiceLine: Filter by service line
    /// - Parameter filterOrderClassificationByTaskGroupType: Filter by global order classification (OBC takes precedence over flight, then ground)
    /// - Parameter filterAwbNumber: Filter by exact AWB number
    /// - Parameter filterHasInvoice: Filter by whether the order has any invoice
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForShipperOperatorsV1(sortBy: OrderSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterStatus: [OrderStatusEnum1]? = nil, filterServiceLine: [ServiceLineEnum]? = nil, filterOrderClassificationByTaskGroupType: [TaskGroupTypeEnum1]? = nil, filterAwbNumber: String? = nil, filterHasInvoice: Bool? = nil, filterDraftStartedAtTimestampLte: Date? = nil, filterDraftStartedAtTimestampGte: Date? = nil, filterStagedAtTimestampLte: Date? = nil, filterStagedAtTimestampGte: Date? = nil, filterInProgressAtTimestampLte: Date? = nil, filterInProgressAtTimestampGte: Date? = nil, filterCompletedAtTimestampLte: Date? = nil, filterCompletedAtTimestampGte: Date? = nil, filterCancelledAtTimestampLte: Date? = nil, filterCancelledAtTimestampGte: Date? = nil, filterExceptionAtTimestampLte: Date? = nil, filterExceptionAtTimestampGte: Date? = nil, filterExecutorOrgId: String? = nil, filterCoordinatorOrgId: String? = nil, request: OrderAndTaskGroupExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrdersExpandedListForShipperRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/expanded/list/for_shipper_operators/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "filter_service_line": filterServiceLine.map { .unknown($0) }, 
                "filter_order_classification_by_task_group_type": filterOrderClassificationByTaskGroupType.map { .unknown($0) }, 
                "filter_awb_number": filterAwbNumber.map { .string($0) }, 
                "filter_has_invoice": filterHasInvoice.map { .bool($0) }, 
                "filter_draft_started_at_timestamp_lte": filterDraftStartedAtTimestampLte.map { .date($0) }, 
                "filter_draft_started_at_timestamp_gte": filterDraftStartedAtTimestampGte.map { .date($0) }, 
                "filter_staged_at_timestamp_lte": filterStagedAtTimestampLte.map { .date($0) }, 
                "filter_staged_at_timestamp_gte": filterStagedAtTimestampGte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_lte": filterInProgressAtTimestampLte.map { .date($0) }, 
                "filter_in_progress_at_timestamp_gte": filterInProgressAtTimestampGte.map { .date($0) }, 
                "filter_completed_at_timestamp_lte": filterCompletedAtTimestampLte.map { .date($0) }, 
                "filter_completed_at_timestamp_gte": filterCompletedAtTimestampGte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_lte": filterCancelledAtTimestampLte.map { .date($0) }, 
                "filter_cancelled_at_timestamp_gte": filterCancelledAtTimestampGte.map { .date($0) }, 
                "filter_exception_at_timestamp_lte": filterExceptionAtTimestampLte.map { .date($0) }, 
                "filter_exception_at_timestamp_gte": filterExceptionAtTimestampGte.map { .date($0) }, 
                "filter_executor_org_id": filterExecutorOrgId.map { .string($0) }, 
                "filter_coordinator_org_id": filterCoordinatorOrgId.map { .string($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersExpandedListForShipperRes.self
        )
    }
}