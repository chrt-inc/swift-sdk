import Foundation

public final class CatalogClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists every permission a custom role can bundle and what each CHRT-managed role grants. | () -> (AuthzCatalogRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.catalog.getV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> AuthzCatalogRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/catalog/get/v1",
            requestOptions: requestOptions,
            responseType: AuthzCatalogRes.self
        )
    }
}