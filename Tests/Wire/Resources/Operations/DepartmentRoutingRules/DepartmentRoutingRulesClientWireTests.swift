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
                    "_id": "_id",
                    "created_at": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "department_id": "department_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "owner_org_id": "owner_org_id",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id"
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
                id: "_id",
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                departmentId: "department_id",
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                ownerOrgId: "owner_org_id",
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id")
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
                departmentId: "department_id",
                schemaVersion: 1
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
            shipperOrgId: "shipper_org_id",
            offChrtShipperOrgId: "off_chrt_shipper_org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}