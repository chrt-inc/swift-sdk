import Foundation
import Testing
import Chrt

@Suite("UsersClient Wire Tests") struct UsersClientWireTests {
    @Test func getPublicDataV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "primary_email_address": "primary_email_address",
                  "user_id": "user_id",
                  "customer_id": "customer_id",
                  "notes": {
                    "key": "value"
                  },
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
        let expectedResponse = UserPublicData1(
            schemaVersion: 1,
            primaryEmailAddress: Optional("primary_email_address"),
            userId: "user_id",
            customerId: Optional("customer_id"),
            notes: Optional([
                "key": JSONValue.string("value")
            ]),
            id: "_id"
        )
        let response = try await client.users.getPublicDataV1()
        try #require(response == expectedResponse)
    }
}