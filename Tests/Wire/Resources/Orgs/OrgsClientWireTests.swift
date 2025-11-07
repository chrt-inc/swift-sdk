import Foundation
import Testing
import Chrt

@Suite("OrgsClient Wire Tests") struct OrgsClientWireTests {
    @Test func getInfoV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "key": "value"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JSONValue.object(
            [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.orgs.getInfoV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listMembersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "role": "role",
                    "role_name": "role_name",
                    "user_id": "user_id",
                    "first_name": "first_name",
                    "last_name": "last_name"
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
            OrgMemberDetails(
                role: "role",
                roleName: Optional("role_name"),
                userId: "user_id",
                firstName: Optional("first_name"),
                lastName: Optional("last_name")
            )
        ]
        let response = try await client.orgs.listMembersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getPublicDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "org_id": "org_id",
                  "company_name": "company_name",
                  "handle": "handle",
                  "stripe_connect_account_id": "stripe_connect_account_id",
                  "stripe_connect_account_events": [
                    {
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id",
                      "stripe_connect_account_id": "stripe_connect_account_id",
                      "event": "created"
                    }
                  ],
                  "auto_approve_shipper_to_courier_connection_requests": true,
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
        let expectedResponse = OrgPublicData2(
            schemaVersion: 1,
            orgId: "org_id",
            companyName: Optional("company_name"),
            handle: Optional("handle"),
            stripeConnectAccountId: Optional("stripe_connect_account_id"),
            stripeConnectAccountEvents: Optional([
                StripeConnectAccountEvent(
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id",
                    stripeConnectAccountId: "stripe_connect_account_id",
                    event: .created
                )
            ]),
            autoApproveShipperToCourierConnectionRequests: Optional(true),
            id: "_id"
        )
        let response = try await client.orgs.getPublicDataV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getPublicDataByOrgIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "org_id": "org_id",
                  "company_name": "company_name",
                  "handle": "handle",
                  "stripe_connect_account_id": "stripe_connect_account_id",
                  "stripe_connect_account_events": [
                    {
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id",
                      "stripe_connect_account_id": "stripe_connect_account_id",
                      "event": "created"
                    }
                  ],
                  "auto_approve_shipper_to_courier_connection_requests": true,
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
        let expectedResponse = OrgPublicData2(
            schemaVersion: 1,
            orgId: "org_id",
            companyName: Optional("company_name"),
            handle: Optional("handle"),
            stripeConnectAccountId: Optional("stripe_connect_account_id"),
            stripeConnectAccountEvents: Optional([
                StripeConnectAccountEvent(
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id",
                    stripeConnectAccountId: "stripe_connect_account_id",
                    event: .created
                )
            ]),
            autoApproveShipperToCourierConnectionRequests: Optional(true),
            id: "_id"
        )
        let response = try await client.orgs.getPublicDataByOrgIdV1(
            orgId: "org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getHandleV11() async throws -> Void {
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
        let response = try await client.orgs.getHandleV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
        let response = try await client.orgs.getHandleAvailabilityV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createPublicDataV11() async throws -> Void {
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
        let response = try await client.orgs.createPublicDataV1(
            request: .init(
                handle: "handle",
                companyName: "company_name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updatePublicDataV11() async throws -> Void {
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
        let response = try await client.orgs.updatePublicDataV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}