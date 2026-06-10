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
                      "origin_iata": "origin_iata",
                      "destination_iata": "destination_iata",
                      "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                      "carrier_iata": "carrier_iata",
                      "carrier_icao": "carrier_icao",
                      "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                      "cirium_flight_id": 1,
                      "flight_status": "scheduled",
                      "estimated_departure_utc": "2024-01-15T09:30:00Z",
                      "actual_departure_utc": "2024-01-15T09:30:00Z",
                      "estimated_arrival_utc": "2024-01-15T09:30:00Z",
                      "actual_arrival_utc": "2024-01-15T09:30:00Z",
                      "departure_gate": "departure_gate",
                      "arrival_gate": "arrival_gate",
                      "departure_terminal": "departure_terminal",
                      "arrival_terminal": "arrival_terminal",
                      "flight_status_source": "live",
                      "flight_status_fetched_at_utc": "2024-01-15T09:30:00Z"
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
                    originIata: "origin_iata",
                    destinationIata: "destination_iata",
                    scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    carrierIata: Optional("carrier_iata"),
                    carrierIcao: Optional("carrier_icao"),
                    scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    ciriumFlightId: Optional(1),
                    flightStatus: Optional(.scheduled),
                    estimatedDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    actualDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    estimatedArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    actualArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    departureGate: Optional("departure_gate"),
                    arrivalGate: Optional("arrival_gate"),
                    departureTerminal: Optional("departure_terminal"),
                    arrivalTerminal: Optional("arrival_terminal"),
                    flightStatusSource: Optional(.live),
                    flightStatusFetchedAtUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
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
                      "origin_iata": "origin_iata",
                      "destination_iata": "destination_iata",
                      "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                      "carrier_iata": "carrier_iata",
                      "carrier_icao": "carrier_icao",
                      "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                      "cirium_flight_id": 1,
                      "flight_status": "scheduled",
                      "estimated_departure_utc": "2024-01-15T09:30:00Z",
                      "actual_departure_utc": "2024-01-15T09:30:00Z",
                      "estimated_arrival_utc": "2024-01-15T09:30:00Z",
                      "actual_arrival_utc": "2024-01-15T09:30:00Z",
                      "departure_gate": "departure_gate",
                      "arrival_gate": "arrival_gate",
                      "departure_terminal": "departure_terminal",
                      "arrival_terminal": "arrival_terminal",
                      "flight_status_source": "live",
                      "flight_status_fetched_at_utc": "2024-01-15T09:30:00Z"
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
                    originIata: "origin_iata",
                    destinationIata: "destination_iata",
                    scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    carrierIata: Optional("carrier_iata"),
                    carrierIcao: Optional("carrier_icao"),
                    scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    ciriumFlightId: Optional(1),
                    flightStatus: Optional(.scheduled),
                    estimatedDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    actualDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    estimatedArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    actualArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    departureGate: Optional("departure_gate"),
                    arrivalGate: Optional("arrival_gate"),
                    departureTerminal: Optional("departure_terminal"),
                    arrivalTerminal: Optional("arrival_terminal"),
                    flightStatusSource: Optional(.live),
                    flightStatusFetchedAtUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ])
        )
        let response = try await client.shipping.flights.getFlightLegsForTaskGroupV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getFlightStatusForFlightLegV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "order_id": "order_id",
                  "task_group_id": "task_group_id",
                  "flight_number": "flight_number",
                  "provenance": "manual",
                  "origin_iata": "origin_iata",
                  "destination_iata": "destination_iata",
                  "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                  "carrier_iata": "carrier_iata",
                  "carrier_icao": "carrier_icao",
                  "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                  "cirium_flight_id": 1,
                  "flight_status": "scheduled",
                  "estimated_departure_utc": "2024-01-15T09:30:00Z",
                  "actual_departure_utc": "2024-01-15T09:30:00Z",
                  "estimated_arrival_utc": "2024-01-15T09:30:00Z",
                  "actual_arrival_utc": "2024-01-15T09:30:00Z",
                  "departure_gate": "departure_gate",
                  "arrival_gate": "arrival_gate",
                  "departure_terminal": "departure_terminal",
                  "arrival_terminal": "arrival_terminal",
                  "flight_status_source": "live",
                  "flight_status_fetched_at_utc": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FlightLeg1(
            schemaVersion: 1,
            id: "_id",
            orderId: "order_id",
            taskGroupId: "task_group_id",
            flightNumber: "flight_number",
            provenance: .manual,
            originIata: "origin_iata",
            destinationIata: "destination_iata",
            scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            carrierIata: Optional("carrier_iata"),
            carrierIcao: Optional("carrier_icao"),
            scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ciriumFlightId: Optional(1),
            flightStatus: Optional(.scheduled),
            estimatedDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            actualDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            estimatedArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            actualArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            departureGate: Optional("departure_gate"),
            arrivalGate: Optional("arrival_gate"),
            departureTerminal: Optional("departure_terminal"),
            arrivalTerminal: Optional("arrival_terminal"),
            flightStatusSource: Optional(.live),
            flightStatusFetchedAtUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.shipping.flights.getFlightStatusForFlightLegV1(
            flightLegId: "flight_leg_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getFlightTrackForFlightLegV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "cirium_flight_id": 1,
                  "positions": [
                    {
                      "lat": 1.1,
                      "lon": 1.1,
                      "altitude_ft": 1,
                      "speed_mph": 1,
                      "source": "source",
                      "date_utc": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "waypoints": [
                    {
                      "lat": 1.1,
                      "lon": 1.1
                    }
                  ],
                  "legacy_route": "legacy_route",
                  "bearing": 1.1,
                  "heading": 1.1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FlightTrackRes(
            ciriumFlightId: Optional(1),
            positions: Optional([
                FlightTrackPosition(
                    lat: Optional(1.1),
                    lon: Optional(1.1),
                    altitudeFt: Optional(1),
                    speedMph: Optional(1),
                    source: Optional("source"),
                    dateUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            waypoints: Optional([
                FlightTrackWaypoint(
                    lat: Optional(1.1),
                    lon: Optional(1.1)
                )
            ]),
            legacyRoute: Optional("legacy_route"),
            bearing: Optional(1.1),
            heading: Optional(1.1)
        )
        let response = try await client.shipping.flights.getFlightTrackForFlightLegV1(
            flightLegId: "flight_leg_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}