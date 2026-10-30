import Foundation

public final class RateSheetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives a rate sheet so it can no longer be chosen; orders already priced with it keep it. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (RateSheet1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheets.archiveV1(rateSheetId: "rate_sheet_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(rateSheetId: String, requestOptions: RequestOptions? = nil) async throws -> RateSheet1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/rate_sheets/archive/v1/\(rateSheetId)",
            requestOptions: requestOptions,
            responseType: RateSheet1.self
        )
    }

    /// Creates a rate sheet that prices one segment type for one counterparty. | authz: allowed_org_types=[provider], min_org_role=operator | (RateSheetClientCreate1) -> (RateSheet1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheets.createV1(request: RateSheetClientCreate1(
    ///         currencyCode: .usd,
    ///         invoiceType: .accountsReceivable,
    ///         name: "name",
    ///         rules: [
    ///             RulesItem.afterHours(
    ///                 AfterHoursChargeRule1(
    ///                     flatRate: 1.1,
    ///                     lineItemDescription: "line_item_description"
    ///                 )
    ///             )
    ///         ],
    ///         schemaVersion: 1,
    ///         taskGroupType: .chrtGroundProvider
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: RateSheetClientCreate1, requestOptions: RequestOptions? = nil) async throws -> RateSheet1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/rate_sheets/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: RateSheet1.self
        )
    }

    /// Retrieves an active or archived rate sheet owned by the caller's organization. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (RateSheet1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheets.getV1(rateSheetId: "rate_sheet_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(rateSheetId: String, requestOptions: RequestOptions? = nil) async throws -> RateSheet1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/rate_sheets/get/v1/\(rateSheetId)",
            requestOptions: requestOptions,
            responseType: RateSheet1.self
        )
    }

    /// Lists the caller organization's rate sheets by name, optionally for one direction or segment type, active only unless archived ones are requested. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[RateSheet1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheets.listV1(
    ///         invoiceType: .accountsReceivable,
    ///         taskGroupType: .chrtGroundProvider,
    ///         includeArchived: true
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(invoiceType: InvoiceTypeEnum1? = nil, taskGroupType: TaskGroupTypeEnum1? = nil, includeArchived: Bool? = nil, requestOptions: RequestOptions? = nil) async throws -> [RateSheet1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/rate_sheets/list/v1",
            queryParams: [
                "invoice_type": invoiceType.map { .string($0.rawValue) }, 
                "task_group_type": taskGroupType.map { .string($0.rawValue) }, 
                "include_archived": includeArchived.map { .bool($0) }
            ],
            requestOptions: requestOptions,
            responseType: [RateSheet1].self
        )
    }

    /// Prices one of the caller's orders with a rate sheet as written, saved or not, and returns the lines it would charge without writing anything. | authz: allowed_org_types=[provider], min_org_role=operator | authz_personas=[coordinator_org_operators, order_executor_org_operators] | (RateSheetPreviewReq) -> (RateSheetPreviewRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheets.previewV1(request: .init(
    ///         orderId: "order_id",
    ///         rateSheet: RateSheetClientCreate1(
    ///             currencyCode: .usd,
    ///             invoiceType: .accountsReceivable,
    ///             name: "name",
    ///             rules: [
    ///                 RulesItem.afterHours(
    ///                     AfterHoursChargeRule1(
    ///                         flatRate: 1.1,
    ///                         lineItemDescription: "line_item_description"
    ///                     )
    ///                 )
    ///             ],
    ///             schemaVersion: 1,
    ///             taskGroupType: .chrtGroundProvider
    ///         )
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func previewV1(request: Requests.RateSheetPreviewReq, requestOptions: RequestOptions? = nil) async throws -> RateSheetPreviewRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/billing_new/rate_sheets/preview/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: RateSheetPreviewRes.self
        )
    }

    /// Replaces an active rate sheet's fields and rules; orders priced later use the new rules. | authz: allowed_org_types=[provider], min_org_role=operator | (RateSheetUpdateReq) -> (RateSheet1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheets.updateV1(
    ///         rateSheetId: "rate_sheet_id",
    ///         request: .init(
    ///             expectedRevision: 1,
    ///             rateSheet: RateSheetClientCreate1(
    ///                 currencyCode: .usd,
    ///                 invoiceType: .accountsReceivable,
    ///                 name: "name",
    ///                 rules: [
    ///                     RulesItem.afterHours(
    ///                         AfterHoursChargeRule1(
    ///                             flatRate: 1.1,
    ///                             lineItemDescription: "line_item_description"
    ///                         )
    ///                     )
    ///                 ],
    ///                 schemaVersion: 1,
    ///                 taskGroupType: .chrtGroundProvider
    ///             )
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(rateSheetId: String, request: Requests.RateSheetUpdateReq, requestOptions: RequestOptions? = nil) async throws -> RateSheet1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/billing_new/rate_sheets/update/v1/\(rateSheetId)",
            body: request,
            requestOptions: requestOptions,
            responseType: RateSheet1.self
        )
    }

    /// Counts the caller organization's orders priced with a rate sheet and the defaults that name it, so an operator knows what an edit affects. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (RateSheetUsageRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheets.usageV1(rateSheetId: "rate_sheet_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usageV1(rateSheetId: String, requestOptions: RequestOptions? = nil) async throws -> RateSheetUsageRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/rate_sheets/usage/v1/\(rateSheetId)",
            requestOptions: requestOptions,
            responseType: RateSheetUsageRes.self
        )
    }
}