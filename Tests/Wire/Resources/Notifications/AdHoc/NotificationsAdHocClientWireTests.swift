import Foundation
import Testing
import Chrt

@Suite("NotificationsAdHocClient Wire Tests") struct NotificationsAdHocClientWireTests {
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
            request: .init(
                directoryEntryId: "directory_entry_id",
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
        let response = try await client.notifications.adHoc.deleteV1(
            adHocId: "ad_hoc_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByOrderIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "directory_entry_id": "directory_entry_id",
                    "email_events": [
                      "shipping.order.staged"
                    ],
                    "order_id": "order_id",
                    "push_events": [
                      "shipping.order.staged"
                    ],
                    "schema_version": 1,
                    "sms_events": [
                      "shipping.order.staged"
                    ]
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
            NotificationIntentAdHoc1(
                id: "_id",
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                directoryEntryId: "directory_entry_id",
                emailEvents: Optional([
                    .shippingOrderStaged
                ]),
                orderId: "order_id",
                pushEvents: Optional([
                    .shippingOrderStaged
                ]),
                schemaVersion: 1,
                smsEvents: Optional([
                    .shippingOrderStaged
                ])
            )
        ]
        let response = try await client.notifications.adHoc.listByOrderIdV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}