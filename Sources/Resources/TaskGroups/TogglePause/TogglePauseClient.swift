import Foundation

public final class TogglePauseClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Toggles the pause status of an in-progress task group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byId(id: String, request: SetTaskGroupPauseReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/toggle_pause/\(id)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}