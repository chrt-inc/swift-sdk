import Foundation

public final class OrderInformationClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a message to an existing order-information conversation for its owner. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (OrderInformationConversationMessageReq) -> (OrderInformationConversationRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func messageV1(conversationId: String, request: Requests.OrderInformationConversationMessageReq, requestOptions: RequestOptions? = nil) async throws -> OrderInformationConversationRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/agent/order_information/message/v1/\(conversationId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderInformationConversationRes.self
        )
    }

    /// Starts an order-information conversation for the authenticated operator. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (OrderInformationConversationStartReq) -> (OrderInformationConversationRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(request: Requests.OrderInformationConversationStartReq, requestOptions: RequestOptions? = nil) async throws -> OrderInformationConversationRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/agent/order_information/start/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderInformationConversationRes.self
        )
    }

    /// Updates an order-information conversation's title for its owner. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (OrderInformationConversationClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(conversationId: String, request: Requests.OrderInformationConversationClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/agent/order_information/update/v1/\(conversationId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}