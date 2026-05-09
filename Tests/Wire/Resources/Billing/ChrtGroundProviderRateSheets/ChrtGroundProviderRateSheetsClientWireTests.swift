import Foundation
import Testing
import Chrt

@Suite("ChrtGroundProviderRateSheetsClient Wire Tests") struct ChrtGroundProviderRateSheetsClientWireTests {
    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "archived": true,
                  "name": "name",
                  "comments": "comments",
                  "cargo_types": [
                    "spare_parts"
                  ],
                  "vehicle_types": [
                    "sedan"
                  ],
                  "base_mileage_distance_miles": 1.1,
                  "base_mileage_rate_usd_per_instance": 1.1,
                  "additional_mileage_rate_usd_per_mile": 1.1,
                  "long_distance_surcharge_miles_before_surcharge": 1.1,
                  "long_distance_surcharge_rate_usd_per_mile": 1.1,
                  "fuel_surcharge_rate_usd_per_mile": 1.1,
                  "wait_time_before_charge_minutes": 1.1,
                  "wait_time_rate_usd_per_minute": 1.1,
                  "extra_stop_rate_usd": 1.1,
                  "attempt_rate_usd_per_instance": 1.1,
                  "pick_and_hold_rate_usd_per_instance": 1.1,
                  "dangerous_goods_rate_usd_per_instance": 1.1,
                  "after_hours_rate_usd_per_instance": 1.1,
                  "weekend_rate_usd_per_instance": 1.1,
                  "holiday_rate_usd_per_instance": 1.1,
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
        let expectedResponse = ChrtGroundProviderRateSheet1(
            schemaVersion: 1,
            archived: Optional(true),
            name: Optional("name"),
            comments: Optional("comments"),
            cargoTypes: Optional([
                .spareParts
            ]),
            vehicleTypes: Optional([
                .sedan
            ]),
            baseMileageDistanceMiles: Optional(1.1),
            baseMileageRateUsdPerInstance: Optional(1.1),
            additionalMileageRateUsdPerMile: Optional(1.1),
            longDistanceSurchargeMilesBeforeSurcharge: Optional(1.1),
            longDistanceSurchargeRateUsdPerMile: Optional(1.1),
            fuelSurchargeRateUsdPerMile: Optional(1.1),
            waitTimeBeforeChargeMinutes: Optional(1.1),
            waitTimeRateUsdPerMinute: Optional(1.1),
            extraStopRateUsd: Optional(1.1),
            attemptRateUsdPerInstance: Optional(1.1),
            pickAndHoldRateUsdPerInstance: Optional(1.1),
            dangerousGoodsRateUsdPerInstance: Optional(1.1),
            afterHoursRateUsdPerInstance: Optional(1.1),
            weekendRateUsdPerInstance: Optional(1.1),
            holidayRateUsdPerInstance: Optional(1.1),
            id: "_id",
            ownedByOrgId: "owned_by_org_id"
        )
        let response = try await client.billing.chrtGroundProviderRateSheets.getByIdV1(
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
                      "archived": true,
                      "name": "name",
                      "comments": "comments",
                      "cargo_types": [
                        "spare_parts"
                      ],
                      "vehicle_types": [
                        "sedan"
                      ],
                      "base_mileage_distance_miles": 1.1,
                      "base_mileage_rate_usd_per_instance": 1.1,
                      "additional_mileage_rate_usd_per_mile": 1.1,
                      "long_distance_surcharge_miles_before_surcharge": 1.1,
                      "long_distance_surcharge_rate_usd_per_mile": 1.1,
                      "fuel_surcharge_rate_usd_per_mile": 1.1,
                      "wait_time_before_charge_minutes": 1.1,
                      "wait_time_rate_usd_per_minute": 1.1,
                      "extra_stop_rate_usd": 1.1,
                      "attempt_rate_usd_per_instance": 1.1,
                      "pick_and_hold_rate_usd_per_instance": 1.1,
                      "dangerous_goods_rate_usd_per_instance": 1.1,
                      "after_hours_rate_usd_per_instance": 1.1,
                      "weekend_rate_usd_per_instance": 1.1,
                      "holiday_rate_usd_per_instance": 1.1,
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
        let expectedResponse = ChrtGroundProviderRateSheetListRes(
            items: [
                ChrtGroundProviderRateSheet1(
                    schemaVersion: 1,
                    archived: Optional(true),
                    name: Optional("name"),
                    comments: Optional("comments"),
                    cargoTypes: Optional([
                        .spareParts
                    ]),
                    vehicleTypes: Optional([
                        .sedan
                    ]),
                    baseMileageDistanceMiles: Optional(1.1),
                    baseMileageRateUsdPerInstance: Optional(1.1),
                    additionalMileageRateUsdPerMile: Optional(1.1),
                    longDistanceSurchargeMilesBeforeSurcharge: Optional(1.1),
                    longDistanceSurchargeRateUsdPerMile: Optional(1.1),
                    fuelSurchargeRateUsdPerMile: Optional(1.1),
                    waitTimeBeforeChargeMinutes: Optional(1.1),
                    waitTimeRateUsdPerMinute: Optional(1.1),
                    extraStopRateUsd: Optional(1.1),
                    attemptRateUsdPerInstance: Optional(1.1),
                    pickAndHoldRateUsdPerInstance: Optional(1.1),
                    dangerousGoodsRateUsdPerInstance: Optional(1.1),
                    afterHoursRateUsdPerInstance: Optional(1.1),
                    weekendRateUsdPerInstance: Optional(1.1),
                    holidayRateUsdPerInstance: Optional(1.1),
                    id: "_id",
                    ownedByOrgId: "owned_by_org_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.chrtGroundProviderRateSheets.listV1(
            includeArchived: true,
            page: 1,
            pageSize: 1,
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
        let response = try await client.billing.chrtGroundProviderRateSheets.createV1(
            request: .init(schemaVersion: 1),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
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
        let response = try await client.billing.chrtGroundProviderRateSheets.updateV1(
            id: "id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func archiveV11() async throws -> Void {
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
        let response = try await client.billing.chrtGroundProviderRateSheets.archiveV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unarchiveV11() async throws -> Void {
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
        let response = try await client.billing.chrtGroundProviderRateSheets.unarchiveV1(
            id: "id",
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
        let response = try await client.billing.chrtGroundProviderRateSheets.deleteV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}