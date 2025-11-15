import Foundation
import Testing
import Chrt

@Suite("ConnectionToForwarderClient Wire Tests") struct ConnectionToForwarderClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
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
        let response = try await client.connections.connectionToForwarder.createV1(
            request: CreateConnectionReq(
                handle: "handle"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}