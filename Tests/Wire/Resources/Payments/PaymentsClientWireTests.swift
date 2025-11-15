import Foundation
import Testing
import Chrt

@Suite("PaymentsClient Wire Tests") struct PaymentsClientWireTests {
    @Test func createConnectAccountV11() async throws -> Void {
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
        let expectedResponse = CreateConnectAccountRes(
            stripeConnectAccountId: "stripe_connect_account_id"
        )
        let response = try await client.payments.createConnectAccountV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createConnectAccountLinkV11() async throws -> Void {
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
        let expectedResponse = CreateConnectAccountLinkRes(
            url: "url"
        )
        let response = try await client.payments.createConnectAccountLinkV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func generateInvoiceV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "invoice_id": "invoice_id",
                  "invoice_url": "invoice_url",
                  "amount_due": 1,
                  "due_date": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GenerateInvoiceRes(
            invoiceId: "invoice_id",
            invoiceUrl: "invoice_url",
            amountDue: 1,
            dueDate: 1
        )
        let response = try await client.payments.generateInvoiceV1(
            request: .init(shipperPayCourierStatementId: "shipper_pay_courier_statement_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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