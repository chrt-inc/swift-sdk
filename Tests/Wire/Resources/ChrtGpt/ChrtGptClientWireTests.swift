import Foundation
import Testing
import Chrt

@Suite("ChrtGptClient Wire Tests") struct ChrtGptClientWireTests {
    @Test func messageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "conversation_id": "conversation_id",
                  "response_text": "response_text"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ChrtGptMessageRes(
            conversationId: "conversation_id",
            responseText: "response_text"
        )
        let response = try await client.chrtGpt.messageV1(
            request: .init(message: "message"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}