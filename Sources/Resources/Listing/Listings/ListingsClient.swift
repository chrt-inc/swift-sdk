import Foundation

public final class ListingsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches a listing by id in the bidder-facing shape with tasks and mileage. Visible to the lister and to snapshot participants (as bidder — provider org or driver). Listers wanting the full record call `by_id_for_lister/v1`. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (ListingForBidder1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byIdV1(listingId: String, requestOptions: RequestOptions? = nil) async throws -> ListingForBidder1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/listings/by_id/v1/\(listingId)",
            requestOptions: requestOptions,
            responseType: ListingForBidder1.self
        )
    }

    /// Fetches the full listing record (including `internal_notes`). Restricted to the lister org — bidders use `by_id/v1`. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (Listing1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byIdForListerV1(listingId: String, requestOptions: RequestOptions? = nil) async throws -> Listing1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/listings/by_id_for_lister/v1/\(listingId)",
            requestOptions: requestOptions,
            responseType: Listing1.self
        )
    }

    /// Fetches all listings for a single task group. Typically returns one or two (dual-audience siblings) OPEN listings during active bidding plus any terminal history. Visible only to the task group's coordinator. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[Listing1])
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byTaskGroupV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> [Listing1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/listings/by_task_group/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: [Listing1].self
        )
    }

    /// Lists listings owned (created) by the caller's org with filtering, sorting, and pagination. Lister view. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ListingListRes)
    ///
    /// - Parameter filterAudience: Filter to a single audience (PROVIDERS or DRIVERS). Lister-only — bidder routes hardcode audience.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterStatus: Filter by listing status(es). Multi-select.
    /// - Parameter filterType: Filter by listing type(s). Multi-select.
    /// - Parameter filterTaskGroupId: Filter to listings for this task group.
    /// - Parameter filterOrderId: Filter to listings on this order.
    /// - Parameter filterCreatedByOrgId: Filter to listings created by this provider org (lister). Mostly useful on bidder views to slice by lister.
    /// - Parameter filterCreatedByUserId: Filter to listings created by this operator (audit).
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listByOrgV1(filterAudience: ListingAudienceEnum? = nil, sortBy: ListingSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: ListingStatusEnum? = nil, filterType: ListingTypeEnum? = nil, filterTaskGroupId: String? = nil, filterOrderId: String? = nil, filterCreatedByOrgId: String? = nil, filterCreatedByUserId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ListingListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/listings/list_by_org/v1",
            queryParams: [
                "filter_audience": filterAudience.map { .string($0.rawValue) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_type": filterType.map { .string($0.rawValue) }, 
                "filter_task_group_id": filterTaskGroupId.map { .string($0) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_created_by_org_id": filterCreatedByOrgId.map { .string($0) }, 
                "filter_created_by_user_id": filterCreatedByUserId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListingListRes.self
        )
    }

    /// Lists PROVIDERS-audience listings where the caller's org is a snapshot participant. Provider-side bidder view with filtering, sorting, and pagination. Returns the bidder shape with tasks and mileage (no `internal_notes`). | authz: allowed_org_types=[provider], min_org_role=operator | () -> (ListingForBidderListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterStatus: Filter by listing status(es). Multi-select.
    /// - Parameter filterType: Filter by listing type(s). Multi-select.
    /// - Parameter filterTaskGroupId: Filter to listings for this task group.
    /// - Parameter filterOrderId: Filter to listings on this order.
    /// - Parameter filterCreatedByOrgId: Filter to listings created by this provider org (lister). Mostly useful on bidder views to slice by lister.
    /// - Parameter filterCreatedByUserId: Filter to listings created by this operator (audit).
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForProviderBidderV1(sortBy: ListingSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: ListingStatusEnum? = nil, filterType: ListingTypeEnum? = nil, filterTaskGroupId: String? = nil, filterOrderId: String? = nil, filterCreatedByOrgId: String? = nil, filterCreatedByUserId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ListingForBidderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/listings/list_for_provider_bidder/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_type": filterType.map { .string($0.rawValue) }, 
                "filter_task_group_id": filterTaskGroupId.map { .string($0) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_created_by_org_id": filterCreatedByOrgId.map { .string($0) }, 
                "filter_created_by_user_id": filterCreatedByUserId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListingForBidderListRes.self
        )
    }

    /// Lists DRIVERS-audience listings where the caller (resolved to a Driver of their org) is a snapshot participant. Driver-side bidder view with filtering, sorting, and pagination. Returns the bidder shape with tasks and mileage (no `internal_notes`). | authz: allowed_org_types=[provider], min_org_role=driver | () -> (ListingForBidderListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterStatus: Filter by listing status(es). Multi-select.
    /// - Parameter filterType: Filter by listing type(s). Multi-select.
    /// - Parameter filterTaskGroupId: Filter to listings for this task group.
    /// - Parameter filterOrderId: Filter to listings on this order.
    /// - Parameter filterCreatedByOrgId: Filter to listings created by this provider org (lister). Mostly useful on bidder views to slice by lister.
    /// - Parameter filterCreatedByUserId: Filter to listings created by this operator (audit).
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForDriverBidderV1(sortBy: ListingSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: ListingStatusEnum? = nil, filterType: ListingTypeEnum? = nil, filterTaskGroupId: String? = nil, filterOrderId: String? = nil, filterCreatedByOrgId: String? = nil, filterCreatedByUserId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> ListingForBidderListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/listings/list_for_driver_bidder/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_type": filterType.map { .string($0.rawValue) }, 
                "filter_task_group_id": filterTaskGroupId.map { .string($0) }, 
                "filter_order_id": filterOrderId.map { .string($0) }, 
                "filter_created_by_org_id": filterCreatedByOrgId.map { .string($0) }, 
                "filter_created_by_user_id": filterCreatedByUserId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: ListingForBidderListRes.self
        )
    }

    /// Creates a Listing for a TaskGroup that the caller's org coordinates. Snapshots participants by unioning ad-hoc picks with expanded bidding groups. When `auto_open_priced_bid_threads` is True, also auto-opens one BidThread per resolved participant with a lister-side seed Bid carrying default-rate-sheet-derived pricing (falling back to the listing's `pro_forma_line_items` when no rate sheet is configured for a participant) — listing insert and thread inserts are atomic. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.ListingClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/listings/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Partial update of a Listing. Allowed only while `status == OPEN`. Audience participant lists are NOT editable here — use add_participants / remove_participants. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(listingId: String, request: Requests.ListingClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/listing/listings/update/v1/\(listingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Expands the audience of an OPEN PROVIDERS listing. Ad-hoc provider picks are unioned with expanded org bidding groups, then `$addToSet` onto the listing. Rejected for DRIVERS listings. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingAddProviderParticipantsReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addProviderParticipantsV1(listingId: String, request: Requests.ListingAddProviderParticipantsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/listings/add_provider_participants/v1/\(listingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Expands the audience of an OPEN DRIVERS listing. Ad-hoc driver picks are unioned with expanded driver bidding groups, then `$addToSet` onto the listing. Rejected for PROVIDERS listings. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingAddDriverParticipantsReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addDriverParticipantsV1(listingId: String, request: Requests.ListingAddDriverParticipantsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/listings/add_driver_participants/v1/\(listingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Narrows the audience of an OPEN PROVIDERS listing. Rejected for any participant with a live (OPEN) BidThread. Rejected for DRIVERS listings. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingRemoveProviderParticipantsReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeProviderParticipantsV1(listingId: String, request: Requests.ListingRemoveProviderParticipantsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/listing/listings/remove_provider_participants/v1/\(listingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Narrows the audience of an OPEN DRIVERS listing. Rejected for any driver with a live (OPEN) BidThread. Rejected for PROVIDERS listings. | authz: allowed_org_types=[provider], min_org_role=operator | (ListingRemoveDriverParticipantsReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeDriverParticipantsV1(listingId: String, request: Requests.ListingRemoveDriverParticipantsReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/listing/listings/remove_driver_participants/v1/\(listingId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Cancels an OPEN listing. All OPEN BidThreads on this listing are system-rejected. No shipping or billing side-effects. Idempotent: no-op on an already-terminal listing. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelV1(listingId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/listing/listings/cancel/v1/\(listingId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}