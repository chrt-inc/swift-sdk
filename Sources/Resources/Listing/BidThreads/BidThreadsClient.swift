import Foundation

public final class BidThreadsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Pushes a bidder-side ACCEPT onto an OPEN thread. References the most recent lister-side pro_forma (or the listing's opening for DISPATCH). On `auto_award_first_accept=True` listings, fires the full cascade immediately (thread ACCEPTED, listing AWARDED, shipping + billing side-effects). Otherwise leaves the thread OPEN for the lister to finalise via confirm_accept. Lister-side finalisation lives on confirm_accept; calling /accept/v1 from the lister side is rejected (400). | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func acceptV1(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/bid_threads/accept/v1/\(bidThreadId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Fetches a bid thread by id. Visible to the lister, the bidder org (provider), and the bidder driver. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (BidThread1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func byIdV1(bidThreadId: String, requestOptions: RequestOptions? = nil) async throws -> BidThread1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/bid_threads/by_id/v1/\(bidThreadId)",
            requestOptions: requestOptions,
            responseType: BidThread1.self
        )
    }

    /// Lister confirmation of a bidder's ACCEPT on this thread, used when `listing.auto_award_first_accept == False`. Runs the full award cascade: thread ACCEPTED, listing AWARDED, sibling threads / listings cancelled, shipping + billing side-effects. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func confirmAcceptV1(bidThreadId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/bid_threads/confirm_accept/v1/\(bidThreadId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Pushes a COUNTER Bid carrying revised pro_forma_line_items onto an OPEN NEGOTIATION thread. Both sides of the thread may COUNTER. | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func counterV1(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/bid_threads/counter/v1/\(bidThreadId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Opens a new BidThread on a Listing. The body carries the thread's first Bid (SUBMIT / ACCEPT / DENY). Bidder identity is resolved server-side from the caller's JWT + the listing's audience. | authz: allowed_org_types=[provider], min_org_role=driver | (BidThreadClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.BidThreadClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/bid_threads/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Pushes a DENY onto an OPEN thread, flipping its status to DENIED (terminal). Both sides may deny. References the most recent opposite-side Bid; carries no pro_forma. | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func denyV1(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/bid_threads/deny/v1/\(bidThreadId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists bid threads where the caller is the bidder — either as the bidder org (operator+) or as the bidder driver (driver). Filtering, sorting, and pagination supported. | authz: allowed_org_types=[provider], min_org_role=driver | () -> (BidThreadListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterStatus: Filter by thread status(es). Multi-select.
    /// - Parameter filterListingId: Filter to threads on this listing. Lister route ignores this field (path param wins); bidder route uses it to slice within the caller's bidder universe.
    /// - Parameter filterBidderProviderOrgId: Filter to threads where the bidder is this provider org. Useful on lister views to slice by bidder.
    /// - Parameter filterBidderDriverId: Filter to threads where the bidder is this driver. Useful on lister views to slice by driver bidder.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterStatusChangedAtTimestampGte: Filter status_changed_at_timestamp >= value (inclusive).
    /// - Parameter filterStatusChangedAtTimestampLte: Filter status_changed_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForBidderV1(sortBy: BidThreadSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: BidThreadStatusEnum? = nil, filterListingId: String? = nil, filterBidderProviderOrgId: String? = nil, filterBidderDriverId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterStatusChangedAtTimestampGte: Date? = nil, filterStatusChangedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> BidThreadListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/bid_threads/list_for_bidder/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_listing_id": filterListingId.map { .string($0) }, 
                "filter_bidder_provider_org_id": filterBidderProviderOrgId.map { .string($0) }, 
                "filter_bidder_driver_id": filterBidderDriverId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_status_changed_at_timestamp_gte": filterStatusChangedAtTimestampGte.map { .date($0) }, 
                "filter_status_changed_at_timestamp_lte": filterStatusChangedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: BidThreadListRes.self
        )
    }

    /// Lists all bid threads on a listing with filtering, sorting, and pagination. Lister-only — the listing must belong to the caller's org. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (BidThreadListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterStatus: Filter by thread status(es). Multi-select.
    /// - Parameter filterListingId: Filter to threads on this listing. Lister route ignores this field (path param wins); bidder route uses it to slice within the caller's bidder universe.
    /// - Parameter filterBidderProviderOrgId: Filter to threads where the bidder is this provider org. Useful on lister views to slice by bidder.
    /// - Parameter filterBidderDriverId: Filter to threads where the bidder is this driver. Useful on lister views to slice by driver bidder.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterStatusChangedAtTimestampGte: Filter status_changed_at_timestamp >= value (inclusive).
    /// - Parameter filterStatusChangedAtTimestampLte: Filter status_changed_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForListingV1(listingId: String, sortBy: BidThreadSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: BidThreadStatusEnum? = nil, filterListingId: String? = nil, filterBidderProviderOrgId: String? = nil, filterBidderDriverId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterStatusChangedAtTimestampGte: Date? = nil, filterStatusChangedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> BidThreadListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/bid_threads/list_for_listing/v1/\(listingId)",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_listing_id": filterListingId.map { .string($0) }, 
                "filter_bidder_provider_org_id": filterBidderProviderOrgId.map { .string($0) }, 
                "filter_bidder_driver_id": filterBidderDriverId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_status_changed_at_timestamp_gte": filterStatusChangedAtTimestampGte.map { .date($0) }, 
                "filter_status_changed_at_timestamp_lte": filterStatusChangedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: BidThreadListRes.self
        )
    }

    /// Pushes a bidder-side WITHDRAW onto an OPEN thread, flipping its status to WITHDRAWN (terminal). Bidder-only — the lister equivalent is CANCEL on the listing. | authz: allowed_org_types=[provider], min_org_role=driver | (BidAppendReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func withdrawV1(bidThreadId: String, request: BidAppendReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/listing/bid_threads/withdraw/v1/\(bidThreadId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}