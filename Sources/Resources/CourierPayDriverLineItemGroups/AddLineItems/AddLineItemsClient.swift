import Foundation

public final class AddLineItemsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds additional line items to an existing courier driver line item group. | (CourierPayDriverLineItemGroupAddLineItemsReq) -> (CourierPayDriverLineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byIdV1(id: String, request: Requests.CourierPayDriverLineItemGroupAddLineItemsReq, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/courier_pay_driver_line_item_groups/add_line_items/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: CourierPayDriverLineItemGroup1.self
        )
    }
}