import Foundation

public final class AgenticClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a draft order, populating cargo, task groups, and tasks parsed from natural language or a template. | authz: min_org_role=operator | (OrderBuilderReq) -> (OrderBuilderRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func newV1(request: OrderBuilderReq, requestOptions: RequestOptions? = nil) async throws -> OrderBuilderRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/agentic/new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderBuilderRes.self
        )
    }

    /// Creates a draft order from natural language or a template and streams progress events via SSE. | authz: min_org_role=operator | (OrderBuilderReq) -> (OrderBuilderStreamEvent)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func newWithStreamingV1(request: OrderBuilderReq, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/agentic/new_with_streaming/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Reports whether an order builder request's references resolve. | authz: min_org_role=operator | (OrderBuilderReq) -> (OrderTemplateResolvabilityRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func precheckV1(request: OrderBuilderReq, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateResolvabilityRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/agentic/precheck/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateResolvabilityRes.self
        )
    }
}