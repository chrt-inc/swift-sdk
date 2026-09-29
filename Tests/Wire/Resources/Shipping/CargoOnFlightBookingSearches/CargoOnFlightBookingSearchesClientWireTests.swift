import Foundation
import Testing
import Chrt

@Suite("CargoOnFlightBookingSearchesClient Wire Tests") struct CargoOnFlightBookingSearchesClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                      "cargo_on_flight_integration": "cargoai",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "destination_iata": "destination_iata",
                      "earliest_departure_date": "earliest_departure_date",
                      "iata_cass_office_id": "iata_cass_office_id",
                      "integration_search_id": "integration_search_id",
                      "origin_iata": "origin_iata",
                      "results": [
                        {
                          "awb_required": true,
                          "bookable": true,
                          "carrier_iata": "carrier_iata",
                          "integration_result_id": "integration_result_id"
                        }
                      ],
                      "schema_version": 1,
                      "search_completed": true,
                      "updated_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoOnFlightBookingSearchListRes(
            items: [
                CargoOnFlightBookingSearch1(
                    id: "_id",
                    cargoOnFlightBookingId: "cargo_on_flight_booking_id",
                    cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: Optional("created_by_user_id"),
                    destinationIata: "destination_iata",
                    earliestDepartureDate: "earliest_departure_date",
                    iataCassOfficeId: "iata_cass_office_id",
                    integrationSearchId: "integration_search_id",
                    originIata: "origin_iata",
                    results: Optional([
                        CargoOnFlightBookingSearchResult1(
                            awbRequired: true,
                            bookable: true,
                            carrierIata: "carrier_iata",
                            integrationResultId: "integration_result_id"
                        )
                    ]),
                    schemaVersion: 1,
                    searchCompleted: true,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.cargoOnFlightBookingSearches.listV1(
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                  "cargo_on_flight_integration": "cargoai",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "destination_iata": "destination_iata",
                  "earliest_departure_date": "earliest_departure_date",
                  "iata_cass_office_id": "iata_cass_office_id",
                  "integration_search_id": "integration_search_id",
                  "origin_iata": "origin_iata",
                  "results": [
                    {
                      "awb_prefixes": [
                        "awb_prefixes"
                      ],
                      "awb_required": true,
                      "bookable": true,
                      "carrier_iata": "carrier_iata",
                      "integration_result_id": "integration_result_id",
                      "latest_acceptance_utc": "2024-01-15T09:30:00Z",
                      "legs": [
                        {
                          "carrier_iata": "carrier_iata",
                          "destination_iata": "destination_iata",
                          "flight_number": "flight_number",
                          "origin_iata": "origin_iata",
                          "scheduled_arrival_utc": "2024-01-15T09:30:00Z",
                          "scheduled_departure_utc": "2024-01-15T09:30:00Z",
                          "surface_transport": true
                        }
                      ],
                      "not_bookable_reason": "not_bookable_reason",
                      "rates": [
                        {
                          "currency_code": "currency_code",
                          "total_amount": 1.1
                        }
                      ],
                      "time_of_availability_utc": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "schema_version": 1,
                  "search_completed": true,
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoOnFlightBookingSearch1(
            id: "_id",
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            destinationIata: "destination_iata",
            earliestDepartureDate: "earliest_departure_date",
            iataCassOfficeId: "iata_cass_office_id",
            integrationSearchId: "integration_search_id",
            originIata: "origin_iata",
            results: Optional([
                CargoOnFlightBookingSearchResult1(
                    awbPrefixes: Optional([
                        "awb_prefixes"
                    ]),
                    awbRequired: true,
                    bookable: true,
                    carrierIata: "carrier_iata",
                    integrationResultId: "integration_result_id",
                    latestAcceptanceUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    legs: Optional([
                        CargoOnFlightBookingItineraryLeg1(
                            carrierIata: "carrier_iata",
                            destinationIata: "destination_iata",
                            flightNumber: "flight_number",
                            originIata: "origin_iata",
                            scheduledArrivalUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            surfaceTransport: true
                        )
                    ]),
                    notBookableReason: Optional("not_bookable_reason"),
                    rates: Optional([
                        CargoOnFlightBookingRate1(
                            currencyCode: "currency_code",
                            totalAmount: 1.1
                        )
                    ]),
                    timeOfAvailabilityUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            schemaVersion: 1,
            searchCompleted: true,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.cargoOnFlightBookingSearches.getV1(
            cargoOnFlightBookingSearchId: "cargo_on_flight_booking_search_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}