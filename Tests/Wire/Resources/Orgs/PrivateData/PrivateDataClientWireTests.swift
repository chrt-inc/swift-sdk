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
                  "schema_version": 1,
                  "org_type": "provider",
                  "org_id": "org_id",
                  "stripe_customer_id": "stripe_customer_id",
                  "stripe_connect_account_id": "stripe_connect_account_id",
                  "webhook_enabled": true,
                  "svix_app_id": "svix_app_id",
                  "webcargo_api_key": "webcargo_api_key",
                  "webcargo_email": "webcargo_email",
                  "webcargo_countries": [
                    "webcargo_countries"
                  ],
                  "_id": "_id"
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
            schemaVersion: 1,
            orgType: .provider,
            orgId: "org_id",
            stripeCustomerId: Optional("stripe_customer_id"),
            stripeConnectAccountId: Optional("stripe_connect_account_id"),
            webhookEnabled: Optional(true),
            svixAppId: Optional("svix_app_id"),
            webcargoApiKey: Optional("webcargo_api_key"),
            webcargoEmail: Optional("webcargo_email"),
            webcargoCountries: Optional([
                "webcargo_countries"
            ]),
            id: "_id"
        )
        let response = try await client.orgs.privateData.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}