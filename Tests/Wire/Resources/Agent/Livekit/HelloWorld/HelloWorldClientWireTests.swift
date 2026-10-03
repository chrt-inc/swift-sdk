import Foundation
import Testing
import Chrt

@Suite("HelloWorldClient Wire Tests") struct HelloWorldClientWireTests {
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
        let expectedResponse = LiveKitHelloWorldStartRes(
            participantToken: "participant_token",
            roomName: "room_name",
            serverUrl: "server_url"
        )
        let response = try await client.agent.livekit.helloWorld.startV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}