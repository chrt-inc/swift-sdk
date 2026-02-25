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
                  "admin_delete_enabled": true,
                  "created_at": 1,
                  "has_image": true,
                  "id": "id",
                  "image_url": "image_url",
                  "max_allowed_memberships": 1,
                  "members_count": 1,
                  "name": "name",
                  "public_metadata": {
                    "key": "value"
                  },
                  "slug": "slug",
                  "updated_at": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgInfoResponse(
            adminDeleteEnabled: true,
            createdAt: 1,
            hasImage: true,
            id: "id",
            imageUrl: Optional("image_url"),
            maxAllowedMemberships: 1,
            membersCount: Optional(1),
            name: "name",
            publicMetadata: [
                "key": JSONValue.string("value")
            ],
            slug: Optional("slug"),
            updatedAt: 1
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
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "role": "owner",
                    "user_id": "user_id"
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
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                role: .owner,
                userId: "user_id"
            )
        ]
        let response = try await client.orgs.listMembersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func setOrgTypeV11() async throws -> Void {
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
        let response = try await client.orgs.setOrgTypeV1(
            request: .init(orgType: .courier),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStripeConnectAccountIdV11() async throws -> Void {
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
        let response = try await client.orgs.getStripeConnectAccountIdV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}