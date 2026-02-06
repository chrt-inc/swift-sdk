import Foundation
import Testing
import Chrt

@Suite("ShippingClient Wire Tests") struct ShippingClientWireTests {
    @Test func retrieveOrdersCountV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "buckets": [
                    {
                      "period": "2024-01-15T09:30:00Z",
                      "value": 1.1
                    }
                  ],
                  "total": 1.1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnalyticsTimeBucketResponse(
            buckets: [
                TimeBucket(
                    period: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    value: 1.1
                )
            ],
            total: 1.1
        )
        let response = try await client.analytics.shipping.retrieveOrdersCountV1(
            request: .init(
                start: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                end: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}