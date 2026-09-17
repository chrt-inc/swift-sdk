import Foundation
import Testing
import Chrt

@Suite("ShippingFlightsClient Wire Tests") struct ShippingFlightsClientWireTests {
    @Test func getFlightInfoForTaskV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flight_legs": [
                    {
                      "_id": "_id",
                      "actual_arrival_utc": "2024-01-15T09:30:00Z",
                      "actual_departure_utc": "2024-01-15T09:30:00Z",
                      "arrival_gate": "arrival_gate",
                      "arrival_terminal": "arrival_terminal",
                      "carrier_iata": "carrier_iata",
                      "carrier_icao": "carrier_icao",
                      "cirium_flight_id": 1,
                      "departure_gate": "departure_gate",
                      "departure_terminal": "departure_terminal",
                      "destination_iata": "destination_iata",
                      "estimated_arrival_utc": "2024-01-15T09:30:00Z",
                      "estimated_departure_utc": "2024-01-15T09:30:00Z",
                      "fa_flight_id": "fa_flight_id",
                      "flight_number": "flight_number",
                      "flight_status": "scheduled",
                      "flight_status_fetched_at_utc": "2024-01-15T09:30:00Z",
                      "flight_status_source": "live",
                      "order_id": "order_id",
                      "origin_iata": "origin_iata",
                      "provenance": "manual",
                      "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                      "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                      "schema_version": 1,
                      "session_id": "session_id",
                      "task_group_id": "task_group_id"
                    }
                  ]
                }
                """#.utf8
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
                    id: "_id",
                    actualArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    actualDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    arrivalGate: Optional("arrival_gate"),
                    arrivalTerminal: Optional("arrival_terminal"),
                    carrierIata: "carrier_iata",
                    carrierIcao: Optional("carrier_icao"),
                    ciriumFlightId: Optional(1),
                    departureGate: Optional("departure_gate"),
                    departureTerminal: Optional("departure_terminal"),
                    destinationIata: "destination_iata",
                    estimatedArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    estimatedDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    faFlightId: Optional("fa_flight_id"),
                    flightNumber: "flight_number",
                    flightStatus: Optional(FlightLegStatusEnum1.scheduled),
                    flightStatusFetchedAtUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    flightStatusSource: Optional(FlightLegStatusSourceEnum1.live),
                    orderId: Optional("order_id"),
                    originIata: "origin_iata",
                    provenance: FlightLegProvenanceEnum1.manual,
                    scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    schemaVersion: 1,
                    sessionId: Optional("session_id"),
                    taskGroupId: Optional("task_group_id")
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
            body: Foundation.Data(
                #"""
                {
                  "flight_legs": [
                    {
                      "_id": "_id",
                      "actual_arrival_utc": "2024-01-15T09:30:00Z",
                      "actual_departure_utc": "2024-01-15T09:30:00Z",
                      "arrival_gate": "arrival_gate",
                      "arrival_terminal": "arrival_terminal",
                      "carrier_iata": "carrier_iata",
                      "carrier_icao": "carrier_icao",
                      "cirium_flight_id": 1,
                      "departure_gate": "departure_gate",
                      "departure_terminal": "departure_terminal",
                      "destination_iata": "destination_iata",
                      "estimated_arrival_utc": "2024-01-15T09:30:00Z",
                      "estimated_departure_utc": "2024-01-15T09:30:00Z",
                      "fa_flight_id": "fa_flight_id",
                      "flight_number": "flight_number",
                      "flight_status": "scheduled",
                      "flight_status_fetched_at_utc": "2024-01-15T09:30:00Z",
                      "flight_status_source": "live",
                      "order_id": "order_id",
                      "origin_iata": "origin_iata",
                      "provenance": "manual",
                      "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                      "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                      "schema_version": 1,
                      "session_id": "session_id",
                      "task_group_id": "task_group_id"
                    }
                  ]
                }
                """#.utf8
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
                    id: "_id",
                    actualArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    actualDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    arrivalGate: Optional("arrival_gate"),
                    arrivalTerminal: Optional("arrival_terminal"),
                    carrierIata: "carrier_iata",
                    carrierIcao: Optional("carrier_icao"),
                    ciriumFlightId: Optional(1),
                    departureGate: Optional("departure_gate"),
                    departureTerminal: Optional("departure_terminal"),
                    destinationIata: "destination_iata",
                    estimatedArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    estimatedDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    faFlightId: Optional("fa_flight_id"),
                    flightNumber: "flight_number",
                    flightStatus: Optional(FlightLegStatusEnum1.scheduled),
                    flightStatusFetchedAtUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    flightStatusSource: Optional(FlightLegStatusSourceEnum1.live),
                    orderId: Optional("order_id"),
                    originIata: "origin_iata",
                    provenance: FlightLegProvenanceEnum1.manual,
                    scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    schemaVersion: 1,
                    sessionId: Optional("session_id"),
                    taskGroupId: Optional("task_group_id")
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
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "actual_arrival_utc": "2024-01-15T09:30:00Z",
                  "actual_departure_utc": "2024-01-15T09:30:00Z",
                  "arrival_gate": "arrival_gate",
                  "arrival_terminal": "arrival_terminal",
                  "carrier_iata": "carrier_iata",
                  "carrier_icao": "carrier_icao",
                  "cirium_flight_id": 1,
                  "departure_gate": "departure_gate",
                  "departure_terminal": "departure_terminal",
                  "destination_iata": "destination_iata",
                  "estimated_arrival_utc": "2024-01-15T09:30:00Z",
                  "estimated_departure_utc": "2024-01-15T09:30:00Z",
                  "fa_flight_id": "fa_flight_id",
                  "flight_number": "flight_number",
                  "flight_status": "scheduled",
                  "flight_status_fetched_at_utc": "2024-01-15T09:30:00Z",
                  "flight_status_source": "live",
                  "order_id": "order_id",
                  "origin_iata": "origin_iata",
                  "provenance": "manual",
                  "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                  "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "session_id": "session_id",
                  "task_group_id": "task_group_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FlightLeg1(
            id: "_id",
            actualArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            actualDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            arrivalGate: Optional("arrival_gate"),
            arrivalTerminal: Optional("arrival_terminal"),
            carrierIata: "carrier_iata",
            carrierIcao: Optional("carrier_icao"),
            ciriumFlightId: Optional(1),
            departureGate: Optional("departure_gate"),
            departureTerminal: Optional("departure_terminal"),
            destinationIata: "destination_iata",
            estimatedArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            estimatedDepartureUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            faFlightId: Optional("fa_flight_id"),
            flightNumber: "flight_number",
            flightStatus: Optional(FlightLegStatusEnum1.scheduled),
            flightStatusFetchedAtUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            flightStatusSource: Optional(FlightLegStatusSourceEnum1.live),
            orderId: Optional("order_id"),
            originIata: "origin_iata",
            provenance: FlightLegProvenanceEnum1.manual,
            scheduledArrivalUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            sessionId: Optional("session_id"),
            taskGroupId: Optional("task_group_id")
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
            body: Foundation.Data(
                #"""
                {
                  "actual_flight_path": [
                    {
                      "altitude_feet": 1,
                      "ground_speed_knots": 1,
                      "heading_degrees": 1,
                      "latitude": 1.1,
                      "longitude": 1.1,
                      "name": "name",
                      "position_source": "position_source",
                      "received_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "fa_flight_id": "fa_flight_id",
                  "last_refresh_attempt_at_timestamp": "2024-01-15T09:30:00Z",
                  "latest_position": {
                    "altitude_feet": 1,
                    "ground_speed_knots": 1,
                    "heading_degrees": 1,
                    "latitude": 1.1,
                    "longitude": 1.1,
                    "name": "name",
                    "position_source": "position_source",
                    "received_at_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "planned_flight_path": [
                    {
                      "altitude_feet": 1,
                      "ground_speed_knots": 1,
                      "heading_degrees": 1,
                      "latitude": 1.1,
                      "longitude": 1.1,
                      "name": "name",
                      "position_source": "position_source",
                      "received_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FlightTrackRes(
            actualFlightPath: Optional([
                FlightTrackPosition1(
                    altitudeFeet: Optional(1),
                    groundSpeedKnots: Optional(1),
                    headingDegrees: Optional(1),
                    latitude: Optional(1.1),
                    longitude: Optional(1.1),
                    name: Optional("name"),
                    positionSource: Optional("position_source"),
                    receivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            faFlightId: Optional("fa_flight_id"),
            lastRefreshAttemptAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            latestPosition: Optional(FlightTrackPosition1(
                altitudeFeet: Optional(1),
                groundSpeedKnots: Optional(1),
                headingDegrees: Optional(1),
                latitude: Optional(1.1),
                longitude: Optional(1.1),
                name: Optional("name"),
                positionSource: Optional("position_source"),
                receivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )),
            plannedFlightPath: Optional([
                FlightTrackPosition1(
                    altitudeFeet: Optional(1),
                    groundSpeedKnots: Optional(1),
                    headingDegrees: Optional(1),
                    latitude: Optional(1.1),
                    longitude: Optional(1.1),
                    name: Optional("name"),
                    positionSource: Optional("position_source"),
                    receivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ])
        )
        let response = try await client.shipping.flights.getFlightTrackForFlightLegV1(
            flightLegId: "flight_leg_id",
            forceRefresh: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}