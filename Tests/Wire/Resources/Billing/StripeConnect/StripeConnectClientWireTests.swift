import Foundation
import Testing
import Chrt

@Suite("StripeConnectClient Wire Tests") struct StripeConnectClientWireTests {
    @Test func createAccountV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "stripe_connect_account_id": "stripe_connect_account_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateStripeConnectAccountRes(
            stripeConnectAccountId: "stripe_connect_account_id"
        )
        let response = try await client.billing.stripeConnect.createAccountV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func onboardingLinkV11() async throws -> Void {
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
        let expectedResponse = StripeConnectAccountOnboardingLinkRes(
            url: "url"
        )
        let response = try await client.billing.stripeConnect.onboardingLinkV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}