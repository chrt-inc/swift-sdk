import Foundation

public final class OrderManifestClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Validates an order manifest for scheduled order creation. | authz: min_org_role=operator | (OrderManifest1) -> (OrderManifestValidationResult)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func validateV1(request: OrderManifest1, requestOptions: RequestOptions? = nil) async throws -> OrderManifestValidationResult {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_schedules/order_manifest/validate/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderManifestValidationResult.self
        )
    }
}