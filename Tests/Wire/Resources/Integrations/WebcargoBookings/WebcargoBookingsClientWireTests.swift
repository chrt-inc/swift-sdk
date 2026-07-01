import Foundation
import Testing
import Chrt

@Suite("WebcargoBookingsClient Wire Tests") struct WebcargoBookingsClientWireTests {
    @Test func retrieveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "awb_number": "awb_number",
                  "booking_rate": {
                    "commodity_classification": [
                      {}
                    ],
                    "connection": {
                      "general_charges": [
                        {}
                      ],
                      "segments": [
                        {}
                      ]
                    },
                    "destination_location": {
                      "country_id": "country_id",
                      "country_name": "country_name",
                      "location_code": "location_code",
                      "location_name": "location_name",
                      "location_type_code": "location_type_code",
                      "postal_code": "postal_code"
                    },
                    "hash": "hash",
                    "latest_acceptance_date": "latest_acceptance_date",
                    "load": {
                      "packages": [
                        {}
                      ],
                      "total_quantity": "total_quantity"
                    },
                    "origin_location": {
                      "country_id": "country_id",
                      "country_name": "country_name",
                      "location_code": "location_code",
                      "location_name": "location_name",
                      "location_type_code": "location_type_code",
                      "postal_code": "postal_code"
                    },
                    "price_indicator": {
                      "rate_currency": "rate_currency",
                      "rate_type": "rate_type",
                      "total_charge": "total_charge",
                      "unit_of_measure": "unit_of_measure",
                      "unit_rate": "unit_rate",
                      "valid_from": "valid_from",
                      "valid_to": "valid_to"
                    },
                    "product": {
                      "product_code": "product_code",
                      "product_description": "product_description"
                    },
                    "reference_id": "reference_id",
                    "shipment_priority_code": "shipment_priority_code",
                    "special_handling_codes": [
                      "special_handling_codes"
                    ],
                    "time_of_availability": "time_of_availability",
                    "transport_mode": "transport_mode"
                  },
                  "business_info": {
                    "method_reason": "method_reason",
                    "parties": [
                      {}
                    ],
                    "service_method": "service_method"
                  },
                  "document_identifiers": [
                    {
                      "document_id": "document_id",
                      "document_type": "document_type",
                      "external_booking_reference_number": "external_booking_reference_number"
                    }
                  ],
                  "message_header": {
                    "message_id": "message_id",
                    "request_id": "request_id"
                  },
                  "org_id": "org_id",
                  "response_status": {
                    "statuses": [
                      {}
                    ]
                  },
                  "schema_version": 1,
                  "shipment": {
                    "latest_acceptance_date": "latest_acceptance_date",
                    "time_of_availability": "time_of_availability",
                    "transport_mode": "transport_mode"
                  },
                  "synced_at": "2024-01-15T09:30:00Z",
                  "task_group_id": "task_group_id"
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
            id: "_id",
            awbNumber: "awb_number",
            bookingRate: WebcargoBookingRate(
                commodityClassification: Optional([
                    WebcargoCommodityClass(

                    )
                ]),
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
                destinationLocation: Optional(WebcargoLocation(
                    countryId: Optional("country_id"),
                    countryName: Optional("country_name"),
                    locationCode: Optional("location_code"),
                    locationName: Optional("location_name"),
                    locationTypeCode: Optional("location_type_code"),
                    postalCode: Optional("postal_code")
                )),
                hash: Optional("hash"),
                latestAcceptanceDate: Optional("latest_acceptance_date"),
                load: Optional(WebcargoLoad(
                    packages: Optional([
                        WebcargoPackage(

                        )
                    ]),
                    totalQuantity: Optional("total_quantity")
                )),
                originLocation: Optional(WebcargoLocation(
                    countryId: Optional("country_id"),
                    countryName: Optional("country_name"),
                    locationCode: Optional("location_code"),
                    locationName: Optional("location_name"),
                    locationTypeCode: Optional("location_type_code"),
                    postalCode: Optional("postal_code")
                )),
                priceIndicator: Optional(WebcargoPriceIndicator(
                    rateCurrency: Optional("rate_currency"),
                    rateType: Optional("rate_type"),
                    totalCharge: Optional("total_charge"),
                    unitOfMeasure: Optional("unit_of_measure"),
                    unitRate: Optional("unit_rate"),
                    validFrom: Optional("valid_from"),
                    validTo: Optional("valid_to")
                )),
                product: Optional(WebcargoProduct(
                    productCode: Optional("product_code"),
                    productDescription: Optional("product_description")
                )),
                referenceId: Optional("reference_id"),
                shipmentPriorityCode: Optional("shipment_priority_code"),
                specialHandlingCodes: Optional([
                    "special_handling_codes"
                ]),
                timeOfAvailability: Optional("time_of_availability"),
                transportMode: Optional("transport_mode")
            ),
            businessInfo: WebcargoBusinessInfo(
                methodReason: Optional("method_reason"),
                parties: Optional([
                    WebcargoParty(

                    )
                ]),
                serviceMethod: Optional("service_method")
            ),
            documentIdentifiers: [
                WebcargoDocumentIdentifier(
                    documentId: Optional("document_id"),
                    documentType: Optional("document_type"),
                    externalBookingReferenceNumber: Optional("external_booking_reference_number")
                )
            ],
            messageHeader: WebcargoMessageHeader(
                messageId: Optional("message_id"),
                requestId: Optional("request_id")
            ),
            orgId: "org_id",
            responseStatus: Optional(WebcargoResponseStatus(
                statuses: Optional([
                    WebcargoResponseStatusEntry(

                    )
                ])
            )),
            schemaVersion: 1,
            shipment: Optional(WebcargoShipment(
                latestAcceptanceDate: Optional("latest_acceptance_date"),
                timeOfAvailability: Optional("time_of_availability"),
                transportMode: Optional("transport_mode")
            )),
            syncedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            taskGroupId: "task_group_id"
        )
        let response = try await client.integrations.webcargoBookings.retrieveV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "awb_number": "awb_number",
                  "booking_rate": {
                    "commodity_classification": [
                      {}
                    ],
                    "connection": {
                      "general_charges": [
                        {}
                      ],
                      "segments": [
                        {}
                      ]
                    },
                    "destination_location": {
                      "country_id": "country_id",
                      "country_name": "country_name",
                      "location_code": "location_code",
                      "location_name": "location_name",
                      "location_type_code": "location_type_code",
                      "postal_code": "postal_code"
                    },
                    "hash": "hash",
                    "latest_acceptance_date": "latest_acceptance_date",
                    "load": {
                      "packages": [
                        {}
                      ],
                      "total_quantity": "total_quantity"
                    },
                    "origin_location": {
                      "country_id": "country_id",
                      "country_name": "country_name",
                      "location_code": "location_code",
                      "location_name": "location_name",
                      "location_type_code": "location_type_code",
                      "postal_code": "postal_code"
                    },
                    "price_indicator": {
                      "rate_currency": "rate_currency",
                      "rate_type": "rate_type",
                      "total_charge": "total_charge",
                      "unit_of_measure": "unit_of_measure",
                      "unit_rate": "unit_rate",
                      "valid_from": "valid_from",
                      "valid_to": "valid_to"
                    },
                    "product": {
                      "product_code": "product_code",
                      "product_description": "product_description"
                    },
                    "reference_id": "reference_id",
                    "shipment_priority_code": "shipment_priority_code",
                    "special_handling_codes": [
                      "special_handling_codes"
                    ],
                    "time_of_availability": "time_of_availability",
                    "transport_mode": "transport_mode"
                  },
                  "business_info": {
                    "method_reason": "method_reason",
                    "parties": [
                      {}
                    ],
                    "service_method": "service_method"
                  },
                  "document_identifiers": [
                    {
                      "document_id": "document_id",
                      "document_type": "document_type",
                      "external_booking_reference_number": "external_booking_reference_number"
                    }
                  ],
                  "message_header": {
                    "message_id": "message_id",
                    "request_id": "request_id"
                  },
                  "org_id": "org_id",
                  "response_status": {
                    "statuses": [
                      {}
                    ]
                  },
                  "schema_version": 1,
                  "shipment": {
                    "latest_acceptance_date": "latest_acceptance_date",
                    "time_of_availability": "time_of_availability",
                    "transport_mode": "transport_mode"
                  },
                  "synced_at": "2024-01-15T09:30:00Z",
                  "task_group_id": "task_group_id"
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
            id: "_id",
            awbNumber: "awb_number",
            bookingRate: WebcargoBookingRate(
                commodityClassification: Optional([
                    WebcargoCommodityClass(

                    )
                ]),
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
                destinationLocation: Optional(WebcargoLocation(
                    countryId: Optional("country_id"),
                    countryName: Optional("country_name"),
                    locationCode: Optional("location_code"),
                    locationName: Optional("location_name"),
                    locationTypeCode: Optional("location_type_code"),
                    postalCode: Optional("postal_code")
                )),
                hash: Optional("hash"),
                latestAcceptanceDate: Optional("latest_acceptance_date"),
                load: Optional(WebcargoLoad(
                    packages: Optional([
                        WebcargoPackage(

                        )
                    ]),
                    totalQuantity: Optional("total_quantity")
                )),
                originLocation: Optional(WebcargoLocation(
                    countryId: Optional("country_id"),
                    countryName: Optional("country_name"),
                    locationCode: Optional("location_code"),
                    locationName: Optional("location_name"),
                    locationTypeCode: Optional("location_type_code"),
                    postalCode: Optional("postal_code")
                )),
                priceIndicator: Optional(WebcargoPriceIndicator(
                    rateCurrency: Optional("rate_currency"),
                    rateType: Optional("rate_type"),
                    totalCharge: Optional("total_charge"),
                    unitOfMeasure: Optional("unit_of_measure"),
                    unitRate: Optional("unit_rate"),
                    validFrom: Optional("valid_from"),
                    validTo: Optional("valid_to")
                )),
                product: Optional(WebcargoProduct(
                    productCode: Optional("product_code"),
                    productDescription: Optional("product_description")
                )),
                referenceId: Optional("reference_id"),
                shipmentPriorityCode: Optional("shipment_priority_code"),
                specialHandlingCodes: Optional([
                    "special_handling_codes"
                ]),
                timeOfAvailability: Optional("time_of_availability"),
                transportMode: Optional("transport_mode")
            ),
            businessInfo: WebcargoBusinessInfo(
                methodReason: Optional("method_reason"),
                parties: Optional([
                    WebcargoParty(

                    )
                ]),
                serviceMethod: Optional("service_method")
            ),
            documentIdentifiers: [
                WebcargoDocumentIdentifier(
                    documentId: Optional("document_id"),
                    documentType: Optional("document_type"),
                    externalBookingReferenceNumber: Optional("external_booking_reference_number")
                )
            ],
            messageHeader: WebcargoMessageHeader(
                messageId: Optional("message_id"),
                requestId: Optional("request_id")
            ),
            orgId: "org_id",
            responseStatus: Optional(WebcargoResponseStatus(
                statuses: Optional([
                    WebcargoResponseStatusEntry(

                    )
                ])
            )),
            schemaVersion: 1,
            shipment: Optional(WebcargoShipment(
                latestAcceptanceDate: Optional("latest_acceptance_date"),
                timeOfAvailability: Optional("time_of_availability"),
                transportMode: Optional("transport_mode")
            )),
            syncedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            taskGroupId: "task_group_id"
        )
        let response = try await client.integrations.webcargoBookings.syncV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}