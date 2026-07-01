import Foundation
import Testing
import Chrt

@Suite("UsersPublicDataClient Wire Tests") struct UsersPublicDataClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "user_id": "user_id"
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
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            userId: "user_id"
        )
        let response = try await client.users.publicData.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}