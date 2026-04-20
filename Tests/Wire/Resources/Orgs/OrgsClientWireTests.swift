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
                  "id": "id",
                  "name": "name",
                  "slug": "slug",
                  "image_url": "image_url",
                  "has_image": true,
                  "members_count": 1,
                  "max_allowed_memberships": 1,
                  "admin_delete_enabled": true,
                  "public_metadata": {
                    "key": "value"
                  },
                  "created_at": 1,
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
            id: "id",
            name: "name",
            slug: Optional("slug"),
            imageUrl: Optional("image_url"),
            hasImage: true,
            membersCount: Optional(1),
            maxAllowedMemberships: 1,
            adminDeleteEnabled: true,
            publicMetadata: [
                "key": JSONValue.string("value")
            ],
            createdAt: 1,
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
                {
                  "items": [
                    {
                      "role": "owner",
                      "user_id": "user_id",
                      "first_name": "first_name",
                      "last_name": "last_name"
                    }
                  ],
                  "total_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgMemberListRes(
            items: [
                OrgMemberDetails(
                    role: .owner,
                    userId: "user_id",
                    firstName: Optional("first_name"),
                    lastName: Optional("last_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.listMembersV1(
            filterRole: [
                .owner
            ],
            sortBy: .firstName,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
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