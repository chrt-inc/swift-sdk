import Foundation

public final class AgenticClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Predicts whether input is complete enough for the AI order builder. | (OrderBuilderReq) -> (OrderBuilderPrecheckRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func precheckV1(request: OrderBuilderReq, requestOptions: RequestOptions? = nil) async throws -> OrderBuilderPrecheckRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_drafts/agentic/precheck/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderBuilderPrecheckRes.self
        )
    }

    /// Populates an existing draft order with cargo, task groups, and tasks parsed from natural language. | (OrderBuilderReq) -> (OrderBuilderRes)
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

    /// Populates an existing draft order from natural language and streams progress events via SSE. | (OrderBuilderReq) -> (OrderBuilderStreamEvent)
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
}