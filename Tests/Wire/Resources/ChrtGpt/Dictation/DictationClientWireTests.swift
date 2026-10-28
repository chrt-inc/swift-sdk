import Foundation
import Testing
import Chrt

@Suite("DictationClient Wire Tests") struct DictationClientWireTests {
    @Test func startV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
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
        let expectedResponse = ChrtGptDictationStartRes(
            participantToken: "participant_token",
            serverUrl: "server_url"
        )
        let response = try await client.chrtGpt.dictation.startV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}