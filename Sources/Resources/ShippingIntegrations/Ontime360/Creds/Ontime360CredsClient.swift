import Foundation

public final class Ontime360CredsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the caller's OnTime360 credential for one provider, without the API key. | () -> (OnTime360CredsLimited1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.ontime360.creds.detailV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detailV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> OnTime360CredsLimited1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/ontime360/creds/detail/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: OnTime360CredsLimited1.self
        )
    }

    /// Lists the caller's OnTime360 credentials, one per connected provider, without the API key. | () -> (OnTime360CredsListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.ontime360.creds.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> OnTime360CredsListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/ontime360/creds/list/v1",
            requestOptions: requestOptions,
            responseType: OnTime360CredsListRes.self
        )
    }

    /// Confirms the caller's stored OnTime360 credentials for one provider can still perform a scoped read, best-effort refreshes the provider's own account label for the caller to eyeball, and reports the provider's own reported time zones beside the stored one. | authz: min_org_role=operator | () -> (OnTime360CredsTestRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.ontime360.creds.testV1(providerOrgId: "provider_org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func testV1(providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> OnTime360CredsTestRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/ontime360/creds/test/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: OnTime360CredsTestRes.self
        )
    }

    /// Stores OnTime360 credentials for one provider on behalf of the caller's organization. | authz: min_org_role=administrator | (OnTime360CredsClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.ontime360.creds.createV1(
    ///         providerOrgId: "provider_org_id",
    ///         request: .init(
    ///             apiKey: "api_key",
    ///             baseUrl: "base_url",
    ///             schemaVersion: 1,
    ///             siteTimeZone: "America/New_York"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(providerOrgId: String, request: Requests.OnTime360CredsClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping_integrations/ontime360/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes the caller's OnTime360 credentials for one provider, stopping future syncs. | authz: min_org_role=administrator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.ontime360.creds.deleteV1(providerOrgId: "provider_org_id")
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
            path: "/shipping_integrations/ontime360/creds/v1/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the caller's OnTime360 credentials for one provider. | authz: min_org_role=administrator | (OnTime360CredsClientUpdate1) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.ontime360.creds.updateV1(
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
    public func updateV1(providerOrgId: String, request: Requests.OnTime360CredsClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping_integrations/ontime360/creds/v1/\(providerOrgId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}