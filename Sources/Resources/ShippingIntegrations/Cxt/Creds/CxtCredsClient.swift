import Foundation

public final class CxtCredsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the caller's CXT credential for one provider, without passwords or access tokens. | () -> (CxtCredsLimited1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.cxt.creds.detailV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> CxtCredsLimited1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/cxt/creds/detail/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: CxtCredsLimited1.self
        )
    }

    /// Lists the caller's CXT credentials, one per connected provider, without passwords or access tokens. | () -> (CxtCredsListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.cxt.creds.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> CxtCredsListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/cxt/creds/list/v1",
            requestOptions: requestOptions,
            responseType: CxtCredsListRes.self
        )
    }

    /// Tests whether stored CXT credentials can authenticate against the provider. | authz: min_org_role=operator | () -> (CxtCredsTestRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.cxt.creds.testV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func testV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> CxtCredsTestRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/cxt/creds/test/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: CxtCredsTestRes.self
        )
    }

    /// Stores CXT credentials for one provider on behalf of the caller's organization. | authz: min_org_role=administrator | (CxtCredsClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.cxt.creds.createV1(
    ///         providerOrgId: "provider_org_id",
    ///         request: .init(
    ///             baseUrl: "base_url",
    ///             cxtAuthType: .xdUser,
    ///             password: "password",
    ///             schemaVersion: 1,
    ///             username: "username"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(providerOrgId: String, request: Requests.CxtCredsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/cxt/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes stored CXT credentials for one provider. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.cxt.creds.deleteV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping_integrations/cxt/creds/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates stored CXT credentials for one provider. | authz: min_org_role=administrator | (CxtCredsClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.cxt.creds.updateV1(
    ///         providerOrgId: "provider_org_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(providerOrgId: String, request: Requests.CxtCredsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping_integrations/cxt/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}