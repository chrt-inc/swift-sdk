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
                  "notes": [
                    "notes"
                  ],
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "summary": "summary",
                  "validation_issues": [
                    "validation_issues"
                  ],
                  "validation_passed": true
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
            notes: Optional([
                "notes"
            ]),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            summary: "summary",
            validationIssues: Optional([
                "validation_issues"
            ]),
            validationPassed: Optional(true)
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
                  "unresolvable_coordinator": true,
                  "unresolvable_directory_entry_ids": [
                    "unresolvable_directory_entry_ids"
                  ],
                  "unresolvable_driver_ids": [
                    "unresolvable_driver_ids"
                  ],
                  "unresolvable_off_chrt_executor_org_ids": [
                    "unresolvable_off_chrt_executor_org_ids"
                  ],
                  "unresolvable_off_chrt_shipper": true,
                  "valid": true
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
            unresolvableCoordinator: Optional(true),
            unresolvableDirectoryEntryIds: Optional([
                "unresolvable_directory_entry_ids"
            ]),
            unresolvableDriverIds: Optional([
                "unresolvable_driver_ids"
            ]),
            unresolvableOffChrtExecutorOrgIds: Optional([
                "unresolvable_off_chrt_executor_org_ids"
            ]),
            unresolvableOffChrtShipper: Optional(true),
            valid: true
        )
        let response = try await client.shipping.orderDrafts.agentic.precheckV1(
            request: OrderBuilderReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}