import Foundation

public final class CredsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the caller's Atlas credential for one provider, without API key. | () -> (AtlasCredsLimited1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.creds.detailV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> AtlasCredsLimited1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/atlas/creds/detail/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: AtlasCredsLimited1.self
        )
    }

    /// Lists the caller's Atlas credentials, one per connected provider, without API key. | () -> (AtlasCredsListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.creds.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> AtlasCredsListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/atlas/creds/list/v1",
            requestOptions: requestOptions,
            responseType: AtlasCredsListRes.self
        )
    }

    /// Tests whether stored Atlas credentials can authenticate against the provider. | authz: min_org_role=operator | () -> (AtlasCredsTestRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.creds.testV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func testV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> AtlasCredsTestRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/atlas/creds/test/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: AtlasCredsTestRes.self
        )
    }

    /// Stores Atlas credentials for one provider on behalf of the caller's organization. | authz: min_org_role=administrator | (AtlasCredsClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.creds.createV1(
    ///         providerOrgId: "provider_org_id",
    ///         request: .init(
    ///             apiKey: "api_key",
    ///             schemaVersion: 1
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(providerOrgId: String, request: Requests.AtlasCredsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/atlas/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes stored Atlas credentials for one provider. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.creds.deleteV1(providerOrgId: "provider_org_id")
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
            path: "/shipping_integrations/atlas/creds/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates stored Atlas credentials for one provider. | authz: min_org_role=administrator | (AtlasCredsClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.atlas.creds.updateV1(
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
    public func updateV1(providerOrgId: String, request: Requests.AtlasCredsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping_integrations/atlas/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}