import Foundation

public final class CargoClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds a cargo item to an existing draft order. Validates order is in DRAFT status and owned by caller. | (OrderDraftAddCargoReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.OrderDraftAddCargoReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/cargo/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Associates existing cargo with a task in a draft order. | (OrderDraftAssociateCargoWithTaskReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func associateWithTaskV1(request: Requests.OrderDraftAssociateCargoWithTaskReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/order_drafts/cargo/associate_with_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates a cargo item in an existing draft order. Validates order is in DRAFT status and owned by caller. | (OrderDraftUpdateCargoReq) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.OrderDraftUpdateCargoReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/order_drafts/cargo/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes a cargo item from a draft order and removes references from associated tasks. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(cargoId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/order_drafts/cargo/delete/v1/\(cargoId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}