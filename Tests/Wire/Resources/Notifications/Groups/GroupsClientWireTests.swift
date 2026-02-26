import Foundation
import Testing
import Chrt

@Suite("GroupsClient Wire Tests") struct GroupsClientWireTests {
    @Test func listByOrgV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "group_name": "group_name",
                    "org_id": "org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "user_ids": [
                      "user_ids"
                    ],
                    "user_ids_opted_out": [
                      "user_ids_opted_out"
                    ],
                    "email_events": [
                      "shipping.order.staged"
                    ],
                    "push_events": [
                      "shipping.order.staged"
                    ],
                    "sms_events": [
                      "shipping.order.staged"
                    ],
                    "_id": "_id"
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
            NotificationGroup1(
                schemaVersion: 1,
                groupName: "group_name",
                orgId: "org_id",
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                userIds: Optional([
                    "user_ids"
                ]),
                userIdsOptedOut: Optional([
                    "user_ids_opted_out"
                ]),
                emailEvents: Optional([
                    .shippingOrderStaged
                ]),
                pushEvents: Optional([
                    .shippingOrderStaged
                ]),
                smsEvents: Optional([
                    .shippingOrderStaged
                ]),
                id: "_id"
            )
        ]
        let response = try await client.notifications.groups.listByOrgV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getForAdministratorV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "group_name": "group_name",
                  "org_id": "org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "user_ids": [
                    "user_ids"
                  ],
                  "user_ids_opted_out": [
                    "user_ids_opted_out"
                  ],
                  "email_events": [
                    "shipping.order.staged"
                  ],
                  "push_events": [
                    "shipping.order.staged"
                  ],
                  "sms_events": [
                    "shipping.order.staged"
                  ],
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
        let expectedResponse = NotificationGroup1(
            schemaVersion: 1,
            groupName: "group_name",
            orgId: "org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            userIds: Optional([
                "user_ids"
            ]),
            userIdsOptedOut: Optional([
                "user_ids_opted_out"
            ]),
            emailEvents: Optional([
                .shippingOrderStaged
            ]),
            pushEvents: Optional([
                .shippingOrderStaged
            ]),
            smsEvents: Optional([
                .shippingOrderStaged
            ]),
            id: "_id"
        )
        let response = try await client.notifications.groups.getForAdministratorV1(
            groupId: "group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByUserV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "schema_version": 1,
                    "org_id": "org_id",
                    "group_name": "group_name",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "email_events": [
                      "shipping.order.staged"
                    ],
                    "push_events": [
                      "shipping.order.staged"
                    ],
                    "sms_events": [
                      "shipping.order.staged"
                    ],
                    "is_opted_out": true
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
            NotificationGroupLimitedForDriver1(
                id: "_id",
                schemaVersion: 1,
                orgId: "org_id",
                groupName: "group_name",
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                emailEvents: [
                    .shippingOrderStaged
                ],
                pushEvents: [
                    .shippingOrderStaged
                ],
                smsEvents: [
                    .shippingOrderStaged
                ],
                isOptedOut: true
            )
        ]
        let response = try await client.notifications.groups.listByUserV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getForMemberV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "schema_version": 1,
                  "org_id": "org_id",
                  "group_name": "group_name",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "email_events": [
                    "shipping.order.staged"
                  ],
                  "push_events": [
                    "shipping.order.staged"
                  ],
                  "sms_events": [
                    "shipping.order.staged"
                  ],
                  "is_opted_out": true
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = NotificationGroupLimitedForDriver1(
            id: "_id",
            schemaVersion: 1,
            orgId: "org_id",
            groupName: "group_name",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            emailEvents: [
                .shippingOrderStaged
            ],
            pushEvents: [
                .shippingOrderStaged
            ],
            smsEvents: [
                .shippingOrderStaged
            ],
            isOptedOut: true
        )
        let response = try await client.notifications.groups.getForMemberV1(
            groupId: "group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
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
        let response = try await client.notifications.groups.createV1(
            request: .init(
                schemaVersion: 1,
                groupName: "group_name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateNameV11() async throws -> Void {
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
        let response = try await client.notifications.groups.updateNameV1(
            groupId: "group_id",
            groupName: "group_name",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addEventV11() async throws -> Void {
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
        let response = try await client.notifications.groups.addEventV1(
            groupId: "group_id",
            channel: .email,
            event: .shippingOrderStaged,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeEventV11() async throws -> Void {
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
        let response = try await client.notifications.groups.removeEventV1(
            groupId: "group_id",
            channel: .email,
            event: .shippingOrderStaged,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addUserV11() async throws -> Void {
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
        let response = try await client.notifications.groups.addUserV1(
            groupId: "group_id",
            userId: "user_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeUserV11() async throws -> Void {
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
        let response = try await client.notifications.groups.removeUserV1(
            groupId: "group_id",
            userId: "user_id",
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
        let response = try await client.notifications.groups.deleteV1(
            groupId: "group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func userOptInV11() async throws -> Void {
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
        let response = try await client.notifications.groups.userOptInV1(
            groupId: "group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func userOptOutV11() async throws -> Void {
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
        let response = try await client.notifications.groups.userOptOutV1(
            groupId: "group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}