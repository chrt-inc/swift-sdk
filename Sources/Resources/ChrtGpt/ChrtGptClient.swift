import Foundation

public final class ChrtGptClient: Sendable {
    public let conversations: ConversationsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.conversations = ConversationsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Sends a message to ChrtGPT and streams its reply, starting a new conversation when no conversation_id is given. In the background, retitles the conversation after each of its first 3 turns and updates its summary and order identifiers after every turn. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (ChrtGPTReq) -> (stream[ChrtGPTEvent])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.postV1(request: .init(message: "message"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1(request: Requests.ChrtGptReq, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/chrt_gpt/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }
}