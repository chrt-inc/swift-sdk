import Foundation

public final class ShippingIntegrationsConnectionsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists every provider the caller's organization has credentials for, across all shipping integrations, with public organization data expanded. | () -> (ShippingIntegrationConnectionListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shippingIntegrations.connections.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> ShippingIntegrationConnectionListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping_integrations/connections/list/v1",
            requestOptions: requestOptions,
            responseType: ShippingIntegrationConnectionListRes.self
        )
    }
}