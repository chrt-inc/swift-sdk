import Foundation

public final class VoiceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a LiveKit room with a ChrtGPT voice agent acting as the caller, using the chosen delegation, and returns a token to join it. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (ChrtGPTVoiceStartReq) -> (ChrtGPTVoiceStartRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.voice.startV1(request: .init(delegation: .responses))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(request: Requests.ChrtGptVoiceStartReq, requestOptions: RequestOptions? = nil) async throws -> ChrtGptVoiceStartRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/chrt_gpt/voice/start/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: ChrtGptVoiceStartRes.self
        )
    }
}