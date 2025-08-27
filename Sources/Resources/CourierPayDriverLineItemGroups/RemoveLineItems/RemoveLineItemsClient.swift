import Foundation

public final class RemoveLineItemsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Removes specific line items from a courier driver line item group by exact match.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byId(id: String, request: Requests.CourierPayDriverLineItemGroupRemoveLineItemsReq, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/courier_pay_driver_line_item_groups/remove_line_items/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: CourierPayDriverLineItemGroup1.self
        )
    }
}