import Foundation
import Testing
import Chrt

@Suite("CargoaiClient Wire Tests") struct CargoaiClientWireTests {
    @Test func bookV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "awb_number": "awb_number",
                  "booked_itinerary": {
                    "carrier_iata": "carrier_iata",
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
                    "origin_ground_handling_agent_address": "origin_ground_handling_agent_address",
                    "origin_ground_handling_agent_name": "origin_ground_handling_agent_name",
                    "time_of_availability_utc": "2024-01-15T09:30:00Z"
                  },
                  "booked_rate": {
                    "all_in_rate_per_kilogram": 1.1,
                    "chargeable_weight_kilograms": 1.1,
                    "charges": [
                      {
                        "basis": "basis",
                        "label": "label",
                        "rate": 1.1
                      }
                    ],
                    "currency_code": "currency_code",
                    "integration_rate_id": "integration_rate_id",
                    "net_rate_per_kilogram": 1.1,
                    "other_charges_due_carrier": [
                      {
                        "basis": "basis",
                        "label": "label",
                        "rate": 1.1
                      }
                    ],
                    "rate_name": "rate_name",
                    "special_handling_codes": [
                      "special_handling_codes"
                    ],
                    "total_amount": 1.1
                  },
                  "cancellation_requested_at_timestamp": "2024-01-15T09:30:00Z",
                  "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                  "cargo_dimensions": [
                    {
                      "height_inches": 1.1,
                      "length_inches": 1.1,
                      "quantity": 1,
                      "stackable": true,
                      "turnable": true,
                      "weight_per_piece_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "cargo_ids": [
                    "cargo_ids"
                  ],
                  "cargo_on_flight_booking_search_id": "cargo_on_flight_booking_search_id",
                  "cargo_on_flight_integration": "cargoai",
                  "confirmed_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                  "failed_at_timestamp": "2024-01-15T09:30:00Z",
                  "flight_leg_ids": [
                    "flight_leg_ids"
                  ],
                  "iata_cass_office_id": "iata_cass_office_id",
                  "integration_status": "integration_status",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "rejected_at_timestamp": "2024-01-15T09:30:00Z",
                  "requested_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "special_handling_codes": [
                    "ACT"
                  ],
                  "status": "draft",
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
        let expectedResponse = CargoOnFlightBooking1(
            id: "_id",
            awbNumber: Optional("awb_number"),
            bookedItinerary: Optional(CargoOnFlightBookingItinerary1(
                carrierIata: "carrier_iata",
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
                originGroundHandlingAgentAddress: Optional("origin_ground_handling_agent_address"),
                originGroundHandlingAgentName: Optional("origin_ground_handling_agent_name"),
                timeOfAvailabilityUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )),
            bookedRate: Optional(CargoOnFlightBookingRate1(
                allInRatePerKilogram: Optional(1.1),
                chargeableWeightKilograms: Optional(1.1),
                charges: Optional([
                    CargoOnFlightBookingRateCharge1(
                        basis: "basis",
                        label: "label",
                        rate: 1.1
                    )
                ]),
                currencyCode: "currency_code",
                integrationRateId: Optional("integration_rate_id"),
                netRatePerKilogram: Optional(1.1),
                otherChargesDueCarrier: Optional([
                    CargoOnFlightBookingRateCharge1(
                        basis: "basis",
                        label: "label",
                        rate: 1.1
                    )
                ]),
                rateName: Optional("rate_name"),
                specialHandlingCodes: Optional([
                    "special_handling_codes"
                ]),
                totalAmount: 1.1
            )),
            cancellationRequestedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cargoDimensions: Optional([
                CargoOnFlightBookingCargoDimension1(
                    heightInches: 1.1,
                    lengthInches: 1.1,
                    quantity: 1,
                    stackable: Optional(true),
                    turnable: Optional(true),
                    weightPerPiecePounds: 1.1,
                    widthInches: 1.1
                )
            ]),
            cargoIds: Optional([
                "cargo_ids"
            ]),
            cargoOnFlightBookingSearchId: Optional("cargo_on_flight_booking_search_id"),
            cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
            confirmedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            failedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            flightLegIds: Optional([
                "flight_leg_ids"
            ]),
            iataCassOfficeId: Optional("iata_cass_office_id"),
            integrationStatus: Optional("integration_status"),
            orderId: "order_id",
            orderShortId: "order_short_id",
            rejectedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            requestedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            schemaVersion: 1,
            specialHandlingCodes: Optional([
                SpecialHandlingCodeEnum1.act
            ]),
            status: CargoOnFlightBookingStatusEnum1.draft,
            taskGroupId: "task_group_id"
        )
        let response = try await client.cargoOnFlightIntegrations.cargoai.bookV1(
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            request: .init(
                cargoOnFlightBookingSearchId: "cargo_on_flight_booking_search_id",
                integrationRateId: "integration_rate_id",
                integrationResultId: "integration_result_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cancelV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "awb_number": "awb_number",
                  "booked_itinerary": {
                    "carrier_iata": "carrier_iata",
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
                    "origin_ground_handling_agent_address": "origin_ground_handling_agent_address",
                    "origin_ground_handling_agent_name": "origin_ground_handling_agent_name",
                    "time_of_availability_utc": "2024-01-15T09:30:00Z"
                  },
                  "booked_rate": {
                    "all_in_rate_per_kilogram": 1.1,
                    "chargeable_weight_kilograms": 1.1,
                    "charges": [
                      {
                        "basis": "basis",
                        "label": "label",
                        "rate": 1.1
                      }
                    ],
                    "currency_code": "currency_code",
                    "integration_rate_id": "integration_rate_id",
                    "net_rate_per_kilogram": 1.1,
                    "other_charges_due_carrier": [
                      {
                        "basis": "basis",
                        "label": "label",
                        "rate": 1.1
                      }
                    ],
                    "rate_name": "rate_name",
                    "special_handling_codes": [
                      "special_handling_codes"
                    ],
                    "total_amount": 1.1
                  },
                  "cancellation_requested_at_timestamp": "2024-01-15T09:30:00Z",
                  "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                  "cargo_dimensions": [
                    {
                      "height_inches": 1.1,
                      "length_inches": 1.1,
                      "quantity": 1,
                      "stackable": true,
                      "turnable": true,
                      "weight_per_piece_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "cargo_ids": [
                    "cargo_ids"
                  ],
                  "cargo_on_flight_booking_search_id": "cargo_on_flight_booking_search_id",
                  "cargo_on_flight_integration": "cargoai",
                  "confirmed_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                  "failed_at_timestamp": "2024-01-15T09:30:00Z",
                  "flight_leg_ids": [
                    "flight_leg_ids"
                  ],
                  "iata_cass_office_id": "iata_cass_office_id",
                  "integration_status": "integration_status",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "rejected_at_timestamp": "2024-01-15T09:30:00Z",
                  "requested_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "special_handling_codes": [
                    "ACT"
                  ],
                  "status": "draft",
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
        let expectedResponse = CargoOnFlightBooking1(
            id: "_id",
            awbNumber: Optional("awb_number"),
            bookedItinerary: Optional(CargoOnFlightBookingItinerary1(
                carrierIata: "carrier_iata",
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
                originGroundHandlingAgentAddress: Optional("origin_ground_handling_agent_address"),
                originGroundHandlingAgentName: Optional("origin_ground_handling_agent_name"),
                timeOfAvailabilityUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )),
            bookedRate: Optional(CargoOnFlightBookingRate1(
                allInRatePerKilogram: Optional(1.1),
                chargeableWeightKilograms: Optional(1.1),
                charges: Optional([
                    CargoOnFlightBookingRateCharge1(
                        basis: "basis",
                        label: "label",
                        rate: 1.1
                    )
                ]),
                currencyCode: "currency_code",
                integrationRateId: Optional("integration_rate_id"),
                netRatePerKilogram: Optional(1.1),
                otherChargesDueCarrier: Optional([
                    CargoOnFlightBookingRateCharge1(
                        basis: "basis",
                        label: "label",
                        rate: 1.1
                    )
                ]),
                rateName: Optional("rate_name"),
                specialHandlingCodes: Optional([
                    "special_handling_codes"
                ]),
                totalAmount: 1.1
            )),
            cancellationRequestedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cargoDimensions: Optional([
                CargoOnFlightBookingCargoDimension1(
                    heightInches: 1.1,
                    lengthInches: 1.1,
                    quantity: 1,
                    stackable: Optional(true),
                    turnable: Optional(true),
                    weightPerPiecePounds: 1.1,
                    widthInches: 1.1
                )
            ]),
            cargoIds: Optional([
                "cargo_ids"
            ]),
            cargoOnFlightBookingSearchId: Optional("cargo_on_flight_booking_search_id"),
            cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
            confirmedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            failedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            flightLegIds: Optional([
                "flight_leg_ids"
            ]),
            iataCassOfficeId: Optional("iata_cass_office_id"),
            integrationStatus: Optional("integration_status"),
            orderId: "order_id",
            orderShortId: "order_short_id",
            rejectedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            requestedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            schemaVersion: 1,
            specialHandlingCodes: Optional([
                SpecialHandlingCodeEnum1.act
            ]),
            status: CargoOnFlightBookingStatusEnum1.draft,
            taskGroupId: "task_group_id"
        )
        let response = try await client.cargoOnFlightIntegrations.cargoai.cancelV1(
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            request: .init(cancellationReason: "cancellation_reason"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func refreshV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "awb_number": "awb_number",
                  "booked_itinerary": {
                    "carrier_iata": "carrier_iata",
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
                    "origin_ground_handling_agent_address": "origin_ground_handling_agent_address",
                    "origin_ground_handling_agent_name": "origin_ground_handling_agent_name",
                    "time_of_availability_utc": "2024-01-15T09:30:00Z"
                  },
                  "booked_rate": {
                    "all_in_rate_per_kilogram": 1.1,
                    "chargeable_weight_kilograms": 1.1,
                    "charges": [
                      {
                        "basis": "basis",
                        "label": "label",
                        "rate": 1.1
                      }
                    ],
                    "currency_code": "currency_code",
                    "integration_rate_id": "integration_rate_id",
                    "net_rate_per_kilogram": 1.1,
                    "other_charges_due_carrier": [
                      {
                        "basis": "basis",
                        "label": "label",
                        "rate": 1.1
                      }
                    ],
                    "rate_name": "rate_name",
                    "special_handling_codes": [
                      "special_handling_codes"
                    ],
                    "total_amount": 1.1
                  },
                  "cancellation_requested_at_timestamp": "2024-01-15T09:30:00Z",
                  "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                  "cargo_dimensions": [
                    {
                      "height_inches": 1.1,
                      "length_inches": 1.1,
                      "quantity": 1,
                      "stackable": true,
                      "turnable": true,
                      "weight_per_piece_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "cargo_ids": [
                    "cargo_ids"
                  ],
                  "cargo_on_flight_booking_search_id": "cargo_on_flight_booking_search_id",
                  "cargo_on_flight_integration": "cargoai",
                  "confirmed_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                  "failed_at_timestamp": "2024-01-15T09:30:00Z",
                  "flight_leg_ids": [
                    "flight_leg_ids"
                  ],
                  "iata_cass_office_id": "iata_cass_office_id",
                  "integration_status": "integration_status",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "rejected_at_timestamp": "2024-01-15T09:30:00Z",
                  "requested_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "special_handling_codes": [
                    "ACT"
                  ],
                  "status": "draft",
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
        let expectedResponse = CargoOnFlightBooking1(
            id: "_id",
            awbNumber: Optional("awb_number"),
            bookedItinerary: Optional(CargoOnFlightBookingItinerary1(
                carrierIata: "carrier_iata",
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
                originGroundHandlingAgentAddress: Optional("origin_ground_handling_agent_address"),
                originGroundHandlingAgentName: Optional("origin_ground_handling_agent_name"),
                timeOfAvailabilityUtc: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )),
            bookedRate: Optional(CargoOnFlightBookingRate1(
                allInRatePerKilogram: Optional(1.1),
                chargeableWeightKilograms: Optional(1.1),
                charges: Optional([
                    CargoOnFlightBookingRateCharge1(
                        basis: "basis",
                        label: "label",
                        rate: 1.1
                    )
                ]),
                currencyCode: "currency_code",
                integrationRateId: Optional("integration_rate_id"),
                netRatePerKilogram: Optional(1.1),
                otherChargesDueCarrier: Optional([
                    CargoOnFlightBookingRateCharge1(
                        basis: "basis",
                        label: "label",
                        rate: 1.1
                    )
                ]),
                rateName: Optional("rate_name"),
                specialHandlingCodes: Optional([
                    "special_handling_codes"
                ]),
                totalAmount: 1.1
            )),
            cancellationRequestedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cargoDimensions: Optional([
                CargoOnFlightBookingCargoDimension1(
                    heightInches: 1.1,
                    lengthInches: 1.1,
                    quantity: 1,
                    stackable: Optional(true),
                    turnable: Optional(true),
                    weightPerPiecePounds: 1.1,
                    widthInches: 1.1
                )
            ]),
            cargoIds: Optional([
                "cargo_ids"
            ]),
            cargoOnFlightBookingSearchId: Optional("cargo_on_flight_booking_search_id"),
            cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
            confirmedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            failedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            flightLegIds: Optional([
                "flight_leg_ids"
            ]),
            iataCassOfficeId: Optional("iata_cass_office_id"),
            integrationStatus: Optional("integration_status"),
            orderId: "order_id",
            orderShortId: "order_short_id",
            rejectedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            requestedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            schemaVersion: 1,
            specialHandlingCodes: Optional([
                SpecialHandlingCodeEnum1.act
            ]),
            status: CargoOnFlightBookingStatusEnum1.draft,
            taskGroupId: "task_group_id"
        )
        let response = try await client.cargoOnFlightIntegrations.cargoai.refreshV1(
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func searchContinueV11() async throws -> Void {
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
                  "offset_days": 1,
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
                      "origin_ground_handling_agent_address": "origin_ground_handling_agent_address",
                      "origin_ground_handling_agent_name": "origin_ground_handling_agent_name",
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
            offsetDays: Optional(1),
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
                    originGroundHandlingAgentAddress: Optional("origin_ground_handling_agent_address"),
                    originGroundHandlingAgentName: Optional("origin_ground_handling_agent_name"),
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
        let response = try await client.cargoOnFlightIntegrations.cargoai.searchContinueV1(
            cargoOnFlightBookingSearchId: "cargo_on_flight_booking_search_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func searchV11() async throws -> Void {
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
                  "offset_days": 1,
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
                      "origin_ground_handling_agent_address": "origin_ground_handling_agent_address",
                      "origin_ground_handling_agent_name": "origin_ground_handling_agent_name",
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
            offsetDays: Optional(1),
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
                    originGroundHandlingAgentAddress: Optional("origin_ground_handling_agent_address"),
                    originGroundHandlingAgentName: Optional("origin_ground_handling_agent_name"),
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
        let response = try await client.cargoOnFlightIntegrations.cargoai.searchV1(
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            request: .init(
                destinationIata: "destination_iata",
                earliestDepartureDate: "earliest_departure_date",
                iataCassOfficeId: "iata_cass_office_id",
                originIata: "origin_iata",
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}