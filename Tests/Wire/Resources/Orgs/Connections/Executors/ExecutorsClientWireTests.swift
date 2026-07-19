import Foundation
import Testing
import Chrt

@Suite("ExecutorsClient Wire Tests") struct ExecutorsClientWireTests {
    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "type": "name",
                    "values": [
                      {
                        "connection_ids": [
                          "connection_ids"
                        ],
                        "value": "value"
                      }
                    ]
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            ConnectionTypeaheadResult(
                type: .name,
                values: [
                    ConnectionTypeaheadValue(
                        connectionIds: [
                            "connection_ids"
                        ],
                        value: "value"
                    )
                ]
            )
        ]
        let response = try await client.orgs.connections.executors.typeaheadV1(
            query: "query",
            limit: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}