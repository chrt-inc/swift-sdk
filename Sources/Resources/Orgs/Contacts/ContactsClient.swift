import Foundation

public final class ContactsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Associates an account from the contact's organization. | authz: min_org_role=operator | (ContactAccountAddReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountAddV1(contactId: String, request: Requests.ContactAccountAddReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/contacts/accounts/add/v1/\(contactId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes an account association from an organization-created contact. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountRemoveV1(contactId: String, accountId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/contacts/accounts/remove/v1/\(contactId)/\(accountId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates an organization-created contact. | authz: min_org_role=operator | (ContactClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ContactClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/contacts/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Deletes an organization-created contact. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(contactId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/contacts/delete/v1/\(contactId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists organization-created contacts with association filters and search. | authz: min_org_role=operator | () -> (ContactListRes)
    ///
    /// - Parameter search: Full-text search query
    /// - Parameter filterOrgId: Filter by associated on-CHRT organization
    /// - Parameter filterOffChrtOrgDataId: Filter by associated off-CHRT organization data
    /// - Parameter filterAccountId: Filter by associated account
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(search: String? = nil, filterOrgId: String? = nil, filterOffChrtOrgDataId: String? = nil, filterAccountId: String? = nil, sortBy: ContactSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ContactListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/contacts/list/v1",
            queryParams: [
                "search": search.map { .string($0) }, 
                "filter_org_id": filterOrgId.map { .string($0) }, 
                "filter_off_chrt_org_data_id": filterOffChrtOrgDataId.map { .string($0) }, 
                "filter_account_id": filterAccountId.map { .string($0) }, 
                "sort_by": sortBy.map { .unknown($0) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ContactListRes.self
        )
    }

    /// Updates an organization-created contact. | authz: min_org_role=operator | (ContactClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(contactId: String, request: Requests.ContactClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/contacts/update/v1/\(contactId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves an organization-created contact. | authz: min_org_role=operator | () -> (Contact1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(contactId: String, requestOptions: RequestOptions? = nil) async throws -> Contact1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/contacts/v1/\(contactId)",
            requestOptions: requestOptions,
            responseType: Contact1.self
        )
    }
}