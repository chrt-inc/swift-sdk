import Foundation
import Testing
import Chrt

@Suite("DraftsClient Wire Tests") struct DraftsClientWireTests {
    @Test func createFromOrderTemplateNewV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "order_id": "order_id",
                  "order_short_id": "order_short_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersOpenDraftRes(
            orderId: "order_id",
            orderShortId: "order_short_id"
        )
        let response = try await client.shipping.orders.drafts.createFromOrderTemplateNewV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func openV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "order_id": "order_id",
                  "order_short_id": "order_short_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersOpenDraftRes(
            orderId: "order_id",
            orderShortId: "order_short_id"
        )
        let response = try await client.shipping.orders.drafts.openV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}