import Foundation

public final class ShipperPayCourierLineItemGroupsShipperClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists all shipper pay courier line item groups for the caller's shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [ShipperPayCourierLineItemGroup1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/shipper/list/v1",
            requestOptions: requestOptions,
            responseType: [ShipperPayCourierLineItemGroup1].self
        )
    }

    /// Retrieves a shipper pay courier line item group by its ID for the caller's shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(id: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/shipper/v1/\(id)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroup1.self
        )
    }

    /// Retrieves a shipper pay courier line item group by its associated task group ID for the caller's shipper organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byTaskGroupIdV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/shipper/by_task_group/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroup1.self
        )
    }
}