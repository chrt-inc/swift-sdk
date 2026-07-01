import Foundation
import Testing
import Chrt

@Suite("PrivateDataClient Wire Tests") struct PrivateDataClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "org_id": "org_id",
                  "org_subscription": true,
                  "org_type": "provider",
                  "schema_version": 1,
                  "stripe_connect_account_id": "stripe_connect_account_id",
                  "stripe_customer_id": "stripe_customer_id",
                  "svix_app_id": "svix_app_id",
                  "webcargo_api_key": "webcargo_api_key",
                  "webcargo_countries": [
                    "webcargo_countries"
                  ],
                  "webcargo_email": "webcargo_email",
                  "webhook_enabled": true
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgPrivateData1(
            id: "_id",
            orgId: "org_id",
            orgSubscription: Optional(true),
            orgType: .provider,
            schemaVersion: 1,
            stripeConnectAccountId: Optional("stripe_connect_account_id"),
            stripeCustomerId: Optional("stripe_customer_id"),
            svixAppId: Optional("svix_app_id"),
            webcargoApiKey: Optional("webcargo_api_key"),
            webcargoCountries: Optional([
                "webcargo_countries"
            ]),
            webcargoEmail: Optional("webcargo_email"),
            webhookEnabled: Optional(true)
        )
        let response = try await client.orgs.privateData.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}