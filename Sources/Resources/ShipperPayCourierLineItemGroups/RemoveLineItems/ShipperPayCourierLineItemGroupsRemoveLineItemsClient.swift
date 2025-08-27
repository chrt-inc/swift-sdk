import Foundation

public final class ShipperPayCourierLineItemGroupsRemoveLineItemsClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Removes specific line items from a shipper pay courier line item group by exact match.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byId(id: String, request: Requests.ShipperPayCourierLineItemGroupRemoveLineItemsReq, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/shipper_pay_courier_line_item_groups/remove_line_items/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroup1.self
        )
    }
}