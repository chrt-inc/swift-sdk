import Foundation
import Testing
import Chrt

@Suite("ConversationsClient Wire Tests") struct ConversationsClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "created_at": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "schema_version": 1,
                      "title": "title",
                      "updated_at": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
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
        let expectedResponse = ChrtGptConversationListRes(
            items: [
                ChrtGptConversation1(
                    id: "_id",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    schemaVersion: 1,
                    title: "title",
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.chrtGpt.conversations.listV1(
            sortBy: .updatedAt,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
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
                  "conversation": {
                    "_id": "_id",
                    "created_at": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "schema_version": 1,
                    "title": "title",
                    "updated_at": "2024-01-15T09:30:00Z",
                    "user_id": "user_id"
                  },
                  "items": [
                    {
                      "item_id": "item_id",
                      "text": "text",
                      "type": "assistant_message"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ChrtGptConversationRes(
            conversation: ChrtGptConversation1(
                id: "_id",
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                orgId: "org_id",
                schemaVersion: 1,
                title: "title",
                updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                userId: "user_id"
            ),
            items: [
                ChrtGptHistoryItem.assistantMessage(
                    .init(
                        itemId: "item_id",
                        text: "text",
                        additionalProperties: [
                            "type": JSONValue.string("assistant_message")
                        ]
                    )
                )
            ]
        )
        let response = try await client.chrtGpt.conversations.getV1(
            conversationId: "conversation_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}