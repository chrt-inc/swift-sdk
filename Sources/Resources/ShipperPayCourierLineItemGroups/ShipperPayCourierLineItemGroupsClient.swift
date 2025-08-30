import Foundation

public final class ShipperPayCourierLineItemGroupsClient: Sendable {
    public let shipper: ShipperPayCourierLineItemGroupsShipperClient
    public let courier: ShipperPayCourierLineItemGroupsCourierClient
    public let addLineItems: ShipperPayCourierLineItemGroupsAddLineItemsClient
    public let removeLineItems: ShipperPayCourierLineItemGroupsRemoveLineItemsClient
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.shipper = ShipperPayCourierLineItemGroupsShipperClient(config: config)
        self.courier = ShipperPayCourierLineItemGroupsCourierClient(config: config)
        self.addLineItems = ShipperPayCourierLineItemGroupsAddLineItemsClient(config: config)
        self.removeLineItems = ShipperPayCourierLineItemGroupsRemoveLineItemsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a shipper pay courier line item group by its ID for the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getById(id: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/\(id)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroup1.self
        )
    }

    /// Deletes a shipper pay courier line item group by its ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteById(id: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/shipper_pay_courier_line_item_groups/\(id)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves a shipper pay courier line item group by its associated task group ID for the authenticated courier organization.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byTaskGroupId(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/shipper_pay_courier_line_item_groups/by_task_group/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroup1.self
        )
    }

    /// Previews calculated line items for a shipper pay courier based on rate sheet and task group without creating the group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func preview(request: ShipperPayCourierLineItemGroupCreateReq, requestOptions: RequestOptions? = nil) async throws -> ShipperPayCourierLineItemGroupServerCreate1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_line_item_groups/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: ShipperPayCourierLineItemGroupServerCreate1.self
        )
    }

    /// Creates a shipper pay courier line item group by calculating items from rate sheet and task group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: ShipperPayCourierLineItemGroupCreateReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/shipper_pay_courier_line_item_groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}