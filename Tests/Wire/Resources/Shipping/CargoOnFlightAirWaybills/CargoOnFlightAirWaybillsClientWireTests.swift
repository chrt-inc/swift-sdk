import Foundation
import Testing
import Chrt

@Suite("CargoOnFlightAirWaybillsClient Wire Tests") struct CargoOnFlightAirWaybillsClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "also_notify": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                  "carriers_execution": {
                    "authorisation_signature": "authorisation_signature",
                    "executed_on_date": "executed_on_date",
                    "place": "place"
                  },
                  "charges_declaration": {
                    "charge_code": "CA",
                    "currency_code": "currency_code",
                    "declared_value_for_carriage": 1.1,
                    "declared_value_for_customs": 1.1,
                    "declared_value_for_insurance": 1.1,
                    "payment_other_charges": "prepaid",
                    "payment_weight_valuation": "prepaid"
                  },
                  "consignee": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "consignment_security_declaration": {
                    "country_code": "country_code",
                    "expiry_mmyy": "expiry_mmyy",
                    "regulated_entity_category": "regulated_agent",
                    "regulated_entity_identifier": "regulated_entity_identifier",
                    "screened_at_timestamp": "2024-01-15T09:30:00Z",
                    "screener_name": "screener_name",
                    "screening_exemption": "SMUS",
                    "screening_methods": [
                      "PHS"
                    ],
                    "security_status": "SPX"
                  },
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "customs_origin_code": "customs_origin_code",
                  "iata_cass_office_id": "iata_cass_office_id",
                  "issuing_agent_name": "issuing_agent_name",
                  "latest_fwb_message": {
                    "airline_response": "airline_response",
                    "cargo_on_flight_integration": "cargoai",
                    "responded_at_timestamp": "2024-01-15T09:30:00Z",
                    "responded_by_user_id": "responded_by_user_id",
                    "response_provenance": "airline",
                    "sent_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "sent"
                  },
                  "order_id": "order_id",
                  "other_charges": [
                    {
                      "charge_amount": 1.1,
                      "entitlement": "due_agent",
                      "other_charge_code": "other_charge_code",
                      "payment_condition": "prepaid"
                    }
                  ],
                  "other_service_information": "other_service_information",
                  "rate_lines": [
                    {
                      "chargeable_weight_kilograms": 1.1,
                      "commodity_item_number": "commodity_item_number",
                      "dimensions": [
                        {
                          "height_inches": 1.1,
                          "length_inches": 1.1,
                          "number_of_pieces": 1,
                          "width_inches": 1.1
                        }
                      ],
                      "gross_weight_kilograms": 1.1,
                      "harmonized_commodity_codes": [
                        "harmonized_commodity_codes"
                      ],
                      "nature_and_quantity_of_goods": "nature_and_quantity_of_goods",
                      "number_of_pieces": 1,
                      "rate_class_code": "B",
                      "rate_or_charge": 1.1,
                      "total_charge_amount": 1.1,
                      "uld_numbers": [
                        "uld_numbers"
                      ],
                      "volume_cubic_meters": 1.1
                    }
                  ],
                  "schema_version": 1,
                  "shipper": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "shippers_certification": "shippers_certification",
                  "special_service_request": "special_service_request",
                  "task_group_id": "task_group_id",
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
        let expectedResponse = CargoOnFlightAirWaybill1(
            id: "_id",
            alsoNotify: Optional(CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            )),
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            carriersExecution: CargoOnFlightAirWaybillCarriersExecution1(
                authorisationSignature: "authorisation_signature",
                executedOnDate: "executed_on_date",
                place: "place"
            ),
            chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1(
                chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                currencyCode: "currency_code",
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                paymentOtherCharges: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid),
                paymentWeightValuation: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid)
            ),
            consignee: CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            ),
            consignmentSecurityDeclaration: Optional(CargoOnFlightAirWaybillConsignmentSecurityDeclaration1(
                countryCode: "country_code",
                expiryMmyy: Optional("expiry_mmyy"),
                regulatedEntityCategory: CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1.regulatedAgent,
                regulatedEntityIdentifier: "regulated_entity_identifier",
                screenedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                screenerName: Optional("screener_name"),
                screeningExemption: Optional(CargoOnFlightAirWaybillScreeningExemptionEnum1.smus),
                screeningMethods: Optional([
                    CargoOnFlightAirWaybillScreeningMethodEnum1.phs
                ]),
                securityStatus: CargoOnFlightAirWaybillSecurityStatusEnum1.spx
            )),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            customsOriginCode: Optional("customs_origin_code"),
            iataCassOfficeId: "iata_cass_office_id",
            issuingAgentName: Optional("issuing_agent_name"),
            latestFwbMessage: Optional(CargoOnFlightAirWaybillFwbMessage1(
                airlineResponse: Optional("airline_response"),
                cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                respondedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                respondedByUserId: Optional("responded_by_user_id"),
                responseProvenance: Optional(CargoOnFlightAirWaybillMessageResponseProvenanceEnum1.airline),
                sentAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                status: CargoOnFlightAirWaybillMessageStatusEnum1.sent
            )),
            orderId: "order_id",
            otherCharges: Optional([
                CargoOnFlightAirWaybillOtherCharge1(
                    chargeAmount: 1.1,
                    entitlement: CargoOnFlightAirWaybillOtherChargeEntitlementEnum1.dueAgent,
                    otherChargeCode: "other_charge_code",
                    paymentCondition: CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid
                )
            ]),
            otherServiceInformation: Optional("other_service_information"),
            rateLines: Optional([
                CargoOnFlightAirWaybillRateLine1(
                    chargeableWeightKilograms: Optional(1.1),
                    commodityItemNumber: Optional("commodity_item_number"),
                    dimensions: Optional([
                        CargoOnFlightAirWaybillDimension1(
                            heightInches: 1.1,
                            lengthInches: 1.1,
                            numberOfPieces: 1,
                            widthInches: 1.1
                        )
                    ]),
                    grossWeightKilograms: 1.1,
                    harmonizedCommodityCodes: Optional([
                        "harmonized_commodity_codes"
                    ]),
                    natureAndQuantityOfGoods: "nature_and_quantity_of_goods",
                    numberOfPieces: 1,
                    rateClassCode: CargoOnFlightAirWaybillRateClassCodeEnum1.b,
                    rateOrCharge: Optional(1.1),
                    totalChargeAmount: Optional(1.1),
                    uldNumbers: Optional([
                        "uld_numbers"
                    ]),
                    volumeCubicMeters: Optional(1.1)
                )
            ]),
            schemaVersion: 1,
            shipper: CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            ),
            shippersCertification: "shippers_certification",
            specialServiceRequest: Optional("special_service_request"),
            taskGroupId: "task_group_id",
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.cargoOnFlightAirWaybills.createV1(
            request: .init(
                cargoOnFlightBookingId: "cargo_on_flight_booking_id",
                carriersExecution: CargoOnFlightAirWaybillCarriersExecution1(
                    authorisationSignature: "authorisation_signature",
                    executedOnDate: "executed_on_date",
                    place: "place"
                ),
                chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1(
                    chargeCode: .ca,
                    currencyCode: "currency_code"
                ),
                consignee: CargoOnFlightAirWaybillParty1(
                    addressLine1: "address_line_1",
                    cityName: "city_name",
                    countryCode: "country_code",
                    name: "name"
                ),
                rateLines: [
                    CargoOnFlightAirWaybillRateLine1(
                        grossWeightKilograms: 1.1,
                        natureAndQuantityOfGoods: "nature_and_quantity_of_goods",
                        numberOfPieces: 1,
                        rateClassCode: .b
                    )
                ],
                schemaVersion: 1,
                shipper: CargoOnFlightAirWaybillParty1(
                    addressLine1: "address_line_1",
                    cityName: "city_name",
                    countryCode: "country_code",
                    name: "name"
                ),
                shippersCertification: "shippers_certification"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
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
        let response = try await client.shipping.cargoOnFlightAirWaybills.deleteV1(
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
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
                      "also_notify": {
                        "address_line_1": "address_line_1",
                        "city_name": "city_name",
                        "country_code": "country_code",
                        "name": "name"
                      },
                      "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                      "carriers_execution": {
                        "authorisation_signature": "authorisation_signature",
                        "executed_on_date": "executed_on_date",
                        "place": "place"
                      },
                      "charges_declaration": {
                        "charge_code": "CA",
                        "currency_code": "currency_code"
                      },
                      "consignee": {
                        "address_line_1": "address_line_1",
                        "city_name": "city_name",
                        "country_code": "country_code",
                        "name": "name"
                      },
                      "consignment_security_declaration": {
                        "country_code": "country_code",
                        "regulated_entity_category": "regulated_agent",
                        "regulated_entity_identifier": "regulated_entity_identifier",
                        "security_status": "SPX"
                      },
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "customs_origin_code": "customs_origin_code",
                      "iata_cass_office_id": "iata_cass_office_id",
                      "issuing_agent_name": "issuing_agent_name",
                      "latest_fwb_message": {
                        "cargo_on_flight_integration": "cargoai",
                        "sent_at_timestamp": "2024-01-15T09:30:00Z",
                        "status": "sent"
                      },
                      "order_id": "order_id",
                      "other_charges": [
                        {
                          "charge_amount": 1.1,
                          "entitlement": "due_agent",
                          "other_charge_code": "other_charge_code",
                          "payment_condition": "prepaid"
                        }
                      ],
                      "other_service_information": "other_service_information",
                      "rate_lines": [
                        {
                          "gross_weight_kilograms": 1.1,
                          "nature_and_quantity_of_goods": "nature_and_quantity_of_goods",
                          "number_of_pieces": 1,
                          "rate_class_code": "B"
                        }
                      ],
                      "schema_version": 1,
                      "shipper": {
                        "address_line_1": "address_line_1",
                        "city_name": "city_name",
                        "country_code": "country_code",
                        "name": "name"
                      },
                      "shippers_certification": "shippers_certification",
                      "special_service_request": "special_service_request",
                      "task_group_id": "task_group_id",
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
        let expectedResponse = CargoOnFlightAirWaybillListRes(
            items: [
                CargoOnFlightAirWaybill1(
                    id: "_id",
                    alsoNotify: Optional(CargoOnFlightAirWaybillParty1(
                        addressLine1: "address_line_1",
                        cityName: "city_name",
                        countryCode: "country_code",
                        name: "name"
                    )),
                    cargoOnFlightBookingId: "cargo_on_flight_booking_id",
                    carriersExecution: CargoOnFlightAirWaybillCarriersExecution1(
                        authorisationSignature: "authorisation_signature",
                        executedOnDate: "executed_on_date",
                        place: "place"
                    ),
                    chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1(
                        chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                        currencyCode: "currency_code"
                    ),
                    consignee: CargoOnFlightAirWaybillParty1(
                        addressLine1: "address_line_1",
                        cityName: "city_name",
                        countryCode: "country_code",
                        name: "name"
                    ),
                    consignmentSecurityDeclaration: Optional(CargoOnFlightAirWaybillConsignmentSecurityDeclaration1(
                        countryCode: "country_code",
                        regulatedEntityCategory: CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1.regulatedAgent,
                        regulatedEntityIdentifier: "regulated_entity_identifier",
                        securityStatus: CargoOnFlightAirWaybillSecurityStatusEnum1.spx
                    )),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: Optional("created_by_user_id"),
                    customsOriginCode: Optional("customs_origin_code"),
                    iataCassOfficeId: "iata_cass_office_id",
                    issuingAgentName: Optional("issuing_agent_name"),
                    latestFwbMessage: Optional(CargoOnFlightAirWaybillFwbMessage1(
                        cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                        sentAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        status: CargoOnFlightAirWaybillMessageStatusEnum1.sent
                    )),
                    orderId: "order_id",
                    otherCharges: Optional([
                        CargoOnFlightAirWaybillOtherCharge1(
                            chargeAmount: 1.1,
                            entitlement: CargoOnFlightAirWaybillOtherChargeEntitlementEnum1.dueAgent,
                            otherChargeCode: "other_charge_code",
                            paymentCondition: CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid
                        )
                    ]),
                    otherServiceInformation: Optional("other_service_information"),
                    rateLines: Optional([
                        CargoOnFlightAirWaybillRateLine1(
                            grossWeightKilograms: 1.1,
                            natureAndQuantityOfGoods: "nature_and_quantity_of_goods",
                            numberOfPieces: 1,
                            rateClassCode: CargoOnFlightAirWaybillRateClassCodeEnum1.b
                        )
                    ]),
                    schemaVersion: 1,
                    shipper: CargoOnFlightAirWaybillParty1(
                        addressLine1: "address_line_1",
                        cityName: "city_name",
                        countryCode: "country_code",
                        name: "name"
                    ),
                    shippersCertification: "shippers_certification",
                    specialServiceRequest: Optional("special_service_request"),
                    taskGroupId: "task_group_id",
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.cargoOnFlightAirWaybills.listV1(
            taskGroupId: "task_group_id",
            filterCargoOnFlightBookingId: "filter_cargo_on_flight_booking_id",
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func markAcceptedV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cargo_on_flight_air_waybill": {
                    "_id": "_id",
                    "also_notify": {
                      "account_number": "account_number",
                      "address_line_1": "address_line_1",
                      "address_line_2": "address_line_2",
                      "city_iata": "city_iata",
                      "city_name": "city_name",
                      "country_code": "country_code",
                      "email_address": "email_address",
                      "fax_number": "fax_number",
                      "name": "name",
                      "phone_number": "phone_number",
                      "postal_code": "postal_code",
                      "state_province": "state_province"
                    },
                    "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                    "carriers_execution": {
                      "authorisation_signature": "authorisation_signature",
                      "executed_on_date": "executed_on_date",
                      "place": "place"
                    },
                    "charges_declaration": {
                      "charge_code": "CA",
                      "currency_code": "currency_code",
                      "declared_value_for_carriage": 1.1,
                      "declared_value_for_customs": 1.1,
                      "declared_value_for_insurance": 1.1,
                      "payment_other_charges": "prepaid",
                      "payment_weight_valuation": "prepaid"
                    },
                    "consignee": {
                      "account_number": "account_number",
                      "address_line_1": "address_line_1",
                      "address_line_2": "address_line_2",
                      "city_iata": "city_iata",
                      "city_name": "city_name",
                      "country_code": "country_code",
                      "email_address": "email_address",
                      "fax_number": "fax_number",
                      "name": "name",
                      "phone_number": "phone_number",
                      "postal_code": "postal_code",
                      "state_province": "state_province"
                    },
                    "consignment_security_declaration": {
                      "country_code": "country_code",
                      "expiry_mmyy": "expiry_mmyy",
                      "regulated_entity_category": "regulated_agent",
                      "regulated_entity_identifier": "regulated_entity_identifier",
                      "screened_at_timestamp": "2024-01-15T09:30:00Z",
                      "screener_name": "screener_name",
                      "screening_exemption": "SMUS",
                      "screening_methods": [
                        "PHS"
                      ],
                      "security_status": "SPX"
                    },
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "customs_origin_code": "customs_origin_code",
                    "iata_cass_office_id": "iata_cass_office_id",
                    "issuing_agent_name": "issuing_agent_name",
                    "latest_fwb_message": {
                      "airline_response": "airline_response",
                      "cargo_on_flight_integration": "cargoai",
                      "responded_at_timestamp": "2024-01-15T09:30:00Z",
                      "responded_by_user_id": "responded_by_user_id",
                      "response_provenance": "airline",
                      "sent_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "sent"
                    },
                    "order_id": "order_id",
                    "other_charges": [
                      {
                        "charge_amount": 1.1,
                        "entitlement": "due_agent",
                        "other_charge_code": "other_charge_code",
                        "payment_condition": "prepaid"
                      }
                    ],
                    "other_service_information": "other_service_information",
                    "rate_lines": [
                      {
                        "gross_weight_kilograms": 1.1,
                        "nature_and_quantity_of_goods": "nature_and_quantity_of_goods",
                        "number_of_pieces": 1,
                        "rate_class_code": "B"
                      }
                    ],
                    "schema_version": 1,
                    "shipper": {
                      "account_number": "account_number",
                      "address_line_1": "address_line_1",
                      "address_line_2": "address_line_2",
                      "city_iata": "city_iata",
                      "city_name": "city_name",
                      "country_code": "country_code",
                      "email_address": "email_address",
                      "fax_number": "fax_number",
                      "name": "name",
                      "phone_number": "phone_number",
                      "postal_code": "postal_code",
                      "state_province": "state_province"
                    },
                    "shippers_certification": "shippers_certification",
                    "special_service_request": "special_service_request",
                    "task_group_id": "task_group_id",
                    "updated_at_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "cargo_on_flight_house_air_waybills": [
                    {
                      "_id": "_id",
                      "cargo_on_flight_air_waybill_id": "cargo_on_flight_air_waybill_id",
                      "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                      "charges_declaration": {
                        "charge_code": "CA",
                        "currency_code": "currency_code"
                      },
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "destination_iata": "destination_iata",
                      "gross_weight_kilograms": 1.1,
                      "house_air_waybill_number": "house_air_waybill_number",
                      "latest_fhl_message": {
                        "cargo_on_flight_integration": "cargoai",
                        "sent_at_timestamp": "2024-01-15T09:30:00Z",
                        "status": "sent"
                      },
                      "manifest_description_of_goods": "manifest_description_of_goods",
                      "number_of_pieces": 1,
                      "origin_iata": "origin_iata",
                      "schema_version": 1,
                      "slac": 1,
                      "task_group_id": "task_group_id",
                      "updated_at_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = CargoOnFlightAirWaybillsMarkAcceptedRes(
            cargoOnFlightAirWaybill: CargoOnFlightAirWaybill1(
                id: "_id",
                alsoNotify: Optional(CargoOnFlightAirWaybillParty1(
                    accountNumber: Optional("account_number"),
                    addressLine1: "address_line_1",
                    addressLine2: Optional("address_line_2"),
                    cityIata: Optional("city_iata"),
                    cityName: "city_name",
                    countryCode: "country_code",
                    emailAddress: Optional("email_address"),
                    faxNumber: Optional("fax_number"),
                    name: "name",
                    phoneNumber: Optional("phone_number"),
                    postalCode: Optional("postal_code"),
                    stateProvince: Optional("state_province")
                )),
                cargoOnFlightBookingId: "cargo_on_flight_booking_id",
                carriersExecution: CargoOnFlightAirWaybillCarriersExecution1(
                    authorisationSignature: "authorisation_signature",
                    executedOnDate: "executed_on_date",
                    place: "place"
                ),
                chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1(
                    chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                    currencyCode: "currency_code",
                    declaredValueForCarriage: Optional(1.1),
                    declaredValueForCustoms: Optional(1.1),
                    declaredValueForInsurance: Optional(1.1),
                    paymentOtherCharges: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid),
                    paymentWeightValuation: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid)
                ),
                consignee: CargoOnFlightAirWaybillParty1(
                    accountNumber: Optional("account_number"),
                    addressLine1: "address_line_1",
                    addressLine2: Optional("address_line_2"),
                    cityIata: Optional("city_iata"),
                    cityName: "city_name",
                    countryCode: "country_code",
                    emailAddress: Optional("email_address"),
                    faxNumber: Optional("fax_number"),
                    name: "name",
                    phoneNumber: Optional("phone_number"),
                    postalCode: Optional("postal_code"),
                    stateProvince: Optional("state_province")
                ),
                consignmentSecurityDeclaration: Optional(CargoOnFlightAirWaybillConsignmentSecurityDeclaration1(
                    countryCode: "country_code",
                    expiryMmyy: Optional("expiry_mmyy"),
                    regulatedEntityCategory: CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1.regulatedAgent,
                    regulatedEntityIdentifier: "regulated_entity_identifier",
                    screenedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    screenerName: Optional("screener_name"),
                    screeningExemption: Optional(CargoOnFlightAirWaybillScreeningExemptionEnum1.smus),
                    screeningMethods: Optional([
                        CargoOnFlightAirWaybillScreeningMethodEnum1.phs
                    ]),
                    securityStatus: CargoOnFlightAirWaybillSecurityStatusEnum1.spx
                )),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                customsOriginCode: Optional("customs_origin_code"),
                iataCassOfficeId: "iata_cass_office_id",
                issuingAgentName: Optional("issuing_agent_name"),
                latestFwbMessage: Optional(CargoOnFlightAirWaybillFwbMessage1(
                    airlineResponse: Optional("airline_response"),
                    cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                    respondedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    respondedByUserId: Optional("responded_by_user_id"),
                    responseProvenance: Optional(CargoOnFlightAirWaybillMessageResponseProvenanceEnum1.airline),
                    sentAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    status: CargoOnFlightAirWaybillMessageStatusEnum1.sent
                )),
                orderId: "order_id",
                otherCharges: Optional([
                    CargoOnFlightAirWaybillOtherCharge1(
                        chargeAmount: 1.1,
                        entitlement: CargoOnFlightAirWaybillOtherChargeEntitlementEnum1.dueAgent,
                        otherChargeCode: "other_charge_code",
                        paymentCondition: CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid
                    )
                ]),
                otherServiceInformation: Optional("other_service_information"),
                rateLines: Optional([
                    CargoOnFlightAirWaybillRateLine1(
                        grossWeightKilograms: 1.1,
                        natureAndQuantityOfGoods: "nature_and_quantity_of_goods",
                        numberOfPieces: 1,
                        rateClassCode: CargoOnFlightAirWaybillRateClassCodeEnum1.b
                    )
                ]),
                schemaVersion: 1,
                shipper: CargoOnFlightAirWaybillParty1(
                    accountNumber: Optional("account_number"),
                    addressLine1: "address_line_1",
                    addressLine2: Optional("address_line_2"),
                    cityIata: Optional("city_iata"),
                    cityName: "city_name",
                    countryCode: "country_code",
                    emailAddress: Optional("email_address"),
                    faxNumber: Optional("fax_number"),
                    name: "name",
                    phoneNumber: Optional("phone_number"),
                    postalCode: Optional("postal_code"),
                    stateProvince: Optional("state_province")
                ),
                shippersCertification: "shippers_certification",
                specialServiceRequest: Optional("special_service_request"),
                taskGroupId: "task_group_id",
                updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            cargoOnFlightHouseAirWaybills: Optional([
                CargoOnFlightHouseAirWaybill1(
                    id: "_id",
                    cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
                    cargoOnFlightBookingId: "cargo_on_flight_booking_id",
                    chargesDeclaration: Optional(CargoOnFlightAirWaybillChargesDeclaration1(
                        chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                        currencyCode: "currency_code"
                    )),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: Optional("created_by_user_id"),
                    destinationIata: "destination_iata",
                    grossWeightKilograms: 1.1,
                    houseAirWaybillNumber: "house_air_waybill_number",
                    latestFhlMessage: Optional(CargoOnFlightHouseAirWaybillFhlMessage1(
                        cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                        sentAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        status: CargoOnFlightAirWaybillMessageStatusEnum1.sent
                    )),
                    manifestDescriptionOfGoods: "manifest_description_of_goods",
                    numberOfPieces: 1,
                    originIata: "origin_iata",
                    schemaVersion: 1,
                    slac: Optional(1),
                    taskGroupId: "task_group_id",
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.shipping.cargoOnFlightAirWaybills.markAcceptedV1(
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            request: .init(markFwb: true),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "also_notify": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                  "carriers_execution": {
                    "authorisation_signature": "authorisation_signature",
                    "executed_on_date": "executed_on_date",
                    "place": "place"
                  },
                  "charges_declaration": {
                    "charge_code": "CA",
                    "currency_code": "currency_code",
                    "declared_value_for_carriage": 1.1,
                    "declared_value_for_customs": 1.1,
                    "declared_value_for_insurance": 1.1,
                    "payment_other_charges": "prepaid",
                    "payment_weight_valuation": "prepaid"
                  },
                  "consignee": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "consignment_security_declaration": {
                    "country_code": "country_code",
                    "expiry_mmyy": "expiry_mmyy",
                    "regulated_entity_category": "regulated_agent",
                    "regulated_entity_identifier": "regulated_entity_identifier",
                    "screened_at_timestamp": "2024-01-15T09:30:00Z",
                    "screener_name": "screener_name",
                    "screening_exemption": "SMUS",
                    "screening_methods": [
                      "PHS"
                    ],
                    "security_status": "SPX"
                  },
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "customs_origin_code": "customs_origin_code",
                  "iata_cass_office_id": "iata_cass_office_id",
                  "issuing_agent_name": "issuing_agent_name",
                  "latest_fwb_message": {
                    "airline_response": "airline_response",
                    "cargo_on_flight_integration": "cargoai",
                    "responded_at_timestamp": "2024-01-15T09:30:00Z",
                    "responded_by_user_id": "responded_by_user_id",
                    "response_provenance": "airline",
                    "sent_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "sent"
                  },
                  "order_id": "order_id",
                  "other_charges": [
                    {
                      "charge_amount": 1.1,
                      "entitlement": "due_agent",
                      "other_charge_code": "other_charge_code",
                      "payment_condition": "prepaid"
                    }
                  ],
                  "other_service_information": "other_service_information",
                  "rate_lines": [
                    {
                      "chargeable_weight_kilograms": 1.1,
                      "commodity_item_number": "commodity_item_number",
                      "dimensions": [
                        {
                          "height_inches": 1.1,
                          "length_inches": 1.1,
                          "number_of_pieces": 1,
                          "width_inches": 1.1
                        }
                      ],
                      "gross_weight_kilograms": 1.1,
                      "harmonized_commodity_codes": [
                        "harmonized_commodity_codes"
                      ],
                      "nature_and_quantity_of_goods": "nature_and_quantity_of_goods",
                      "number_of_pieces": 1,
                      "rate_class_code": "B",
                      "rate_or_charge": 1.1,
                      "total_charge_amount": 1.1,
                      "uld_numbers": [
                        "uld_numbers"
                      ],
                      "volume_cubic_meters": 1.1
                    }
                  ],
                  "schema_version": 1,
                  "shipper": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "shippers_certification": "shippers_certification",
                  "special_service_request": "special_service_request",
                  "task_group_id": "task_group_id",
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
        let expectedResponse = CargoOnFlightAirWaybill1(
            id: "_id",
            alsoNotify: Optional(CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            )),
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            carriersExecution: CargoOnFlightAirWaybillCarriersExecution1(
                authorisationSignature: "authorisation_signature",
                executedOnDate: "executed_on_date",
                place: "place"
            ),
            chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1(
                chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                currencyCode: "currency_code",
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                paymentOtherCharges: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid),
                paymentWeightValuation: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid)
            ),
            consignee: CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            ),
            consignmentSecurityDeclaration: Optional(CargoOnFlightAirWaybillConsignmentSecurityDeclaration1(
                countryCode: "country_code",
                expiryMmyy: Optional("expiry_mmyy"),
                regulatedEntityCategory: CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1.regulatedAgent,
                regulatedEntityIdentifier: "regulated_entity_identifier",
                screenedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                screenerName: Optional("screener_name"),
                screeningExemption: Optional(CargoOnFlightAirWaybillScreeningExemptionEnum1.smus),
                screeningMethods: Optional([
                    CargoOnFlightAirWaybillScreeningMethodEnum1.phs
                ]),
                securityStatus: CargoOnFlightAirWaybillSecurityStatusEnum1.spx
            )),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            customsOriginCode: Optional("customs_origin_code"),
            iataCassOfficeId: "iata_cass_office_id",
            issuingAgentName: Optional("issuing_agent_name"),
            latestFwbMessage: Optional(CargoOnFlightAirWaybillFwbMessage1(
                airlineResponse: Optional("airline_response"),
                cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                respondedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                respondedByUserId: Optional("responded_by_user_id"),
                responseProvenance: Optional(CargoOnFlightAirWaybillMessageResponseProvenanceEnum1.airline),
                sentAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                status: CargoOnFlightAirWaybillMessageStatusEnum1.sent
            )),
            orderId: "order_id",
            otherCharges: Optional([
                CargoOnFlightAirWaybillOtherCharge1(
                    chargeAmount: 1.1,
                    entitlement: CargoOnFlightAirWaybillOtherChargeEntitlementEnum1.dueAgent,
                    otherChargeCode: "other_charge_code",
                    paymentCondition: CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid
                )
            ]),
            otherServiceInformation: Optional("other_service_information"),
            rateLines: Optional([
                CargoOnFlightAirWaybillRateLine1(
                    chargeableWeightKilograms: Optional(1.1),
                    commodityItemNumber: Optional("commodity_item_number"),
                    dimensions: Optional([
                        CargoOnFlightAirWaybillDimension1(
                            heightInches: 1.1,
                            lengthInches: 1.1,
                            numberOfPieces: 1,
                            widthInches: 1.1
                        )
                    ]),
                    grossWeightKilograms: 1.1,
                    harmonizedCommodityCodes: Optional([
                        "harmonized_commodity_codes"
                    ]),
                    natureAndQuantityOfGoods: "nature_and_quantity_of_goods",
                    numberOfPieces: 1,
                    rateClassCode: CargoOnFlightAirWaybillRateClassCodeEnum1.b,
                    rateOrCharge: Optional(1.1),
                    totalChargeAmount: Optional(1.1),
                    uldNumbers: Optional([
                        "uld_numbers"
                    ]),
                    volumeCubicMeters: Optional(1.1)
                )
            ]),
            schemaVersion: 1,
            shipper: CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            ),
            shippersCertification: "shippers_certification",
            specialServiceRequest: Optional("special_service_request"),
            taskGroupId: "task_group_id",
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.cargoOnFlightAirWaybills.updateV1(
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            request: .init(),
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
                  "also_notify": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                  "carriers_execution": {
                    "authorisation_signature": "authorisation_signature",
                    "executed_on_date": "executed_on_date",
                    "place": "place"
                  },
                  "charges_declaration": {
                    "charge_code": "CA",
                    "currency_code": "currency_code",
                    "declared_value_for_carriage": 1.1,
                    "declared_value_for_customs": 1.1,
                    "declared_value_for_insurance": 1.1,
                    "payment_other_charges": "prepaid",
                    "payment_weight_valuation": "prepaid"
                  },
                  "consignee": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "consignment_security_declaration": {
                    "country_code": "country_code",
                    "expiry_mmyy": "expiry_mmyy",
                    "regulated_entity_category": "regulated_agent",
                    "regulated_entity_identifier": "regulated_entity_identifier",
                    "screened_at_timestamp": "2024-01-15T09:30:00Z",
                    "screener_name": "screener_name",
                    "screening_exemption": "SMUS",
                    "screening_methods": [
                      "PHS"
                    ],
                    "security_status": "SPX"
                  },
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "customs_origin_code": "customs_origin_code",
                  "iata_cass_office_id": "iata_cass_office_id",
                  "issuing_agent_name": "issuing_agent_name",
                  "latest_fwb_message": {
                    "airline_response": "airline_response",
                    "cargo_on_flight_integration": "cargoai",
                    "responded_at_timestamp": "2024-01-15T09:30:00Z",
                    "responded_by_user_id": "responded_by_user_id",
                    "response_provenance": "airline",
                    "sent_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "sent"
                  },
                  "order_id": "order_id",
                  "other_charges": [
                    {
                      "charge_amount": 1.1,
                      "entitlement": "due_agent",
                      "other_charge_code": "other_charge_code",
                      "payment_condition": "prepaid"
                    }
                  ],
                  "other_service_information": "other_service_information",
                  "rate_lines": [
                    {
                      "chargeable_weight_kilograms": 1.1,
                      "commodity_item_number": "commodity_item_number",
                      "dimensions": [
                        {
                          "height_inches": 1.1,
                          "length_inches": 1.1,
                          "number_of_pieces": 1,
                          "width_inches": 1.1
                        }
                      ],
                      "gross_weight_kilograms": 1.1,
                      "harmonized_commodity_codes": [
                        "harmonized_commodity_codes"
                      ],
                      "nature_and_quantity_of_goods": "nature_and_quantity_of_goods",
                      "number_of_pieces": 1,
                      "rate_class_code": "B",
                      "rate_or_charge": 1.1,
                      "total_charge_amount": 1.1,
                      "uld_numbers": [
                        "uld_numbers"
                      ],
                      "volume_cubic_meters": 1.1
                    }
                  ],
                  "schema_version": 1,
                  "shipper": {
                    "account_number": "account_number",
                    "address_line_1": "address_line_1",
                    "address_line_2": "address_line_2",
                    "city_iata": "city_iata",
                    "city_name": "city_name",
                    "country_code": "country_code",
                    "email_address": "email_address",
                    "fax_number": "fax_number",
                    "name": "name",
                    "phone_number": "phone_number",
                    "postal_code": "postal_code",
                    "state_province": "state_province"
                  },
                  "shippers_certification": "shippers_certification",
                  "special_service_request": "special_service_request",
                  "task_group_id": "task_group_id",
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
        let expectedResponse = CargoOnFlightAirWaybill1(
            id: "_id",
            alsoNotify: Optional(CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            )),
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            carriersExecution: CargoOnFlightAirWaybillCarriersExecution1(
                authorisationSignature: "authorisation_signature",
                executedOnDate: "executed_on_date",
                place: "place"
            ),
            chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1(
                chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                currencyCode: "currency_code",
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                paymentOtherCharges: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid),
                paymentWeightValuation: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid)
            ),
            consignee: CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            ),
            consignmentSecurityDeclaration: Optional(CargoOnFlightAirWaybillConsignmentSecurityDeclaration1(
                countryCode: "country_code",
                expiryMmyy: Optional("expiry_mmyy"),
                regulatedEntityCategory: CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1.regulatedAgent,
                regulatedEntityIdentifier: "regulated_entity_identifier",
                screenedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                screenerName: Optional("screener_name"),
                screeningExemption: Optional(CargoOnFlightAirWaybillScreeningExemptionEnum1.smus),
                screeningMethods: Optional([
                    CargoOnFlightAirWaybillScreeningMethodEnum1.phs
                ]),
                securityStatus: CargoOnFlightAirWaybillSecurityStatusEnum1.spx
            )),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            customsOriginCode: Optional("customs_origin_code"),
            iataCassOfficeId: "iata_cass_office_id",
            issuingAgentName: Optional("issuing_agent_name"),
            latestFwbMessage: Optional(CargoOnFlightAirWaybillFwbMessage1(
                airlineResponse: Optional("airline_response"),
                cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                respondedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                respondedByUserId: Optional("responded_by_user_id"),
                responseProvenance: Optional(CargoOnFlightAirWaybillMessageResponseProvenanceEnum1.airline),
                sentAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                status: CargoOnFlightAirWaybillMessageStatusEnum1.sent
            )),
            orderId: "order_id",
            otherCharges: Optional([
                CargoOnFlightAirWaybillOtherCharge1(
                    chargeAmount: 1.1,
                    entitlement: CargoOnFlightAirWaybillOtherChargeEntitlementEnum1.dueAgent,
                    otherChargeCode: "other_charge_code",
                    paymentCondition: CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid
                )
            ]),
            otherServiceInformation: Optional("other_service_information"),
            rateLines: Optional([
                CargoOnFlightAirWaybillRateLine1(
                    chargeableWeightKilograms: Optional(1.1),
                    commodityItemNumber: Optional("commodity_item_number"),
                    dimensions: Optional([
                        CargoOnFlightAirWaybillDimension1(
                            heightInches: 1.1,
                            lengthInches: 1.1,
                            numberOfPieces: 1,
                            widthInches: 1.1
                        )
                    ]),
                    grossWeightKilograms: 1.1,
                    harmonizedCommodityCodes: Optional([
                        "harmonized_commodity_codes"
                    ]),
                    natureAndQuantityOfGoods: "nature_and_quantity_of_goods",
                    numberOfPieces: 1,
                    rateClassCode: CargoOnFlightAirWaybillRateClassCodeEnum1.b,
                    rateOrCharge: Optional(1.1),
                    totalChargeAmount: Optional(1.1),
                    uldNumbers: Optional([
                        "uld_numbers"
                    ]),
                    volumeCubicMeters: Optional(1.1)
                )
            ]),
            schemaVersion: 1,
            shipper: CargoOnFlightAirWaybillParty1(
                accountNumber: Optional("account_number"),
                addressLine1: "address_line_1",
                addressLine2: Optional("address_line_2"),
                cityIata: Optional("city_iata"),
                cityName: "city_name",
                countryCode: "country_code",
                emailAddress: Optional("email_address"),
                faxNumber: Optional("fax_number"),
                name: "name",
                phoneNumber: Optional("phone_number"),
                postalCode: Optional("postal_code"),
                stateProvince: Optional("state_province")
            ),
            shippersCertification: "shippers_certification",
            specialServiceRequest: Optional("special_service_request"),
            taskGroupId: "task_group_id",
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.cargoOnFlightAirWaybills.getV1(
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}