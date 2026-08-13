import Foundation

public final class OrgBiddingGroupsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds an on-chrt provider org to a bidding group. The provider must have a live provider -> provider connection to the caller's org. Duplicate adds are idempotent ($addToSet). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.orgBiddingGroups.addProviderMemberV1(
    ///         groupId: "group_id",
    ///         providerOrgId: "provider_org_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addProviderMemberV1(groupId: String, providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/org_bidding_groups/add_provider_member/v1/\(groupId)/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Fetches an org bidding group by id. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrgBiddingGroup1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.orgBiddingGroups.byIdV1(groupId: "group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byIdV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> OrgBiddingGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/org_bidding_groups/by_id/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: OrgBiddingGroup1.self
        )
    }

    /// Creates an org bidding group owned by the caller's org. The group starts empty — add members via /add_provider_member. | authz: allowed_org_types=[provider], min_org_role=operator | (OrgBiddingGroupClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.orgBiddingGroups.createV1(request: .init(
    ///         groupName: "group_name",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OrgBiddingGroupClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/org_bidding_groups/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Hard-deletes an org bidding group. Live Listings that used this group as a source are unaffected — they hold their own snapshotted `participant_provider_org_ids`. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.orgBiddingGroups.deleteV1(groupId: "group_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/listing/org_bidding_groups/delete/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists org bidding groups owned by the caller's org with filtering, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (OrgBiddingGroupListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.orgBiddingGroups.listByOrgV1(
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterCreatedByUserId: "filter_created_by_user_id",
    ///         filterProviderOrgId: "filter_provider_org_id",
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterCreatedByUserId: Filter by the operator who created the group.
    /// - Parameter filterProviderOrgId: Filter to groups that contain this provider org as a member.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrgV1(sortBy: OrgBiddingGroupSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterCreatedByUserId: String? = nil, filterProviderOrgId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OrgBiddingGroupListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/org_bidding_groups/list_by_org/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_created_by_user_id": filterCreatedByUserId.map { .string($0) }, 
                "filter_provider_org_id": filterProviderOrgId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrgBiddingGroupListRes.self
        )
    }

    /// Removes an on-chrt provider org from a bidding group. No-op if not a member. Live Listings retain their snapshotted members. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.orgBiddingGroups.removeProviderMemberV1(
    ///         groupId: "group_id",
    ///         providerOrgId: "provider_org_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter providerOrgId: Must be a string starting with `org_`
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeProviderMemberV1(groupId: String, providerOrgId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/listing/org_bidding_groups/remove_provider_member/v1/\(groupId)/\(providerOrgId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the name of an org bidding group. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.orgBiddingGroups.updateNameV1(
    ///         groupId: "group_id",
    ///         groupName: "group_name"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateNameV1(groupId: String, groupName: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/listing/org_bidding_groups/update_name/v1/\(groupId)",
            queryParams: [
                "group_name": .string(groupName)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}