import Foundation

public final class CustomRolesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a custom role in the caller's organization that bundles CHRT permissions. | authz: cedar=createCustomRole | (CustomRoleClientCreate1) -> (CustomRole1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.customRoles.createV1(request: .init(
    ///         name: "name",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CustomRoleClientCreate1, requestOptions: RequestOptions? = nil) async throws -> CustomRole1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/authz/custom_roles/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CustomRole1.self
        )
    }

    /// Retrieves one of the organization's custom roles and the permissions it bundles. | authz: cedar=readCustomRole | () -> (CustomRole1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.customRoles.getV1(customRoleId: "custom_role_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(customRoleId: String, requestOptions: RequestOptions? = nil) async throws -> CustomRole1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/custom_roles/get/v1/\(customRoleId)",
            requestOptions: requestOptions,
            responseType: CustomRole1.self
        )
    }

    /// Lists the custom roles in the caller's organization. | authz: cedar=listCustomRoles | () -> (CustomRoleListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.customRoles.listV1(
    ///         page: 1,
    ///         pageSize: 1,
    ///         sortBy: .name,
    ///         sortOrder: .asc
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, sortBy: CustomRoleSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, requestOptions: RequestOptions? = nil) async throws -> CustomRoleListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/authz/custom_roles/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: CustomRoleListRes.self
        )
    }

    /// Updates a custom role's name, description, or permissions; holders get the new permissions immediately. | authz: cedar=updateCustomRole | (CustomRoleClientUpdate1) -> (CustomRole1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.authz.customRoles.updateV1(
    ///         customRoleId: "custom_role_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(customRoleId: String, request: Requests.CustomRoleClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> CustomRole1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/authz/custom_roles/update/v1/\(customRoleId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CustomRole1.self
        )
    }
}