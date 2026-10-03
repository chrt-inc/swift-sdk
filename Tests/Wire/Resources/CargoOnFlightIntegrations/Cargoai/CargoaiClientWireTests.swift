import Foundation
import Testing
import Chrt

@Suite("CargoaiClient Wire Tests") struct CargoaiClientWireTests {
    @Test func listAirWaybillMessagesV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "cargoai_air_waybill_message": {
                        "_id": "_id",
                        "awb_number": "awb_number",
                        "cargo_on_flight_air_waybill_id": "cargo_on_flight_air_waybill_id",
                        "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                        "cargo_on_flight_integration": "cargoai",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_org_id": "created_by_org_id",
                        "fwb_sent": true,
                        "request": {
                          "awb_number": "awb_number",
                          "awb_status": "PENDING_DELIVERY",
                          "consignee": {
                            "address": {
                              "country": {
                                "code": "code"
                              },
                              "line1": "line1"
                            },
                            "name": "name"
                          },
                          "shipper": {
                            "address": {
                              "country": {
                                "code": "code"
                              },
                              "line1": "line1"
                            },
                            "name": "name"
                          },
                          "userCompanyName": "userCompanyName",
                          "userEmail": "userEmail"
                        },
                        "schema_version": 1,
                        "send_status": "pending",
                        "updated_at_timestamp": "2024-01-15T09:30:00Z"
                      },
                      "cargoai_air_waybill_message_webhook_events": [
                        {
                          "_id": "_id",
                          "payload": {
                            "key": "value"
                          },
                          "received_at_timestamp": "2024-01-15T09:30:00Z",
                          "schema_version": 1
                        }
                      ]
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
        let expectedResponse = CargoOnFlightIntegrationsCargoAiAirWaybillMessageListRes(
            items: [
                CargoOnFlightIntegrationsCargoAiAirWaybillMessageListItem(
                    cargoaiAirWaybillMessage: CargoAiAirWaybillMessage1(
                        id: "_id",
                        awbNumber: "awb_number",
                        cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
                        cargoOnFlightBookingId: "cargo_on_flight_booking_id",
                        cargoOnFlightIntegration: .cargoai,
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByOrgId: "created_by_org_id",
                        fwbSent: true,
                        request: CargoAiFwbAndFhlRequest1(
                            awbNumber: "awb_number",
                            awbStatus: .pendingDelivery,
                            consignee: CargoAiFwbAndFhlParty1(
                                address: CargoAiFwbAndFhlAddress1(
                                    country: CargoAiFwbAndFhlCountry1(
                                        code: "code"
                                    ),
                                    line1: "line1"
                                ),
                                name: "name"
                            ),
                            shipper: CargoAiFwbAndFhlParty1(
                                address: CargoAiFwbAndFhlAddress1(
                                    country: CargoAiFwbAndFhlCountry1(
                                        code: "code"
                                    ),
                                    line1: "line1"
                                ),
                                name: "name"
                            ),
                            userCompanyName: "userCompanyName",
                            userEmail: "userEmail"
                        ),
                        schemaVersion: 1,
                        sendStatus: CargoAiAirWaybillMessageSendStatusEnum1.pending,
                        updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ),
                    cargoaiAirWaybillMessageWebhookEvents: [
                        CargoAiAirWaybillMessageWebhookEvent1(
                            id: "_id",
                            payload: [
                                "key": JSONValue.string("value")
                            ],
                            receivedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            schemaVersion: 1
                        )
                    ]
                )
            ],
            totalCount: 1
        )
        let response = try await client.cargoOnFlightIntegrations.cargoai.listAirWaybillMessagesV1(
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
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

    @Test func sendAirWaybillV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "awb_number": "awb_number",
                  "cargo_on_flight_air_waybill_id": "cargo_on_flight_air_waybill_id",
                  "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                  "cargo_on_flight_house_air_waybill_ids": [
                    "cargo_on_flight_house_air_waybill_ids"
                  ],
                  "cargo_on_flight_integration": "cargoai",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "fwb_sent": true,
                  "pending_until_timestamp": "2024-01-15T09:30:00Z",
                  "request": {
                    "agent": {
                      "accountNumber": "accountNumber",
                      "cass": "cass",
                      "iata": "iata",
                      "name": "name",
                      "place": "place"
                    },
                    "awb_number": "awb_number",
                    "awb_status": "PENDING_DELIVERY",
                    "chargesDeclaration": {
                      "charge_code": "charge_code",
                      "currency_code": "currency_code",
                      "values_for_carriage": 1.1,
                      "values_for_custom": 1.1,
                      "values_for_insurance": 1.1,
                      "weight_or_valuation": "P"
                    },
                    "consignee": {
                      "account_number": "account_number",
                      "address": {
                        "country": {
                          "code": "code"
                        },
                        "line1": "line1"
                      },
                      "email": "email",
                      "fax": "fax",
                      "name": "name",
                      "phone": "phone"
                    },
                    "customsOrigin": "customsOrigin",
                    "execution": {
                      "carrier_signature": "carrier_signature",
                      "date": "date",
                      "place": "place",
                      "shipper_signature": "shipper_signature"
                    },
                    "handling": {
                      "otherServiceInformation": "otherServiceInformation",
                      "specialHandling": [
                        {
                          "code": "code"
                        }
                      ],
                      "specialServiceInformation": "specialServiceInformation"
                    },
                    "hawbs": [
                      {
                        "gross_weight": {
                          "uom": "K",
                          "value": 1.1
                        },
                        "hawb_number": "hawb_number",
                        "locations": {
                          "port_of_destination": {
                            "code": "code"
                          },
                          "port_of_origin": {
                            "code": "code"
                          }
                        },
                        "mawbNumber": "mawbNumber",
                        "number_of_pieces": 1
                      }
                    ],
                    "isFhlOnly": true,
                    "notify": {
                      "account_number": "account_number",
                      "address": {
                        "country": {
                          "code": "code"
                        },
                        "line1": "line1"
                      },
                      "email": "email",
                      "fax": "fax",
                      "name": "name",
                      "phone": "phone"
                    },
                    "oci": {
                      "origin_country_code": "origin_country_code",
                      "security": {
                        "issuer_type": "RA",
                        "regulated_agent": "regulated_agent",
                        "security_status": "security_status"
                      }
                    },
                    "otherCharges": [
                      {
                        "charge_amount": 1.1,
                        "charge_code": "charge_code",
                        "entitlement_code": "A",
                        "pc_indicator": "P"
                      }
                    ],
                    "rates": [
                      {
                        "gross_weight": {
                          "uom": "K",
                          "value": 1.1
                        },
                        "number_of_pieces": 1,
                        "rate_class_code": "rate_class_code"
                      }
                    ],
                    "routingDetails": [
                      {
                        "carrier_code": "carrier_code",
                        "from_airport_code": "from_airport_code",
                        "to_airport_code": "to_airport_code"
                      }
                    ],
                    "shipper": {
                      "account_number": "account_number",
                      "address": {
                        "country": {
                          "code": "code"
                        },
                        "line1": "line1"
                      },
                      "email": "email",
                      "fax": "fax",
                      "name": "name",
                      "phone": "phone"
                    },
                    "userCompanyName": "userCompanyName",
                    "userEmail": "userEmail"
                  },
                  "response_error_message": "response_error_message",
                  "response_status_code": 1,
                  "schema_version": 1,
                  "send_status": "pending",
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
        let expectedResponse = CargoAiAirWaybillMessage1(
            id: "_id",
            awbNumber: "awb_number",
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            cargoOnFlightHouseAirWaybillIds: Optional([
                "cargo_on_flight_house_air_waybill_ids"
            ]),
            cargoOnFlightIntegration: .cargoai,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            fwbSent: true,
            pendingUntilTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            request: CargoAiFwbAndFhlRequest1(
                agent: Optional(CargoAiFwbAndFhlAgent1(
                    accountNumber: Optional("accountNumber"),
                    cass: Optional("cass"),
                    iata: "iata",
                    name: "name",
                    place: "place"
                )),
                awbNumber: "awb_number",
                awbStatus: .pendingDelivery,
                chargesDeclaration: Optional(CargoAiFwbAndFhlChargesDeclaration1(
                    chargeCode: "charge_code",
                    currencyCode: "currency_code",
                    valuesForCarriage: Optional(1.1),
                    valuesForCustom: Optional(1.1),
                    valuesForInsurance: Optional(1.1),
                    weightOrValuation: Optional(CargoAiFwbAndFhlChargesDeclaration1WeightOrValuation.p)
                )),
                consignee: CargoAiFwbAndFhlParty1(
                    accountNumber: Optional("account_number"),
                    address: CargoAiFwbAndFhlAddress1(
                        country: CargoAiFwbAndFhlCountry1(
                            code: "code"
                        ),
                        line1: "line1"
                    ),
                    email: Optional("email"),
                    fax: Optional("fax"),
                    name: "name",
                    phone: Optional("phone")
                ),
                customsOrigin: Optional("customsOrigin"),
                execution: Optional(CargoAiFwbAndFhlExecution1(
                    carrierSignature: "carrier_signature",
                    date: "date",
                    place: "place",
                    shipperSignature: "shipper_signature"
                )),
                handling: Optional(CargoAiFwbAndFhlHandling1(
                    otherServiceInformation: Optional("otherServiceInformation"),
                    specialHandling: Optional([
                        CargoAiFwbAndFhlCode1(
                            code: "code"
                        )
                    ]),
                    specialServiceInformation: Optional("specialServiceInformation")
                )),
                hawbs: Optional([
                    CargoAiFwbAndFhlHouse1(
                        grossWeight: CargoAiFwbAndFhlWeightOrVolume1(
                            uom: Uom.k,
                            value: 1.1
                        ),
                        hawbNumber: "hawb_number",
                        locations: CargoAiFwbAndFhlHouseLocations1(
                            portOfDestination: CargoAiFwbAndFhlCode1(
                                code: "code"
                            ),
                            portOfOrigin: CargoAiFwbAndFhlCode1(
                                code: "code"
                            )
                        ),
                        mawbNumber: "mawbNumber",
                        numberOfPieces: 1
                    )
                ]),
                isFhlOnly: Optional(true),
                notify: Optional(CargoAiFwbAndFhlParty1(
                    accountNumber: Optional("account_number"),
                    address: CargoAiFwbAndFhlAddress1(
                        country: CargoAiFwbAndFhlCountry1(
                            code: "code"
                        ),
                        line1: "line1"
                    ),
                    email: Optional("email"),
                    fax: Optional("fax"),
                    name: "name",
                    phone: Optional("phone")
                )),
                oci: Optional(CargoAiFwbAndFhlOci1(
                    originCountryCode: "origin_country_code",
                    security: Optional(CargoAiFwbAndFhlOciSecurity1(
                        issuerType: CargoAiFwbAndFhlOciSecurity1IssuerType.ra,
                        regulatedAgent: "regulated_agent",
                        securityStatus: "security_status"
                    ))
                )),
                otherCharges: Optional([
                    CargoAiFwbAndFhlOtherCharge1(
                        chargeAmount: 1.1,
                        chargeCode: "charge_code",
                        entitlementCode: CargoAiFwbAndFhlOtherCharge1EntitlementCode.a,
                        pcIndicator: CargoAiFwbAndFhlOtherCharge1PcIndicator.p
                    )
                ]),
                rates: Optional([
                    CargoAiFwbAndFhlRate1(
                        grossWeight: CargoAiFwbAndFhlWeightOrVolume1(
                            uom: Uom.k,
                            value: 1.1
                        ),
                        numberOfPieces: 1,
                        rateClassCode: "rate_class_code"
                    )
                ]),
                routingDetails: Optional([
                    CargoAiFwbAndFhlRouting1(
                        carrierCode: "carrier_code",
                        fromAirportCode: "from_airport_code",
                        toAirportCode: "to_airport_code"
                    )
                ]),
                shipper: CargoAiFwbAndFhlParty1(
                    accountNumber: Optional("account_number"),
                    address: CargoAiFwbAndFhlAddress1(
                        country: CargoAiFwbAndFhlCountry1(
                            code: "code"
                        ),
                        line1: "line1"
                    ),
                    email: Optional("email"),
                    fax: Optional("fax"),
                    name: "name",
                    phone: Optional("phone")
                ),
                userCompanyName: "userCompanyName",
                userEmail: "userEmail"
            ),
            responseErrorMessage: Optional("response_error_message"),
            responseStatusCode: Optional(1),
            schemaVersion: 1,
            sendStatus: CargoAiAirWaybillMessageSendStatusEnum1.pending,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.cargoOnFlightIntegrations.cargoai.sendAirWaybillV1(
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            request: .init(sendFwb: true),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func simulateAirlineResponseV11() async throws -> Void {
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
        let expectedResponse = CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseRes(
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
        let response = try await client.cargoOnFlightIntegrations.cargoai.simulateAirlineResponseV1(
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
                      "airline_conditions": "airline_conditions",
                      "airline_contacts": [
                        "airline_contacts"
                      ],
                      "awb_prefixes": [
                        "awb_prefixes"
                      ],
                      "awb_required": true,
                      "bookable": true,
                      "carrier_iata": "carrier_iata",
                      "handling_info_link": "handling_info_link",
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
                    airlineConditions: Optional("airline_conditions"),
                    airlineContacts: Optional([
                        "airline_contacts"
                    ]),
                    awbPrefixes: Optional([
                        "awb_prefixes"
                    ]),
                    awbRequired: true,
                    bookable: true,
                    carrierIata: "carrier_iata",
                    handlingInfoLink: Optional("handling_info_link"),
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
                      "airline_conditions": "airline_conditions",
                      "airline_contacts": [
                        "airline_contacts"
                      ],
                      "awb_prefixes": [
                        "awb_prefixes"
                      ],
                      "awb_required": true,
                      "bookable": true,
                      "carrier_iata": "carrier_iata",
                      "handling_info_link": "handling_info_link",
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
                    airlineConditions: Optional("airline_conditions"),
                    airlineContacts: Optional([
                        "airline_contacts"
                    ]),
                    awbPrefixes: Optional([
                        "awb_prefixes"
                    ]),
                    awbRequired: true,
                    bookable: true,
                    carrierIata: "carrier_iata",
                    handlingInfoLink: Optional("handling_info_link"),
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