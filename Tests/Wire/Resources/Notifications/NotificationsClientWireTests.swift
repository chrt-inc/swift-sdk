import Foundation
import Testing
import Chrt

@Suite("NotificationsClient Wire Tests") struct NotificationsClientWireTests {
    @Test func getNotificationV11() async throws -> Void {
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
        let response = try await client.notifications.getNotificationV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createNotificationV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "success": true,
                  "name": "name",
                  "message": "message",
                  "recipient": "recipient",
                  "request_id": "request_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = NotificationRes(
            success: true,
            name: "name",
            message: "message",
            recipient: "recipient",
            requestId: "request_id"
        )
        let response = try await client.notifications.createNotificationV1(
            request: .init(
                recipient: .aaron,
                name: "name",
                message: "message"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}