import Foundation

public final class CourieCredsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the caller's Courie credential for one provider, without API key. | () -> (CourieCredsLimited1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.courie.creds.detailV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> CourieCredsLimited1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/courie/creds/detail/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: CourieCredsLimited1.self
        )
    }

    /// Lists the caller's Courie credentials, one per connected provider, without API key. | () -> (CourieCredsListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.courie.creds.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> CourieCredsListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/courie/creds/list/v1",
            requestOptions: requestOptions,
            responseType: CourieCredsListRes.self
        )
    }

    /// Tests whether stored Courie credentials can authenticate against the provider. | authz: min_org_role=operator | () -> (CourieCredsTestRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.courie.creds.testV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func testV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> CourieCredsTestRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/courie/creds/test/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: CourieCredsTestRes.self
        )
    }

    /// Stores Courie credentials for one provider on behalf of the caller's organization. | authz: min_org_role=administrator | (CourieCredsClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.courie.creds.createV1(
    ///         providerOrgId: "provider_org_id",
    ///         request: .init(
    ///             apiKey: "api_key",
    ///             courierId: "courier_id",
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
    public func createV1(providerOrgId: String, request: Requests.CourieCredsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/courie/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes stored Courie credentials for one provider. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.courie.creds.deleteV1(providerOrgId: "provider_org_id")
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
            path: "/shipping_integrations/courie/creds/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates stored Courie credentials for one provider. | authz: min_org_role=administrator | (CourieCredsClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.courie.creds.updateV1(
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
    public func updateV1(providerOrgId: String, request: Requests.CourieCredsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping_integrations/courie/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}