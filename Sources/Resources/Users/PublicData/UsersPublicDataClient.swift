import Foundation

public final class UsersPublicDataClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves public user data for the caller. | () -> (UserPublicData1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.users.publicData.getV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> UserPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/users/user_public_data/v1",
            requestOptions: requestOptions,
            responseType: UserPublicData1.self
        )
    }
}