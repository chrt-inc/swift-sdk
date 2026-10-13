import Foundation

public final class CharlieClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a LiveKit room with Charlie, CHRT's voice assistant, acting as the caller and returns a token to join it. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (CharlieStartReq) -> (CharlieStartRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.charlie.startV1(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(request: Requests.CharlieStartReq, requestOptions: RequestOptions? = nil) async throws -> CharlieStartRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/charlie/start/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CharlieStartRes.self
        )
    }
}