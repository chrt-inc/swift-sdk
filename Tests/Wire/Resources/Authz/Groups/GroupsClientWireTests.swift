import Foundation
import Testing
import Chrt

@Suite("GroupsClient Wire Tests") struct GroupsClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "chrt_managed_roles": [
                    "viewer"
                  ],
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "custom_role_ids": [
                    "custom_role_ids"
                  ],
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "org_id": "org_id",
                  "schema_version": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Group1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.viewer
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orgId: "org_id",
            schemaVersion: 1
        )
        let response = try await client.authz.groups.createV1(
            request: .init(
                name: "name",
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
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
        let response = try await client.authz.groups.deleteV1(
            groupId: "group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "chrt_managed_roles": [
                    "viewer"
                  ],
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "custom_role_ids": [
                    "custom_role_ids"
                  ],
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "org_id": "org_id",
                  "schema_version": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Group1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.viewer
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orgId: "org_id",
            schemaVersion: 1
        )
        let response = try await client.authz.groups.getV1(
            groupId: "group_id",
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
                      "group": {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "name": "name",
                        "org_id": "org_id",
                        "schema_version": 1
                      },
                      "member_count": 1
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
        let expectedResponse = GroupListRes(
            items: [
                GroupListItem(
                    group: Group1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        name: "name",
                        orgId: "org_id",
                        schemaVersion: 1
                    ),
                    memberCount: 1
                )
            ],
            totalCount: 1
        )
        let response = try await client.authz.groups.listV1(
            filterChrtManagedRole: .viewer,
            filterCustomRoleId: "filter_custom_role_id",
            page: 1,
            pageSize: 1,
            sortBy: .name,
            sortOrder: .asc,
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
                  "chrt_managed_roles": [
                    "viewer"
                  ],
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "custom_role_ids": [
                    "custom_role_ids"
                  ],
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "org_id": "org_id",
                  "schema_version": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Group1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.viewer
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orgId: "org_id",
            schemaVersion: 1
        )
        let response = try await client.authz.groups.updateV1(
            groupId: "group_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}