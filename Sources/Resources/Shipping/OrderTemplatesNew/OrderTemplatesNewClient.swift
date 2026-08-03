import Foundation

public final class OrderTemplatesNewClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Validates a natural-language date string and resolves it to a UTC timestamp. | authz: min_org_role=operator | (OrderTemplateNewDateparserResolveReq) -> (OrderTemplateNewDateparserResolveRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func resolveDateparserV1(request: Requests.OrderTemplateNewDateparserResolveReq, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNewDateparserResolveRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/dateparser/resolve/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNewDateparserResolveRes.self
        )
    }

    /// Lists order templates for the caller's organization with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (OrderTemplateNewListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterOwnedByUserId: Filter by the user that created the template.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OrderTemplateNewSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterOwnedByUserId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNewListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_templates_new/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_owned_by_user_id": filterOwnedByUserId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderTemplateNewListRes.self
        )
    }

    /// Updates an order template owned by the caller's organization. | authz: min_org_role=operator | (OrderTemplateNewClientUpdate1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(orderTemplateId: String, request: Requests.OrderTemplateNewClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_templates_new/update/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Creates an order template owned by the caller's organization. | authz: min_org_role=operator | (OrderTemplateNewClientCreate1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OrderTemplateNewClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Retrieves an order template by ID. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_templates_new/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Deletes an order template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_templates_new/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}