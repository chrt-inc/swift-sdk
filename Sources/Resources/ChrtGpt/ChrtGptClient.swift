import Foundation

public final class ChrtGptClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Sends a message to ChrtGPT and returns its reply, starting a new conversation when no conversation_id is given. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (ChrtGPTMessageReq) -> (ChrtGPTMessageRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.messageV1(request: .init(message: "message"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func messageV1(request: Requests.ChrtGptMessageReq, requestOptions: RequestOptions? = nil) async throws -> ChrtGptMessageRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/chrt_gpt/message/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: ChrtGptMessageRes.self
        )
    }
}