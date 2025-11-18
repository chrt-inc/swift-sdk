import Foundation

public final class UsersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves public user data for the authenticated user, including email, notes, and Stripe customer information. | () -> (UserPublicData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getPublicDataV1(requestOptions: RequestOptions? = nil) async throws -> UserPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/users/user_public_data/v1",
            requestOptions: requestOptions,
            responseType: UserPublicData1.self
        )
    }
}