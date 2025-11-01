import Foundation

public final class ShipperPayCourierLineItemGroupsAddLineItemsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds additional line items to an existing shipper pay courier line item group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byIdV1(id: String, request: Requests.ShipperPayCourierLineItemGroupAddLineItemsReq, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/shipper_pay_courier_line_item_groups/add_line_items/v1/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroup1.self
        )
    }
}