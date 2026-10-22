import Foundation
import Testing
import Chrt

@Suite("CharlieClient Wire Tests") struct CharlieClientWireTests {
    @Test func startV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "conversation_id": "conversation_id",
                  "participant_token": "participant_token",
                  "server_url": "server_url"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CharlieStartRes(
            conversationId: "conversation_id",
            participantToken: "participant_token",
            serverUrl: "server_url"
        )
        let response = try await client.charlie.startV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}