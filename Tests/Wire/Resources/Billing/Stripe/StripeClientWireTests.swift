import Foundation
import Testing
import Chrt

@Suite("StripeClient Wire Tests") struct StripeClientWireTests {
    @Test func createCheckoutSessionV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "url": "url"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateCheckoutSessionRes(
            url: "url"
        )
        let response = try await client.billing.stripe.createCheckoutSessionV1(
            request: .init(
                priceId: "price_id",
                productId: "product_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createCustomerPortalSessionV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "url": "url"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateCustomerPortalSessionRes(
            url: "url"
        )
        let response = try await client.billing.stripe.createCustomerPortalSessionV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}