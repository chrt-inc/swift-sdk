import Foundation

public final class BidThreadsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Accepts an offer; lister acceptance awards immediately, while bidder acceptance follows the listing's auto-award setting. | authz: allowed_org_types=[provider], min_org_role=member; lister min_org_role=operator | (BidAppendReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.acceptV1(
    ///         bidThreadId: "bid_thread_id",
    ///         request: BidAppendReq(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.byIdV1(bidThreadId: "bid_thread_id")
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Confirms a pending bidder acceptance and awards at its recorded price. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.confirmAcceptV1(bidThreadId: "bid_thread_id")
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Adds a counteroffer to an open negotiation. | authz: allowed_org_types=[provider], min_org_role=member | (BidAppendReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.counterV1(
    ///         bidThreadId: "bid_thread_id",
    ///         request: BidAppendReq(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Opens a bid thread with an offer, acceptance, or denial. | authz: allowed_org_types=[provider], min_org_role=member | (BidThreadClientCreate1) -> (PydanticObjectId)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.createV1(request: .init(
    ///         action: .submit,
    ///         listingId: "listing_id"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
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

    /// Declines an open negotiation and closes its thread. | authz: allowed_org_types=[provider], min_org_role=member | (BidAppendReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.denyV1(
    ///         bidThreadId: "bid_thread_id",
    ///         request: BidAppendReq(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.listForBidderV1(
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterStatus: [
    ///             .open
    ///         ],
    ///         filterListingId: "filter_listing_id",
    ///         filterBidderProviderOrgId: "filter_bidder_provider_org_id",
    ///         filterBidderDriverId: "filter_bidder_driver_id",
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStatusChangedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStatusChangedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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
    public func listForBidderV1(sortBy: BidThreadSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: [BidThreadStatusEnum]? = nil, filterListingId: String? = nil, filterBidderProviderOrgId: String? = nil, filterBidderDriverId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterStatusChangedAtTimestampGte: Date? = nil, filterStatusChangedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> BidThreadListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/bid_threads/list_for_bidder/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
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
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.listForListingV1(
    ///         listingId: "listing_id",
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterStatus: [
    ///             .open
    ///         ],
    ///         filterListingId: "filter_listing_id",
    ///         filterBidderProviderOrgId: "filter_bidder_provider_org_id",
    ///         filterBidderDriverId: "filter_bidder_driver_id",
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStatusChangedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterStatusChangedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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
    public func listForListingV1(listingId: String, sortBy: BidThreadSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterStatus: [BidThreadStatusEnum]? = nil, filterListingId: String? = nil, filterBidderProviderOrgId: String? = nil, filterBidderDriverId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterStatusChangedAtTimestampGte: Date? = nil, filterStatusChangedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> BidThreadListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/listing/bid_threads/list_for_listing/v1/\(listingId)",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
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

    /// Withdraws the bidder's offer and closes its thread. | authz: allowed_org_types=[provider], min_org_role=member | (BidAppendReq) -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.listing.bidThreads.withdrawV1(
    ///         bidThreadId: "bid_thread_id",
    ///         request: BidAppendReq(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
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