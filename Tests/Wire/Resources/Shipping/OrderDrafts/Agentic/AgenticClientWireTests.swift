import Foundation
import Testing
import Chrt

@Suite("AgenticClient Wire Tests") struct AgenticClientWireTests {
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
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
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

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func precheckV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "valid": true,
                  "unresolvable_off_chrt_shipper": true,
                  "unresolvable_driver_ids": [
                    "unresolvable_driver_ids"
                  ],
                  "unresolvable_directory_entry_ids": [
                    "unresolvable_directory_entry_ids"
                  ],
                  "unresolvable_coordinator": true
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderTemplateResolvabilityRes(
            valid: true,
            unresolvableOffChrtShipper: Optional(true),
            unresolvableDriverIds: Optional([
                "unresolvable_driver_ids"
            ]),
            unresolvableDirectoryEntryIds: Optional([
                "unresolvable_directory_entry_ids"
            ]),
            unresolvableCoordinator: Optional(true)
        )
        let response = try await client.shipping.orderDrafts.agentic.precheckV1(
            request: OrderBuilderReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}