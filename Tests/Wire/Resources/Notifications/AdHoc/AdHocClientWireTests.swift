import Foundation
import Testing
import Chrt

@Suite("AdHocClient Wire Tests") struct AdHocClientWireTests {
    @Test func listByOrderIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "order_id": "order_id",
                      "session_id": "session_id",
                      "directory_entry_id": "directory_entry_id",
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
        let expectedResponse = NotificationAdHocListRes(
            items: [
                NotificationIntentAdHoc1(
                    schemaVersion: 1,
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    orderId: Optional("order_id"),
                    sessionId: Optional("session_id"),
                    directoryEntryId: "directory_entry_id",
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
            ],
            totalCount: 1
        )
        let response = try await client.notifications.adHoc.listByOrderIdV1(
            orderId: "order_id",
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listBySessionIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "order_id": "order_id",
                      "session_id": "session_id",
                      "directory_entry_id": "directory_entry_id",
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
        let expectedResponse = NotificationAdHocListRes(
            items: [
                NotificationIntentAdHoc1(
                    schemaVersion: 1,
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    orderId: Optional("order_id"),
                    sessionId: Optional("session_id"),
                    directoryEntryId: "directory_entry_id",
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
            ],
            totalCount: 1
        )
        let response = try await client.notifications.adHoc.listBySessionIdV1(
            sessionId: "session_id",
            page: 1,
            pageSize: 1,
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
        let response = try await client.notifications.adHoc.createV1(
            orderId: "order_id",
            request: NotificationIntentAdHocClientCreate1(
                schemaVersion: 1,
                directoryEntryId: "directory_entry_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createForSessionV11() async throws -> Void {
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
        let response = try await client.notifications.adHoc.createForSessionV1(
            sessionId: "session_id",
            request: NotificationIntentAdHocClientCreate1(
                schemaVersion: 1,
                directoryEntryId: "directory_entry_id"
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
        let response = try await client.notifications.adHoc.deleteV1(
            adHocId: "ad_hoc_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}