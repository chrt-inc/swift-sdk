import Foundation
import Testing
import Chrt

@Suite("AirWaybillsClient Wire Tests") struct AirWaybillsClientWireTests {
    @Test func confirmationsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "airWaybillNumber": "airWaybillNumber",
                    "champId": "champId",
                    "destination": "destination",
                    "messageHeader": {
                      "addressing": {},
                      "creationDate": "2024-01-15T09:30:00Z"
                    },
                    "orgId": "orgId",
                    "origin": "origin",
                    "receivedAt": "2024-01-15T09:30:00Z",
                    "referenceMessageContent": "referenceMessageContent",
                    "referencedMessageType": "referencedMessageType",
                    "rejected": true,
                    "schemaVersion": 1,
                    "taskGroupId": "taskGroupId",
                    "textMessage": "textMessage",
                    "type": "confirmation receipt"
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            ChampConfirmationReceipt1(
                id: "_id",
                airWaybillNumber: "airWaybillNumber",
                champId: "champId",
                destination: "destination",
                messageHeader: CargojsonMessageHeader(
                    addressing: CargojsonAddressing(

                    ),
                    creationDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                orgId: Optional("orgId"),
                origin: "origin",
                receivedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                referenceMessageContent: Optional("referenceMessageContent"),
                referencedMessageType: "referencedMessageType",
                rejected: true,
                schemaVersion: Optional(1),
                taskGroupId: Optional("taskGroupId"),
                textMessage: "textMessage",
                type: .confirmationReceipt
            )
        ]
        let response = try await client.integrations.airWaybills.confirmationsV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "accounting": [
                    {
                      "accountingInformation": "accountingInformation",
                      "identifier": "CreditCardNumber"
                    }
                  ],
                  "additionalSpecialHandlingCodes": [
                    "additionalSpecialHandlingCodes"
                  ],
                  "agent": {
                    "accountNumber": "accountNumber",
                    "iataCargoAgentCASSAddress": "iataCargoAgentCASSAddress",
                    "iataCargoAgentNumericCode": "iataCargoAgentNumericCode",
                    "name": "name",
                    "participantIdentifier": {
                      "airportCityCode": "airportCityCode",
                      "code": "code",
                      "identifier": "AIR"
                    },
                    "place": "place"
                  },
                  "airWaybillNumber": "airWaybillNumber",
                  "alsoNotify": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "chargeDeclarations": {
                    "chargeCode": "ALL_CHARGES_COLLECT",
                    "declaredValueForCarriage": 1.1,
                    "declaredValueForCustoms": 1.1,
                    "declaredValueForInsurance": 1.1,
                    "isoCurrencyCode": "isoCurrencyCode",
                    "payment_OtherCharges": "Collect",
                    "payment_WeightValuation": "Collect"
                  },
                  "chargeItems": [
                    {
                      "charges": [
                        {}
                      ],
                      "commodityItemNumber": [
                        "commodityItemNumber"
                      ],
                      "consolidation": true,
                      "goodsDescription": "goodsDescription",
                      "grossWeight": {
                        "amount": 1.1
                      },
                      "harmonisedCommodityCode": [
                        "harmonisedCommodityCode"
                      ],
                      "isoCountryCodeOfOriginOfGoods": "isoCountryCodeOfOriginOfGoods",
                      "numberOfPieces": 1,
                      "packaging": [
                        {}
                      ],
                      "rateCombinationPointCityCode": "rateCombinationPointCityCode",
                      "serviceCode": "AIRPORT_TO_AIRPORT"
                    }
                  ],
                  "chargesCollectInDestCurrency": {
                    "chargesAtDestination": 1.1,
                    "chargesInDestinationCurrency": 1.1,
                    "currencyConversionRateOfExchange": 1.1,
                    "isoCurrencyCode": "isoCurrencyCode",
                    "totalCollectCharges": 1.1
                  },
                  "collectChargeSummary": {
                    "chargeSummaryTotal": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1
                  },
                  "commissionInfo": {
                    "amountCASSSettlementFactor": 1.1,
                    "percentageCASSSettlementFactor": 1.1
                  },
                  "consignee": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "createdAt": "2024-01-15T09:30:00Z",
                  "customsOriginCode": "customsOriginCode",
                  "densityGroup": 1,
                  "destination": "destination",
                  "flights": [
                    {
                      "flight": "flight",
                      "scheduledDate": "scheduledDate",
                      "scheduledTime": "scheduledTime"
                    }
                  ],
                  "isoCurrencyCode": "isoCurrencyCode",
                  "nominatedHandlingParty": {
                    "name": "name",
                    "place": "place"
                  },
                  "oci": [
                    {
                      "additionalControlInformation": "additionalControlInformation",
                      "controlInformation": "controlInformation",
                      "informationIdentifier": "informationIdentifier",
                      "isoCountryCode": "isoCountryCode",
                      "supplementaryControlInformation": "supplementaryControlInformation"
                    }
                  ],
                  "orgId": "orgId",
                  "origin": "origin",
                  "otherCharges": [
                    {
                      "chargeAmount": 1.1,
                      "entitlementCode": "Agent",
                      "otherChargeCode": "UC",
                      "paymentCondition": "Collect"
                    }
                  ],
                  "otherParticipant": [
                    {
                      "fileReference": "fileReference",
                      "name": "name",
                      "officeMessageAddress": {
                        "airportCityCode": "airportCityCode",
                        "companyDesignator": "companyDesignator",
                        "officeFunctionDesignator": "officeFunctionDesignator"
                      },
                      "participantIdentification": {
                        "airportCityCode": "airportCityCode",
                        "code": "code",
                        "identifier": "AIR"
                      }
                    }
                  ],
                  "otherServiceInformation": "otherServiceInformation",
                  "prepaidChargeSummary": {
                    "chargeSummaryTotal": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1
                  },
                  "route": [
                    {
                      "carrierCode": "carrierCode",
                      "destination": "destination"
                    }
                  ],
                  "salesIncentive": {
                    "cassIndicator": "AWB_AS_INVOICE",
                    "chargeAmount": 1.1
                  },
                  "schemaVersion": 1,
                  "shipmentReferenceInformation": {
                    "info": "info",
                    "referenceNumber": "referenceNumber"
                  },
                  "shipper": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "shippersCertification": "shippersCertification",
                  "specialHandlingCodes": [
                    "ACT"
                  ],
                  "specialServiceRequest": "specialServiceRequest",
                  "status": "draft",
                  "submittedAt": "2024-01-15T09:30:00Z",
                  "taskGroupId": "taskGroupId",
                  "totalConsignmentNumberOfPieces": 1,
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "volume": {
                    "amount": 1.1,
                    "unit": "CUBIC_CENTIMETRE"
                  },
                  "webcargoBookingRecordId": "webcargoBookingRecordId",
                  "weight": {
                    "amount": 1.1,
                    "unit": "KILOGRAM"
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ChampAirWaybill1(
            id: "_id",
            accounting: Optional([
                CargojsonAccounting(
                    accountingInformation: "accountingInformation",
                    identifier: .creditCardNumber
                )
            ]),
            additionalSpecialHandlingCodes: Optional([
                "additionalSpecialHandlingCodes"
            ]),
            agent: Optional(CargojsonAgent(
                accountNumber: Optional("accountNumber"),
                iataCargoAgentCassAddress: Optional("iataCargoAgentCASSAddress"),
                iataCargoAgentNumericCode: Optional("iataCargoAgentNumericCode"),
                name: "name",
                participantIdentifier: Optional(CargojsonParticipantIdentifier(
                    airportCityCode: "airportCityCode",
                    code: "code",
                    identifier: .air
                )),
                place: "place"
            )),
            airWaybillNumber: "airWaybillNumber",
            alsoNotify: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            chargeDeclarations: Optional(CargojsonChargeDeclarations(
                chargeCode: Optional(.allChargesCollect),
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                isoCurrencyCode: "isoCurrencyCode",
                paymentOtherCharges: Optional(.collect),
                paymentWeightValuation: Optional(.collect)
            )),
            chargeItems: [
                CargojsonChargeItem(
                    charges: Optional([
                        CargojsonCharge(

                        )
                    ]),
                    commodityItemNumber: Optional([
                        "commodityItemNumber"
                    ]),
                    consolidation: Optional(true),
                    goodsDescription: Optional("goodsDescription"),
                    grossWeight: Optional(CargojsonWeight(
                        amount: 1.1
                    )),
                    harmonisedCommodityCode: Optional([
                        "harmonisedCommodityCode"
                    ]),
                    isoCountryCodeOfOriginOfGoods: Optional("isoCountryCodeOfOriginOfGoods"),
                    numberOfPieces: Optional(1),
                    packaging: Optional([
                        CargojsonPackaging(

                        )
                    ]),
                    rateCombinationPointCityCode: Optional("rateCombinationPointCityCode"),
                    serviceCode: Optional(.airportToAirport)
                )
            ],
            chargesCollectInDestCurrency: Optional(CargojsonCollectChargesInDestCurrency(
                chargesAtDestination: 1.1,
                chargesInDestinationCurrency: 1.1,
                currencyConversionRateOfExchange: 1.1,
                isoCurrencyCode: "isoCurrencyCode",
                totalCollectCharges: 1.1
            )),
            collectChargeSummary: Optional(CargojsonChargeSummary(
                chargeSummaryTotal: 1.1,
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1)
            )),
            commissionInfo: Optional(CargojsonCommissionInfo(
                amountCassSettlementFactor: Optional(1.1),
                percentageCassSettlementFactor: Optional(1.1)
            )),
            consignee: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            customsOriginCode: Optional("customsOriginCode"),
            densityGroup: Optional(1),
            destination: "destination",
            flights: Optional([
                CargojsonFlightIdentity(
                    flight: "flight",
                    scheduledDate: "scheduledDate",
                    scheduledTime: Optional("scheduledTime")
                )
            ]),
            isoCurrencyCode: Optional("isoCurrencyCode"),
            nominatedHandlingParty: Optional(CargojsonNominatedHandlingParty(
                name: "name",
                place: "place"
            )),
            oci: Optional([
                CargojsonOci(
                    additionalControlInformation: Optional("additionalControlInformation"),
                    controlInformation: Optional("controlInformation"),
                    informationIdentifier: Optional("informationIdentifier"),
                    isoCountryCode: Optional("isoCountryCode"),
                    supplementaryControlInformation: Optional("supplementaryControlInformation")
                )
            ]),
            orgId: "orgId",
            origin: "origin",
            otherCharges: Optional([
                CargojsonOtherChargeItem(
                    chargeAmount: 1.1,
                    entitlementCode: .agent,
                    otherChargeCode: .uc,
                    paymentCondition: .collect
                )
            ]),
            otherParticipant: Optional([
                CargojsonOtherParticipant(
                    fileReference: Optional("fileReference"),
                    name: "name",
                    officeMessageAddress: Optional(CargojsonOfficeMessageAddress(
                        airportCityCode: "airportCityCode",
                        companyDesignator: "companyDesignator",
                        officeFunctionDesignator: "officeFunctionDesignator"
                    )),
                    participantIdentification: Optional(CargojsonParticipantIdentifier(
                        airportCityCode: "airportCityCode",
                        code: "code",
                        identifier: .air
                    ))
                )
            ]),
            otherServiceInformation: Optional("otherServiceInformation"),
            prepaidChargeSummary: Optional(CargojsonChargeSummary(
                chargeSummaryTotal: 1.1,
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1)
            )),
            route: [
                CargojsonRouting(
                    carrierCode: Optional("carrierCode"),
                    destination: Optional("destination")
                )
            ],
            salesIncentive: Optional(CargojsonSalesIncentive(
                cassIndicator: Optional(.awbAsInvoice),
                chargeAmount: 1.1
            )),
            schemaVersion: Optional(1),
            shipmentReferenceInformation: Optional(CargojsonShipmentReferenceInformation(
                info: Optional("info"),
                referenceNumber: Optional("referenceNumber")
            )),
            shipper: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            shippersCertification: Optional("shippersCertification"),
            specialHandlingCodes: Optional([
                .act
            ]),
            specialServiceRequest: Optional("specialServiceRequest"),
            status: Optional(.draft),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            taskGroupId: "taskGroupId",
            totalConsignmentNumberOfPieces: 1,
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            volume: Optional(CargojsonVolume(
                amount: 1.1,
                unit: Optional(.cubicCentimetre)
            )),
            webcargoBookingRecordId: "webcargoBookingRecordId",
            weight: CargojsonWeight(
                amount: 1.1,
                unit: Optional(.kilogram)
            )
        )
        let response = try await client.integrations.airWaybills.createV1(
            request: .init(taskGroupId: "task_group_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func flightStatusesV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "airWaybillNumber": "airWaybillNumber",
                    "champId": "champId",
                    "events": [
                      {
                        "type": "type"
                      }
                    ],
                    "messageHeader": {
                      "addressing": {},
                      "creationDate": "2024-01-15T09:30:00Z"
                    },
                    "orgId": "orgId",
                    "originAndDestination": {
                      "destination": "destination",
                      "origin": "origin"
                    },
                    "quantity": {
                      "numberOfPieces": 1,
                      "shipmentDescriptionCode": "shipmentDescriptionCode",
                      "weight": {
                        "amount": 1.1
                      }
                    },
                    "receivedAt": "2024-01-15T09:30:00Z",
                    "schemaVersion": 1,
                    "taskGroupId": "taskGroupId",
                    "totalNumberOfPieces": 1,
                    "type": "flight status"
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            ChampFlightStatus1(
                id: "_id",
                airWaybillNumber: "airWaybillNumber",
                champId: "champId",
                events: Optional([
                    ChampFlightStatusEvent1(
                        type: "type"
                    )
                ]),
                messageHeader: CargojsonMessageHeader(
                    addressing: CargojsonAddressing(

                    ),
                    creationDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                orgId: Optional("orgId"),
                originAndDestination: Optional(ChampOriginAndDestination(
                    destination: "destination",
                    origin: "origin"
                )),
                quantity: Optional(ChampQuantity(
                    numberOfPieces: Optional(1),
                    shipmentDescriptionCode: Optional("shipmentDescriptionCode"),
                    weight: Optional(CargojsonWeight(
                        amount: 1.1
                    ))
                )),
                receivedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: Optional(1),
                taskGroupId: Optional("taskGroupId"),
                totalNumberOfPieces: Optional(1),
                type: .flightStatus
            )
        ]
        let response = try await client.integrations.airWaybills.flightStatusesV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pdfV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "key": "value"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JSONValue.object(
            [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.integrations.airWaybills.pdfV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func retrieveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "accounting": [
                    {
                      "accountingInformation": "accountingInformation",
                      "identifier": "CreditCardNumber"
                    }
                  ],
                  "additionalSpecialHandlingCodes": [
                    "additionalSpecialHandlingCodes"
                  ],
                  "agent": {
                    "accountNumber": "accountNumber",
                    "iataCargoAgentCASSAddress": "iataCargoAgentCASSAddress",
                    "iataCargoAgentNumericCode": "iataCargoAgentNumericCode",
                    "name": "name",
                    "participantIdentifier": {
                      "airportCityCode": "airportCityCode",
                      "code": "code",
                      "identifier": "AIR"
                    },
                    "place": "place"
                  },
                  "airWaybillNumber": "airWaybillNumber",
                  "alsoNotify": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "chargeDeclarations": {
                    "chargeCode": "ALL_CHARGES_COLLECT",
                    "declaredValueForCarriage": 1.1,
                    "declaredValueForCustoms": 1.1,
                    "declaredValueForInsurance": 1.1,
                    "isoCurrencyCode": "isoCurrencyCode",
                    "payment_OtherCharges": "Collect",
                    "payment_WeightValuation": "Collect"
                  },
                  "chargeItems": [
                    {
                      "charges": [
                        {}
                      ],
                      "commodityItemNumber": [
                        "commodityItemNumber"
                      ],
                      "consolidation": true,
                      "goodsDescription": "goodsDescription",
                      "grossWeight": {
                        "amount": 1.1
                      },
                      "harmonisedCommodityCode": [
                        "harmonisedCommodityCode"
                      ],
                      "isoCountryCodeOfOriginOfGoods": "isoCountryCodeOfOriginOfGoods",
                      "numberOfPieces": 1,
                      "packaging": [
                        {}
                      ],
                      "rateCombinationPointCityCode": "rateCombinationPointCityCode",
                      "serviceCode": "AIRPORT_TO_AIRPORT"
                    }
                  ],
                  "chargesCollectInDestCurrency": {
                    "chargesAtDestination": 1.1,
                    "chargesInDestinationCurrency": 1.1,
                    "currencyConversionRateOfExchange": 1.1,
                    "isoCurrencyCode": "isoCurrencyCode",
                    "totalCollectCharges": 1.1
                  },
                  "collectChargeSummary": {
                    "chargeSummaryTotal": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1
                  },
                  "commissionInfo": {
                    "amountCASSSettlementFactor": 1.1,
                    "percentageCASSSettlementFactor": 1.1
                  },
                  "consignee": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "createdAt": "2024-01-15T09:30:00Z",
                  "customsOriginCode": "customsOriginCode",
                  "densityGroup": 1,
                  "destination": "destination",
                  "flights": [
                    {
                      "flight": "flight",
                      "scheduledDate": "scheduledDate",
                      "scheduledTime": "scheduledTime"
                    }
                  ],
                  "isoCurrencyCode": "isoCurrencyCode",
                  "nominatedHandlingParty": {
                    "name": "name",
                    "place": "place"
                  },
                  "oci": [
                    {
                      "additionalControlInformation": "additionalControlInformation",
                      "controlInformation": "controlInformation",
                      "informationIdentifier": "informationIdentifier",
                      "isoCountryCode": "isoCountryCode",
                      "supplementaryControlInformation": "supplementaryControlInformation"
                    }
                  ],
                  "orgId": "orgId",
                  "origin": "origin",
                  "otherCharges": [
                    {
                      "chargeAmount": 1.1,
                      "entitlementCode": "Agent",
                      "otherChargeCode": "UC",
                      "paymentCondition": "Collect"
                    }
                  ],
                  "otherParticipant": [
                    {
                      "fileReference": "fileReference",
                      "name": "name",
                      "officeMessageAddress": {
                        "airportCityCode": "airportCityCode",
                        "companyDesignator": "companyDesignator",
                        "officeFunctionDesignator": "officeFunctionDesignator"
                      },
                      "participantIdentification": {
                        "airportCityCode": "airportCityCode",
                        "code": "code",
                        "identifier": "AIR"
                      }
                    }
                  ],
                  "otherServiceInformation": "otherServiceInformation",
                  "prepaidChargeSummary": {
                    "chargeSummaryTotal": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1
                  },
                  "route": [
                    {
                      "carrierCode": "carrierCode",
                      "destination": "destination"
                    }
                  ],
                  "salesIncentive": {
                    "cassIndicator": "AWB_AS_INVOICE",
                    "chargeAmount": 1.1
                  },
                  "schemaVersion": 1,
                  "shipmentReferenceInformation": {
                    "info": "info",
                    "referenceNumber": "referenceNumber"
                  },
                  "shipper": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "shippersCertification": "shippersCertification",
                  "specialHandlingCodes": [
                    "ACT"
                  ],
                  "specialServiceRequest": "specialServiceRequest",
                  "status": "draft",
                  "submittedAt": "2024-01-15T09:30:00Z",
                  "taskGroupId": "taskGroupId",
                  "totalConsignmentNumberOfPieces": 1,
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "volume": {
                    "amount": 1.1,
                    "unit": "CUBIC_CENTIMETRE"
                  },
                  "webcargoBookingRecordId": "webcargoBookingRecordId",
                  "weight": {
                    "amount": 1.1,
                    "unit": "KILOGRAM"
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ChampAirWaybill1(
            id: "_id",
            accounting: Optional([
                CargojsonAccounting(
                    accountingInformation: "accountingInformation",
                    identifier: .creditCardNumber
                )
            ]),
            additionalSpecialHandlingCodes: Optional([
                "additionalSpecialHandlingCodes"
            ]),
            agent: Optional(CargojsonAgent(
                accountNumber: Optional("accountNumber"),
                iataCargoAgentCassAddress: Optional("iataCargoAgentCASSAddress"),
                iataCargoAgentNumericCode: Optional("iataCargoAgentNumericCode"),
                name: "name",
                participantIdentifier: Optional(CargojsonParticipantIdentifier(
                    airportCityCode: "airportCityCode",
                    code: "code",
                    identifier: .air
                )),
                place: "place"
            )),
            airWaybillNumber: "airWaybillNumber",
            alsoNotify: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            chargeDeclarations: Optional(CargojsonChargeDeclarations(
                chargeCode: Optional(.allChargesCollect),
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                isoCurrencyCode: "isoCurrencyCode",
                paymentOtherCharges: Optional(.collect),
                paymentWeightValuation: Optional(.collect)
            )),
            chargeItems: [
                CargojsonChargeItem(
                    charges: Optional([
                        CargojsonCharge(

                        )
                    ]),
                    commodityItemNumber: Optional([
                        "commodityItemNumber"
                    ]),
                    consolidation: Optional(true),
                    goodsDescription: Optional("goodsDescription"),
                    grossWeight: Optional(CargojsonWeight(
                        amount: 1.1
                    )),
                    harmonisedCommodityCode: Optional([
                        "harmonisedCommodityCode"
                    ]),
                    isoCountryCodeOfOriginOfGoods: Optional("isoCountryCodeOfOriginOfGoods"),
                    numberOfPieces: Optional(1),
                    packaging: Optional([
                        CargojsonPackaging(

                        )
                    ]),
                    rateCombinationPointCityCode: Optional("rateCombinationPointCityCode"),
                    serviceCode: Optional(.airportToAirport)
                )
            ],
            chargesCollectInDestCurrency: Optional(CargojsonCollectChargesInDestCurrency(
                chargesAtDestination: 1.1,
                chargesInDestinationCurrency: 1.1,
                currencyConversionRateOfExchange: 1.1,
                isoCurrencyCode: "isoCurrencyCode",
                totalCollectCharges: 1.1
            )),
            collectChargeSummary: Optional(CargojsonChargeSummary(
                chargeSummaryTotal: 1.1,
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1)
            )),
            commissionInfo: Optional(CargojsonCommissionInfo(
                amountCassSettlementFactor: Optional(1.1),
                percentageCassSettlementFactor: Optional(1.1)
            )),
            consignee: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            customsOriginCode: Optional("customsOriginCode"),
            densityGroup: Optional(1),
            destination: "destination",
            flights: Optional([
                CargojsonFlightIdentity(
                    flight: "flight",
                    scheduledDate: "scheduledDate",
                    scheduledTime: Optional("scheduledTime")
                )
            ]),
            isoCurrencyCode: Optional("isoCurrencyCode"),
            nominatedHandlingParty: Optional(CargojsonNominatedHandlingParty(
                name: "name",
                place: "place"
            )),
            oci: Optional([
                CargojsonOci(
                    additionalControlInformation: Optional("additionalControlInformation"),
                    controlInformation: Optional("controlInformation"),
                    informationIdentifier: Optional("informationIdentifier"),
                    isoCountryCode: Optional("isoCountryCode"),
                    supplementaryControlInformation: Optional("supplementaryControlInformation")
                )
            ]),
            orgId: "orgId",
            origin: "origin",
            otherCharges: Optional([
                CargojsonOtherChargeItem(
                    chargeAmount: 1.1,
                    entitlementCode: .agent,
                    otherChargeCode: .uc,
                    paymentCondition: .collect
                )
            ]),
            otherParticipant: Optional([
                CargojsonOtherParticipant(
                    fileReference: Optional("fileReference"),
                    name: "name",
                    officeMessageAddress: Optional(CargojsonOfficeMessageAddress(
                        airportCityCode: "airportCityCode",
                        companyDesignator: "companyDesignator",
                        officeFunctionDesignator: "officeFunctionDesignator"
                    )),
                    participantIdentification: Optional(CargojsonParticipantIdentifier(
                        airportCityCode: "airportCityCode",
                        code: "code",
                        identifier: .air
                    ))
                )
            ]),
            otherServiceInformation: Optional("otherServiceInformation"),
            prepaidChargeSummary: Optional(CargojsonChargeSummary(
                chargeSummaryTotal: 1.1,
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1)
            )),
            route: [
                CargojsonRouting(
                    carrierCode: Optional("carrierCode"),
                    destination: Optional("destination")
                )
            ],
            salesIncentive: Optional(CargojsonSalesIncentive(
                cassIndicator: Optional(.awbAsInvoice),
                chargeAmount: 1.1
            )),
            schemaVersion: Optional(1),
            shipmentReferenceInformation: Optional(CargojsonShipmentReferenceInformation(
                info: Optional("info"),
                referenceNumber: Optional("referenceNumber")
            )),
            shipper: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            shippersCertification: Optional("shippersCertification"),
            specialHandlingCodes: Optional([
                .act
            ]),
            specialServiceRequest: Optional("specialServiceRequest"),
            status: Optional(.draft),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            taskGroupId: "taskGroupId",
            totalConsignmentNumberOfPieces: 1,
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            volume: Optional(CargojsonVolume(
                amount: 1.1,
                unit: Optional(.cubicCentimetre)
            )),
            webcargoBookingRecordId: "webcargoBookingRecordId",
            weight: CargojsonWeight(
                amount: 1.1,
                unit: Optional(.kilogram)
            )
        )
        let response = try await client.integrations.airWaybills.retrieveV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submitV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "accounting": [
                    {
                      "accountingInformation": "accountingInformation",
                      "identifier": "CreditCardNumber"
                    }
                  ],
                  "additionalSpecialHandlingCodes": [
                    "additionalSpecialHandlingCodes"
                  ],
                  "agent": {
                    "accountNumber": "accountNumber",
                    "iataCargoAgentCASSAddress": "iataCargoAgentCASSAddress",
                    "iataCargoAgentNumericCode": "iataCargoAgentNumericCode",
                    "name": "name",
                    "participantIdentifier": {
                      "airportCityCode": "airportCityCode",
                      "code": "code",
                      "identifier": "AIR"
                    },
                    "place": "place"
                  },
                  "airWaybillNumber": "airWaybillNumber",
                  "alsoNotify": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "chargeDeclarations": {
                    "chargeCode": "ALL_CHARGES_COLLECT",
                    "declaredValueForCarriage": 1.1,
                    "declaredValueForCustoms": 1.1,
                    "declaredValueForInsurance": 1.1,
                    "isoCurrencyCode": "isoCurrencyCode",
                    "payment_OtherCharges": "Collect",
                    "payment_WeightValuation": "Collect"
                  },
                  "chargeItems": [
                    {
                      "charges": [
                        {}
                      ],
                      "commodityItemNumber": [
                        "commodityItemNumber"
                      ],
                      "consolidation": true,
                      "goodsDescription": "goodsDescription",
                      "grossWeight": {
                        "amount": 1.1
                      },
                      "harmonisedCommodityCode": [
                        "harmonisedCommodityCode"
                      ],
                      "isoCountryCodeOfOriginOfGoods": "isoCountryCodeOfOriginOfGoods",
                      "numberOfPieces": 1,
                      "packaging": [
                        {}
                      ],
                      "rateCombinationPointCityCode": "rateCombinationPointCityCode",
                      "serviceCode": "AIRPORT_TO_AIRPORT"
                    }
                  ],
                  "chargesCollectInDestCurrency": {
                    "chargesAtDestination": 1.1,
                    "chargesInDestinationCurrency": 1.1,
                    "currencyConversionRateOfExchange": 1.1,
                    "isoCurrencyCode": "isoCurrencyCode",
                    "totalCollectCharges": 1.1
                  },
                  "collectChargeSummary": {
                    "chargeSummaryTotal": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1
                  },
                  "commissionInfo": {
                    "amountCASSSettlementFactor": 1.1,
                    "percentageCASSSettlementFactor": 1.1
                  },
                  "consignee": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "createdAt": "2024-01-15T09:30:00Z",
                  "customsOriginCode": "customsOriginCode",
                  "densityGroup": 1,
                  "destination": "destination",
                  "flights": [
                    {
                      "flight": "flight",
                      "scheduledDate": "scheduledDate",
                      "scheduledTime": "scheduledTime"
                    }
                  ],
                  "isoCurrencyCode": "isoCurrencyCode",
                  "nominatedHandlingParty": {
                    "name": "name",
                    "place": "place"
                  },
                  "oci": [
                    {
                      "additionalControlInformation": "additionalControlInformation",
                      "controlInformation": "controlInformation",
                      "informationIdentifier": "informationIdentifier",
                      "isoCountryCode": "isoCountryCode",
                      "supplementaryControlInformation": "supplementaryControlInformation"
                    }
                  ],
                  "orgId": "orgId",
                  "origin": "origin",
                  "otherCharges": [
                    {
                      "chargeAmount": 1.1,
                      "entitlementCode": "Agent",
                      "otherChargeCode": "UC",
                      "paymentCondition": "Collect"
                    }
                  ],
                  "otherParticipant": [
                    {
                      "fileReference": "fileReference",
                      "name": "name",
                      "officeMessageAddress": {
                        "airportCityCode": "airportCityCode",
                        "companyDesignator": "companyDesignator",
                        "officeFunctionDesignator": "officeFunctionDesignator"
                      },
                      "participantIdentification": {
                        "airportCityCode": "airportCityCode",
                        "code": "code",
                        "identifier": "AIR"
                      }
                    }
                  ],
                  "otherServiceInformation": "otherServiceInformation",
                  "prepaidChargeSummary": {
                    "chargeSummaryTotal": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1
                  },
                  "route": [
                    {
                      "carrierCode": "carrierCode",
                      "destination": "destination"
                    }
                  ],
                  "salesIncentive": {
                    "cassIndicator": "AWB_AS_INVOICE",
                    "chargeAmount": 1.1
                  },
                  "schemaVersion": 1,
                  "shipmentReferenceInformation": {
                    "info": "info",
                    "referenceNumber": "referenceNumber"
                  },
                  "shipper": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "shippersCertification": "shippersCertification",
                  "specialHandlingCodes": [
                    "ACT"
                  ],
                  "specialServiceRequest": "specialServiceRequest",
                  "status": "draft",
                  "submittedAt": "2024-01-15T09:30:00Z",
                  "taskGroupId": "taskGroupId",
                  "totalConsignmentNumberOfPieces": 1,
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "volume": {
                    "amount": 1.1,
                    "unit": "CUBIC_CENTIMETRE"
                  },
                  "webcargoBookingRecordId": "webcargoBookingRecordId",
                  "weight": {
                    "amount": 1.1,
                    "unit": "KILOGRAM"
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ChampAirWaybill1(
            id: "_id",
            accounting: Optional([
                CargojsonAccounting(
                    accountingInformation: "accountingInformation",
                    identifier: .creditCardNumber
                )
            ]),
            additionalSpecialHandlingCodes: Optional([
                "additionalSpecialHandlingCodes"
            ]),
            agent: Optional(CargojsonAgent(
                accountNumber: Optional("accountNumber"),
                iataCargoAgentCassAddress: Optional("iataCargoAgentCASSAddress"),
                iataCargoAgentNumericCode: Optional("iataCargoAgentNumericCode"),
                name: "name",
                participantIdentifier: Optional(CargojsonParticipantIdentifier(
                    airportCityCode: "airportCityCode",
                    code: "code",
                    identifier: .air
                )),
                place: "place"
            )),
            airWaybillNumber: "airWaybillNumber",
            alsoNotify: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            chargeDeclarations: Optional(CargojsonChargeDeclarations(
                chargeCode: Optional(.allChargesCollect),
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                isoCurrencyCode: "isoCurrencyCode",
                paymentOtherCharges: Optional(.collect),
                paymentWeightValuation: Optional(.collect)
            )),
            chargeItems: [
                CargojsonChargeItem(
                    charges: Optional([
                        CargojsonCharge(

                        )
                    ]),
                    commodityItemNumber: Optional([
                        "commodityItemNumber"
                    ]),
                    consolidation: Optional(true),
                    goodsDescription: Optional("goodsDescription"),
                    grossWeight: Optional(CargojsonWeight(
                        amount: 1.1
                    )),
                    harmonisedCommodityCode: Optional([
                        "harmonisedCommodityCode"
                    ]),
                    isoCountryCodeOfOriginOfGoods: Optional("isoCountryCodeOfOriginOfGoods"),
                    numberOfPieces: Optional(1),
                    packaging: Optional([
                        CargojsonPackaging(

                        )
                    ]),
                    rateCombinationPointCityCode: Optional("rateCombinationPointCityCode"),
                    serviceCode: Optional(.airportToAirport)
                )
            ],
            chargesCollectInDestCurrency: Optional(CargojsonCollectChargesInDestCurrency(
                chargesAtDestination: 1.1,
                chargesInDestinationCurrency: 1.1,
                currencyConversionRateOfExchange: 1.1,
                isoCurrencyCode: "isoCurrencyCode",
                totalCollectCharges: 1.1
            )),
            collectChargeSummary: Optional(CargojsonChargeSummary(
                chargeSummaryTotal: 1.1,
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1)
            )),
            commissionInfo: Optional(CargojsonCommissionInfo(
                amountCassSettlementFactor: Optional(1.1),
                percentageCassSettlementFactor: Optional(1.1)
            )),
            consignee: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            customsOriginCode: Optional("customsOriginCode"),
            densityGroup: Optional(1),
            destination: "destination",
            flights: Optional([
                CargojsonFlightIdentity(
                    flight: "flight",
                    scheduledDate: "scheduledDate",
                    scheduledTime: Optional("scheduledTime")
                )
            ]),
            isoCurrencyCode: Optional("isoCurrencyCode"),
            nominatedHandlingParty: Optional(CargojsonNominatedHandlingParty(
                name: "name",
                place: "place"
            )),
            oci: Optional([
                CargojsonOci(
                    additionalControlInformation: Optional("additionalControlInformation"),
                    controlInformation: Optional("controlInformation"),
                    informationIdentifier: Optional("informationIdentifier"),
                    isoCountryCode: Optional("isoCountryCode"),
                    supplementaryControlInformation: Optional("supplementaryControlInformation")
                )
            ]),
            orgId: "orgId",
            origin: "origin",
            otherCharges: Optional([
                CargojsonOtherChargeItem(
                    chargeAmount: 1.1,
                    entitlementCode: .agent,
                    otherChargeCode: .uc,
                    paymentCondition: .collect
                )
            ]),
            otherParticipant: Optional([
                CargojsonOtherParticipant(
                    fileReference: Optional("fileReference"),
                    name: "name",
                    officeMessageAddress: Optional(CargojsonOfficeMessageAddress(
                        airportCityCode: "airportCityCode",
                        companyDesignator: "companyDesignator",
                        officeFunctionDesignator: "officeFunctionDesignator"
                    )),
                    participantIdentification: Optional(CargojsonParticipantIdentifier(
                        airportCityCode: "airportCityCode",
                        code: "code",
                        identifier: .air
                    ))
                )
            ]),
            otherServiceInformation: Optional("otherServiceInformation"),
            prepaidChargeSummary: Optional(CargojsonChargeSummary(
                chargeSummaryTotal: 1.1,
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1)
            )),
            route: [
                CargojsonRouting(
                    carrierCode: Optional("carrierCode"),
                    destination: Optional("destination")
                )
            ],
            salesIncentive: Optional(CargojsonSalesIncentive(
                cassIndicator: Optional(.awbAsInvoice),
                chargeAmount: 1.1
            )),
            schemaVersion: Optional(1),
            shipmentReferenceInformation: Optional(CargojsonShipmentReferenceInformation(
                info: Optional("info"),
                referenceNumber: Optional("referenceNumber")
            )),
            shipper: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            shippersCertification: Optional("shippersCertification"),
            specialHandlingCodes: Optional([
                .act
            ]),
            specialServiceRequest: Optional("specialServiceRequest"),
            status: Optional(.draft),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            taskGroupId: "taskGroupId",
            totalConsignmentNumberOfPieces: 1,
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            volume: Optional(CargojsonVolume(
                amount: 1.1,
                unit: Optional(.cubicCentimetre)
            )),
            webcargoBookingRecordId: "webcargoBookingRecordId",
            weight: CargojsonWeight(
                amount: 1.1,
                unit: Optional(.kilogram)
            )
        )
        let response = try await client.integrations.airWaybills.submitV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "accounting": [
                    {
                      "accountingInformation": "accountingInformation",
                      "identifier": "CreditCardNumber"
                    }
                  ],
                  "additionalSpecialHandlingCodes": [
                    "additionalSpecialHandlingCodes"
                  ],
                  "agent": {
                    "accountNumber": "accountNumber",
                    "iataCargoAgentCASSAddress": "iataCargoAgentCASSAddress",
                    "iataCargoAgentNumericCode": "iataCargoAgentNumericCode",
                    "name": "name",
                    "participantIdentifier": {
                      "airportCityCode": "airportCityCode",
                      "code": "code",
                      "identifier": "AIR"
                    },
                    "place": "place"
                  },
                  "airWaybillNumber": "airWaybillNumber",
                  "alsoNotify": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "chargeDeclarations": {
                    "chargeCode": "ALL_CHARGES_COLLECT",
                    "declaredValueForCarriage": 1.1,
                    "declaredValueForCustoms": 1.1,
                    "declaredValueForInsurance": 1.1,
                    "isoCurrencyCode": "isoCurrencyCode",
                    "payment_OtherCharges": "Collect",
                    "payment_WeightValuation": "Collect"
                  },
                  "chargeItems": [
                    {
                      "charges": [
                        {}
                      ],
                      "commodityItemNumber": [
                        "commodityItemNumber"
                      ],
                      "consolidation": true,
                      "goodsDescription": "goodsDescription",
                      "grossWeight": {
                        "amount": 1.1
                      },
                      "harmonisedCommodityCode": [
                        "harmonisedCommodityCode"
                      ],
                      "isoCountryCodeOfOriginOfGoods": "isoCountryCodeOfOriginOfGoods",
                      "numberOfPieces": 1,
                      "packaging": [
                        {}
                      ],
                      "rateCombinationPointCityCode": "rateCombinationPointCityCode",
                      "serviceCode": "AIRPORT_TO_AIRPORT"
                    }
                  ],
                  "chargesCollectInDestCurrency": {
                    "chargesAtDestination": 1.1,
                    "chargesInDestinationCurrency": 1.1,
                    "currencyConversionRateOfExchange": 1.1,
                    "isoCurrencyCode": "isoCurrencyCode",
                    "totalCollectCharges": 1.1
                  },
                  "collectChargeSummary": {
                    "chargeSummaryTotal": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1
                  },
                  "commissionInfo": {
                    "amountCASSSettlementFactor": 1.1,
                    "percentageCASSSettlementFactor": 1.1
                  },
                  "consignee": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "createdAt": "2024-01-15T09:30:00Z",
                  "customsOriginCode": "customsOriginCode",
                  "densityGroup": 1,
                  "destination": "destination",
                  "flights": [
                    {
                      "flight": "flight",
                      "scheduledDate": "scheduledDate",
                      "scheduledTime": "scheduledTime"
                    }
                  ],
                  "isoCurrencyCode": "isoCurrencyCode",
                  "nominatedHandlingParty": {
                    "name": "name",
                    "place": "place"
                  },
                  "oci": [
                    {
                      "additionalControlInformation": "additionalControlInformation",
                      "controlInformation": "controlInformation",
                      "informationIdentifier": "informationIdentifier",
                      "isoCountryCode": "isoCountryCode",
                      "supplementaryControlInformation": "supplementaryControlInformation"
                    }
                  ],
                  "orgId": "orgId",
                  "origin": "origin",
                  "otherCharges": [
                    {
                      "chargeAmount": 1.1,
                      "entitlementCode": "Agent",
                      "otherChargeCode": "UC",
                      "paymentCondition": "Collect"
                    }
                  ],
                  "otherParticipant": [
                    {
                      "fileReference": "fileReference",
                      "name": "name",
                      "officeMessageAddress": {
                        "airportCityCode": "airportCityCode",
                        "companyDesignator": "companyDesignator",
                        "officeFunctionDesignator": "officeFunctionDesignator"
                      },
                      "participantIdentification": {
                        "airportCityCode": "airportCityCode",
                        "code": "code",
                        "identifier": "AIR"
                      }
                    }
                  ],
                  "otherServiceInformation": "otherServiceInformation",
                  "prepaidChargeSummary": {
                    "chargeSummaryTotal": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1
                  },
                  "route": [
                    {
                      "carrierCode": "carrierCode",
                      "destination": "destination"
                    }
                  ],
                  "salesIncentive": {
                    "cassIndicator": "AWB_AS_INVOICE",
                    "chargeAmount": 1.1
                  },
                  "schemaVersion": 1,
                  "shipmentReferenceInformation": {
                    "info": "info",
                    "referenceNumber": "referenceNumber"
                  },
                  "shipper": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "country": "country",
                      "name1": "name1",
                      "name2": "name2",
                      "place": "place",
                      "postCode": "postCode",
                      "stateProvince": "stateProvince",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "shippersCertification": "shippersCertification",
                  "specialHandlingCodes": [
                    "ACT"
                  ],
                  "specialServiceRequest": "specialServiceRequest",
                  "status": "draft",
                  "submittedAt": "2024-01-15T09:30:00Z",
                  "taskGroupId": "taskGroupId",
                  "totalConsignmentNumberOfPieces": 1,
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "volume": {
                    "amount": 1.1,
                    "unit": "CUBIC_CENTIMETRE"
                  },
                  "webcargoBookingRecordId": "webcargoBookingRecordId",
                  "weight": {
                    "amount": 1.1,
                    "unit": "KILOGRAM"
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ChampAirWaybill1(
            id: "_id",
            accounting: Optional([
                CargojsonAccounting(
                    accountingInformation: "accountingInformation",
                    identifier: .creditCardNumber
                )
            ]),
            additionalSpecialHandlingCodes: Optional([
                "additionalSpecialHandlingCodes"
            ]),
            agent: Optional(CargojsonAgent(
                accountNumber: Optional("accountNumber"),
                iataCargoAgentCassAddress: Optional("iataCargoAgentCASSAddress"),
                iataCargoAgentNumericCode: Optional("iataCargoAgentNumericCode"),
                name: "name",
                participantIdentifier: Optional(CargojsonParticipantIdentifier(
                    airportCityCode: "airportCityCode",
                    code: "code",
                    identifier: .air
                )),
                place: "place"
            )),
            airWaybillNumber: "airWaybillNumber",
            alsoNotify: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            chargeDeclarations: Optional(CargojsonChargeDeclarations(
                chargeCode: Optional(.allChargesCollect),
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                isoCurrencyCode: "isoCurrencyCode",
                paymentOtherCharges: Optional(.collect),
                paymentWeightValuation: Optional(.collect)
            )),
            chargeItems: [
                CargojsonChargeItem(
                    charges: Optional([
                        CargojsonCharge(

                        )
                    ]),
                    commodityItemNumber: Optional([
                        "commodityItemNumber"
                    ]),
                    consolidation: Optional(true),
                    goodsDescription: Optional("goodsDescription"),
                    grossWeight: Optional(CargojsonWeight(
                        amount: 1.1
                    )),
                    harmonisedCommodityCode: Optional([
                        "harmonisedCommodityCode"
                    ]),
                    isoCountryCodeOfOriginOfGoods: Optional("isoCountryCodeOfOriginOfGoods"),
                    numberOfPieces: Optional(1),
                    packaging: Optional([
                        CargojsonPackaging(

                        )
                    ]),
                    rateCombinationPointCityCode: Optional("rateCombinationPointCityCode"),
                    serviceCode: Optional(.airportToAirport)
                )
            ],
            chargesCollectInDestCurrency: Optional(CargojsonCollectChargesInDestCurrency(
                chargesAtDestination: 1.1,
                chargesInDestinationCurrency: 1.1,
                currencyConversionRateOfExchange: 1.1,
                isoCurrencyCode: "isoCurrencyCode",
                totalCollectCharges: 1.1
            )),
            collectChargeSummary: Optional(CargojsonChargeSummary(
                chargeSummaryTotal: 1.1,
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1)
            )),
            commissionInfo: Optional(CargojsonCommissionInfo(
                amountCassSettlementFactor: Optional(1.1),
                percentageCassSettlementFactor: Optional(1.1)
            )),
            consignee: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            customsOriginCode: Optional("customsOriginCode"),
            densityGroup: Optional(1),
            destination: "destination",
            flights: Optional([
                CargojsonFlightIdentity(
                    flight: "flight",
                    scheduledDate: "scheduledDate",
                    scheduledTime: Optional("scheduledTime")
                )
            ]),
            isoCurrencyCode: Optional("isoCurrencyCode"),
            nominatedHandlingParty: Optional(CargojsonNominatedHandlingParty(
                name: "name",
                place: "place"
            )),
            oci: Optional([
                CargojsonOci(
                    additionalControlInformation: Optional("additionalControlInformation"),
                    controlInformation: Optional("controlInformation"),
                    informationIdentifier: Optional("informationIdentifier"),
                    isoCountryCode: Optional("isoCountryCode"),
                    supplementaryControlInformation: Optional("supplementaryControlInformation")
                )
            ]),
            orgId: "orgId",
            origin: "origin",
            otherCharges: Optional([
                CargojsonOtherChargeItem(
                    chargeAmount: 1.1,
                    entitlementCode: .agent,
                    otherChargeCode: .uc,
                    paymentCondition: .collect
                )
            ]),
            otherParticipant: Optional([
                CargojsonOtherParticipant(
                    fileReference: Optional("fileReference"),
                    name: "name",
                    officeMessageAddress: Optional(CargojsonOfficeMessageAddress(
                        airportCityCode: "airportCityCode",
                        companyDesignator: "companyDesignator",
                        officeFunctionDesignator: "officeFunctionDesignator"
                    )),
                    participantIdentification: Optional(CargojsonParticipantIdentifier(
                        airportCityCode: "airportCityCode",
                        code: "code",
                        identifier: .air
                    ))
                )
            ]),
            otherServiceInformation: Optional("otherServiceInformation"),
            prepaidChargeSummary: Optional(CargojsonChargeSummary(
                chargeSummaryTotal: 1.1,
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1)
            )),
            route: [
                CargojsonRouting(
                    carrierCode: Optional("carrierCode"),
                    destination: Optional("destination")
                )
            ],
            salesIncentive: Optional(CargojsonSalesIncentive(
                cassIndicator: Optional(.awbAsInvoice),
                chargeAmount: 1.1
            )),
            schemaVersion: Optional(1),
            shipmentReferenceInformation: Optional(CargojsonShipmentReferenceInformation(
                info: Optional("info"),
                referenceNumber: Optional("referenceNumber")
            )),
            shipper: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    country: "country",
                    name1: "name1",
                    name2: Optional("name2"),
                    place: "place",
                    postCode: "postCode",
                    stateProvince: Optional("stateProvince"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2")
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            shippersCertification: Optional("shippersCertification"),
            specialHandlingCodes: Optional([
                .act
            ]),
            specialServiceRequest: Optional("specialServiceRequest"),
            status: Optional(.draft),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            taskGroupId: "taskGroupId",
            totalConsignmentNumberOfPieces: 1,
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            volume: Optional(CargojsonVolume(
                amount: 1.1,
                unit: Optional(.cubicCentimetre)
            )),
            webcargoBookingRecordId: "webcargoBookingRecordId",
            weight: CargojsonWeight(
                amount: 1.1,
                unit: Optional(.kilogram)
            )
        )
        let response = try await client.integrations.airWaybills.updateV1(
            taskGroupId: "task_group_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}