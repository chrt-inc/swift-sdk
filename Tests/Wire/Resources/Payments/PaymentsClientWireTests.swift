import Foundation
import Testing
import Chrt

@Suite("PaymentsClient Wire Tests") struct PaymentsClientWireTests {
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
        let response = try await client.payments.createCheckoutSessionV1(
            request: .init(priceName: .courierOps100UsdPerMonth),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncStripeToClerkV11() async throws -> Void {
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
        let response = try await client.payments.syncStripeToClerkV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}