import Foundation

public final class OrdersUtilsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Converts a shipping-order screenshot into lightly structured text. | authz: min_org_role=operator | (UploadFile) -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func imageToTextV1(request: Requests.BodyPostShippingOrdersUtilsImageToTextV1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/utils/image_to_text/v1",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}