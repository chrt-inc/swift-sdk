import Foundation
import Testing
import Chrt

@Suite("DocsClient Wire Tests") struct DocsClientWireTests {
    @Test func postGenerateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "key": "value"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JSONValue.object(
            [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.shipping.docs.postGenerateV1(
            request: .init(
                orderIdOrShortId: "order_id_or_short_id",
                template: .pod
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}