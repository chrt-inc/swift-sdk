import Foundation
import Testing
import Chrt

@Suite("WebcargoBookingsClient Wire Tests") struct WebcargoBookingsClientWireTests {
    @Test func syncV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "org_id": "org_id",
                  "task_group_id": "task_group_id",
                  "awb_number": "awb_number",
                  "message_header": {
                    "message_id": "message_id",
                    "request_id": "request_id"
                  },
                  "business_info": {
                    "service_method": "service_method",
                    "method_reason": "method_reason",
                    "parties": [
                      {}
                    ]
                  },
                  "document_identifiers": [
                    {
                      "document_type": "document_type",
                      "document_id": "document_id",
                      "external_booking_reference_number": "external_booking_reference_number"
                    }
                  ],
                  "booking_rate": {
                    "reference_id": "reference_id",
                    "shipment_priority_code": "shipment_priority_code",
                    "product": {
                      "product_code": "product_code",
                      "product_description": "product_description"
                    },
                    "transport_mode": "transport_mode",
                    "origin_location": {
                      "location_type_code": "location_type_code",
                      "location_code": "location_code",
                      "location_name": "location_name",
                      "country_id": "country_id",
                      "country_name": "country_name",
                      "postal_code": "postal_code"
                    },
                    "destination_location": {
                      "location_type_code": "location_type_code",
                      "location_code": "location_code",
                      "location_name": "location_name",
                      "country_id": "country_id",
                      "country_name": "country_name",
                      "postal_code": "postal_code"
                    },
                    "connection": {
                      "general_charges": [
                        {}
                      ],
                      "segments": [
                        {}
                      ]
                    },
                    "load": {
                      "total_quantity": "total_quantity",
                      "packages": [
                        {}
                      ]
                    },
                    "time_of_availability": "time_of_availability",
                    "latest_acceptance_date": "latest_acceptance_date",
                    "price_indicator": {
                      "rate_currency": "rate_currency",
                      "rate_type": "rate_type",
                      "unit_of_measure": "unit_of_measure",
                      "unit_rate": "unit_rate",
                      "total_charge": "total_charge",
                      "valid_from": "valid_from",
                      "valid_to": "valid_to"
                    },
                    "special_handling_codes": [
                      "special_handling_codes"
                    ],
                    "commodity_classification": [
                      {}
                    ],
                    "hash": "hash"
                  },
                  "shipment": {
                    "time_of_availability": "time_of_availability",
                    "latest_acceptance_date": "latest_acceptance_date",
                    "transport_mode": "transport_mode"
                  },
                  "response_status": {
                    "statuses": [
                      {}
                    ]
                  },
                  "synced_at": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WebcargoBookingRecord1(
            schemaVersion: 1,
            id: "_id",
            orgId: "org_id",
            taskGroupId: "task_group_id",
            awbNumber: "awb_number",
            messageHeader: WebcargoMessageHeader(
                messageId: Optional("message_id"),
                requestId: Optional("request_id")
            ),
            businessInfo: WebcargoBusinessInfo(
                serviceMethod: Optional("service_method"),
                methodReason: Optional("method_reason"),
                parties: Optional([
                    WebcargoParty(

                    )
                ])
            ),
            documentIdentifiers: [
                WebcargoDocumentIdentifier(
                    documentType: Optional("document_type"),
                    documentId: Optional("document_id"),
                    externalBookingReferenceNumber: Optional("external_booking_reference_number")
                )
            ],
            bookingRate: WebcargoBookingRate(
                referenceId: Optional("reference_id"),
                shipmentPriorityCode: Optional("shipment_priority_code"),
                product: Optional(WebcargoProduct(
                    productCode: Optional("product_code"),
                    productDescription: Optional("product_description")
                )),
                transportMode: Optional("transport_mode"),
                originLocation: Optional(WebcargoLocation(
                    locationTypeCode: Optional("location_type_code"),
                    locationCode: Optional("location_code"),
                    locationName: Optional("location_name"),
                    countryId: Optional("country_id"),
                    countryName: Optional("country_name"),
                    postalCode: Optional("postal_code")
                )),
                destinationLocation: Optional(WebcargoLocation(
                    locationTypeCode: Optional("location_type_code"),
                    locationCode: Optional("location_code"),
                    locationName: Optional("location_name"),
                    countryId: Optional("country_id"),
                    countryName: Optional("country_name"),
                    postalCode: Optional("postal_code")
                )),
                connection: Optional(WebcargoConnection(
                    generalCharges: Optional([
                        WebcargoFee(

                        )
                    ]),
                    segments: Optional([
                        WebcargoSegment(

                        )
                    ])
                )),
                load: Optional(WebcargoLoad(
                    totalQuantity: Optional("total_quantity"),
                    packages: Optional([
                        WebcargoPackage(

                        )
                    ])
                )),
                timeOfAvailability: Optional("time_of_availability"),
                latestAcceptanceDate: Optional("latest_acceptance_date"),
                priceIndicator: Optional(WebcargoPriceIndicator(
                    rateCurrency: Optional("rate_currency"),
                    rateType: Optional("rate_type"),
                    unitOfMeasure: Optional("unit_of_measure"),
                    unitRate: Optional("unit_rate"),
                    totalCharge: Optional("total_charge"),
                    validFrom: Optional("valid_from"),
                    validTo: Optional("valid_to")
                )),
                specialHandlingCodes: Optional([
                    "special_handling_codes"
                ]),
                commodityClassification: Optional([
                    WebcargoCommodityClass(

                    )
                ]),
                hash: Optional("hash")
            ),
            shipment: Optional(WebcargoShipment(
                timeOfAvailability: Optional("time_of_availability"),
                latestAcceptanceDate: Optional("latest_acceptance_date"),
                transportMode: Optional("transport_mode")
            )),
            responseStatus: Optional(WebcargoResponseStatus(
                statuses: Optional([
                    WebcargoResponseStatusEntry(

                    )
                ])
            )),
            syncedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.integrations.webcargoBookings.syncV1(
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
                  "schema_version": 1,
                  "_id": "_id",
                  "org_id": "org_id",
                  "task_group_id": "task_group_id",
                  "awb_number": "awb_number",
                  "message_header": {
                    "message_id": "message_id",
                    "request_id": "request_id"
                  },
                  "business_info": {
                    "service_method": "service_method",
                    "method_reason": "method_reason",
                    "parties": [
                      {}
                    ]
                  },
                  "document_identifiers": [
                    {
                      "document_type": "document_type",
                      "document_id": "document_id",
                      "external_booking_reference_number": "external_booking_reference_number"
                    }
                  ],
                  "booking_rate": {
                    "reference_id": "reference_id",
                    "shipment_priority_code": "shipment_priority_code",
                    "product": {
                      "product_code": "product_code",
                      "product_description": "product_description"
                    },
                    "transport_mode": "transport_mode",
                    "origin_location": {
                      "location_type_code": "location_type_code",
                      "location_code": "location_code",
                      "location_name": "location_name",
                      "country_id": "country_id",
                      "country_name": "country_name",
                      "postal_code": "postal_code"
                    },
                    "destination_location": {
                      "location_type_code": "location_type_code",
                      "location_code": "location_code",
                      "location_name": "location_name",
                      "country_id": "country_id",
                      "country_name": "country_name",
                      "postal_code": "postal_code"
                    },
                    "connection": {
                      "general_charges": [
                        {}
                      ],
                      "segments": [
                        {}
                      ]
                    },
                    "load": {
                      "total_quantity": "total_quantity",
                      "packages": [
                        {}
                      ]
                    },
                    "time_of_availability": "time_of_availability",
                    "latest_acceptance_date": "latest_acceptance_date",
                    "price_indicator": {
                      "rate_currency": "rate_currency",
                      "rate_type": "rate_type",
                      "unit_of_measure": "unit_of_measure",
                      "unit_rate": "unit_rate",
                      "total_charge": "total_charge",
                      "valid_from": "valid_from",
                      "valid_to": "valid_to"
                    },
                    "special_handling_codes": [
                      "special_handling_codes"
                    ],
                    "commodity_classification": [
                      {}
                    ],
                    "hash": "hash"
                  },
                  "shipment": {
                    "time_of_availability": "time_of_availability",
                    "latest_acceptance_date": "latest_acceptance_date",
                    "transport_mode": "transport_mode"
                  },
                  "response_status": {
                    "statuses": [
                      {}
                    ]
                  },
                  "synced_at": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WebcargoBookingRecord1(
            schemaVersion: 1,
            id: "_id",
            orgId: "org_id",
            taskGroupId: "task_group_id",
            awbNumber: "awb_number",
            messageHeader: WebcargoMessageHeader(
                messageId: Optional("message_id"),
                requestId: Optional("request_id")
            ),
            businessInfo: WebcargoBusinessInfo(
                serviceMethod: Optional("service_method"),
                methodReason: Optional("method_reason"),
                parties: Optional([
                    WebcargoParty(

                    )
                ])
            ),
            documentIdentifiers: [
                WebcargoDocumentIdentifier(
                    documentType: Optional("document_type"),
                    documentId: Optional("document_id"),
                    externalBookingReferenceNumber: Optional("external_booking_reference_number")
                )
            ],
            bookingRate: WebcargoBookingRate(
                referenceId: Optional("reference_id"),
                shipmentPriorityCode: Optional("shipment_priority_code"),
                product: Optional(WebcargoProduct(
                    productCode: Optional("product_code"),
                    productDescription: Optional("product_description")
                )),
                transportMode: Optional("transport_mode"),
                originLocation: Optional(WebcargoLocation(
                    locationTypeCode: Optional("location_type_code"),
                    locationCode: Optional("location_code"),
                    locationName: Optional("location_name"),
                    countryId: Optional("country_id"),
                    countryName: Optional("country_name"),
                    postalCode: Optional("postal_code")
                )),
                destinationLocation: Optional(WebcargoLocation(
                    locationTypeCode: Optional("location_type_code"),
                    locationCode: Optional("location_code"),
                    locationName: Optional("location_name"),
                    countryId: Optional("country_id"),
                    countryName: Optional("country_name"),
                    postalCode: Optional("postal_code")
                )),
                connection: Optional(WebcargoConnection(
                    generalCharges: Optional([
                        WebcargoFee(

                        )
                    ]),
                    segments: Optional([
                        WebcargoSegment(

                        )
                    ])
                )),
                load: Optional(WebcargoLoad(
                    totalQuantity: Optional("total_quantity"),
                    packages: Optional([
                        WebcargoPackage(

                        )
                    ])
                )),
                timeOfAvailability: Optional("time_of_availability"),
                latestAcceptanceDate: Optional("latest_acceptance_date"),
                priceIndicator: Optional(WebcargoPriceIndicator(
                    rateCurrency: Optional("rate_currency"),
                    rateType: Optional("rate_type"),
                    unitOfMeasure: Optional("unit_of_measure"),
                    unitRate: Optional("unit_rate"),
                    totalCharge: Optional("total_charge"),
                    validFrom: Optional("valid_from"),
                    validTo: Optional("valid_to")
                )),
                specialHandlingCodes: Optional([
                    "special_handling_codes"
                ]),
                commodityClassification: Optional([
                    WebcargoCommodityClass(

                    )
                ]),
                hash: Optional("hash")
            ),
            shipment: Optional(WebcargoShipment(
                timeOfAvailability: Optional("time_of_availability"),
                latestAcceptanceDate: Optional("latest_acceptance_date"),
                transportMode: Optional("transport_mode")
            )),
            responseStatus: Optional(WebcargoResponseStatus(
                statuses: Optional([
                    WebcargoResponseStatusEntry(

                    )
                ])
            )),
            syncedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.integrations.webcargoBookings.retrieveV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}