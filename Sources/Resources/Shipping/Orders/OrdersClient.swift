import Foundation

public final class OrdersClient: Sendable {
    public let expanded: OrdersExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.expanded = OrdersExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns distinct short_id and off_chrt_reference_id values matching the query via case-insensitive regex. Searches non-draft orders visible to the caller's org. | authz: allowed_org_types=[provider, shipper], min_org_role=operator | () -> (list[OrderTypeaheadResult])
    ///
    /// - Parameter query: Typeahead search query
    /// - Parameter limit: Max results per field
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typeaheadV1(query: String, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [OrderTypeaheadResult] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/orders/typeahead/v1",
            queryParams: [
                "query": .string(query), 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [OrderTypeaheadResult].self
        )
    }

    /// Validates a draft order and stages all related entities in a transaction. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stageV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/stage/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates off_chrt_reference_id on a non-draft order. | authz_personas=[order_creator_org_operators] | (OrdersUpdateOffChrtReferenceIdReq) -> (OrdersUpdateOffChrtReferenceIdRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateOffChrtReferenceIdV1(orderId: String, request: Requests.OrdersUpdateOffChrtReferenceIdReq, requestOptions: RequestOptions? = nil) async throws -> OrdersUpdateOffChrtReferenceIdRes {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/orders/update_off_chrt_reference_id/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersUpdateOffChrtReferenceIdRes.self
        )
    }

    /// Cancels an order and non-terminal child entities in a transaction. | authz_personas=[lig_owner_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/cancel/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Cancels multiple orders and their non-terminal child entities in a transaction. | authz_personas=[lig_owner_operators] | (OrdersCancelManyReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelManyV1(request: Requests.OrdersCancelManyReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/orders/cancel_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}