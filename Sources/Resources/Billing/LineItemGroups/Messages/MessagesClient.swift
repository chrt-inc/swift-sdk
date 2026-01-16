import Foundation

public final class MessagesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a message to a line item group's message log. | authz_personas=[lig_org_operators, lig_driver] | (AddLineItemGroupMessageReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(lineItemGroupId: String, request: Requests.AddLineItemGroupMessageReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/messages/add/v1/\(lineItemGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}