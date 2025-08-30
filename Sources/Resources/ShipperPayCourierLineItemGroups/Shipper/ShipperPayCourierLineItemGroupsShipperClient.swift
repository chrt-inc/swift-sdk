import Foundation

public final class ShipperPayCourierLineItemGroupsShipperClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all shipper pay courier line item groups for the authenticated shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> [ShipperPayCourierLineItemGroup1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/shipper/list",
            requestOptions: requestOptions,
            responseType: [ShipperPayCourierLineItemGroup1].self
        )
    }

    /// Retrieves a shipper pay courier line item group by its ID for the authenticated shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getById(id: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/shipper/\(id)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroup1.self
        )
    }

    /// Retrieves a shipper pay courier line item group by its associated task group ID for the authenticated shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byTaskGroupId(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/shipper/by_task_group/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroup1.self
        )
    }
}