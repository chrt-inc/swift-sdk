import Foundation

public final class UsersClient: Sendable {
    private let httpClient: HTTPClient

    public init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves public user data for the authenticated user.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPublicData(requestOptions: RequestOptions? = nil) async throws -> UserPublicData6 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/users/user_public_data",
            requestOptions: requestOptions,
            responseType: UserPublicData6.self
        )
    }
}