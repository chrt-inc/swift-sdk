import Foundation
import Testing
import Chrt

@Suite("RateSheetsClient Wire Tests") struct RateSheetsClientWireTests {
    @Test func getV11() async throws -> Void {
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
                  "service_type": "on_demand",
                  "base_mileage_distance_miles": 1.1,
                  "base_mileage_rate_usd_per_instance": 1.1,
                  "additional_mileage_rate_usd_per_mile": 1.1,
                  "long_distance_surcharge_miles_before_surcharge": 1.1,
                  "long_distance_surcharge_rate_usd_per_mile": 1.1,
                  "fuel_surcharge_rate_usd_per_mile": 1.1,
                  "wait_time_before_charge_minutes": 1.1,
                  "wait_time_rate_usd_per_minute": 1.1,
                  "extra_stop_rate_usd": 1.1,
                  "dangerous_goods_rate_usd_per_instance": 1.1,
                  "after_hours_rate_usd_per_instance": 1.1,
                  "weekend_rate_usd_per_instance": 1.1,
                  "holiday_rate_usd_per_instance": 1.1,
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_org_type": "courier",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheet1(
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
            serviceType: .onDemand,
            baseMileageDistanceMiles: Optional(1.1),
            baseMileageRateUsdPerInstance: Optional(1.1),
            additionalMileageRateUsdPerMile: Optional(1.1),
            longDistanceSurchargeMilesBeforeSurcharge: Optional(1.1),
            longDistanceSurchargeRateUsdPerMile: Optional(1.1),
            fuelSurchargeRateUsdPerMile: Optional(1.1),
            waitTimeBeforeChargeMinutes: Optional(1.1),
            waitTimeRateUsdPerMinute: Optional(1.1),
            extraStopRateUsd: Optional(1.1),
            dangerousGoodsRateUsdPerInstance: Optional(1.1),
            afterHoursRateUsdPerInstance: Optional(1.1),
            weekendRateUsdPerInstance: Optional(1.1),
            holidayRateUsdPerInstance: Optional(1.1),
            ownedByOrgId: "owned_by_org_id",
            ownedByOrgType: .courier,
            paymentVectorType: .shipperPayForwarder,
            id: "_id"
        )
        let response = try await client.billing.rateSheets.getV1(
            rateSheetId: "rate_sheet_id",
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
                  "service_type": "on_demand",
                  "base_mileage_distance_miles": 1.1,
                  "base_mileage_rate_usd_per_instance": 1.1,
                  "additional_mileage_rate_usd_per_mile": 1.1,
                  "long_distance_surcharge_miles_before_surcharge": 1.1,
                  "long_distance_surcharge_rate_usd_per_mile": 1.1,
                  "fuel_surcharge_rate_usd_per_mile": 1.1,
                  "wait_time_before_charge_minutes": 1.1,
                  "wait_time_rate_usd_per_minute": 1.1,
                  "extra_stop_rate_usd": 1.1,
                  "dangerous_goods_rate_usd_per_instance": 1.1,
                  "after_hours_rate_usd_per_instance": 1.1,
                  "weekend_rate_usd_per_instance": 1.1,
                  "holiday_rate_usd_per_instance": 1.1,
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_org_type": "courier",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheet1(
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
            serviceType: .onDemand,
            baseMileageDistanceMiles: Optional(1.1),
            baseMileageRateUsdPerInstance: Optional(1.1),
            additionalMileageRateUsdPerMile: Optional(1.1),
            longDistanceSurchargeMilesBeforeSurcharge: Optional(1.1),
            longDistanceSurchargeRateUsdPerMile: Optional(1.1),
            fuelSurchargeRateUsdPerMile: Optional(1.1),
            waitTimeBeforeChargeMinutes: Optional(1.1),
            waitTimeRateUsdPerMinute: Optional(1.1),
            extraStopRateUsd: Optional(1.1),
            dangerousGoodsRateUsdPerInstance: Optional(1.1),
            afterHoursRateUsdPerInstance: Optional(1.1),
            weekendRateUsdPerInstance: Optional(1.1),
            holidayRateUsdPerInstance: Optional(1.1),
            ownedByOrgId: "owned_by_org_id",
            ownedByOrgType: .courier,
            paymentVectorType: .shipperPayForwarder,
            id: "_id"
        )
        let response = try await client.billing.rateSheets.updateV1(
            rateSheetId: "rate_sheet_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByOrgV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "rate_sheets": [
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
                      "service_type": "on_demand",
                      "base_mileage_distance_miles": 1.1,
                      "base_mileage_rate_usd_per_instance": 1.1,
                      "additional_mileage_rate_usd_per_mile": 1.1,
                      "long_distance_surcharge_miles_before_surcharge": 1.1,
                      "long_distance_surcharge_rate_usd_per_mile": 1.1,
                      "fuel_surcharge_rate_usd_per_mile": 1.1,
                      "wait_time_before_charge_minutes": 1.1,
                      "wait_time_rate_usd_per_minute": 1.1,
                      "extra_stop_rate_usd": 1.1,
                      "dangerous_goods_rate_usd_per_instance": 1.1,
                      "after_hours_rate_usd_per_instance": 1.1,
                      "weekend_rate_usd_per_instance": 1.1,
                      "holiday_rate_usd_per_instance": 1.1,
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_org_type": "courier",
                      "payment_vector_type": "shipper_pay_forwarder",
                      "_id": "_id"
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
        let expectedResponse = RateSheetListResponse(
            rateSheets: [
                RateSheet1(
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
                    serviceType: .onDemand,
                    baseMileageDistanceMiles: Optional(1.1),
                    baseMileageRateUsdPerInstance: Optional(1.1),
                    additionalMileageRateUsdPerMile: Optional(1.1),
                    longDistanceSurchargeMilesBeforeSurcharge: Optional(1.1),
                    longDistanceSurchargeRateUsdPerMile: Optional(1.1),
                    fuelSurchargeRateUsdPerMile: Optional(1.1),
                    waitTimeBeforeChargeMinutes: Optional(1.1),
                    waitTimeRateUsdPerMinute: Optional(1.1),
                    extraStopRateUsd: Optional(1.1),
                    dangerousGoodsRateUsdPerInstance: Optional(1.1),
                    afterHoursRateUsdPerInstance: Optional(1.1),
                    weekendRateUsdPerInstance: Optional(1.1),
                    holidayRateUsdPerInstance: Optional(1.1),
                    ownedByOrgId: "owned_by_org_id",
                    ownedByOrgType: .courier,
                    paymentVectorType: .shipperPayForwarder,
                    id: "_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.rateSheets.listByOrgV1(
            sortBy: .id,
            sortOrder: .ascending,
            page: 1,
            pageSize: 1,
            filterArchived: true,
            filterPaymentVectorType: .shipperPayForwarder,
            filterServiceType: .onDemand,
            filterCargoType: .spareParts,
            filterVehicleType: .sedan,
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
        let response = try await client.billing.rateSheets.createV1(
            paymentVectorType: .shipperPayForwarder,
            request: .init(
                schemaVersion: 1,
                serviceType: .onDemand
            ),
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
        let response = try await client.billing.rateSheets.archiveV1(
            rateSheetId: "rate_sheet_id",
            archive: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateOrgDefaultForServiceTypeV11() async throws -> Void {
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
        let response = try await client.billing.rateSheets.updateOrgDefaultForServiceTypeV1(
            paymentVectorType: .shipperPayForwarder,
            serviceType: .onDemand,
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateDefaultForConnectionV11() async throws -> Void {
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
        let response = try await client.billing.rateSheets.updateDefaultForConnectionV1(
            connectionId: "connection_id",
            serviceType: .onDemand,
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateDefaultForDriverV11() async throws -> Void {
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
        let response = try await client.billing.rateSheets.updateDefaultForDriverV1(
            driverId: "driver_id",
            serviceType: .onDemand,
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateDefaultForOffChrtShipperV11() async throws -> Void {
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
        let response = try await client.billing.rateSheets.updateDefaultForOffChrtShipperV1(
            offChrtShipperOrgId: "off_chrt_shipper_org_id",
            serviceType: .onDemand,
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}