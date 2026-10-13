import Foundation
import Testing
import Chrt

@Suite("AirlineCargoAccountsClient Wire Tests") struct AirlineCargoAccountsClientWireTests {
    @Test func archiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.orgs.airlineCargoAccounts.archiveV1(
            airlineCargoAccountId: "airline_cargo_account_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "account_number": "account_number",
                      "archived_at_timestamp": "2024-01-15T09:30:00Z",
                      "cargo_on_flight_integration": "air_canada",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "schema_version": 1,
                      "updated_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AirlineCargoAccountListRes(
            items: [
                AirlineCargoAccount1(
                    id: "_id",
                    accountNumber: "account_number",
                    archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cargoOnFlightIntegration: .airCanada,
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    name: "name",
                    ownedByOrgId: "owned_by_org_id",
                    ownedByUserId: "owned_by_user_id",
                    schemaVersion: 1,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.airlineCargoAccounts.listV1(
            filterArchived: true,
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "account_number": "account_number",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "cargo_on_flight_integration": "air_canada",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1,
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AirlineCargoAccount1(
            id: "_id",
            accountNumber: "account_number",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cargoOnFlightIntegration: .airCanada,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.orgs.airlineCargoAccounts.updateV1(
            airlineCargoAccountId: "airline_cargo_account_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}