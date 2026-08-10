import Foundation

public final class CargosClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Duplicates cargo and its task associations in an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postDuplicateV1(orderTemplateId: String, cargoKey: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/cargos/duplicate/v1/\(orderTemplateId)/\(cargoKey)",
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Reorders cargo in an active order template. | authz: min_org_role=operator | (OrderTemplateNewCargoReorderReq1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func putReorderV1(orderTemplateId: String, request: Requests.OrderTemplateNewCargoReorderReq1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_templates_new/cargos/reorder/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Adds cargo to an active order template. | authz: min_org_role=operator | (OrderTemplateNewCargoClientCreate1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postCreateV1(orderTemplateId: String, request: Requests.OrderTemplateNewCargoClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/cargos/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Deletes cargo and its task associations from an active order template. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderTemplateId: String, cargoKey: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_templates_new/cargos/v1/\(orderTemplateId)/\(cargoKey)",
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Updates cargo in an active order template. | authz: min_org_role=operator | (OrderTemplateNewCargoClientUpdate1) -> (OrderTemplateNew1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func patchUpdateV1(orderTemplateId: String, cargoKey: String, request: Requests.OrderTemplateNewCargoClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_templates_new/cargos/v1/\(orderTemplateId)/\(cargoKey)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }
}