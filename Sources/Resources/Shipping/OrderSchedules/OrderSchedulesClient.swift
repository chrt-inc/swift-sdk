import Foundation

public final class OrderSchedulesClient: Sendable {
    public let draft: DraftClient
    public let orderManifest: OrderManifestClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.draft = DraftClient(config: config)
        self.orderManifest = OrderManifestClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists order schedules for the caller's organization with filtering, sorting, and pagination. | authz: min_org_role=operator | () -> (OrderScheduleListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter filterIntendedStatus: Filter by intended status(es).
    /// - Parameter filterOwnedByUserId: Filter by the user who owns the order schedule.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OrderScheduleSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, filterIntendedStatus: OrderScheduleStatusEnum1? = nil, filterOwnedByUserId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderScheduleListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_schedules/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_intended_status": filterIntendedStatus.map { .string($0.rawValue) }, 
                "filter_owned_by_user_id": filterOwnedByUserId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderScheduleListRes.self
        )
    }

    /// Retrieves an order schedule by ID. | authz: min_org_role=operator | () -> (OrderSchedule1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> OrderSchedule1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_schedules/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: OrderSchedule1.self
        )
    }

    /// Retrieves the generated order count and live orchestrator status from Temporal. | authz: min_org_role=operator | () -> (OrderScheduleAboutRes)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func aboutV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> OrderScheduleAboutRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_schedules/about/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: OrderScheduleAboutRes.self
        )
    }

    /// Validates a draft order schedule, creates its Temporal orchestrator schedule, and activates it. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func activateV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_schedules/activate/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Triggers an order schedule immediately. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func triggerV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_schedules/trigger/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Pauses an active order schedule. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pauseV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_schedules/pause/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Unpauses a paused order schedule. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unpauseV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_schedules/unpause/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Transfers order schedule workflow ownership to the caller. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func takeOwnershipV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_schedules/take_ownership/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Archives an order schedule and deletes its Temporal schedule, preventing future runs. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_schedules/archive/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Re-syncs the Temporal schedule to match the order schedule's intended status. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func syncWithOrchestratorV1(orderScheduleId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_schedules/sync_with_orchestrator/v1/\(orderScheduleId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}