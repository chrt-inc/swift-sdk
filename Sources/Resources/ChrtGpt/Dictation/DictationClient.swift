import Foundation

public final class DictationClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Starts a live dictation room whose agent transcribes the caller's speech as they talk, and returns a token to join it. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | () -> (ChrtGPTDictationStartRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.dictation.startV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(requestOptions: RequestOptions? = nil) async throws -> ChrtGptDictationStartRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/chrt_gpt/dictation/start/v1",
            requestOptions: requestOptions,
            responseType: ChrtGptDictationStartRes.self
        )
    }
}