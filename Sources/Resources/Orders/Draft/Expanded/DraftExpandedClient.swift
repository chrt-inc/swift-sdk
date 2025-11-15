import Foundation

public final class DraftExpandedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches a single draft order with optional expanded related data. Only the creator of the draft order can access it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postExpandedV1(orderIdOrShortId: String, request: Requests.OrderDraftExpandedReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpandedRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/draft/expanded/v1/\(orderIdOrShortId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpandedRes.self
        )
    }

    /// Lists all draft orders created by the authenticated user with optional expanded related data.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postExpandedListV1(request: Requests.OrderDraftExpandedListReq, requestOptions: RequestOptions? = nil) async throws -> OrderDraftExpandedListRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/orders/draft/expanded/list/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderDraftExpandedListRes.self
        )
    }
}