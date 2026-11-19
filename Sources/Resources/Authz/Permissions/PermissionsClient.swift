import Foundation

public final class PermissionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Previews the catalog permissions a set of CHRT-managed roles, custom roles, and groups would grant, with their sources and any ids not in the organization. | authz: cedar=listUsers | (AuthzPermissionsPreviewReq) -> (AuthzPermissionGrantsRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.permissions.previewV1(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func previewV1(request: Requests.AuthzPermissionsPreviewReq, requestOptions: RequestOptions? = nil) async throws -> AuthzPermissionGrantsRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/authz/permissions/preview/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: AuthzPermissionGrantsRes.self
        )
    }
}