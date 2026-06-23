import Foundation
import Testing
import Chrt

@Suite("FlightsClient Wire Tests") struct FlightsClientWireTests {
    @Test func searchConnectionsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "connections": [
                    {
                      "elapsed_minutes": 1,
                      "score": 1,
                      "stops": 1,
                      "legs": [
                        {}
                      ]
                    }
                  ]
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FlightConnectionsSearchRes(
            connections: Optional([
                FlightConnection(
                    elapsedMinutes: Optional(1),
                    score: Optional(1),
                    stops: 1,
                    legs: [
                        FlightConnectionLeg(

                        )
                    ]
                )
            ])
        )
        let response = try await client.flights.searchConnectionsV1(
            request: .init(
                origin: "origin",
                destination: "destination",
                searchBy: .departureTime,
                localDateTime: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}