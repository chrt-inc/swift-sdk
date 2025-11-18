import Foundation

public final class OrderDraftsClient: Sendable {
    public let taskGroup: TaskGroupClient
    public let task: TaskClient
    public let taskArtifact: TaskArtifactClient
    public let cargo: CargoClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.taskGroup = TaskGroupClient(config: config)
        self.task = TaskClient(config: config)
        self.taskArtifact = TaskArtifactClient(config: config)
        self.cargo = CargoClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a new draft order with org assignments based on caller's organization type.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func newV1(request: Requests.OrdersNewDraftReq, requestOptions: RequestOptions? = nil) async throws -> OrdersNewDraftRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersNewDraftRes.self
        )
    }

    /// Updates forwarder and/or shipper org assignments for a draft order
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.OrdersDraftUpdateReq, requestOptions: RequestOptions? = nil) async throws -> OrdersDraftUpdateRes {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/order_drafts/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersDraftUpdateRes.self
        )
    }

    /// Deletes a draft order and all associated entities
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/order_drafts/delete/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Fetches a single draft order with optional expanded related data. Only the creator of the draft order can access it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func expandedV1(orderIdOrShortId: String, request: Requests.OrderDraftExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpandedRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/expanded/v1/\(orderIdOrShortId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpandedRes.self
        )
    }

    /// Lists all draft orders created by the authenticated user with optional expanded related data.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func expandedListV1(request: Requests.OrderDraftExpandedListReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/expanded/list/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpandedListRes.self
        )
    }

    /// Checks whether the draft order satisfies all requirements to move into staging.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func validateV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/order_drafts/validate/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}