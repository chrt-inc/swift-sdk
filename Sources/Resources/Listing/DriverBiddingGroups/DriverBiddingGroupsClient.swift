import Foundation

public final class DriverBiddingGroupsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches a driver bidding group by id. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (DriverBiddingGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byIdV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> DriverBiddingGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/driver_bidding_groups/by_id/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: DriverBiddingGroup1.self
        )
    }

    /// Lists driver bidding groups owned by the caller's org with filtering, sorting, and pagination. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (DriverBiddingGroupListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterCreatedByUserId: Filter by the operator who created the group.
    /// - Parameter filterDriverId: Filter to groups that contain this Driver as a member.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrgV1(sortBy: DriverBiddingGroupSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterCreatedByUserId: String? = nil, filterDriverId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> DriverBiddingGroupListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/driver_bidding_groups/list_by_org/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_created_by_user_id": filterCreatedByUserId.map { .string($0) }, 
                "filter_driver_id": filterDriverId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: DriverBiddingGroupListRes.self
        )
    }

    /// Creates a driver bidding group owned by the caller's org. The group starts empty — add drivers via /add_member. | authz: allowed_org_types=[provider], min_org_role=operator | (DriverBiddingGroupClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.DriverBiddingGroupClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/driver_bidding_groups/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Updates the name of a driver bidding group. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateNameV1(groupId: String, groupName: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/listing/driver_bidding_groups/update_name/v1/\(groupId)",
            queryParams: [
                "group_name": .string(groupName)
            ],
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a driver to a bidding group. Driver must be part of the caller's org. Duplicate adds are idempotent ($addToSet). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addMemberV1(groupId: String, driverId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/driver_bidding_groups/add_member/v1/\(groupId)/\(driverId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes a driver from a bidding group. No-op if the driver is not a member. Live Listings retain their snapshotted members. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeMemberV1(groupId: String, driverId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/listing/driver_bidding_groups/remove_member/v1/\(groupId)/\(driverId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Hard-deletes a driver bidding group. Live Listings that reference this group as a source are unaffected — they hold their own snapshotted `participant_driver_ids`. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(groupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/listing/driver_bidding_groups/delete/v1/\(groupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}