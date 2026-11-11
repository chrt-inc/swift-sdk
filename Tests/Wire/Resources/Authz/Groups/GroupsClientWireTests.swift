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
                    "superUser"
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
                ChrtManagedRoleEnum1.superUser
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

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "chrt_managed_roles": [
                    "superUser"
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
                ChrtManagedRoleEnum1.superUser
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
                      "_id": "_id",
                      "chrt_managed_roles": [
                        "superUser"
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
                Group1(
                    id: "_id",
                    chrtManagedRoles: Optional([
                        ChrtManagedRoleEnum1.superUser
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
            ],
            totalCount: 1
        )
        let response = try await client.authz.groups.listV1(
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
                    "superUser"
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
                ChrtManagedRoleEnum1.superUser
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