import Foundation

public final class DraftsCargoClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Deletes a cargo item from a draft order and removes references from associated tasks. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(cargoId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/orders/drafts/cargo/delete/v1/\(cargoId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}