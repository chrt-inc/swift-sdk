import Foundation

public final class DocsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Generates a shipping document (BOL or POD) as a PDF for the given order. | authz_personas=[order_creator_org_operators] | (GenerateShippingDocReq) -> (PDF binary)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postGenerateV1(request: Requests.GenerateShippingDocReq, requestOptions: RequestOptions? = nil) async throws -> Data {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/docs/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Data.self
        )
    }
}