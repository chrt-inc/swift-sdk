import Foundation

public final class RateSheetDefaultsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Deletes a rate-sheet default; orders already priced keep the sheet they were priced with. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheetDefaults.deleteV1(rateSheetDefaultId: "rate_sheet_default_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(rateSheetDefaultId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/billing_new/rate_sheet_defaults/delete/v1/\(rateSheetDefaultId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists the caller organization's rate-sheet defaults. | authz: allowed_org_types=[provider], min_org_role=operator | () -> (list[RateSheetDefault1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheetDefaults.listV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(requestOptions: RequestOptions? = nil) async throws -> [RateSheetDefault1] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/billing_new/rate_sheet_defaults/list/v1",
            requestOptions: requestOptions,
            responseType: [RateSheetDefault1].self
        )
    }

    /// Sets the rate sheet used for one counterparty, direction, service line and segment type when no sheet is chosen by hand; a null rate_sheet_id marks those segments not billed. | authz: allowed_org_types=[provider], min_org_role=operator | (RateSheetDefaultClientCreate1) -> (RateSheetDefault1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.billingNew.rateSheetDefaults.setV1(request: .init(
    ///         invoiceType: .accountsReceivable,
    ///         schemaVersion: 1,
    ///         serviceLine: .onDemand,
    ///         taskGroupType: .chrtGroundProvider
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setV1(request: Requests.RateSheetDefaultClientCreate1, requestOptions: RequestOptions? = nil) async throws -> RateSheetDefault1 {
        return try await httpClient.performRequest(
            method: .put,
            path: "/billing_new/rate_sheet_defaults/set/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: RateSheetDefault1.self
        )
    }
}