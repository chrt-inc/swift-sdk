import Foundation

public final class AdHocClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates an ad-hoc line item group. Optionally associates with a TaskGroup. Starts as ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator | (CreateAdHocLineItemGroupReq) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CreateAdHocLineItemGroupReq, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/ad_hoc/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Adds a line item to an ad-hoc line item group. LIG must be ad-hoc (is_ad_hoc=True) and ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | (LineItemClientCreate1) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addLineItemV1(lineItemGroupId: String, request: Requests.LineItemClientCreate1, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/ad_hoc/add_line_item/v1/\(lineItemGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Removes a line item from an ad-hoc line item group. LIG must be ad-hoc (is_ad_hoc=True) and ADJUSTABLE. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | (line_item_uuid_str) -> (LineItemGroup1)
    ///
    /// - Parameter lineItemUuidStr: UUID of the line item to remove from the LIG
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeLineItemV1(lineItemGroupId: String, lineItemUuidStr: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/line_item_groups/ad_hoc/remove_line_item/v1/\(lineItemGroupId)",
            queryParams: [
                "line_item_uuid_str": .string(lineItemUuidStr)
            ],
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Deletes an ad-hoc line item group. LIG must be ad-hoc (is_ad_hoc=True) and ADJUSTABLE or FINALIZED. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing/line_item_groups/ad_hoc/delete/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets or updates the task_group_id on an existing ad-hoc LIG, deriving order_id and order_short_id from the task group. If the LIG is on a statement, recalculates the statement's order refs. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators, courier_org_operators, forwarder_org_operators] | (SetAdHocTaskGroupReq) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskGroupV1(lineItemGroupId: String, request: Requests.SetAdHocTaskGroupReq, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/line_item_groups/ad_hoc/set_task_group/v1/\(lineItemGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }
}