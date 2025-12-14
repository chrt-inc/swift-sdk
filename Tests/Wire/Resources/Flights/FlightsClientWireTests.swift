import Foundation
import Testing
import Chrt

@Suite("FlightsClient Wire Tests") struct FlightsClientWireTests {
    @Test func getFlightInfoForTaskV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "flight_number": "flight_number",
                  "fa_flight_ids": [
                    "fa_flight_ids"
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
        let expectedResponse = FlightInfoForTaskRes(
            flightNumber: Optional("flight_number"),
            faFlightIds: Optional([
                "fa_flight_ids"
            ])
        )
        let response = try await client.flights.getFlightInfoForTaskV1(
            taskId: "task_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}