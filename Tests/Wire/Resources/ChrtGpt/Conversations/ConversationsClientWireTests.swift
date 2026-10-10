import Foundation
import Testing
import Chrt

@Suite("ConversationsClient Wire Tests") struct ConversationsClientWireTests {
    @Test func deleteManyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "deleted_conversation_ids": [
                    "deleted_conversation_ids"
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
        let expectedResponse = ChrtGptConversationsDeleteManyRes(
            deletedConversationIds: [
                "deleted_conversation_ids"
            ]
        )
        let response = try await client.chrtGpt.conversations.deleteManyV1(
            request: .init(conversationIds: [
                "conversation_ids"
            ]),
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
                      "awb_numbers": [
                        "awb_numbers"
                      ],
                      "context_tokens": 1,
                      "created_at": "2024-01-15T09:30:00Z",
                      "off_chrt_reference_ids": [
                        "off_chrt_reference_ids"
                      ],
                      "order_short_ids": [
                        "order_short_ids"
                      ],
                      "org_id": "org_id",
                      "schema_version": 1,
                      "summarized_turn_count": 1,
                      "summary": "summary",
                      "title": "title",
                      "title_source": "fallback",
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
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
                    contextTokens: Optional(1),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    offChrtReferenceIds: Optional([
                        "off_chrt_reference_ids"
                    ]),
                    orderShortIds: Optional([
                        "order_short_ids"
                    ]),
                    orgId: "org_id",
                    schemaVersion: 1,
                    summarizedTurnCount: Optional(1),
                    summary: Optional("summary"),
                    title: "title",
                    titleSource: ChrtGptConversationTitleSourceEnum1.fallback,
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

    @Test func updateTitleV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "context_tokens": 1,
                  "created_at": "2024-01-15T09:30:00Z",
                  "off_chrt_reference_ids": [
                    "off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "org_id": "org_id",
                  "schema_version": 1,
                  "summarized_turn_count": 1,
                  "summary": "summary",
                  "title": "title",
                  "title_source": "fallback",
                  "updated_at": "2024-01-15T09:30:00Z",
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
        let expectedResponse = ChrtGptConversation1(
            id: "_id",
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            contextTokens: Optional(1),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            offChrtReferenceIds: Optional([
                "off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orgId: "org_id",
            schemaVersion: 1,
            summarizedTurnCount: Optional(1),
            summary: Optional("summary"),
            title: "title",
            titleSource: ChrtGptConversationTitleSourceEnum1.fallback,
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            userId: "user_id"
        )
        let response = try await client.chrtGpt.conversations.updateTitleV1(
            conversationId: "conversation_id",
            request: .init(title: "title"),
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
                  "context_limit_tokens": 1,
                  "conversation": {
                    "_id": "_id",
                    "awb_numbers": [
                      "awb_numbers"
                    ],
                    "context_tokens": 1,
                    "created_at": "2024-01-15T09:30:00Z",
                    "off_chrt_reference_ids": [
                      "off_chrt_reference_ids"
                    ],
                    "order_short_ids": [
                      "order_short_ids"
                    ],
                    "org_id": "org_id",
                    "schema_version": 1,
                    "summarized_turn_count": 1,
                    "summary": "summary",
                    "title": "title",
                    "title_source": "fallback",
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
            contextLimitTokens: 1,
            conversation: ChrtGptConversation1(
                id: "_id",
                awbNumbers: Optional([
                    "awb_numbers"
                ]),
                contextTokens: Optional(1),
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                offChrtReferenceIds: Optional([
                    "off_chrt_reference_ids"
                ]),
                orderShortIds: Optional([
                    "order_short_ids"
                ]),
                orgId: "org_id",
                schemaVersion: 1,
                summarizedTurnCount: Optional(1),
                summary: Optional("summary"),
                title: "title",
                titleSource: ChrtGptConversationTitleSourceEnum1.fallback,
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