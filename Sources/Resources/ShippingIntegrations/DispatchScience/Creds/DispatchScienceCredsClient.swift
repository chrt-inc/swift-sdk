import Foundation

public final class DispatchScienceCredsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the caller's DispatchScience credential for one provider, without password or access token. | () -> (DispatchScienceCredsLimited1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.dispatchScience.creds.detailV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> DispatchScienceCredsLimited1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/dispatch_science/creds/detail/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: DispatchScienceCredsLimited1.self
        )
    }

    /// Lists the caller's DispatchScience credentials, one per connected provider, without password or access token. | () -> (DispatchScienceCredsListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.dispatchScience.creds.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> DispatchScienceCredsListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/dispatch_science/creds/list/v1",
            requestOptions: requestOptions,
            responseType: DispatchScienceCredsListRes.self
        )
    }

    /// Confirms the caller's stored DispatchScience credentials for one provider still authenticate, reporting the tenant's configured workflow count. | authz: min_org_role=operator | () -> (DispatchScienceCredsTestRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.dispatchScience.creds.testV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func testV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> DispatchScienceCredsTestRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/dispatch_science/creds/test/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: DispatchScienceCredsTestRes.self
        )
    }

    /// Stores DispatchScience credentials for one provider on behalf of the caller's organization. | authz: min_org_role=administrator | (DispatchScienceCredsClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.dispatchScience.creds.createV1(
    ///         providerOrgId: "provider_org_id",
    ///         request: .init(
    ///             baseUrl: "https://tenant.dispatchscience.com",
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
    public func createV1(providerOrgId: String, request: Requests.DispatchScienceCredsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/dispatch_science/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes the caller's DispatchScience credentials for one provider, stopping future syncs. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.dispatchScience.creds.deleteV1(providerOrgId: "provider_org_id")
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
            path: "/shipping_integrations/dispatch_science/creds/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the caller's DispatchScience credentials for one provider. | authz: min_org_role=administrator | (DispatchScienceCredsClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.dispatchScience.creds.updateV1(
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
    public func updateV1(providerOrgId: String, request: Requests.DispatchScienceCredsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping_integrations/dispatch_science/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}