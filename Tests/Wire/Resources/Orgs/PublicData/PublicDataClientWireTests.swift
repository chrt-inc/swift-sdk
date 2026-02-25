import Foundation
import Testing
import Chrt

@Suite("PublicDataClient Wire Tests") struct PublicDataClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "org_type": "courier",
                  "org_id": "org_id",
                  "company_name": "company_name",
                  "handle": "handle",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgPublicData1(
            schemaVersion: 1,
            orgType: .courier,
            orgId: "org_id",
            companyName: Optional("company_name"),
            handle: Optional("handle"),
            id: "_id"
        )
        let response = try await client.orgs.publicData.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "org_public_data_inserted_id": "org_public_data_inserted_id",
                  "org_private_data_inserted_id": "org_private_data_inserted_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateOrgPublicDataRes(
            orgPublicDataInsertedId: "org_public_data_inserted_id",
            orgPrivateDataInsertedId: Optional("org_private_data_inserted_id")
        )
        let response = try await client.orgs.publicData.createV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
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
        let response = try await client.orgs.publicData.updateV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByOrgIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "org_type": "courier",
                  "org_id": "org_id",
                  "company_name": "company_name",
                  "handle": "handle",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgPublicData1(
            schemaVersion: 1,
            orgType: .courier,
            orgId: "org_id",
            companyName: Optional("company_name"),
            handle: Optional("handle"),
            id: "_id"
        )
        let response = try await client.orgs.publicData.getByOrgIdV1(
            orgId: "org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getHandleAvailabilityV11() async throws -> Void {
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
        let response = try await client.orgs.publicData.getHandleAvailabilityV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}