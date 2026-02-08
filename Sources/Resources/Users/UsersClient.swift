import Foundation

public final class UsersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Retrieves public user data for the caller. | () -> (UserPublicData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getUserPublicDataV1(requestOptions: RequestOptions? = nil) async throws -> UserPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/users/user_public_data/v1",
            requestOptions: requestOptions,
            responseType: UserPublicData1.self
        )
    }

    /// Retrieves private user data for the caller. | () -> (UserPrivateData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getUserPrivateDataV1(requestOptions: RequestOptions? = nil) async throws -> UserPrivateData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/users/user_private_data/v1",
            requestOptions: requestOptions,
            responseType: UserPrivateData1.self
        )
    }

    /// Creates private user data for the caller. | (UserPrivateDataClientCreate1) -> (UserPrivateData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createUserPrivateDataV1(request: Requests.UserPrivateDataClientCreate1, requestOptions: RequestOptions? = nil) async throws -> UserPrivateData1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/users/user_private_data/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: UserPrivateData1.self
        )
    }

    /// Updates private user data for the caller. | (UserPrivateDataClientUpdate1) -> (UserPrivateData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateUserPrivateDataV1(request: Requests.UserPrivateDataClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> UserPrivateData1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/users/user_private_data/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: UserPrivateData1.self
        )
    }

    /// Upserts a Firebase Cloud Messaging token for the caller. Dedupes on token; if token exists, updates last_used_timestamp. | (FirebaseCloudMessagingTokenClientCreate1) -> (UserPrivateData1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upsertFirebaseCloudMessagingTokenV1(request: Requests.FirebaseCloudMessagingTokenClientCreate1, requestOptions: RequestOptions? = nil) async throws -> UserPrivateData1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/users/user_private_data/firebase_cloud_messaging_token/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: UserPrivateData1.self
        )
    }
}