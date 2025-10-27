import Foundation

public final class RootClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Test endpoint for authenticated requests that requires valid authentication tokens.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pingAuthd(requestOptions: RequestOptions? = nil) async throws -> [String: String] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authd",
            requestOptions: requestOptions,
            responseType: [String: String].self
        )
    }

    /// Test endpoint for optionally authenticated requests that works with or without authentication.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pingOptionallyAuthd(requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/optionally_authd",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Returns a greeting message to verify the API is accessible.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pingUnauthd(requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Returns a health status message used for monitoring system availability and uptime.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func health(requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/health",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Test endpoint that intentionally fails for error handling validation and monitoring purposes.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func failure(requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .get,
            path: "/failure",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }
}