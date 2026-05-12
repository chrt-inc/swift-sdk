import Foundation
import Testing
import Chrt

@Suite("RateSheetMappingsClient Wire Tests") struct RateSheetMappingsClientWireTests {
    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "counterparty_org_id": "counterparty_org_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_provider_org_id": "counterparty_off_chrt_provider_org_id",
                  "counterparty_off_chrt_shipper_org_id": "counterparty_off_chrt_shipper_org_id",
                  "chrt_ground_provider_rate_sheet_ids": [
                    "chrt_ground_provider_rate_sheet_ids"
                  ],
                  "cargo_on_flight_rate_sheet_ids": [
                    "cargo_on_flight_rate_sheet_ids"
                  ],
                  "onboard_courier_rate_sheet_ids": [
                    "onboard_courier_rate_sheet_ids"
                  ],
                  "_id": "_id",
                  "owned_by_org_id": "owned_by_org_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheetMapping1(
            schemaVersion: 1,
            counterpartyOrgId: Optional("counterparty_org_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtProviderOrgId: Optional("counterparty_off_chrt_provider_org_id"),
            counterpartyOffChrtShipperOrgId: Optional("counterparty_off_chrt_shipper_org_id"),
            chrtGroundProviderRateSheetIds: Optional([
                "chrt_ground_provider_rate_sheet_ids"
            ]),
            cargoOnFlightRateSheetIds: Optional([
                "cargo_on_flight_rate_sheet_ids"
            ]),
            onboardCourierRateSheetIds: Optional([
                "onboard_courier_rate_sheet_ids"
            ]),
            id: "_id",
            ownedByOrgId: "owned_by_org_id"
        )
        let response = try await client.billing.rateSheetMappings.getByIdV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "counterparty_org_id": "counterparty_org_id",
                      "counterparty_driver_id": "counterparty_driver_id",
                      "counterparty_off_chrt_provider_org_id": "counterparty_off_chrt_provider_org_id",
                      "counterparty_off_chrt_shipper_org_id": "counterparty_off_chrt_shipper_org_id",
                      "chrt_ground_provider_rate_sheet_ids": [
                        "chrt_ground_provider_rate_sheet_ids"
                      ],
                      "cargo_on_flight_rate_sheet_ids": [
                        "cargo_on_flight_rate_sheet_ids"
                      ],
                      "onboard_courier_rate_sheet_ids": [
                        "onboard_courier_rate_sheet_ids"
                      ],
                      "_id": "_id",
                      "owned_by_org_id": "owned_by_org_id"
                    }
                  ],
                  "total_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheetMappingListRes(
            items: [
                RateSheetMapping1(
                    schemaVersion: 1,
                    counterpartyOrgId: Optional("counterparty_org_id"),
                    counterpartyDriverId: Optional("counterparty_driver_id"),
                    counterpartyOffChrtProviderOrgId: Optional("counterparty_off_chrt_provider_org_id"),
                    counterpartyOffChrtShipperOrgId: Optional("counterparty_off_chrt_shipper_org_id"),
                    chrtGroundProviderRateSheetIds: Optional([
                        "chrt_ground_provider_rate_sheet_ids"
                    ]),
                    cargoOnFlightRateSheetIds: Optional([
                        "cargo_on_flight_rate_sheet_ids"
                    ]),
                    onboardCourierRateSheetIds: Optional([
                        "onboard_courier_rate_sheet_ids"
                    ]),
                    id: "_id",
                    ownedByOrgId: "owned_by_org_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.rateSheetMappings.listV1(
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listRateSheetIdsByCounterpartyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  "string"
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
            "string"
        ]
        let response = try await client.billing.rateSheetMappings.listRateSheetIdsByCounterpartyV1(
            tgType: .chrtGroundProvider,
            counterpartyOrgId: "counterparty_org_id",
            counterpartyDriverId: "counterparty_driver_id",
            counterpartyOffChrtProviderOrgId: "counterparty_off_chrt_provider_org_id",
            counterpartyOffChrtShipperOrgId: "counterparty_off_chrt_shipper_org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.billing.rateSheetMappings.createV1(
            request: .init(schemaVersion: 1),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.billing.rateSheetMappings.deleteV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func appendRateSheetV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.billing.rateSheetMappings.appendRateSheetV1(
            id: "id",
            tgType: .chrtGroundProvider,
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeRateSheetV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.billing.rateSheetMappings.removeRateSheetV1(
            id: "id",
            tgType: .chrtGroundProvider,
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setDefaultRateSheetV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                true
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.billing.rateSheetMappings.setDefaultRateSheetV1(
            id: "id",
            tgType: .chrtGroundProvider,
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}