import Foundation
import Testing
import Chrt

@Suite("CargoOnFlightBookingsClient Wire Tests") struct CargoOnFlightBookingsClientWireTests {
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
        let response = try await client.shipping.cargoOnFlightBookings.cancelV1(
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
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
        let response = try await client.shipping.cargoOnFlightBookings.createV1(
            request: .init(
                cargoDimensions: [
                    CargoOnFlightBookingCargoDimension1(
                        heightInches: 1.1,
                        lengthInches: 1.1,
                        quantity: 1,
                        weightPerPiecePounds: 1.1,
                        widthInches: 1.1
                    )
                ],
                cargoIds: [
                    "cargo_ids"
                ],
                cargoOnFlightIntegration: .cargoai,
                schemaVersion: 1,
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteDraftV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.shipping.cargoOnFlightBookings.deleteDraftV1(
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "awb_number": "awb_number",
                      "booked_itinerary": {
                        "carrier_iata": "carrier_iata"
                      },
                      "booked_rate": {
                        "currency_code": "currency_code",
                        "total_amount": 1.1
                      },
                      "cancellation_requested_at_timestamp": "2024-01-15T09:30:00Z",
                      "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                      "cargo_dimensions": [
                        {
                          "height_inches": 1.1,
                          "length_inches": 1.1,
                          "quantity": 1,
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
        let expectedResponse = CargoOnFlightBookingListRes(
            items: [
                CargoOnFlightBooking1(
                    id: "_id",
                    awbNumber: Optional("awb_number"),
                    bookedItinerary: Optional(CargoOnFlightBookingItinerary1(
                        carrierIata: "carrier_iata"
                    )),
                    bookedRate: Optional(CargoOnFlightBookingRate1(
                        currencyCode: "currency_code",
                        totalAmount: 1.1
                    )),
                    cancellationRequestedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cargoDimensions: Optional([
                        CargoOnFlightBookingCargoDimension1(
                            heightInches: 1.1,
                            lengthInches: 1.1,
                            quantity: 1,
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
            ],
            totalCount: 1
        )
        let response = try await client.shipping.cargoOnFlightBookings.listV1(
            taskGroupId: "task_group_id",
            filterStatus: [
                .draft
            ],
            filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            sortBy: .draftStartedAtTimestamp,
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
        let response = try await client.shipping.cargoOnFlightBookings.getV1(
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}