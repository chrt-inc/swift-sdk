import Foundation
import Testing
import Chrt

@Suite("AiClient Wire Tests") struct AiClientWireTests {
    @Test func rewriteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rewritten_text": "rewritten_text"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AiRewriteRes(
            rewrittenText: "rewritten_text"
        )
        let response = try await client.ai.rewriteV1(
            request: .init(text: "text"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}