import Foundation

public final class CourierPayDriverLineItemGroupsClient: Sendable {
    public let addLineItems: AddLineItemsClient
    public let removeLineItems: RemoveLineItemsClient
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.addLineItems = AddLineItemsClient(config: config)
        self.removeLineItems = RemoveLineItemsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a courier driver line item group by its ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getById(id: String, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_line_item_groups/\(id)",
            requestOptions: requestOptions,
            responseType: CourierPayDriverLineItemGroup1.self
        )
    }

    /// Retrieves a courier driver line item group by its associated task group ID.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byTaskGroupId(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverLineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/oort/courier_pay_driver_line_item_groups/by_task_group/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: CourierPayDriverLineItemGroup1.self
        )
    }

    /// Previews calculated line items for a driver based on a rate sheet and task group. Does not write to the database.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func preview(driverId: String, request: CourierPayDriverLineItemGroupCreateReq, requestOptions: RequestOptions? = nil) async throws -> CourierPayDriverLineItemGroupServerCreate1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/courier_pay_driver_line_item_groups/preview/\(driverId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CourierPayDriverLineItemGroupServerCreate1.self
        )
    }

    /// Creates a courier pay driver line item group by calculating items from a rate sheet and task group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: CourierPayDriverLineItemGroupCreateReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/courier_pay_driver_line_item_groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}