import Foundation
import Testing
import Chrt

@Suite("WebcargoEmbedClient Wire Tests") struct WebcargoEmbedClientWireTests {
    @Test func getEmbedV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "access_token": "access_token",
                  "expires_in": 1,
                  "url": "url"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WebcargoEmbedResponse(
            accessToken: "access_token",
            expiresIn: Optional(1),
            url: "url"
        )
        let response = try await client.integrations.webcargoEmbed.getEmbedV1(
            taskGroupId: "task_group_id",
            request: .init(
                origin: "origin",
                destination: "destination",
                departure: "departure",
                country: "country"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}