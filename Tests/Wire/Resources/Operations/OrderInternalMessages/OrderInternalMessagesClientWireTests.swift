import Foundation
import Testing
import Chrt

@Suite("OrderInternalMessagesClient Wire Tests") struct OrderInternalMessagesClientWireTests {
    @Test func addMessageV11() async throws -> Void {
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
        let response = try await client.operations.orderInternalMessages.addMessageV1(
            orderId: "order_id",
            request: .init(message: "message"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at": "2024-01-15T09:30:00Z",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_id": "order_id",
                  "order_internal_message_s3_object_metadata_ids": [
                    "order_internal_message_s3_object_metadata_ids"
                  ],
                  "org_id": "org_id",
                  "schema_version": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderInternalMessages1(
            id: "_id",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            messages: Optional([
                OrderInternalMessage1(
                    id: Optional("id"),
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderId: "order_id",
            orderInternalMessageS3ObjectMetadataIds: Optional([
                "order_internal_message_s3_object_metadata_ids"
            ]),
            orgId: "org_id",
            schemaVersion: 1
        )
        let response = try await client.operations.orderInternalMessages.getByOrderV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteMessageV11() async throws -> Void {
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
        let response = try await client.operations.orderInternalMessages.deleteMessageV1(
            orderId: "order_id",
            messageId: "message_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}