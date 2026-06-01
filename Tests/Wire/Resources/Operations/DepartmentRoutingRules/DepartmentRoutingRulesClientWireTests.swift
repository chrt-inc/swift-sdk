import Foundation
import Testing
import Chrt

@Suite("DepartmentRoutingRulesClient Wire Tests") struct DepartmentRoutingRulesClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "counterparty_type": "shipper_org",
                    "counterparty_id": "counterparty_id",
                    "department_id": "department_id",
                    "_id": "_id",
                    "owner_org_id": "owner_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "created_at": "2024-01-15T09:30:00Z"
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            DepartmentRoutingRule1(
                schemaVersion: 1,
                counterpartyType: .shipperOrg,
                counterpartyId: "counterparty_id",
                departmentId: "department_id",
                id: "_id",
                ownerOrgId: "owner_org_id",
                createdByUserId: "created_by_user_id",
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.operations.departmentRoutingRules.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func upsertV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.operations.departmentRoutingRules.upsertV1(
            request: .init(
                schemaVersion: 1,
                counterpartyType: .shipperOrg,
                counterpartyId: "counterparty_id",
                departmentId: "department_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.operations.departmentRoutingRules.deleteV1(
            counterpartyType: .shipperOrg,
            counterpartyId: "counterparty_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}