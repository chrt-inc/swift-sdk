import Foundation

public final class MilestonesClient: Sendable {
    public let images: ImagesClient
    public let blurhash: BlurhashClient
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.images = ImagesClient(config: config)
        self.blurhash = BlurhashClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Updates milestone completion status and comments, recalculating task and order statuses.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.MilestoneUpdateReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/milestones/update/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a new milestone to an existing task and updates task completion status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addToTaskV1(request: Requests.MilestoneAddToTaskReq, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/milestones/add_to_task/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }
}