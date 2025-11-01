import Foundation
import Testing
import Chrt

@Suite("UtilsClient Wire Tests") struct UtilsClientWireTests {
    @Test func getTimezoneV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "timezone": "timezone",
                  "lat": 1.1,
                  "lng": 1.1,
                  "method": "method"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TimezoneResponse(
            timezone: "timezone",
            lat: 1.1,
            lng: 1.1,
            method: "method"
        )
        let response = try await client.utils.getTimezoneV1(
            lat: 37.7749,
            lng: -122.4194
        )
        try #require(response == expectedResponse)
    }
}