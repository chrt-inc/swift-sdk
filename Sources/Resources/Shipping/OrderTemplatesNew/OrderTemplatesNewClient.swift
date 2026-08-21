import Foundation

public final class OrderTemplatesNewClient: Sendable {
    public let cargos: CargosClient
    public let taskArtifacts: OrderTemplatesNewTaskArtifactsClient
    public let taskGroups: OrderTemplatesNewTaskGroupsClient
    public let tasks: OrderTemplatesNewTasksClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cargos = CargosClient(config: config)
        self.taskArtifacts = OrderTemplatesNewTaskArtifactsClient(config: config)
        self.taskGroups = OrderTemplatesNewTaskGroupsClient(config: config)
        self.tasks = OrderTemplatesNewTasksClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives an order template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.postArchiveV1(orderTemplateId: "order_template_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postArchiveV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/archive/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Atomically replaces an active order template core. | authz: min_org_role=operator | (OrderTemplateNewCore1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.putReplaceCoreV1(
    ///         orderTemplateId: "order_template_id",
    ///         request: OrderTemplateNewCore1(
    ///             schemaVersion: 1
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func putReplaceCoreV1(orderTemplateId: String, request: OrderTemplateNewCore1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/order_templates_new/core/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Validates a natural-language date string and resolves it to a UTC timestamp. | authz: min_org_role=operator | (OrderTemplateNewDateparserResolveReq) -> (OrderTemplateNewDateparserResolveRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.resolveDateparserV1(request: .init(
    ///         dateparserStr: "dateparser_str",
    ///         timeZoneName: "America/New_York"
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func resolveDateparserV1(request: Requests.OrderTemplateNewDateparserResolveReq, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNewDateparserResolveRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/dateparser/resolve/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNewDateparserResolveRes.self
        )
    }

    /// Lists order templates with filtering, sorting, pagination, full-text search, and party/account expansion. | authz: min_org_role=operator | () -> (OrderTemplateNewListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.listV1(
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1,
    ///         search: "search",
    ///         filterArchived: true,
    ///         filterOwnedByUserId: "filter_owned_by_user_id",
    ///         filterCoordinatorLabel: "filter_coordinator_label",
    ///         filterExecutorOrgId: "filter_executor_org_id",
    ///         filterOffChrtExecutorOrgDataId: "filter_off_chrt_executor_org_data_id",
    ///         filterShipperOrgId: "filter_shipper_org_id",
    ///         filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
    ///         filterCoordinatorShipperAccountIds: [
    ///             "filter_coordinator_shipper_account_ids"
    ///         ],
    ///         filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastUsedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///         filterLastUsedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter search: Full-text search query for template name or description.
    /// - Parameter filterArchived: Include archived templates instead of active templates.
    /// - Parameter filterOwnedByUserId: Filter by the user that created the template.
    /// - Parameter filterCoordinatorLabel: Filter by coordinator label.
    /// - Parameter filterExecutorOrgId: Filter by an on-CHRT executor organization ID.
    /// - Parameter filterOffChrtExecutorOrgDataId: Filter by an off-CHRT executor organization data ID.
    /// - Parameter filterShipperOrgId: Filter by an on-CHRT shipper organization ID.
    /// - Parameter filterOffChrtShipperOrgDataId: Filter by an off-CHRT shipper organization data ID.
    /// - Parameter filterCoordinatorShipperAccountIds: Filter by coordinator shipper account ID(s) assigned to template tasks.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter filterLastUsedAtTimestampGte: Filter last_used_at_timestamp >= value (inclusive).
    /// - Parameter filterLastUsedAtTimestampLte: Filter last_used_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OrderTemplateNewSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterArchived: Bool? = nil, filterOwnedByUserId: String? = nil, filterCoordinatorLabel: String? = nil, filterExecutorOrgId: String? = nil, filterOffChrtExecutorOrgDataId: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgDataId: String? = nil, filterCoordinatorShipperAccountIds: [String]? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, filterLastUsedAtTimestampGte: Date? = nil, filterLastUsedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNewListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_templates_new/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_archived": filterArchived.map { .bool($0) }, 
                "filter_owned_by_user_id": filterOwnedByUserId.map { .string($0) }, 
                "filter_coordinator_label": filterCoordinatorLabel.map { .string($0) }, 
                "filter_executor_org_id": filterExecutorOrgId.map { .string($0) }, 
                "filter_off_chrt_executor_org_data_id": filterOffChrtExecutorOrgDataId.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_data_id": filterOffChrtShipperOrgDataId.map { .string($0) }, 
                "filter_coordinator_shipper_account_ids": filterCoordinatorShipperAccountIds.map { .stringArray($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }, 
                "filter_last_used_at_timestamp_gte": filterLastUsedAtTimestampGte.map { .date($0) }, 
                "filter_last_used_at_timestamp_lte": filterLastUsedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderTemplateNewListRes.self
        )
    }

    /// Restores an archived order template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.postUnarchiveV1(orderTemplateId: "order_template_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postUnarchiveV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/unarchive/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an order template owned by the caller's organization. | authz: min_org_role=operator | (OrderTemplateNewClientUpdate1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.updateV1(
    ///         orderTemplateId: "order_template_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(orderTemplateId: String, request: Requests.OrderTemplateNewClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_templates_new/update/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Creates an order template owned by the caller's organization. | authz: min_org_role=operator | (OrderTemplateNewClientCreate1) -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.createV1(request: .init(
    ///         name: "name",
    ///         schemaVersion: 1
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OrderTemplateNewClientCreate1, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates_new/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Retrieves an order template by ID. | authz: min_org_role=operator | () -> (OrderTemplateNew1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.getByIdV1(orderTemplateId: "order_template_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateNew1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_templates_new/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: OrderTemplateNew1.self
        )
    }

    /// Deletes an order template owned by the caller's organization. | authz: min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.shipping.orderTemplatesNew.deleteV1(orderTemplateId: "order_template_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_templates_new/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}