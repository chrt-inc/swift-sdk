import Foundation
import Testing
import Chrt

@Suite("AirWaybillsClient Wire Tests") struct AirWaybillsClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schemaVersion": 1,
                  "_id": "_id",
                  "orgId": "orgId",
                  "taskGroupId": "taskGroupId",
                  "webcargoBookingRecordId": "webcargoBookingRecordId",
                  "status": "draft",
                  "airWaybillNumber": "airWaybillNumber",
                  "origin": "origin",
                  "destination": "destination",
                  "totalConsignmentNumberOfPieces": 1,
                  "weight": {
                    "amount": 1.1,
                    "unit": "KILOGRAM"
                  },
                  "route": [
                    {
                      "carrierCode": "carrierCode",
                      "destination": "destination"
                    }
                  ],
                  "chargeItems": [
                    {
                      "numberOfPieces": 1,
                      "rateCombinationPointCityCode": "rateCombinationPointCityCode",
                      "commodityItemNumber": [
                        "commodityItemNumber"
                      ],
                      "goodsDescription": "goodsDescription",
                      "grossWeight": {
                        "amount": 1.1
                      },
                      "consolidation": true,
                      "harmonisedCommodityCode": [
                        "harmonisedCommodityCode"
                      ],
                      "isoCountryCodeOfOriginOfGoods": "isoCountryCodeOfOriginOfGoods",
                      "packaging": [
                        {}
                      ],
                      "charges": [
                        {}
                      ],
                      "serviceCode": "AIRPORT_TO_AIRPORT"
                    }
                  ],
                  "volume": {
                    "amount": 1.1,
                    "unit": "CUBIC_CENTIMETRE"
                  },
                  "flights": [
                    {
                      "flight": "flight",
                      "scheduledDate": "scheduledDate",
                      "scheduledTime": "scheduledTime"
                    }
                  ],
                  "isoCurrencyCode": "isoCurrencyCode",
                  "agent": {
                    "name": "name",
                    "place": "place",
                    "accountNumber": "accountNumber",
                    "iataCargoAgentNumericCode": "iataCargoAgentNumericCode",
                    "iataCargoAgentCASSAddress": "iataCargoAgentCASSAddress",
                    "participantIdentifier": {
                      "identifier": "AIR",
                      "code": "code",
                      "airportCityCode": "airportCityCode"
                    }
                  },
                  "shipper": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "consignee": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "chargeDeclarations": {
                    "isoCurrencyCode": "isoCurrencyCode",
                    "chargeCode": "ALL_CHARGES_COLLECT",
                    "payment_WeightValuation": "Collect",
                    "payment_OtherCharges": "Collect",
                    "declaredValueForCarriage": 1.1,
                    "declaredValueForCustoms": 1.1,
                    "declaredValueForInsurance": 1.1
                  },
                  "densityGroup": 1,
                  "specialHandlingCodes": [
                    "ACT"
                  ],
                  "additionalSpecialHandlingCodes": [
                    "additionalSpecialHandlingCodes"
                  ],
                  "specialServiceRequest": "specialServiceRequest",
                  "alsoNotify": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "prepaidChargeSummary": {
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "chargeSummaryTotal": 1.1
                  },
                  "collectChargeSummary": {
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "chargeSummaryTotal": 1.1
                  },
                  "accounting": [
                    {
                      "identifier": "CreditCardNumber",
                      "accountingInformation": "accountingInformation"
                    }
                  ],
                  "otherCharges": [
                    {
                      "paymentCondition": "Collect",
                      "otherChargeCode": "UC",
                      "entitlementCode": "Agent",
                      "chargeAmount": 1.1
                    }
                  ],
                  "shippersCertification": "shippersCertification",
                  "otherServiceInformation": "otherServiceInformation",
                  "chargesCollectInDestCurrency": {
                    "isoCurrencyCode": "isoCurrencyCode",
                    "currencyConversionRateOfExchange": 1.1,
                    "chargesInDestinationCurrency": 1.1,
                    "chargesAtDestination": 1.1,
                    "totalCollectCharges": 1.1
                  },
                  "customsOriginCode": "customsOriginCode",
                  "commissionInfo": {
                    "amountCASSSettlementFactor": 1.1,
                    "percentageCASSSettlementFactor": 1.1
                  },
                  "salesIncentive": {
                    "chargeAmount": 1.1,
                    "cassIndicator": "AWB_AS_INVOICE"
                  },
                  "nominatedHandlingParty": {
                    "name": "name",
                    "place": "place"
                  },
                  "shipmentReferenceInformation": {
                    "referenceNumber": "referenceNumber",
                    "info": "info"
                  },
                  "otherParticipant": [
                    {
                      "name": "name",
                      "officeMessageAddress": {
                        "airportCityCode": "airportCityCode",
                        "officeFunctionDesignator": "officeFunctionDesignator",
                        "companyDesignator": "companyDesignator"
                      },
                      "fileReference": "fileReference",
                      "participantIdentification": {
                        "identifier": "AIR",
                        "code": "code",
                        "airportCityCode": "airportCityCode"
                      }
                    }
                  ],
                  "oci": [
                    {
                      "isoCountryCode": "isoCountryCode",
                      "informationIdentifier": "informationIdentifier",
                      "controlInformation": "controlInformation",
                      "additionalControlInformation": "additionalControlInformation",
                      "supplementaryControlInformation": "supplementaryControlInformation"
                    }
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "submittedAt": "2024-01-15T09:30:00Z"
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
            schemaVersion: Optional(1),
            id: "_id",
            orgId: "orgId",
            taskGroupId: "taskGroupId",
            webcargoBookingRecordId: "webcargoBookingRecordId",
            status: Optional(.draft),
            airWaybillNumber: "airWaybillNumber",
            origin: "origin",
            destination: "destination",
            totalConsignmentNumberOfPieces: 1,
            weight: CargojsonWeight(
                amount: 1.1,
                unit: Optional(.kilogram)
            ),
            route: [
                CargojsonRouting(
                    carrierCode: Optional("carrierCode"),
                    destination: Optional("destination")
                )
            ],
            chargeItems: [
                CargojsonChargeItem(
                    numberOfPieces: Optional(1),
                    rateCombinationPointCityCode: Optional("rateCombinationPointCityCode"),
                    commodityItemNumber: Optional([
                        "commodityItemNumber"
                    ]),
                    goodsDescription: Optional("goodsDescription"),
                    grossWeight: Optional(CargojsonWeight(
                        amount: 1.1
                    )),
                    consolidation: Optional(true),
                    harmonisedCommodityCode: Optional([
                        "harmonisedCommodityCode"
                    ]),
                    isoCountryCodeOfOriginOfGoods: Optional("isoCountryCodeOfOriginOfGoods"),
                    packaging: Optional([
                        CargojsonPackaging(

                        )
                    ]),
                    charges: Optional([
                        CargojsonCharge(

                        )
                    ]),
                    serviceCode: Optional(.airportToAirport)
                )
            ],
            volume: Optional(CargojsonVolume(
                amount: 1.1,
                unit: Optional(.cubicCentimetre)
            )),
            flights: Optional([
                CargojsonFlightIdentity(
                    flight: "flight",
                    scheduledDate: "scheduledDate",
                    scheduledTime: Optional("scheduledTime")
                )
            ]),
            isoCurrencyCode: Optional("isoCurrencyCode"),
            agent: Optional(CargojsonAgent(
                name: "name",
                place: "place",
                accountNumber: Optional("accountNumber"),
                iataCargoAgentNumericCode: Optional("iataCargoAgentNumericCode"),
                iataCargoAgentCassAddress: Optional("iataCargoAgentCASSAddress"),
                participantIdentifier: Optional(CargojsonParticipantIdentifier(
                    identifier: .air,
                    code: "code",
                    airportCityCode: "airportCityCode"
                ))
            )),
            shipper: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            consignee: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            chargeDeclarations: Optional(CargojsonChargeDeclarations(
                isoCurrencyCode: "isoCurrencyCode",
                chargeCode: Optional(.allChargesCollect),
                paymentWeightValuation: Optional(.collect),
                paymentOtherCharges: Optional(.collect),
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1)
            )),
            densityGroup: Optional(1),
            specialHandlingCodes: Optional([
                .act
            ]),
            additionalSpecialHandlingCodes: Optional([
                "additionalSpecialHandlingCodes"
            ]),
            specialServiceRequest: Optional("specialServiceRequest"),
            alsoNotify: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            prepaidChargeSummary: Optional(CargojsonChargeSummary(
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1),
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                chargeSummaryTotal: 1.1
            )),
            collectChargeSummary: Optional(CargojsonChargeSummary(
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1),
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                chargeSummaryTotal: 1.1
            )),
            accounting: Optional([
                CargojsonAccounting(
                    identifier: .creditCardNumber,
                    accountingInformation: "accountingInformation"
                )
            ]),
            otherCharges: Optional([
                CargojsonOtherChargeItem(
                    paymentCondition: .collect,
                    otherChargeCode: .uc,
                    entitlementCode: .agent,
                    chargeAmount: 1.1
                )
            ]),
            shippersCertification: Optional("shippersCertification"),
            otherServiceInformation: Optional("otherServiceInformation"),
            chargesCollectInDestCurrency: Optional(CargojsonCollectChargesInDestCurrency(
                isoCurrencyCode: "isoCurrencyCode",
                currencyConversionRateOfExchange: 1.1,
                chargesInDestinationCurrency: 1.1,
                chargesAtDestination: 1.1,
                totalCollectCharges: 1.1
            )),
            customsOriginCode: Optional("customsOriginCode"),
            commissionInfo: Optional(CargojsonCommissionInfo(
                amountCassSettlementFactor: Optional(1.1),
                percentageCassSettlementFactor: Optional(1.1)
            )),
            salesIncentive: Optional(CargojsonSalesIncentive(
                chargeAmount: 1.1,
                cassIndicator: Optional(.awbAsInvoice)
            )),
            nominatedHandlingParty: Optional(CargojsonNominatedHandlingParty(
                name: "name",
                place: "place"
            )),
            shipmentReferenceInformation: Optional(CargojsonShipmentReferenceInformation(
                referenceNumber: Optional("referenceNumber"),
                info: Optional("info")
            )),
            otherParticipant: Optional([
                CargojsonOtherParticipant(
                    name: "name",
                    officeMessageAddress: Optional(CargojsonOfficeMessageAddress(
                        airportCityCode: "airportCityCode",
                        officeFunctionDesignator: "officeFunctionDesignator",
                        companyDesignator: "companyDesignator"
                    )),
                    fileReference: Optional("fileReference"),
                    participantIdentification: Optional(CargojsonParticipantIdentifier(
                        identifier: .air,
                        code: "code",
                        airportCityCode: "airportCityCode"
                    ))
                )
            ]),
            oci: Optional([
                CargojsonOci(
                    isoCountryCode: Optional("isoCountryCode"),
                    informationIdentifier: Optional("informationIdentifier"),
                    controlInformation: Optional("controlInformation"),
                    additionalControlInformation: Optional("additionalControlInformation"),
                    supplementaryControlInformation: Optional("supplementaryControlInformation")
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.integrations.airWaybills.createV1(
            request: .init(taskGroupId: "task_group_id"),
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
                  "schemaVersion": 1,
                  "_id": "_id",
                  "orgId": "orgId",
                  "taskGroupId": "taskGroupId",
                  "webcargoBookingRecordId": "webcargoBookingRecordId",
                  "status": "draft",
                  "airWaybillNumber": "airWaybillNumber",
                  "origin": "origin",
                  "destination": "destination",
                  "totalConsignmentNumberOfPieces": 1,
                  "weight": {
                    "amount": 1.1,
                    "unit": "KILOGRAM"
                  },
                  "route": [
                    {
                      "carrierCode": "carrierCode",
                      "destination": "destination"
                    }
                  ],
                  "chargeItems": [
                    {
                      "numberOfPieces": 1,
                      "rateCombinationPointCityCode": "rateCombinationPointCityCode",
                      "commodityItemNumber": [
                        "commodityItemNumber"
                      ],
                      "goodsDescription": "goodsDescription",
                      "grossWeight": {
                        "amount": 1.1
                      },
                      "consolidation": true,
                      "harmonisedCommodityCode": [
                        "harmonisedCommodityCode"
                      ],
                      "isoCountryCodeOfOriginOfGoods": "isoCountryCodeOfOriginOfGoods",
                      "packaging": [
                        {}
                      ],
                      "charges": [
                        {}
                      ],
                      "serviceCode": "AIRPORT_TO_AIRPORT"
                    }
                  ],
                  "volume": {
                    "amount": 1.1,
                    "unit": "CUBIC_CENTIMETRE"
                  },
                  "flights": [
                    {
                      "flight": "flight",
                      "scheduledDate": "scheduledDate",
                      "scheduledTime": "scheduledTime"
                    }
                  ],
                  "isoCurrencyCode": "isoCurrencyCode",
                  "agent": {
                    "name": "name",
                    "place": "place",
                    "accountNumber": "accountNumber",
                    "iataCargoAgentNumericCode": "iataCargoAgentNumericCode",
                    "iataCargoAgentCASSAddress": "iataCargoAgentCASSAddress",
                    "participantIdentifier": {
                      "identifier": "AIR",
                      "code": "code",
                      "airportCityCode": "airportCityCode"
                    }
                  },
                  "shipper": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "consignee": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "chargeDeclarations": {
                    "isoCurrencyCode": "isoCurrencyCode",
                    "chargeCode": "ALL_CHARGES_COLLECT",
                    "payment_WeightValuation": "Collect",
                    "payment_OtherCharges": "Collect",
                    "declaredValueForCarriage": 1.1,
                    "declaredValueForCustoms": 1.1,
                    "declaredValueForInsurance": 1.1
                  },
                  "densityGroup": 1,
                  "specialHandlingCodes": [
                    "ACT"
                  ],
                  "additionalSpecialHandlingCodes": [
                    "additionalSpecialHandlingCodes"
                  ],
                  "specialServiceRequest": "specialServiceRequest",
                  "alsoNotify": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "prepaidChargeSummary": {
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "chargeSummaryTotal": 1.1
                  },
                  "collectChargeSummary": {
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "chargeSummaryTotal": 1.1
                  },
                  "accounting": [
                    {
                      "identifier": "CreditCardNumber",
                      "accountingInformation": "accountingInformation"
                    }
                  ],
                  "otherCharges": [
                    {
                      "paymentCondition": "Collect",
                      "otherChargeCode": "UC",
                      "entitlementCode": "Agent",
                      "chargeAmount": 1.1
                    }
                  ],
                  "shippersCertification": "shippersCertification",
                  "otherServiceInformation": "otherServiceInformation",
                  "chargesCollectInDestCurrency": {
                    "isoCurrencyCode": "isoCurrencyCode",
                    "currencyConversionRateOfExchange": 1.1,
                    "chargesInDestinationCurrency": 1.1,
                    "chargesAtDestination": 1.1,
                    "totalCollectCharges": 1.1
                  },
                  "customsOriginCode": "customsOriginCode",
                  "commissionInfo": {
                    "amountCASSSettlementFactor": 1.1,
                    "percentageCASSSettlementFactor": 1.1
                  },
                  "salesIncentive": {
                    "chargeAmount": 1.1,
                    "cassIndicator": "AWB_AS_INVOICE"
                  },
                  "nominatedHandlingParty": {
                    "name": "name",
                    "place": "place"
                  },
                  "shipmentReferenceInformation": {
                    "referenceNumber": "referenceNumber",
                    "info": "info"
                  },
                  "otherParticipant": [
                    {
                      "name": "name",
                      "officeMessageAddress": {
                        "airportCityCode": "airportCityCode",
                        "officeFunctionDesignator": "officeFunctionDesignator",
                        "companyDesignator": "companyDesignator"
                      },
                      "fileReference": "fileReference",
                      "participantIdentification": {
                        "identifier": "AIR",
                        "code": "code",
                        "airportCityCode": "airportCityCode"
                      }
                    }
                  ],
                  "oci": [
                    {
                      "isoCountryCode": "isoCountryCode",
                      "informationIdentifier": "informationIdentifier",
                      "controlInformation": "controlInformation",
                      "additionalControlInformation": "additionalControlInformation",
                      "supplementaryControlInformation": "supplementaryControlInformation"
                    }
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "submittedAt": "2024-01-15T09:30:00Z"
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
            schemaVersion: Optional(1),
            id: "_id",
            orgId: "orgId",
            taskGroupId: "taskGroupId",
            webcargoBookingRecordId: "webcargoBookingRecordId",
            status: Optional(.draft),
            airWaybillNumber: "airWaybillNumber",
            origin: "origin",
            destination: "destination",
            totalConsignmentNumberOfPieces: 1,
            weight: CargojsonWeight(
                amount: 1.1,
                unit: Optional(.kilogram)
            ),
            route: [
                CargojsonRouting(
                    carrierCode: Optional("carrierCode"),
                    destination: Optional("destination")
                )
            ],
            chargeItems: [
                CargojsonChargeItem(
                    numberOfPieces: Optional(1),
                    rateCombinationPointCityCode: Optional("rateCombinationPointCityCode"),
                    commodityItemNumber: Optional([
                        "commodityItemNumber"
                    ]),
                    goodsDescription: Optional("goodsDescription"),
                    grossWeight: Optional(CargojsonWeight(
                        amount: 1.1
                    )),
                    consolidation: Optional(true),
                    harmonisedCommodityCode: Optional([
                        "harmonisedCommodityCode"
                    ]),
                    isoCountryCodeOfOriginOfGoods: Optional("isoCountryCodeOfOriginOfGoods"),
                    packaging: Optional([
                        CargojsonPackaging(

                        )
                    ]),
                    charges: Optional([
                        CargojsonCharge(

                        )
                    ]),
                    serviceCode: Optional(.airportToAirport)
                )
            ],
            volume: Optional(CargojsonVolume(
                amount: 1.1,
                unit: Optional(.cubicCentimetre)
            )),
            flights: Optional([
                CargojsonFlightIdentity(
                    flight: "flight",
                    scheduledDate: "scheduledDate",
                    scheduledTime: Optional("scheduledTime")
                )
            ]),
            isoCurrencyCode: Optional("isoCurrencyCode"),
            agent: Optional(CargojsonAgent(
                name: "name",
                place: "place",
                accountNumber: Optional("accountNumber"),
                iataCargoAgentNumericCode: Optional("iataCargoAgentNumericCode"),
                iataCargoAgentCassAddress: Optional("iataCargoAgentCASSAddress"),
                participantIdentifier: Optional(CargojsonParticipantIdentifier(
                    identifier: .air,
                    code: "code",
                    airportCityCode: "airportCityCode"
                ))
            )),
            shipper: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            consignee: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            chargeDeclarations: Optional(CargojsonChargeDeclarations(
                isoCurrencyCode: "isoCurrencyCode",
                chargeCode: Optional(.allChargesCollect),
                paymentWeightValuation: Optional(.collect),
                paymentOtherCharges: Optional(.collect),
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1)
            )),
            densityGroup: Optional(1),
            specialHandlingCodes: Optional([
                .act
            ]),
            additionalSpecialHandlingCodes: Optional([
                "additionalSpecialHandlingCodes"
            ]),
            specialServiceRequest: Optional("specialServiceRequest"),
            alsoNotify: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            prepaidChargeSummary: Optional(CargojsonChargeSummary(
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1),
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                chargeSummaryTotal: 1.1
            )),
            collectChargeSummary: Optional(CargojsonChargeSummary(
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1),
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                chargeSummaryTotal: 1.1
            )),
            accounting: Optional([
                CargojsonAccounting(
                    identifier: .creditCardNumber,
                    accountingInformation: "accountingInformation"
                )
            ]),
            otherCharges: Optional([
                CargojsonOtherChargeItem(
                    paymentCondition: .collect,
                    otherChargeCode: .uc,
                    entitlementCode: .agent,
                    chargeAmount: 1.1
                )
            ]),
            shippersCertification: Optional("shippersCertification"),
            otherServiceInformation: Optional("otherServiceInformation"),
            chargesCollectInDestCurrency: Optional(CargojsonCollectChargesInDestCurrency(
                isoCurrencyCode: "isoCurrencyCode",
                currencyConversionRateOfExchange: 1.1,
                chargesInDestinationCurrency: 1.1,
                chargesAtDestination: 1.1,
                totalCollectCharges: 1.1
            )),
            customsOriginCode: Optional("customsOriginCode"),
            commissionInfo: Optional(CargojsonCommissionInfo(
                amountCassSettlementFactor: Optional(1.1),
                percentageCassSettlementFactor: Optional(1.1)
            )),
            salesIncentive: Optional(CargojsonSalesIncentive(
                chargeAmount: 1.1,
                cassIndicator: Optional(.awbAsInvoice)
            )),
            nominatedHandlingParty: Optional(CargojsonNominatedHandlingParty(
                name: "name",
                place: "place"
            )),
            shipmentReferenceInformation: Optional(CargojsonShipmentReferenceInformation(
                referenceNumber: Optional("referenceNumber"),
                info: Optional("info")
            )),
            otherParticipant: Optional([
                CargojsonOtherParticipant(
                    name: "name",
                    officeMessageAddress: Optional(CargojsonOfficeMessageAddress(
                        airportCityCode: "airportCityCode",
                        officeFunctionDesignator: "officeFunctionDesignator",
                        companyDesignator: "companyDesignator"
                    )),
                    fileReference: Optional("fileReference"),
                    participantIdentification: Optional(CargojsonParticipantIdentifier(
                        identifier: .air,
                        code: "code",
                        airportCityCode: "airportCityCode"
                    ))
                )
            ]),
            oci: Optional([
                CargojsonOci(
                    isoCountryCode: Optional("isoCountryCode"),
                    informationIdentifier: Optional("informationIdentifier"),
                    controlInformation: Optional("controlInformation"),
                    additionalControlInformation: Optional("additionalControlInformation"),
                    supplementaryControlInformation: Optional("supplementaryControlInformation")
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.integrations.airWaybills.retrieveV1(
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
                  "schemaVersion": 1,
                  "_id": "_id",
                  "orgId": "orgId",
                  "taskGroupId": "taskGroupId",
                  "webcargoBookingRecordId": "webcargoBookingRecordId",
                  "status": "draft",
                  "airWaybillNumber": "airWaybillNumber",
                  "origin": "origin",
                  "destination": "destination",
                  "totalConsignmentNumberOfPieces": 1,
                  "weight": {
                    "amount": 1.1,
                    "unit": "KILOGRAM"
                  },
                  "route": [
                    {
                      "carrierCode": "carrierCode",
                      "destination": "destination"
                    }
                  ],
                  "chargeItems": [
                    {
                      "numberOfPieces": 1,
                      "rateCombinationPointCityCode": "rateCombinationPointCityCode",
                      "commodityItemNumber": [
                        "commodityItemNumber"
                      ],
                      "goodsDescription": "goodsDescription",
                      "grossWeight": {
                        "amount": 1.1
                      },
                      "consolidation": true,
                      "harmonisedCommodityCode": [
                        "harmonisedCommodityCode"
                      ],
                      "isoCountryCodeOfOriginOfGoods": "isoCountryCodeOfOriginOfGoods",
                      "packaging": [
                        {}
                      ],
                      "charges": [
                        {}
                      ],
                      "serviceCode": "AIRPORT_TO_AIRPORT"
                    }
                  ],
                  "volume": {
                    "amount": 1.1,
                    "unit": "CUBIC_CENTIMETRE"
                  },
                  "flights": [
                    {
                      "flight": "flight",
                      "scheduledDate": "scheduledDate",
                      "scheduledTime": "scheduledTime"
                    }
                  ],
                  "isoCurrencyCode": "isoCurrencyCode",
                  "agent": {
                    "name": "name",
                    "place": "place",
                    "accountNumber": "accountNumber",
                    "iataCargoAgentNumericCode": "iataCargoAgentNumericCode",
                    "iataCargoAgentCASSAddress": "iataCargoAgentCASSAddress",
                    "participantIdentifier": {
                      "identifier": "AIR",
                      "code": "code",
                      "airportCityCode": "airportCityCode"
                    }
                  },
                  "shipper": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "consignee": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "chargeDeclarations": {
                    "isoCurrencyCode": "isoCurrencyCode",
                    "chargeCode": "ALL_CHARGES_COLLECT",
                    "payment_WeightValuation": "Collect",
                    "payment_OtherCharges": "Collect",
                    "declaredValueForCarriage": 1.1,
                    "declaredValueForCustoms": 1.1,
                    "declaredValueForInsurance": 1.1
                  },
                  "densityGroup": 1,
                  "specialHandlingCodes": [
                    "ACT"
                  ],
                  "additionalSpecialHandlingCodes": [
                    "additionalSpecialHandlingCodes"
                  ],
                  "specialServiceRequest": "specialServiceRequest",
                  "alsoNotify": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "prepaidChargeSummary": {
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "chargeSummaryTotal": 1.1
                  },
                  "collectChargeSummary": {
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "chargeSummaryTotal": 1.1
                  },
                  "accounting": [
                    {
                      "identifier": "CreditCardNumber",
                      "accountingInformation": "accountingInformation"
                    }
                  ],
                  "otherCharges": [
                    {
                      "paymentCondition": "Collect",
                      "otherChargeCode": "UC",
                      "entitlementCode": "Agent",
                      "chargeAmount": 1.1
                    }
                  ],
                  "shippersCertification": "shippersCertification",
                  "otherServiceInformation": "otherServiceInformation",
                  "chargesCollectInDestCurrency": {
                    "isoCurrencyCode": "isoCurrencyCode",
                    "currencyConversionRateOfExchange": 1.1,
                    "chargesInDestinationCurrency": 1.1,
                    "chargesAtDestination": 1.1,
                    "totalCollectCharges": 1.1
                  },
                  "customsOriginCode": "customsOriginCode",
                  "commissionInfo": {
                    "amountCASSSettlementFactor": 1.1,
                    "percentageCASSSettlementFactor": 1.1
                  },
                  "salesIncentive": {
                    "chargeAmount": 1.1,
                    "cassIndicator": "AWB_AS_INVOICE"
                  },
                  "nominatedHandlingParty": {
                    "name": "name",
                    "place": "place"
                  },
                  "shipmentReferenceInformation": {
                    "referenceNumber": "referenceNumber",
                    "info": "info"
                  },
                  "otherParticipant": [
                    {
                      "name": "name",
                      "officeMessageAddress": {
                        "airportCityCode": "airportCityCode",
                        "officeFunctionDesignator": "officeFunctionDesignator",
                        "companyDesignator": "companyDesignator"
                      },
                      "fileReference": "fileReference",
                      "participantIdentification": {
                        "identifier": "AIR",
                        "code": "code",
                        "airportCityCode": "airportCityCode"
                      }
                    }
                  ],
                  "oci": [
                    {
                      "isoCountryCode": "isoCountryCode",
                      "informationIdentifier": "informationIdentifier",
                      "controlInformation": "controlInformation",
                      "additionalControlInformation": "additionalControlInformation",
                      "supplementaryControlInformation": "supplementaryControlInformation"
                    }
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "submittedAt": "2024-01-15T09:30:00Z"
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
            schemaVersion: Optional(1),
            id: "_id",
            orgId: "orgId",
            taskGroupId: "taskGroupId",
            webcargoBookingRecordId: "webcargoBookingRecordId",
            status: Optional(.draft),
            airWaybillNumber: "airWaybillNumber",
            origin: "origin",
            destination: "destination",
            totalConsignmentNumberOfPieces: 1,
            weight: CargojsonWeight(
                amount: 1.1,
                unit: Optional(.kilogram)
            ),
            route: [
                CargojsonRouting(
                    carrierCode: Optional("carrierCode"),
                    destination: Optional("destination")
                )
            ],
            chargeItems: [
                CargojsonChargeItem(
                    numberOfPieces: Optional(1),
                    rateCombinationPointCityCode: Optional("rateCombinationPointCityCode"),
                    commodityItemNumber: Optional([
                        "commodityItemNumber"
                    ]),
                    goodsDescription: Optional("goodsDescription"),
                    grossWeight: Optional(CargojsonWeight(
                        amount: 1.1
                    )),
                    consolidation: Optional(true),
                    harmonisedCommodityCode: Optional([
                        "harmonisedCommodityCode"
                    ]),
                    isoCountryCodeOfOriginOfGoods: Optional("isoCountryCodeOfOriginOfGoods"),
                    packaging: Optional([
                        CargojsonPackaging(

                        )
                    ]),
                    charges: Optional([
                        CargojsonCharge(

                        )
                    ]),
                    serviceCode: Optional(.airportToAirport)
                )
            ],
            volume: Optional(CargojsonVolume(
                amount: 1.1,
                unit: Optional(.cubicCentimetre)
            )),
            flights: Optional([
                CargojsonFlightIdentity(
                    flight: "flight",
                    scheduledDate: "scheduledDate",
                    scheduledTime: Optional("scheduledTime")
                )
            ]),
            isoCurrencyCode: Optional("isoCurrencyCode"),
            agent: Optional(CargojsonAgent(
                name: "name",
                place: "place",
                accountNumber: Optional("accountNumber"),
                iataCargoAgentNumericCode: Optional("iataCargoAgentNumericCode"),
                iataCargoAgentCassAddress: Optional("iataCargoAgentCASSAddress"),
                participantIdentifier: Optional(CargojsonParticipantIdentifier(
                    identifier: .air,
                    code: "code",
                    airportCityCode: "airportCityCode"
                ))
            )),
            shipper: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            consignee: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            chargeDeclarations: Optional(CargojsonChargeDeclarations(
                isoCurrencyCode: "isoCurrencyCode",
                chargeCode: Optional(.allChargesCollect),
                paymentWeightValuation: Optional(.collect),
                paymentOtherCharges: Optional(.collect),
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1)
            )),
            densityGroup: Optional(1),
            specialHandlingCodes: Optional([
                .act
            ]),
            additionalSpecialHandlingCodes: Optional([
                "additionalSpecialHandlingCodes"
            ]),
            specialServiceRequest: Optional("specialServiceRequest"),
            alsoNotify: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            prepaidChargeSummary: Optional(CargojsonChargeSummary(
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1),
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                chargeSummaryTotal: 1.1
            )),
            collectChargeSummary: Optional(CargojsonChargeSummary(
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1),
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                chargeSummaryTotal: 1.1
            )),
            accounting: Optional([
                CargojsonAccounting(
                    identifier: .creditCardNumber,
                    accountingInformation: "accountingInformation"
                )
            ]),
            otherCharges: Optional([
                CargojsonOtherChargeItem(
                    paymentCondition: .collect,
                    otherChargeCode: .uc,
                    entitlementCode: .agent,
                    chargeAmount: 1.1
                )
            ]),
            shippersCertification: Optional("shippersCertification"),
            otherServiceInformation: Optional("otherServiceInformation"),
            chargesCollectInDestCurrency: Optional(CargojsonCollectChargesInDestCurrency(
                isoCurrencyCode: "isoCurrencyCode",
                currencyConversionRateOfExchange: 1.1,
                chargesInDestinationCurrency: 1.1,
                chargesAtDestination: 1.1,
                totalCollectCharges: 1.1
            )),
            customsOriginCode: Optional("customsOriginCode"),
            commissionInfo: Optional(CargojsonCommissionInfo(
                amountCassSettlementFactor: Optional(1.1),
                percentageCassSettlementFactor: Optional(1.1)
            )),
            salesIncentive: Optional(CargojsonSalesIncentive(
                chargeAmount: 1.1,
                cassIndicator: Optional(.awbAsInvoice)
            )),
            nominatedHandlingParty: Optional(CargojsonNominatedHandlingParty(
                name: "name",
                place: "place"
            )),
            shipmentReferenceInformation: Optional(CargojsonShipmentReferenceInformation(
                referenceNumber: Optional("referenceNumber"),
                info: Optional("info")
            )),
            otherParticipant: Optional([
                CargojsonOtherParticipant(
                    name: "name",
                    officeMessageAddress: Optional(CargojsonOfficeMessageAddress(
                        airportCityCode: "airportCityCode",
                        officeFunctionDesignator: "officeFunctionDesignator",
                        companyDesignator: "companyDesignator"
                    )),
                    fileReference: Optional("fileReference"),
                    participantIdentification: Optional(CargojsonParticipantIdentifier(
                        identifier: .air,
                        code: "code",
                        airportCityCode: "airportCityCode"
                    ))
                )
            ]),
            oci: Optional([
                CargojsonOci(
                    isoCountryCode: Optional("isoCountryCode"),
                    informationIdentifier: Optional("informationIdentifier"),
                    controlInformation: Optional("controlInformation"),
                    additionalControlInformation: Optional("additionalControlInformation"),
                    supplementaryControlInformation: Optional("supplementaryControlInformation")
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.integrations.airWaybills.updateV1(
            taskGroupId: "task_group_id",
            request: .init(),
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
                  "schemaVersion": 1,
                  "_id": "_id",
                  "orgId": "orgId",
                  "taskGroupId": "taskGroupId",
                  "webcargoBookingRecordId": "webcargoBookingRecordId",
                  "status": "draft",
                  "airWaybillNumber": "airWaybillNumber",
                  "origin": "origin",
                  "destination": "destination",
                  "totalConsignmentNumberOfPieces": 1,
                  "weight": {
                    "amount": 1.1,
                    "unit": "KILOGRAM"
                  },
                  "route": [
                    {
                      "carrierCode": "carrierCode",
                      "destination": "destination"
                    }
                  ],
                  "chargeItems": [
                    {
                      "numberOfPieces": 1,
                      "rateCombinationPointCityCode": "rateCombinationPointCityCode",
                      "commodityItemNumber": [
                        "commodityItemNumber"
                      ],
                      "goodsDescription": "goodsDescription",
                      "grossWeight": {
                        "amount": 1.1
                      },
                      "consolidation": true,
                      "harmonisedCommodityCode": [
                        "harmonisedCommodityCode"
                      ],
                      "isoCountryCodeOfOriginOfGoods": "isoCountryCodeOfOriginOfGoods",
                      "packaging": [
                        {}
                      ],
                      "charges": [
                        {}
                      ],
                      "serviceCode": "AIRPORT_TO_AIRPORT"
                    }
                  ],
                  "volume": {
                    "amount": 1.1,
                    "unit": "CUBIC_CENTIMETRE"
                  },
                  "flights": [
                    {
                      "flight": "flight",
                      "scheduledDate": "scheduledDate",
                      "scheduledTime": "scheduledTime"
                    }
                  ],
                  "isoCurrencyCode": "isoCurrencyCode",
                  "agent": {
                    "name": "name",
                    "place": "place",
                    "accountNumber": "accountNumber",
                    "iataCargoAgentNumericCode": "iataCargoAgentNumericCode",
                    "iataCargoAgentCASSAddress": "iataCargoAgentCASSAddress",
                    "participantIdentifier": {
                      "identifier": "AIR",
                      "code": "code",
                      "airportCityCode": "airportCityCode"
                    }
                  },
                  "shipper": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "consignee": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "chargeDeclarations": {
                    "isoCurrencyCode": "isoCurrencyCode",
                    "chargeCode": "ALL_CHARGES_COLLECT",
                    "payment_WeightValuation": "Collect",
                    "payment_OtherCharges": "Collect",
                    "declaredValueForCarriage": 1.1,
                    "declaredValueForCustoms": 1.1,
                    "declaredValueForInsurance": 1.1
                  },
                  "densityGroup": 1,
                  "specialHandlingCodes": [
                    "ACT"
                  ],
                  "additionalSpecialHandlingCodes": [
                    "additionalSpecialHandlingCodes"
                  ],
                  "specialServiceRequest": "specialServiceRequest",
                  "alsoNotify": {
                    "accountNumber": "accountNumber",
                    "address": {
                      "name1": "name1",
                      "name2": "name2",
                      "streetAddress1": "streetAddress1",
                      "streetAddress2": "streetAddress2",
                      "place": "place",
                      "stateProvince": "stateProvince",
                      "country": "country",
                      "postCode": "postCode"
                    },
                    "contactDetails": [
                      {
                        "contactIdentifier": "contactIdentifier",
                        "contactNumber": "contactNumber"
                      }
                    ]
                  },
                  "prepaidChargeSummary": {
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "chargeSummaryTotal": 1.1
                  },
                  "collectChargeSummary": {
                    "totalWeightCharge": 1.1,
                    "valuationCharge": 1.1,
                    "taxes": 1.1,
                    "totalOtherChargesDueAgent": 1.1,
                    "totalOtherChargesDueCarrier": 1.1,
                    "chargeSummaryTotal": 1.1
                  },
                  "accounting": [
                    {
                      "identifier": "CreditCardNumber",
                      "accountingInformation": "accountingInformation"
                    }
                  ],
                  "otherCharges": [
                    {
                      "paymentCondition": "Collect",
                      "otherChargeCode": "UC",
                      "entitlementCode": "Agent",
                      "chargeAmount": 1.1
                    }
                  ],
                  "shippersCertification": "shippersCertification",
                  "otherServiceInformation": "otherServiceInformation",
                  "chargesCollectInDestCurrency": {
                    "isoCurrencyCode": "isoCurrencyCode",
                    "currencyConversionRateOfExchange": 1.1,
                    "chargesInDestinationCurrency": 1.1,
                    "chargesAtDestination": 1.1,
                    "totalCollectCharges": 1.1
                  },
                  "customsOriginCode": "customsOriginCode",
                  "commissionInfo": {
                    "amountCASSSettlementFactor": 1.1,
                    "percentageCASSSettlementFactor": 1.1
                  },
                  "salesIncentive": {
                    "chargeAmount": 1.1,
                    "cassIndicator": "AWB_AS_INVOICE"
                  },
                  "nominatedHandlingParty": {
                    "name": "name",
                    "place": "place"
                  },
                  "shipmentReferenceInformation": {
                    "referenceNumber": "referenceNumber",
                    "info": "info"
                  },
                  "otherParticipant": [
                    {
                      "name": "name",
                      "officeMessageAddress": {
                        "airportCityCode": "airportCityCode",
                        "officeFunctionDesignator": "officeFunctionDesignator",
                        "companyDesignator": "companyDesignator"
                      },
                      "fileReference": "fileReference",
                      "participantIdentification": {
                        "identifier": "AIR",
                        "code": "code",
                        "airportCityCode": "airportCityCode"
                      }
                    }
                  ],
                  "oci": [
                    {
                      "isoCountryCode": "isoCountryCode",
                      "informationIdentifier": "informationIdentifier",
                      "controlInformation": "controlInformation",
                      "additionalControlInformation": "additionalControlInformation",
                      "supplementaryControlInformation": "supplementaryControlInformation"
                    }
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "submittedAt": "2024-01-15T09:30:00Z"
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
            schemaVersion: Optional(1),
            id: "_id",
            orgId: "orgId",
            taskGroupId: "taskGroupId",
            webcargoBookingRecordId: "webcargoBookingRecordId",
            status: Optional(.draft),
            airWaybillNumber: "airWaybillNumber",
            origin: "origin",
            destination: "destination",
            totalConsignmentNumberOfPieces: 1,
            weight: CargojsonWeight(
                amount: 1.1,
                unit: Optional(.kilogram)
            ),
            route: [
                CargojsonRouting(
                    carrierCode: Optional("carrierCode"),
                    destination: Optional("destination")
                )
            ],
            chargeItems: [
                CargojsonChargeItem(
                    numberOfPieces: Optional(1),
                    rateCombinationPointCityCode: Optional("rateCombinationPointCityCode"),
                    commodityItemNumber: Optional([
                        "commodityItemNumber"
                    ]),
                    goodsDescription: Optional("goodsDescription"),
                    grossWeight: Optional(CargojsonWeight(
                        amount: 1.1
                    )),
                    consolidation: Optional(true),
                    harmonisedCommodityCode: Optional([
                        "harmonisedCommodityCode"
                    ]),
                    isoCountryCodeOfOriginOfGoods: Optional("isoCountryCodeOfOriginOfGoods"),
                    packaging: Optional([
                        CargojsonPackaging(

                        )
                    ]),
                    charges: Optional([
                        CargojsonCharge(

                        )
                    ]),
                    serviceCode: Optional(.airportToAirport)
                )
            ],
            volume: Optional(CargojsonVolume(
                amount: 1.1,
                unit: Optional(.cubicCentimetre)
            )),
            flights: Optional([
                CargojsonFlightIdentity(
                    flight: "flight",
                    scheduledDate: "scheduledDate",
                    scheduledTime: Optional("scheduledTime")
                )
            ]),
            isoCurrencyCode: Optional("isoCurrencyCode"),
            agent: Optional(CargojsonAgent(
                name: "name",
                place: "place",
                accountNumber: Optional("accountNumber"),
                iataCargoAgentNumericCode: Optional("iataCargoAgentNumericCode"),
                iataCargoAgentCassAddress: Optional("iataCargoAgentCASSAddress"),
                participantIdentifier: Optional(CargojsonParticipantIdentifier(
                    identifier: .air,
                    code: "code",
                    airportCityCode: "airportCityCode"
                ))
            )),
            shipper: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            consignee: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            chargeDeclarations: Optional(CargojsonChargeDeclarations(
                isoCurrencyCode: "isoCurrencyCode",
                chargeCode: Optional(.allChargesCollect),
                paymentWeightValuation: Optional(.collect),
                paymentOtherCharges: Optional(.collect),
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1)
            )),
            densityGroup: Optional(1),
            specialHandlingCodes: Optional([
                .act
            ]),
            additionalSpecialHandlingCodes: Optional([
                "additionalSpecialHandlingCodes"
            ]),
            specialServiceRequest: Optional("specialServiceRequest"),
            alsoNotify: Optional(CargojsonAccountContact(
                accountNumber: Optional("accountNumber"),
                address: CargojsonAddress(
                    name1: "name1",
                    name2: Optional("name2"),
                    streetAddress1: "streetAddress1",
                    streetAddress2: Optional("streetAddress2"),
                    place: "place",
                    stateProvince: Optional("stateProvince"),
                    country: "country",
                    postCode: "postCode"
                ),
                contactDetails: Optional([
                    CargojsonContactDetail(
                        contactIdentifier: "contactIdentifier",
                        contactNumber: "contactNumber"
                    )
                ])
            )),
            prepaidChargeSummary: Optional(CargojsonChargeSummary(
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1),
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                chargeSummaryTotal: 1.1
            )),
            collectChargeSummary: Optional(CargojsonChargeSummary(
                totalWeightCharge: Optional(1.1),
                valuationCharge: Optional(1.1),
                taxes: Optional(1.1),
                totalOtherChargesDueAgent: Optional(1.1),
                totalOtherChargesDueCarrier: Optional(1.1),
                chargeSummaryTotal: 1.1
            )),
            accounting: Optional([
                CargojsonAccounting(
                    identifier: .creditCardNumber,
                    accountingInformation: "accountingInformation"
                )
            ]),
            otherCharges: Optional([
                CargojsonOtherChargeItem(
                    paymentCondition: .collect,
                    otherChargeCode: .uc,
                    entitlementCode: .agent,
                    chargeAmount: 1.1
                )
            ]),
            shippersCertification: Optional("shippersCertification"),
            otherServiceInformation: Optional("otherServiceInformation"),
            chargesCollectInDestCurrency: Optional(CargojsonCollectChargesInDestCurrency(
                isoCurrencyCode: "isoCurrencyCode",
                currencyConversionRateOfExchange: 1.1,
                chargesInDestinationCurrency: 1.1,
                chargesAtDestination: 1.1,
                totalCollectCharges: 1.1
            )),
            customsOriginCode: Optional("customsOriginCode"),
            commissionInfo: Optional(CargojsonCommissionInfo(
                amountCassSettlementFactor: Optional(1.1),
                percentageCassSettlementFactor: Optional(1.1)
            )),
            salesIncentive: Optional(CargojsonSalesIncentive(
                chargeAmount: 1.1,
                cassIndicator: Optional(.awbAsInvoice)
            )),
            nominatedHandlingParty: Optional(CargojsonNominatedHandlingParty(
                name: "name",
                place: "place"
            )),
            shipmentReferenceInformation: Optional(CargojsonShipmentReferenceInformation(
                referenceNumber: Optional("referenceNumber"),
                info: Optional("info")
            )),
            otherParticipant: Optional([
                CargojsonOtherParticipant(
                    name: "name",
                    officeMessageAddress: Optional(CargojsonOfficeMessageAddress(
                        airportCityCode: "airportCityCode",
                        officeFunctionDesignator: "officeFunctionDesignator",
                        companyDesignator: "companyDesignator"
                    )),
                    fileReference: Optional("fileReference"),
                    participantIdentification: Optional(CargojsonParticipantIdentifier(
                        identifier: .air,
                        code: "code",
                        airportCityCode: "airportCityCode"
                    ))
                )
            ]),
            oci: Optional([
                CargojsonOci(
                    isoCountryCode: Optional("isoCountryCode"),
                    informationIdentifier: Optional("informationIdentifier"),
                    controlInformation: Optional("controlInformation"),
                    additionalControlInformation: Optional("additionalControlInformation"),
                    supplementaryControlInformation: Optional("supplementaryControlInformation")
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            submittedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.integrations.airWaybills.submitV1(
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

    @Test func confirmationsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schemaVersion": 1,
                    "_id": "_id",
                    "champId": "champId",
                    "type": "confirmation receipt",
                    "messageHeader": {
                      "addressing": {},
                      "creationDate": "2024-01-15T09:30:00Z"
                    },
                    "referencedMessageType": "referencedMessageType",
                    "airWaybillNumber": "airWaybillNumber",
                    "origin": "origin",
                    "destination": "destination",
                    "rejected": true,
                    "textMessage": "textMessage",
                    "referenceMessageContent": "referenceMessageContent",
                    "orgId": "orgId",
                    "taskGroupId": "taskGroupId",
                    "receivedAt": "2024-01-15T09:30:00Z"
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
                schemaVersion: Optional(1),
                id: "_id",
                champId: "champId",
                type: .confirmationReceipt,
                messageHeader: CargojsonMessageHeader(
                    addressing: CargojsonAddressing(

                    ),
                    creationDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                referencedMessageType: "referencedMessageType",
                airWaybillNumber: "airWaybillNumber",
                origin: "origin",
                destination: "destination",
                rejected: true,
                textMessage: "textMessage",
                referenceMessageContent: Optional("referenceMessageContent"),
                orgId: Optional("orgId"),
                taskGroupId: Optional("taskGroupId"),
                receivedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.integrations.airWaybills.confirmationsV1(
            taskGroupId: "task_group_id",
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
                    "schemaVersion": 1,
                    "_id": "_id",
                    "champId": "champId",
                    "type": "flight status",
                    "messageHeader": {
                      "addressing": {},
                      "creationDate": "2024-01-15T09:30:00Z"
                    },
                    "airWaybillNumber": "airWaybillNumber",
                    "originAndDestination": {
                      "origin": "origin",
                      "destination": "destination"
                    },
                    "quantity": {
                      "shipmentDescriptionCode": "shipmentDescriptionCode",
                      "numberOfPieces": 1,
                      "weight": {
                        "amount": 1.1
                      }
                    },
                    "totalNumberOfPieces": 1,
                    "events": [
                      {
                        "type": "type"
                      }
                    ],
                    "orgId": "orgId",
                    "taskGroupId": "taskGroupId",
                    "receivedAt": "2024-01-15T09:30:00Z"
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
                schemaVersion: Optional(1),
                id: "_id",
                champId: "champId",
                type: .flightStatus,
                messageHeader: CargojsonMessageHeader(
                    addressing: CargojsonAddressing(

                    ),
                    creationDate: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                airWaybillNumber: "airWaybillNumber",
                originAndDestination: Optional(ChampOriginAndDestination(
                    origin: "origin",
                    destination: "destination"
                )),
                quantity: Optional(ChampQuantity(
                    shipmentDescriptionCode: Optional("shipmentDescriptionCode"),
                    numberOfPieces: Optional(1),
                    weight: Optional(CargojsonWeight(
                        amount: 1.1
                    ))
                )),
                totalNumberOfPieces: Optional(1),
                events: Optional([
                    ChampFlightStatusEvent1(
                        type: "type"
                    )
                ]),
                orgId: Optional("orgId"),
                taskGroupId: Optional("taskGroupId"),
                receivedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.integrations.airWaybills.flightStatusesV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}