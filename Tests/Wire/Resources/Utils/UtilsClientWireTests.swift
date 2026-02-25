import Foundation
import Testing
import Chrt

@Suite("UtilsClient Wire Tests") struct UtilsClientWireTests {
    @Test func getTimezoneV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "lat": 1.1,
                  "lng": 1.1,
                  "method": "method",
                  "timezone": "timezone"
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
            lat: 1.1,
            lng: 1.1,
            method: "method",
            timezone: "timezone"
        )
        let response = try await client.utils.getTimezoneV1(
            lat: 37.7749,
            lng: -122.4194,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}