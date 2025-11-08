import Foundation

public final class ExpandedListClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches expanded task groups for the courier org with optional filters and expanded related data.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierAdministratorV1(page: Int? = nil, pageSize: Int? = nil, sortBy: TaskGroupExpandedSortFieldEnum? = nil, sortOrder: SortOrderEnum? = nil, filterCreatedAtGte: Date? = nil, filterCreatedAtLte: Date? = nil, filterStartedAtGte: Date? = nil, filterStartedAtLte: Date? = nil, filterCompletedAtGte: Date? = nil, filterCompletedAtLte: Date? = nil, filterOrderCancelled: Bool? = nil, filterStatuses: TaskGroupStatusEnum1? = nil, filterCompleted: Bool? = nil, filterPaused: Bool? = nil, request: TaskGroupExpandedForCourierAdministratorReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupsExpandedForCourierAdministratorRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/list/for_courier_administrator/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "filter_created_at_gte": filterCreatedAtGte.map { .date($0) }, 
                "filter_created_at_lte": filterCreatedAtLte.map { .date($0) }, 
                "filter_started_at_gte": filterStartedAtGte.map { .date($0) }, 
                "filter_started_at_lte": filterStartedAtLte.map { .date($0) }, 
                "filter_completed_at_gte": filterCompletedAtGte.map { .date($0) }, 
                "filter_completed_at_lte": filterCompletedAtLte.map { .date($0) }, 
                "filter_order_cancelled": filterOrderCancelled.map { .bool($0) }, 
                "filter_statuses": filterStatuses.map { .string($0.rawValue) }, 
                "filter_completed": filterCompleted.map { .bool($0) }, 
                "filter_paused": filterPaused.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupsExpandedForCourierAdministratorRes.self
        )
    }

    /// Fetches expanded task groups assigned to a courier driver with optional expanded related data.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func forCourierDriverV1(page: Int? = nil, pageSize: Int? = nil, sortBy: TaskGroupExpandedSortFieldEnum? = nil, sortOrder: SortOrderEnum? = nil, filterCreatedAtGte: Date? = nil, filterCreatedAtLte: Date? = nil, filterStartedAtGte: Date? = nil, filterStartedAtLte: Date? = nil, filterCompletedAtGte: Date? = nil, filterCompletedAtLte: Date? = nil, filterOrderCancelled: Bool? = nil, filterStatuses: TaskGroupStatusEnum1? = nil, filterCompleted: Bool? = nil, filterPaused: Bool? = nil, request: TaskGroupExpandedForCourierDriverReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupsExpandedForCourierDriverRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/expanded/list/for_courier_driver/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "filter_created_at_gte": filterCreatedAtGte.map { .date($0) }, 
                "filter_created_at_lte": filterCreatedAtLte.map { .date($0) }, 
                "filter_started_at_gte": filterStartedAtGte.map { .date($0) }, 
                "filter_started_at_lte": filterStartedAtLte.map { .date($0) }, 
                "filter_completed_at_gte": filterCompletedAtGte.map { .date($0) }, 
                "filter_completed_at_lte": filterCompletedAtLte.map { .date($0) }, 
                "filter_order_cancelled": filterOrderCancelled.map { .bool($0) }, 
                "filter_statuses": filterStatuses.map { .string($0.rawValue) }, 
                "filter_completed": filterCompleted.map { .bool($0) }, 
                "filter_paused": filterPaused.map { .bool($0) }
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupsExpandedForCourierDriverRes.self
        )
    }
}