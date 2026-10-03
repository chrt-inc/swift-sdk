import Foundation

public final class HelloWorldClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a LiveKit room token that also dispatches the hello-world voice agent into the room. | () -> (LiveKitHelloWorldStartRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.agent.livekit.helloWorld.startV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(requestOptions: RequestOptions? = nil) async throws -> LiveKitHelloWorldStartRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/agent/livekit/hello_world/start/v1",
            requestOptions: requestOptions,
            responseType: LiveKitHelloWorldStartRes.self
        )
    }
}