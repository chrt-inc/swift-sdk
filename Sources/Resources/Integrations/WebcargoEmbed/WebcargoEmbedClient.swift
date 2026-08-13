import Foundation

public final class WebcargoEmbedClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Generates a WebCargo Sky Embed token for a FLIGHT task group. Assembles cargo data from the task group's tasks and returns an embed URL for the booking widget. | (GetWebcargoEmbedReq) -> (WebcargoEmbedResponse)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.integrations.webcargoEmbed.getEmbedV1(
    ///         taskGroupId: "task_group_id",
    ///         request: .init(
    ///             country: "country",
    ///             departure: "departure",
    ///             destination: "destination",
    ///             origin: "origin"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getEmbedV1(taskGroupId: String, request: Requests.GetWebcargoEmbedReq, requestOptions: RequestOptions? = nil) async throws -> WebcargoEmbedResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/integrations/webcargo_embed/get_embed/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: WebcargoEmbedResponse.self
        )
    }
}