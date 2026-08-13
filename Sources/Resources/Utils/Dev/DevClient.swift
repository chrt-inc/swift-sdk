import Foundation

public final class DevClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Runs the Pydantic AI Temporal geography sample workflow and returns the response. | (GeographyReq) -> (GeographyRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.postAgentGeographyV1(request: .init(prompt: "prompt"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postAgentGeographyV1(request: Requests.GeographyReq, requestOptions: RequestOptions? = nil) async throws -> GeographyRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/dev/agent/geography/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: GeographyRes.self
        )
    }

    /// Runs a minimal Temporal workflow that sends a prompt to OpenAI and returns the response. | (PingOpenAIReq) -> (PingOpenAIRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.postAgentOpenaiPingV1(request: .init(prompt: "prompt"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postAgentOpenaiPingV1(request: Requests.PingOpenAiReq, requestOptions: RequestOptions? = nil) async throws -> PingOpenAiRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/dev/agent/openai/ping/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: PingOpenAiRes.self
        )
    }

    /// Runs a lightweight Temporal workflow and activity round trip for developer diagnostics. | (PingReq) -> (PingRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.postAgentPingV1(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postAgentPingV1(request: Requests.PingReq, requestOptions: RequestOptions? = nil) async throws -> PingRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/dev/agent/ping/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: PingRes.self
        )
    }

    /// Returns the verified caller identity and raw credential claims for development purposes. | () -> (CredentialInfoRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.getCredentialInfoV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getCredentialInfoV1(requestOptions: RequestOptions? = nil) async throws -> CredentialInfoRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/credential_info/v1",
            requestOptions: requestOptions,
            responseType: CredentialInfoRes.self
        )
    }

    /// Retrieves the primary email address for the caller from the authentication service. | () -> (str)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.getEmailV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getEmailV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/email/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Returns the current GitHub PR number and commit hash for the deployment. | () -> (dict[str, str])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.getGitInfoV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getGitInfoV1(requestOptions: RequestOptions? = nil) async throws -> [String: String?] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/git_info/v1",
            requestOptions: requestOptions,
            responseType: [String: String?].self
        )
    }

    /// Development template endpoint that returns the caller's ID for testing. | () -> (str)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.getTemplateV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getTemplateV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/template/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Development template endpoint that demonstrates transaction handling and request mirroring. | (TemplateReq) -> (TemplateRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.createTemplateV1(request: .init(
    ///         message: "message",
    ///         number: 1,
    ///         timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createTemplateV1(request: Requests.TemplateReq, requestOptions: RequestOptions? = nil) async throws -> TemplateRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/dev/template/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: TemplateRes.self
        )
    }

    /// (DEPRECATED) Extracts and returns the user ID from the authenticated request's JWT token. | () -> (str)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.getUserIdV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getUserIdV1(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/user_id/v1",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Extracts and returns the user ID from the authenticated request's JWT token. | () -> (str)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.utils.dev.getUserIdV2()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getUserIdV2(requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/dev/user_id/v2",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}