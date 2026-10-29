import Foundation

public final class AiClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Drafts a rewrite of the caller's text in the requested tone and length, for them to review. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (AIRewriteReq) -> (AIRewriteRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.ai.rewriteV1(request: .init(text: "text"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func rewriteV1(request: Requests.AiRewriteReq, requestOptions: RequestOptions? = nil) async throws -> AiRewriteRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/ai/rewrite/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: AiRewriteRes.self
        )
    }
}