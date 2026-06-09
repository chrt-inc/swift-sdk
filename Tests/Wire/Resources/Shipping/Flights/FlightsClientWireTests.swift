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
                  "flight_legs": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "order_id": "order_id",
                      "task_group_id": "task_group_id",
                      "flight_number": "flight_number",
                      "provenance": "manual",
                      "carrier_iata": "carrier_iata",
                      "carrier_icao": "carrier_icao",
                      "origin_iata": "origin_iata",
                      "destination_iata": "destination_iata",
                      "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                      "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                      "fa_flight_ids": [
                        "fa_flight_ids"
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
        let expectedResponse = FlightInfoForTaskRes(
            flightLegs: Optional([
                FlightLeg1(
                    schemaVersion: 1,
                    id: "_id",
                    orderId: "order_id",
                    taskGroupId: "task_group_id",
                    flightNumber: "flight_number",
                    provenance: .manual,
                    carrierIata: Optional("carrier_iata"),
                    carrierIcao: Optional("carrier_icao"),
                    originIata: Optional("origin_iata"),
                    destinationIata: Optional("destination_iata"),
                    scheduledDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ])
                )
            ])
        )
        let response = try await client.shipping.flights.getFlightInfoForTaskV1(
            taskId: "task_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getFlightLegsForTaskGroupV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "flight_legs": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "order_id": "order_id",
                      "task_group_id": "task_group_id",
                      "flight_number": "flight_number",
                      "provenance": "manual",
                      "carrier_iata": "carrier_iata",
                      "carrier_icao": "carrier_icao",
                      "origin_iata": "origin_iata",
                      "destination_iata": "destination_iata",
                      "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                      "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                      "fa_flight_ids": [
                        "fa_flight_ids"
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
        let expectedResponse = FlightInfoForTaskRes(
            flightLegs: Optional([
                FlightLeg1(
                    schemaVersion: 1,
                    id: "_id",
                    orderId: "order_id",
                    taskGroupId: "task_group_id",
                    flightNumber: "flight_number",
                    provenance: .manual,
                    carrierIata: Optional("carrier_iata"),
                    carrierIcao: Optional("carrier_icao"),
                    originIata: Optional("origin_iata"),
                    destinationIata: Optional("destination_iata"),
                    scheduledDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ])
                )
            ])
        )
        let response = try await client.shipping.flights.getFlightLegsForTaskGroupV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}