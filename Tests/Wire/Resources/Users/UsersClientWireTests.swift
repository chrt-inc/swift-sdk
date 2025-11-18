import Foundation
import Testing
import Chrt

@Suite("UsersClient Wire Tests") struct UsersClientWireTests {
    @Test func getUserPublicDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "primary_email_address": "primary_email_address",
                  "user_id": "user_id",
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
            id: "_id"
        )
        let response = try await client.users.getUserPublicDataV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}