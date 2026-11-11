import Foundation

public final class UsersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves a user's access in the caller's organization: their roles, custom roles, and groups. | authz: cedar=readUser | () -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.getV1(userId: "user_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(userId: String, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/users/get/v1/\(userId)",
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }

    /// Changes a user's CHRT-managed roles, custom roles, or groups in the caller's organization. | authz: cedar=updateUserAccess | (UserClientUpdate1) -> (User1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.users.updateAccessV1(
    ///         userId: "user_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter userId: Must be a string starting with `user_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateAccessV1(userId: String, request: Requests.UserClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> User1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/authz/users/update_access/v1/\(userId)",
            body: request,
            requestOptions: requestOptions,
            responseType: User1.self
        )
    }
}