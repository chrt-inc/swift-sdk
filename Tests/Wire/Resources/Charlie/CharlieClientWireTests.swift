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
                  "participant_token": "participant_token",
                  "room_name": "room_name",
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
            participantToken: "participant_token",
            roomName: "room_name",
            serverUrl: "server_url"
        )
        let response = try await client.charlie.startV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}