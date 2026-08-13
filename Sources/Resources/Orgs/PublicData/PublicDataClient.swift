import Foundation

public final class PublicDataClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Returns the organization avatar URL or a placeholder. | () -> (str)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.getAvatarV1(handle: "handle")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter handle: Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getAvatarV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/avatar/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves public organization data by handle. | () -> (OrgPublicData1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.getByHandleV1(handle: "handle")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter handle: Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByHandleV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> OrgPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/by_handle/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: OrgPublicData1.self
        )
    }

    /// Returns True when the provided handle is available, otherwise False. | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.getHandleAvailabilityV1(handle: "handle")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter handle: Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getHandleAvailabilityV1(handle: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/handle_availability/v1/\(handle)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves public organization data for the caller's organization. | () -> (OrgPublicData1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.getV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(requestOptions: RequestOptions? = nil) async throws -> OrgPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/v1",
            requestOptions: requestOptions,
            responseType: OrgPublicData1.self
        )
    }

    /// Updates public identity data for the caller's organization. | (UpdateOrgPublicDataReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.updateV1(request: .init())
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(request: Requests.UpdateOrgPublicDataReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/org_public_data/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves public organization data for a specific organization by ID. | () -> (OrgPublicData1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.publicData.getByOrgIdV1(orgId: "org_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter orgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByOrgIdV1(orgId: String, requestOptions: RequestOptions? = nil) async throws -> OrgPublicData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/org_public_data/v1/\(orgId)",
            requestOptions: requestOptions,
            responseType: OrgPublicData1.self
        )
    }
}