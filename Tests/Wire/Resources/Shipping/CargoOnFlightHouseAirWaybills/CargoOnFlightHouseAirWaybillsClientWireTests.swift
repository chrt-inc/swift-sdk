import Foundation
import Testing
import Chrt

@Suite("CargoOnFlightHouseAirWaybillsClient Wire Tests") struct CargoOnFlightHouseAirWaybillsClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "cargo_on_flight_air_waybill_id": "cargo_on_flight_air_waybill_id",
                  "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                  "charges_declaration": {
                    "charge_code": "CA",
                    "currency_code": "currency_code",
                    "declared_value_for_carriage": 1.1,
                    "declared_value_for_customs": 1.1,
                    "declared_value_for_insurance": 1.1,
                    "payment_other_charges": "prepaid",
                    "payment_weight_valuation": "prepaid"
                  },
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "destination_iata": "destination_iata",
                  "gross_weight_kilograms": 1.1,
                  "house_air_waybill_number": "house_air_waybill_number",
                  "latest_fhl_message": {
                    "airline_response": "airline_response",
                    "cargo_on_flight_integration": "cargoai",
                    "responded_at_timestamp": "2024-01-15T09:30:00Z",
                    "responded_by_user_id": "responded_by_user_id",
                    "response_provenance": "airline",
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
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoOnFlightHouseAirWaybill1(
            id: "_id",
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            chargesDeclaration: Optional(CargoOnFlightAirWaybillChargesDeclaration1(
                chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                currencyCode: "currency_code",
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                paymentOtherCharges: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid),
                paymentWeightValuation: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid)
            )),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            destinationIata: "destination_iata",
            grossWeightKilograms: 1.1,
            houseAirWaybillNumber: "house_air_waybill_number",
            latestFhlMessage: Optional(CargoOnFlightHouseAirWaybillFhlMessage1(
                airlineResponse: Optional("airline_response"),
                cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                respondedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                respondedByUserId: Optional("responded_by_user_id"),
                responseProvenance: Optional(CargoOnFlightAirWaybillMessageResponseProvenanceEnum1.airline),
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
        let response = try await client.shipping.cargoOnFlightHouseAirWaybills.createV1(
            request: .init(
                cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
                destinationIata: "destination_iata",
                grossWeightKilograms: 1.1,
                houseAirWaybillNumber: "house_air_waybill_number",
                manifestDescriptionOfGoods: "manifest_description_of_goods",
                numberOfPieces: 1,
                originIata: "origin_iata",
                schemaVersion: 1
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
        let response = try await client.shipping.cargoOnFlightHouseAirWaybills.deleteV1(
            cargoOnFlightHouseAirWaybillId: "cargo_on_flight_house_air_waybill_id",
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
        let expectedResponse = CargoOnFlightHouseAirWaybillListRes(
            items: [
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
            ],
            totalCount: 1
        )
        let response = try await client.shipping.cargoOnFlightHouseAirWaybills.listV1(
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
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
                  "cargo_on_flight_air_waybill_id": "cargo_on_flight_air_waybill_id",
                  "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                  "charges_declaration": {
                    "charge_code": "CA",
                    "currency_code": "currency_code",
                    "declared_value_for_carriage": 1.1,
                    "declared_value_for_customs": 1.1,
                    "declared_value_for_insurance": 1.1,
                    "payment_other_charges": "prepaid",
                    "payment_weight_valuation": "prepaid"
                  },
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "destination_iata": "destination_iata",
                  "gross_weight_kilograms": 1.1,
                  "house_air_waybill_number": "house_air_waybill_number",
                  "latest_fhl_message": {
                    "airline_response": "airline_response",
                    "cargo_on_flight_integration": "cargoai",
                    "responded_at_timestamp": "2024-01-15T09:30:00Z",
                    "responded_by_user_id": "responded_by_user_id",
                    "response_provenance": "airline",
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
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoOnFlightHouseAirWaybill1(
            id: "_id",
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            chargesDeclaration: Optional(CargoOnFlightAirWaybillChargesDeclaration1(
                chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                currencyCode: "currency_code",
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                paymentOtherCharges: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid),
                paymentWeightValuation: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid)
            )),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            destinationIata: "destination_iata",
            grossWeightKilograms: 1.1,
            houseAirWaybillNumber: "house_air_waybill_number",
            latestFhlMessage: Optional(CargoOnFlightHouseAirWaybillFhlMessage1(
                airlineResponse: Optional("airline_response"),
                cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                respondedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                respondedByUserId: Optional("responded_by_user_id"),
                responseProvenance: Optional(CargoOnFlightAirWaybillMessageResponseProvenanceEnum1.airline),
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
        let response = try await client.shipping.cargoOnFlightHouseAirWaybills.updateV1(
            cargoOnFlightHouseAirWaybillId: "cargo_on_flight_house_air_waybill_id",
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
                  "cargo_on_flight_air_waybill_id": "cargo_on_flight_air_waybill_id",
                  "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                  "charges_declaration": {
                    "charge_code": "CA",
                    "currency_code": "currency_code",
                    "declared_value_for_carriage": 1.1,
                    "declared_value_for_customs": 1.1,
                    "declared_value_for_insurance": 1.1,
                    "payment_other_charges": "prepaid",
                    "payment_weight_valuation": "prepaid"
                  },
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "destination_iata": "destination_iata",
                  "gross_weight_kilograms": 1.1,
                  "house_air_waybill_number": "house_air_waybill_number",
                  "latest_fhl_message": {
                    "airline_response": "airline_response",
                    "cargo_on_flight_integration": "cargoai",
                    "responded_at_timestamp": "2024-01-15T09:30:00Z",
                    "responded_by_user_id": "responded_by_user_id",
                    "response_provenance": "airline",
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
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoOnFlightHouseAirWaybill1(
            id: "_id",
            cargoOnFlightAirWaybillId: "cargo_on_flight_air_waybill_id",
            cargoOnFlightBookingId: "cargo_on_flight_booking_id",
            chargesDeclaration: Optional(CargoOnFlightAirWaybillChargesDeclaration1(
                chargeCode: CargoOnFlightAirWaybillChargeCodeEnum1.ca,
                currencyCode: "currency_code",
                declaredValueForCarriage: Optional(1.1),
                declaredValueForCustoms: Optional(1.1),
                declaredValueForInsurance: Optional(1.1),
                paymentOtherCharges: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid),
                paymentWeightValuation: Optional(CargoOnFlightAirWaybillPaymentConditionEnum1.prepaid)
            )),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: Optional("created_by_user_id"),
            destinationIata: "destination_iata",
            grossWeightKilograms: 1.1,
            houseAirWaybillNumber: "house_air_waybill_number",
            latestFhlMessage: Optional(CargoOnFlightHouseAirWaybillFhlMessage1(
                airlineResponse: Optional("airline_response"),
                cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1.cargoai,
                respondedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                respondedByUserId: Optional("responded_by_user_id"),
                responseProvenance: Optional(CargoOnFlightAirWaybillMessageResponseProvenanceEnum1.airline),
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
        let response = try await client.shipping.cargoOnFlightHouseAirWaybills.getV1(
            cargoOnFlightHouseAirWaybillId: "cargo_on_flight_house_air_waybill_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}