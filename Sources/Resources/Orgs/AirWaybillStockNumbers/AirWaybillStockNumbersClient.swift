import Foundation

public final class AirWaybillStockNumbersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds AWB numbers an airline gave the caller's organization to its AWB stock, skipping numbers already in it. | authz: min_org_role=operator | (AirWaybillStockNumbersAddReq) -> (AirWaybillStockNumbersAddRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airWaybillStockNumbers.addV1(request: .init(awbNumbers: [
    ///         "awb_numbers"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addV1(request: Requests.AirWaybillStockNumbersAddReq, requestOptions: RequestOptions? = nil) async throws -> AirWaybillStockNumbersAddRes {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/air_waybill_stock_numbers/add/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: AirWaybillStockNumbersAddRes.self
        )
    }

    /// Deletes an available AWB number from the caller's organization's AWB stock, e.g. one added by mistake. | authz: min_org_role=operator | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airWaybillStockNumbers.deleteV1(airWaybillStockNumberId: "air_waybill_stock_number_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteV1(airWaybillStockNumberId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/orgs/air_waybill_stock_numbers/delete/v1/\(airWaybillStockNumberId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists the AWB numbers in the caller's organization's AWB stock, by airline prefix and status. | () -> (AirWaybillStockNumberListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airWaybillStockNumbers.listV1(
    ///         filterAwbPrefix: "filter_awb_prefix",
    ///         filterStatus: [
    ///             .available
    ///         ],
    ///         sortBy: .awbNumber,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter filterAwbPrefix: Filter by the airline's 3-digit AWB prefix, e.g. 014.
    /// - Parameter filterStatus: Filter by status(es).
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(filterAwbPrefix: String? = nil, filterStatus: [AirWaybillStockNumberStatusEnum1]? = nil, sortBy: AirWaybillStockNumberSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> AirWaybillStockNumberListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/air_waybill_stock_numbers/list/v1",
            queryParams: [
                "filter_awb_prefix": filterAwbPrefix.map { .string($0) }, 
                "filter_status": filterStatus.map { .unknown($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: AirWaybillStockNumberListRes.self
        )
    }

    /// Marks AWB numbers of the caller's organization's AWB stock as available, whatever their status, taking them off their booking. | authz: min_org_role=operator | (AirWaybillStockNumbersMarkAvailableReq) -> (list[AirWaybillStockNumber1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airWaybillStockNumbers.markAvailableV1(request: .init(awbNumbers: [
    ///         "awb_numbers"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func markAvailableV1(request: Requests.AirWaybillStockNumbersMarkAvailableReq, requestOptions: RequestOptions? = nil) async throws -> [AirWaybillStockNumber1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/air_waybill_stock_numbers/mark_available/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [AirWaybillStockNumber1].self
        )
    }

    /// Marks AWB numbers of the caller's organization's AWB stock as used, whatever their status, e.g. booked outside CHRT. | authz: min_org_role=operator | (AirWaybillStockNumbersMarkUsedReq) -> (list[AirWaybillStockNumber1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airWaybillStockNumbers.markUsedV1(request: .init(awbNumbers: [
    ///         "awb_numbers"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func markUsedV1(request: Requests.AirWaybillStockNumbersMarkUsedReq, requestOptions: RequestOptions? = nil) async throws -> [AirWaybillStockNumber1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/air_waybill_stock_numbers/mark_used/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [AirWaybillStockNumber1].self
        )
    }

    /// Counts the caller's organization's AWB stock per airline prefix and status. | () -> (list[AirWaybillStockNumbersSummaryRes])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airWaybillStockNumbers.summaryV1()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func summaryV1(requestOptions: RequestOptions? = nil) async throws -> [AirWaybillStockNumbersSummaryRes] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/air_waybill_stock_numbers/summary/v1",
            requestOptions: requestOptions,
            responseType: [AirWaybillStockNumbersSummaryRes].self
        )
    }

    /// Voids available AWB numbers of the caller's organization's AWB stock, e.g. spoiled or returned to the airline. | authz: min_org_role=operator | (AirWaybillStockNumbersVoidReq) -> (list[AirWaybillStockNumber1])
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.airWaybillStockNumbers.voidV1(request: .init(awbNumbers: [
    ///         "awb_numbers"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func voidV1(request: Requests.AirWaybillStockNumbersVoidReq, requestOptions: RequestOptions? = nil) async throws -> [AirWaybillStockNumber1] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/air_waybill_stock_numbers/void/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: [AirWaybillStockNumber1].self
        )
    }
}