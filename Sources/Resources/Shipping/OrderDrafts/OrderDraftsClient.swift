import Foundation

public final class OrderDraftsClient: Sendable {
    public let agentic: AgenticClient
    public let taskGroup: TaskGroupClient
    public let task: TaskClient
    public let taskArtifact: TaskArtifactClient
    public let cargo: CargoClient
    public let expanded: ExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.agentic = AgenticClient(config: config)
        self.taskGroup = TaskGroupClient(config: config)
        self.task = TaskClient(config: config)
        self.taskArtifact = TaskArtifactClient(config: config)
        self.cargo = CargoClient(config: config)
        self.expanded = ExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a new draft order with org assignments based on caller's organization type. | (OrdersNewDraftReq) -> (OrdersNewDraftRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func newV1(request: Requests.OrdersNewDraftReq, requestOptions: RequestOptions? = nil) async throws -> OrdersNewDraftRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersNewDraftRes.self
        )
    }

    /// Updates coordinator and/or shipper org assignments for a draft order. | (OrdersDraftUpdateReq) -> (OrdersDraftUpdateRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(orderId: String, request: Requests.OrdersDraftUpdateReq, requestOptions: RequestOptions? = nil) async throws -> OrdersDraftUpdateRes {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_drafts/update/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersDraftUpdateRes.self
        )
    }

    /// Sets the ordering of task groups within a draft order. Must provide all task group IDs with no duplicates. | (SetTaskGroupOrderingDraftReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskGroupOrderingV1(orderId: String, request: Requests.SetTaskGroupOrderingDraftReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_drafts/set_task_group_ordering/v1/\(orderId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes a draft order and all associated entities. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_drafts/delete/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes multiple draft orders and associated entities. | (OrdersDraftDeleteManyReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteManyV1(request: Requests.OrdersDraftDeleteManyReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_drafts/delete_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Converts an order screenshot into lightly structured text for the AI order builder. | (UploadFile) -> (str)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func imageToTextV1(request: Requests.BodyPostShippingOrderDraftsImageToTextV1ShippingOrderDraftsImageToTextV1Post, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/image_to_text/v1",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Validates the draft order for staging and returns requirement results. | () -> (OrderDraftValidationResult)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func validateV1(orderId: String, requestOptions: RequestOptions? = nil) async throws -> OrderDraftValidationResult {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_drafts/validate/v1/\(orderId)",
            requestOptions: requestOptions,
            responseType: OrderDraftValidationResult.self
        )
    }
}