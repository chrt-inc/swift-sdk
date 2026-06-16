import Foundation

public final class OrderGroupsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists order groups for the caller's organization with filtering, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderGroupListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterOrderId: Filter to groups containing this order id.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OrderGroupSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterOrderId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderGroupListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_groups/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderGroupListRes.self
        )
    }

    /// Retrieves an order group by ID. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(orderGroupId: String, requestOptions: RequestOptions? = nil) async throws -> OrderGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_groups/v1/\(orderGroupId)",
            requestOptions: requestOptions,
            responseType: OrderGroup1.self
        )
    }

    /// Creates an order group owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderGroupClientCreate1) -> (OrderGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func newV1(request: Requests.OrderGroupClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrderGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_groups/new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderGroup1.self
        )
    }

    /// Updates an order group's name or description. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderGroupClientUpdate1) -> (OrderGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(orderGroupId: String, request: Requests.OrderGroupClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> OrderGroup1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_groups/update/v1/\(orderGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderGroup1.self
        )
    }

    /// Adds an order to an order group. The caller's org must be the coordinator or an executor on the order, and the order must not already belong to another of the caller's groups. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addOrderV1(orderGroupId: String, orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_groups/add_order/v1/\(orderGroupId)/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderGroup1.self
        )
    }

    /// Removes an order from an order group. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrderGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeOrderV1(orderGroupId: String, orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderGroup1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_groups/remove_order/v1/\(orderGroupId)/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderGroup1.self
        )
    }

    /// Sets the order group's operator billing-review status. | authz: allowed_org_types=[provider], min_org_role=operator | (OrderGroupSetBillingReviewStatusReq) -> (OrderGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setBillingReviewStatusV1(orderGroupId: String, request: Requests.OrderGroupSetBillingReviewStatusReq, requestOptions: RequestOptions? = nil) async throws -> OrderGroup1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_groups/set_billing_review_status/v1/\(orderGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderGroup1.self
        )
    }
}