import Foundation
import Testing
import Chrt

@Suite("UsersClient Wire Tests") struct UsersClientWireTests {
    @Test func addChrtManagedRoleV11() async throws -> Void {
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
                  "display_name": "display_name",
                  "email_address": "email_address",
                  "group_ids": [
                    "group_ids"
                  ],
                  "kind": "human",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = User1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.superUser
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: Optional("created_by_user_id"),
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            displayName: "display_name",
            emailAddress: Optional("email_address"),
            groupIds: Optional([
                "group_ids"
            ]),
            kind: UserKindEnum1.human,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.authz.users.addChrtManagedRoleV1(
            userId: "user_id",
            chrtManagedRole: "superUser",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeChrtManagedRoleV11() async throws -> Void {
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
                  "display_name": "display_name",
                  "email_address": "email_address",
                  "group_ids": [
                    "group_ids"
                  ],
                  "kind": "human",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = User1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.superUser
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: Optional("created_by_user_id"),
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            displayName: "display_name",
            emailAddress: Optional("email_address"),
            groupIds: Optional([
                "group_ids"
            ]),
            kind: UserKindEnum1.human,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.authz.users.removeChrtManagedRoleV1(
            userId: "user_id",
            chrtManagedRole: "superUser",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addCustomRoleV11() async throws -> Void {
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
                  "display_name": "display_name",
                  "email_address": "email_address",
                  "group_ids": [
                    "group_ids"
                  ],
                  "kind": "human",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = User1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.superUser
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: Optional("created_by_user_id"),
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            displayName: "display_name",
            emailAddress: Optional("email_address"),
            groupIds: Optional([
                "group_ids"
            ]),
            kind: UserKindEnum1.human,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.authz.users.addCustomRoleV1(
            userId: "user_id",
            customRoleId: "custom_role_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeCustomRoleV11() async throws -> Void {
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
                  "display_name": "display_name",
                  "email_address": "email_address",
                  "group_ids": [
                    "group_ids"
                  ],
                  "kind": "human",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = User1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.superUser
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: Optional("created_by_user_id"),
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            displayName: "display_name",
            emailAddress: Optional("email_address"),
            groupIds: Optional([
                "group_ids"
            ]),
            kind: UserKindEnum1.human,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.authz.users.removeCustomRoleV1(
            userId: "user_id",
            customRoleId: "custom_role_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSelfV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "allowed_org_actions": [
                    "readUser"
                  ],
                  "missing_custom_role_ids": [
                    "missing_custom_role_ids"
                  ],
                  "missing_group_ids": [
                    "missing_group_ids"
                  ],
                  "org_id": "org_id",
                  "permissions": [
                    {
                      "granted": true,
                      "permission": "authz.readAccess",
                      "sources": [
                        {
                          "chrt_managed_role": "superUser",
                          "kind": "chrt_managed_role"
                        }
                      ]
                    }
                  ],
                  "provisioned": true,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AuthzUserSelfRes(
            allowedOrgActions: [
                AuthzActionEnum.readUser
            ],
            missingCustomRoleIds: [
                "missing_custom_role_ids"
            ],
            missingGroupIds: [
                "missing_group_ids"
            ],
            orgId: "org_id",
            permissions: [
                AuthzUserPermissionRes(
                    granted: true,
                    permission: PermissionEnum1.authzReadAccess,
                    sources: [
                        SourcesItem.chrtManagedRole(
                            .init(
                                chrtManagedRole: ChrtManagedRoleEnum1.superUser,
                                additionalProperties: [
                                    "kind": JSONValue.string("chrt_managed_role")
                                ]
                            )
                        )
                    ]
                )
            ],
            provisioned: true,
            userId: "user_id"
        )
        let response = try await client.authz.users.getSelfV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "display_name": "display_name",
                  "email_address": "email_address",
                  "group_ids": [
                    "group_ids"
                  ],
                  "kind": "human",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = User1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.superUser
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: Optional("created_by_user_id"),
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            displayName: "display_name",
            emailAddress: Optional("email_address"),
            groupIds: Optional([
                "group_ids"
            ]),
            kind: UserKindEnum1.human,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.authz.users.getV1(
            userId: "user_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addGroupV11() async throws -> Void {
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
                  "display_name": "display_name",
                  "email_address": "email_address",
                  "group_ids": [
                    "group_ids"
                  ],
                  "kind": "human",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = User1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.superUser
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: Optional("created_by_user_id"),
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            displayName: "display_name",
            emailAddress: Optional("email_address"),
            groupIds: Optional([
                "group_ids"
            ]),
            kind: UserKindEnum1.human,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.authz.users.addGroupV1(
            userId: "user_id",
            groupId: "group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeGroupV11() async throws -> Void {
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
                  "display_name": "display_name",
                  "email_address": "email_address",
                  "group_ids": [
                    "group_ids"
                  ],
                  "kind": "human",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = User1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.superUser
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: Optional("created_by_user_id"),
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            displayName: "display_name",
            emailAddress: Optional("email_address"),
            groupIds: Optional([
                "group_ids"
            ]),
            kind: UserKindEnum1.human,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.authz.users.removeGroupV1(
            userId: "user_id",
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
                      "custom_roles": [
                        {
                          "custom_role_id": "custom_role_id",
                          "name": "name"
                        }
                      ],
                      "groups": [
                        {
                          "group_id": "group_id",
                          "name": "name"
                        }
                      ],
                      "missing_custom_role_ids": [
                        "missing_custom_role_ids"
                      ],
                      "missing_group_ids": [
                        "missing_group_ids"
                      ],
                      "user": {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "display_name": "display_name",
                        "kind": "human",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      }
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
        let expectedResponse = UserListRes(
            items: [
                UserListItem(
                    customRoles: [
                        UserListItemCustomRole(
                            customRoleId: "custom_role_id",
                            name: "name"
                        )
                    ],
                    groups: [
                        UserListItemGroup(
                            groupId: "group_id",
                            name: "name"
                        )
                    ],
                    missingCustomRoleIds: [
                        "missing_custom_role_ids"
                    ],
                    missingGroupIds: [
                        "missing_group_ids"
                    ],
                    user: User1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        displayName: "display_name",
                        kind: UserKindEnum1.human,
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orgId: "org_id",
                        schemaVersion: 1,
                        userId: "user_id"
                    )
                )
            ],
            totalCount: 1
        )
        let response = try await client.authz.users.listV1(
            page: 1,
            pageSize: 1,
            sortBy: .displayName,
            sortOrder: .asc,
            filterUserIds: [
                "filter_user_ids"
            ],
            filterGroupId: "filter_group_id",
            filterChrtManagedRole: .superUser,
            filterCustomRoleId: "filter_custom_role_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getPermissionsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "missing_custom_role_ids": [
                    "missing_custom_role_ids"
                  ],
                  "missing_group_ids": [
                    "missing_group_ids"
                  ],
                  "org_id": "org_id",
                  "permissions": [
                    {
                      "granted": true,
                      "permission": "authz.readAccess",
                      "sources": [
                        {
                          "chrt_managed_role": "superUser",
                          "kind": "chrt_managed_role"
                        }
                      ]
                    }
                  ],
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AuthzUserPermissionsRes(
            missingCustomRoleIds: [
                "missing_custom_role_ids"
            ],
            missingGroupIds: [
                "missing_group_ids"
            ],
            orgId: "org_id",
            permissions: [
                AuthzUserPermissionRes(
                    granted: true,
                    permission: PermissionEnum1.authzReadAccess,
                    sources: [
                        SourcesItem.chrtManagedRole(
                            .init(
                                chrtManagedRole: ChrtManagedRoleEnum1.superUser,
                                additionalProperties: [
                                    "kind": JSONValue.string("chrt_managed_role")
                                ]
                            )
                        )
                    ]
                )
            ],
            userId: "user_id"
        )
        let response = try await client.authz.users.getPermissionsV1(
            userId: "user_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "type": "display_name",
                    "values": [
                      {
                        "user_ids": [
                          "user_ids"
                        ],
                        "value": "value"
                      }
                    ]
                  }
                ]
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            UserTypeaheadResult(
                type: UserTypeaheadFieldEnum.displayName,
                values: [
                    UserTypeaheadValue(
                        userIds: [
                            "user_ids"
                        ],
                        value: "value"
                    )
                ]
            )
        ]
        let response = try await client.authz.users.typeaheadV1(
            query: "query",
            limit: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateAccessV11() async throws -> Void {
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
                  "display_name": "display_name",
                  "email_address": "email_address",
                  "group_ids": [
                    "group_ids"
                  ],
                  "kind": "human",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "user_id": "user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = User1(
            id: "_id",
            chrtManagedRoles: Optional([
                ChrtManagedRoleEnum1.superUser
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: Optional("created_by_user_id"),
            customRoleIds: Optional([
                "custom_role_ids"
            ]),
            displayName: "display_name",
            emailAddress: Optional("email_address"),
            groupIds: Optional([
                "group_ids"
            ]),
            kind: UserKindEnum1.human,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.authz.users.updateAccessV1(
            userId: "user_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}