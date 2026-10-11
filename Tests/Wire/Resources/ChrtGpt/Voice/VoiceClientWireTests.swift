import Foundation
import Testing
import Chrt

@Suite("VoiceClient Wire Tests") struct VoiceClientWireTests {
    @Test func startV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "agent_name": "agent_name",
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
        let expectedResponse = ChrtGptVoiceStartRes(
            agentName: "agent_name",
            participantToken: "participant_token",
            roomName: "room_name",
            serverUrl: "server_url"
        )
        let response = try await client.chrtGpt.voice.startV1(
            request: .init(delegation: .responses),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}