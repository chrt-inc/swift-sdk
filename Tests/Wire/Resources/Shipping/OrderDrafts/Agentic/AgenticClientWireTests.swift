import Foundation
import Testing
import Chrt

@Suite("AgenticClient Wire Tests") struct AgenticClientWireTests {
    @Test func precheckV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "valid": true,
                  "feedback": "feedback"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderBuilderPrecheckRes(
            valid: true,
            feedback: Optional("feedback")
        )
        let response = try await client.shipping.orderDrafts.agentic.precheckV1(
            request: OrderBuilderReq(
                orderShortId: "order_short_id",
                text: "text"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func newV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "summary": "summary",
                  "validation_passed": true,
                  "validation_issues": [
                    "validation_issues"
                  ],
                  "notes": [
                    "notes"
                  ]
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderBuilderRes(
            orderId: "order_id",
            orderShortId: "order_short_id",
            summary: "summary",
            validationPassed: Optional(true),
            validationIssues: Optional([
                "validation_issues"
            ]),
            notes: Optional([
                "notes"
            ])
        )
        let response = try await client.shipping.orderDrafts.agentic.newV1(
            request: OrderBuilderReq(
                orderShortId: "order_short_id",
                text: "text"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}