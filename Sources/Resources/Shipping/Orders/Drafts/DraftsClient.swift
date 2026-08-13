import Foundation

public final class DraftsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a draft Order through one of three paths: (1) provide only order_template_new_id to load the saved template's core and record that template as the Order's provenance; (2) provide only order_template_new_core to materialize an ad hoc submitted core without template provenance; (3) provide both to record and validate the saved template as provenance while materializing the submitted core, without modifying the saved template. | authz: min_org_role=operator | (OrdersCreateDraftFromOrderTemplateNewReq) -> (OrdersOpenDraftRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.drafts.createFromOrderTemplateNewV1(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createFromOrderTemplateNewV1(request: Requests.OrdersCreateDraftFromOrderTemplateNewReq, requestOptions: RequestOptions? = nil) async throws -> OrdersOpenDraftRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/create_from_order_template_new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersOpenDraftRes.self
        )
    }

    /// Opens a new draft order shell with org assignments based on caller's organization type. | authz: min_org_role=operator | (OrdersOpenDraftReq) -> (OrdersOpenDraftRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orders.drafts.openV1(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func openV1(request: Requests.OrdersOpenDraftReq, requestOptions: RequestOptions? = nil) async throws -> OrdersOpenDraftRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/orders/drafts/open/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersOpenDraftRes.self
        )
    }
}