import Foundation

public final class CounterpartyOrgDataClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates the caller's record about another organization, on CHRT or off; one per counterparty. | authz: min_org_role=operator | (CounterpartyOrgDataClientCreate1) -> (CounterpartyOrgData1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.counterpartyOrgData.createV1(request: .init(schemaVersion: 1))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createV1(request: Requests.CounterpartyOrgDataClientCreate1, requestOptions: RequestOptions? = nil) async throws -> CounterpartyOrgData1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/counterparty_org_data/create/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: CounterpartyOrgData1.self
        )
    }

    /// Retrieves what the caller's organization keeps about another organization. | authz: min_org_role=operator | () -> (CounterpartyOrgData1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.counterpartyOrgData.getV1(counterpartyOrgDataId: "counterparty_org_data_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(counterpartyOrgDataId: String, requestOptions: RequestOptions? = nil) async throws -> CounterpartyOrgData1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/counterparty_org_data/get/v1/\(counterpartyOrgDataId)",
            requestOptions: requestOptions,
            responseType: CounterpartyOrgData1.self
        )
    }

    /// Lists what the caller's organization keeps about other organizations, filtered by counterparty or status, newest first. | authz: min_org_role=operator | () -> (CounterpartyOrgDataListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.counterpartyOrgData.listV1(
    ///         page: 1,
    ///         pageSize: 1,
    ///         filterCounterpartyOrgId: "filter_counterparty_org_id",
    ///         filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
    ///         filterStatus: .onboarding
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(page: Int? = nil, pageSize: Int? = nil, filterCounterpartyOrgId: String? = nil, filterCounterpartyOffChrtOrgDataId: String? = nil, filterStatus: CounterpartyOrgStatusEnum1? = nil, requestOptions: RequestOptions? = nil) async throws -> CounterpartyOrgDataListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/counterparty_org_data/list/v1",
            queryParams: [
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }, 
                "filter_counterparty_org_id": filterCounterpartyOrgId.map { .string($0) }, 
                "filter_counterparty_off_chrt_org_data_id": filterCounterpartyOffChrtOrgDataId.map { .string($0) }, 
                "filter_status": filterStatus.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: CounterpartyOrgDataListRes.self
        )
    }

    /// Updates the caller's record about another organization; a sent list replaces the stored one. | authz: min_org_role=operator | (CounterpartyOrgDataClientUpdate1) -> (CounterpartyOrgData1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.counterpartyOrgData.updateV1(
    ///         counterpartyOrgDataId: "counterparty_org_data_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(counterpartyOrgDataId: String, request: Requests.CounterpartyOrgDataClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> CounterpartyOrgData1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/counterparty_org_data/update/v1/\(counterpartyOrgDataId)",
            body: request,
            requestOptions: requestOptions,
            responseType: CounterpartyOrgData1.self
        )
    }
}