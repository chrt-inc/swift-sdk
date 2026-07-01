import Foundation
import Testing
import Chrt

@Suite("UserPreferencesClient Wire Tests") struct UserPreferencesClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "email_events": [
                    "shipping.order.staged"
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "push_events": [
                    "shipping.order.staged"
                  ],
                  "schema_version": 1,
                  "sms_events": [
                    "shipping.order.staged"
                  ],
                  "user_id": "user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = NotificationUserPreferences1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            emailEvents: Optional([
                .shippingOrderStaged
            ]),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            pushEvents: Optional([
                .shippingOrderStaged
            ]),
            schemaVersion: 1,
            smsEvents: Optional([
                .shippingOrderStaged
            ]),
            userId: "user_id"
        )
        let response = try await client.notifications.userPreferences.createV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "email_events": [
                    "shipping.order.staged"
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "push_events": [
                    "shipping.order.staged"
                  ],
                  "schema_version": 1,
                  "sms_events": [
                    "shipping.order.staged"
                  ],
                  "user_id": "user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = NotificationUserPreferences1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            emailEvents: Optional([
                .shippingOrderStaged
            ]),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            pushEvents: Optional([
                .shippingOrderStaged
            ]),
            schemaVersion: 1,
            smsEvents: Optional([
                .shippingOrderStaged
            ]),
            userId: "user_id"
        )
        let response = try await client.notifications.userPreferences.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "email_events": [
                    "shipping.order.staged"
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "push_events": [
                    "shipping.order.staged"
                  ],
                  "schema_version": 1,
                  "sms_events": [
                    "shipping.order.staged"
                  ],
                  "user_id": "user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = NotificationUserPreferences1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            emailEvents: Optional([
                .shippingOrderStaged
            ]),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            pushEvents: Optional([
                .shippingOrderStaged
            ]),
            schemaVersion: 1,
            smsEvents: Optional([
                .shippingOrderStaged
            ]),
            userId: "user_id"
        )
        let response = try await client.notifications.userPreferences.updateV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}