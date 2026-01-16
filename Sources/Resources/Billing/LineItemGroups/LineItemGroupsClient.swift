import Foundation

public final class LineItemGroupsClient: Sendable {
    public let adHoc: AdHocClient
    public let messages: MessagesClient
    public let s3Objects: S3ObjectsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.adHoc = AdHocClient(config: config)
        self.messages = MessagesClient(config: config)
        self.s3Objects = S3ObjectsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Gets a line item group by ID. | authz_personas=[lig_org_operators, lig_driver] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_item_groups/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Lists line item groups for the authenticated courier organization with filtering and pagination. | org_type=[courier], min_org_role=operator | () -> (LineItemGroupListRes)
    ///
    /// - Parameter filterDriverId: Filter by driver ID (payment_destination_driver_id)
    /// - Parameter filterStatus: Filter by line item group status(es)
    /// - Parameter filterAttachedToStatement: Filter by whether line item group is attached to a statement
    /// - Parameter filterPaymentRole: Filter by payment role: origin (courier pays) or destination (courier receives). Returns both if not specified.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listForCourierOrgV1(filterDriverId: String? = nil, filterStatus: LineItemGroupStatusEnum1? = nil, filterAttachedToStatement: Bool? = nil, filterPaymentRole: PaymentRoleFilterEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> LineItemGroupListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing/line_item_groups/list/for_courier_org/v1",
            queryParams: [
                "filter_driver_id": filterDriverId.map { .string($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }, 
                "filter_attached_to_statement": filterAttachedToStatement.map { .bool($0) }, 
                "filter_payment_role": filterPaymentRole.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: LineItemGroupListRes.self
        )
    }

    /// Finalizes a line item group. LIG must be in ADJUSTABLE status. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func finalizeV1(lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/finalize/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// (Re)calculates line items for a line item group. LIG must be PENDING_CALCULATION or ADJUSTABLE and must be associated with a TaskGroup. Note: Line item calculation normally happens automatically; this route is primarily for PENDING_CALCULATION LIGs where automatic calculation failed (e.g., due to third-party service failure). | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | () -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func calculateLineItemsV1(lineItemGroupId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/calculate_line_items/v1/\(lineItemGroupId)",
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Associates a line item group with a statement. LIG must be PENDING_RATES, PENDING_CALCULATION, ADJUSTABLE, or FINALIZED (before OPEN). Statement must be OPEN. LIG payment info must match Statement. Also removes from previous statement if any. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators, statement_owner_operators] | (PydanticObjectId) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func associateWithStatementV1(lineItemGroupId: String, statementId: String, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing/line_item_groups/associate_with_statement/v1/\(lineItemGroupId)",
            queryParams: [
                "statement_id": .string(statementId)
            ],
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }

    /// Adjusts a line item within a line item group. LIG must be ADJUSTABLE. Adjustment can be negative beyond item.amount to serve as a credit. | org_type=[courier, forwarder], min_org_role=operator, authz_personas=[lig_owner_operators] | (AdjustLineItemReq) -> (LineItemGroup1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func adjustLineItemV1(lineItemGroupId: String, request: Requests.AdjustLineItemReq, requestOptions: RequestOptions? = nil) async throws -> LineItemGroup1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/billing/line_item_groups/adjust_line_item/v1/\(lineItemGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: LineItemGroup1.self
        )
    }
}