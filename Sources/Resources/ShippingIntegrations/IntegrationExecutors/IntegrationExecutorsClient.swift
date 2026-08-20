import Foundation

public final class IntegrationExecutorsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all distinct integration executor organizations that have credentials configured across any shipping integration, with public organization data expanded. | authz: min_org_role=operator | () -> (ShippingIntegrationIntegrationExecutorListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.integrationExecutors.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationIntegrationExecutorListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/integration_executors/list/v1",
            requestOptions: requestOptions,
            responseType: ShippingIntegrationIntegrationExecutorListRes.self
        )
    }
}