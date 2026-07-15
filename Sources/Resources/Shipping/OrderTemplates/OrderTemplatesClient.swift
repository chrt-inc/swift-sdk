import Foundation

public final class OrderTemplatesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives an order template by setting archived_at_timestamp. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates/archive/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Retrieves an order template with resolved references, recent orders, and total order count. Unresolvable list references are omitted so the caller can detect dangling ids. | authz: min_org_role=operator | () -> (OrderTemplateExpanded1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getExpandedByIdV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateExpanded1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_templates/expanded/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: OrderTemplateExpanded1.self
        )
    }

    /// Lists order templates for the caller's organization with filtering, sorting, pagination, and optional full-text search (name, description, text, off_chrt_reference_id_str). | authz: min_org_role=operator | () -> (OrderTemplateListRes)
    ///
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order (asc or desc).
    /// - Parameter search: Full-text search query
    /// - Parameter filterArchived: Filter by archived (True) vs active (False) templates.
    /// - Parameter filterOwnedByUserId: Filter by the user who owns the order template.
    /// - Parameter filterOffChrtReferenceIdStr: Filter by the off-CHRT reference ID string.
    /// - Parameter filterShipperOrgId: Filter by on-CHRT shipper org ID.
    /// - Parameter filterOffChrtShipperOrgDataId: Filter by off-CHRT shipper organization data ID.
    /// - Parameter filterCoordinatorOrgId: Filter by coordinator org ID.
    /// - Parameter filterDepartmentId: Filter by coordinator department ID.
    /// - Parameter filterCoordinatorLabel: Filter by coordinator label.
    /// - Parameter filterDriverId: Filter by driver ID included in the template.
    /// - Parameter filterDirectoryEntryId: Filter by directory entry ID included in the template.
    /// - Parameter filterTaskListsToApplyAtOrderCreationTaskListId: Filter by task list ID included in order-creation applications.
    /// - Parameter filterTaskListsToApplyAtOrderStagingTaskListId: Filter by task list ID included in staging applications.
    /// - Parameter filterCreatedAtTimestampGte: Filter created_at_timestamp >= value (inclusive).
    /// - Parameter filterCreatedAtTimestampLte: Filter created_at_timestamp <= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampGte: Filter last_edited_at_timestamp >= value (inclusive).
    /// - Parameter filterLastEditedAtTimestampLte: Filter last_edited_at_timestamp <= value (inclusive).
    /// - Parameter filterLastUsedAtTimestampGte: Filter last_used_at_timestamp >= value (inclusive).
    /// - Parameter filterLastUsedAtTimestampLte: Filter last_used_at_timestamp <= value (inclusive).
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: OrderTemplateSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, search: String? = nil, filterArchived: Bool? = nil, filterOwnedByUserId: String? = nil, filterOffChrtReferenceIdStr: String? = nil, filterShipperOrgId: String? = nil, filterOffChrtShipperOrgDataId: String? = nil, filterCoordinatorOrgId: String? = nil, filterDepartmentId: String? = nil, filterCoordinatorLabel: String? = nil, filterDriverId: String? = nil, filterDirectoryEntryId: String? = nil, filterTaskListsToApplyAtOrderCreationTaskListId: String? = nil, filterTaskListsToApplyAtOrderStagingTaskListId: String? = nil, filterCreatedAtTimestampGte: Date? = nil, filterCreatedAtTimestampLte: Date? = nil, filterLastEditedAtTimestampGte: Date? = nil, filterLastEditedAtTimestampLte: Date? = nil, filterLastUsedAtTimestampGte: Date? = nil, filterLastUsedAtTimestampLte: Date? = nil, requestOptions: RequestOptions? = nil) async throws -> OrderTemplateListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_templates/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "search": search.map { .string($0) }, 
                "filter_archived": filterArchived.map { .bool($0) }, 
                "filter_owned_by_user_id": filterOwnedByUserId.map { .string($0) }, 
                "filter_off_chrt_reference_id_str": filterOffChrtReferenceIdStr.map { .string($0) }, 
                "filter_shipper_org_id": filterShipperOrgId.map { .string($0) }, 
                "filter_off_chrt_shipper_org_data_id": filterOffChrtShipperOrgDataId.map { .string($0) }, 
                "filter_coordinator_org_id": filterCoordinatorOrgId.map { .string($0) }, 
                "filter_department_id": filterDepartmentId.map { .string($0) }, 
                "filter_coordinator_label": filterCoordinatorLabel.map { .string($0) }, 
                "filter_driver_id": filterDriverId.map { .string($0) }, 
                "filter_directory_entry_id": filterDirectoryEntryId.map { .string($0) }, 
                "filter_task_lists_to_apply_at_order_creation_task_list_id": filterTaskListsToApplyAtOrderCreationTaskListId.map { .string($0) }, 
                "filter_task_lists_to_apply_at_order_staging_task_list_id": filterTaskListsToApplyAtOrderStagingTaskListId.map { .string($0) }, 
                "filter_created_at_timestamp_gte": filterCreatedAtTimestampGte.map { .date($0) }, 
                "filter_created_at_timestamp_lte": filterCreatedAtTimestampLte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_gte": filterLastEditedAtTimestampGte.map { .date($0) }, 
                "filter_last_edited_at_timestamp_lte": filterLastEditedAtTimestampLte.map { .date($0) }, 
                "filter_last_used_at_timestamp_gte": filterLastUsedAtTimestampGte.map { .date($0) }, 
                "filter_last_used_at_timestamp_lte": filterLastUsedAtTimestampLte.map { .date($0) }
            ],
            requestOptions: requestOptions,
            responseType: OrderTemplateListRes.self
        )
    }

    /// Removes a (possibly dangling) reference id from a template column. | authz: min_org_role=operator | (OrderTemplateRemoveReferenceReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func referencesRemoveV1(orderTemplateId: String, request: Requests.OrderTemplateRemoveReferenceReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates/references/remove/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Restores an archived order template by clearing archived_at_timestamp. | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unarchiveV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates/unarchive/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates an order template. | authz: min_org_role=operator | (OrderTemplateClientUpdate1) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(orderTemplateId: String, request: Requests.OrderTemplateClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/order_templates/update/v1/\(orderTemplateId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Creates a new order template. | authz: min_org_role=operator | (OrderTemplateClientCreate1) -> (PydanticObjectId)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.OrderTemplateClientCreate1, requestOptions: RequestOptions? = nil) async throws -> String {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/order_templates/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: String.self
        )
    }

    /// Retrieves an order template by ID. | authz: min_org_role=operator | () -> (OrderTemplate1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getByIdV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> OrderTemplate1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/shipping/order_templates/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: OrderTemplate1.self
        )
    }

    /// Deletes an order template, but only when no orders were built from it (otherwise archive instead). | authz: min_org_role=operator | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(orderTemplateId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/order_templates/v1/\(orderTemplateId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}