import Foundation

public final class IataCassOfficesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Archives an IATA CASS office of the caller's organization so it can no longer be booked under. | authz: min_org_role=admin | () -> (bool)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.iataCassOffices.archiveV1(iataCassOfficeId: "iata_cass_office_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func archiveV1(iataCassOfficeId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/orgs/iata_cass_offices/archive/v1/\(iataCassOfficeId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Lists the IATA CASS offices of the caller's organization, active or archived. | () -> (IataCassOfficeListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.iataCassOffices.listV1(
    ///         filterArchived: true,
    ///         sortBy: .createdAtTimestamp,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter filterArchived: List archived offices instead of active offices.
    /// - Parameter sortBy: Field to sort by.
    /// - Parameter sortOrder: Sort order.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(filterArchived: Bool? = nil, sortBy: IataCassOfficeSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> IataCassOfficeListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/iata_cass_offices/list/v1",
            queryParams: [
                "filter_archived": filterArchived.map { .bool($0) }, 
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: IataCassOfficeListRes.self
        )
    }

    /// Updates the name or contact names of an IATA CASS office of the caller's organization. | authz: min_org_role=admin | (IataCassOfficeClientUpdate1) -> (IataCassOffice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.iataCassOffices.updateV1(
    ///         iataCassOfficeId: "iata_cass_office_id",
    ///         request: .init()
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateV1(iataCassOfficeId: String, request: Requests.IataCassOfficeClientUpdate1, requestOptions: RequestOptions? = nil) async throws -> IataCassOffice1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/orgs/iata_cass_offices/update/v1/\(iataCassOfficeId)",
            body: request,
            requestOptions: requestOptions,
            responseType: IataCassOffice1.self
        )
    }

    /// Retrieves an IATA CASS office of the caller's organization. | () -> (IataCassOffice1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.orgs.iataCassOffices.getV1(iataCassOfficeId: "iata_cass_office_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(iataCassOfficeId: String, requestOptions: RequestOptions? = nil) async throws -> IataCassOffice1 {
        return try await httpClient.performRequest(
            method: .get,
            path: "/orgs/iata_cass_offices/v1/\(iataCassOfficeId)",
            requestOptions: requestOptions,
            responseType: IataCassOffice1.self
        )
    }
}