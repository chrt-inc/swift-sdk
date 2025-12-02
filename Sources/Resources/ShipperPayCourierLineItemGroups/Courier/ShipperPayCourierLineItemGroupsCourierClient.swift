import Foundation

public final class ShipperPayCourierLineItemGroupsCourierClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all shipper pay courier line item groups for the caller's courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [ShipperPayCourierLineItemGroup1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/courier/list/v1",
            requestOptions: requestOptions,
            responseType: [ShipperPayCourierLineItemGroup1].self
        )
    }
}