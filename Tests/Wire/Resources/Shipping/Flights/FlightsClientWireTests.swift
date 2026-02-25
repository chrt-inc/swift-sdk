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
                  "fa_flight_ids": [
                    "fa_flight_ids"
                  ],
                  "flight_number": "flight_number"
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
            faFlightIds: Optional([
                "fa_flight_ids"
            ]),
            flightNumber: Optional("flight_number")
        )
        let response = try await client.shipping.flights.getFlightInfoForTaskV1(
            taskId: "task_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}