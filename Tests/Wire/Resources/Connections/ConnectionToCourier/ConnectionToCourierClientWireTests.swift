import Foundation
import Testing
import Chrt

@Suite("ConnectionToCourierClient Wire Tests") struct ConnectionToCourierClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.connections.connectionToCourier.createV1(request: .init(handle: "handle"))
        try #require(response == expectedResponse)
    }
}