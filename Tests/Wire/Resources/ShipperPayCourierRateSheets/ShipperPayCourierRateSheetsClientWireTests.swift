import Foundation
import Testing
import Chrt

@Suite("ShipperPayCourierRateSheetsClient Wire Tests") struct ShipperPayCourierRateSheetsClientWireTests {
    @Test func listByCourierOrgIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "name": "name",
                    "cargo_types": [
                      "spare_parts"
                    ],
                    "vehicle_types": [
                      "sedan"
                    ],
                    "route_types": [
                      "routed"
                    ],
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                    "comments": "comments",
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
                    "after_hours": 1.1,
                    "weekend": 1.1,
                    "holiday": 1.1,
                    "courier_org_id": "courier_org_id",
                    "_id": "_id"
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
            ShipperPayCourierRateSheet1(
                schemaVersion: 1,
                name: Optional("name"),
                cargoTypes: Optional([
                    .spareParts
                ]),
                vehicleTypes: Optional([
                    .sedan
                ]),
                routeTypes: Optional([
                    .routed
                ]),
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                comments: Optional("comments"),
                baseMileageDistanceMiles: 1.1,
                baseMileageRateUsdPerInstance: 1.1,
                additionalMileageRateUsdPerMile: 1.1,
                longDistanceSurchargeMilesBeforeSurcharge: 1.1,
                longDistanceSurchargeRateUsdPerMile: 1.1,
                fuelSurchargeRateUsdPerMile: 1.1,
                waitTimeBeforeChargeMinutes: 1.1,
                waitTimeRateUsdPerMinute: 1.1,
                extraStopRateUsd: 1.1,
                dangerousGoodsRateUsdPerInstance: 1.1,
                afterHours: 1.1,
                weekend: 1.1,
                holiday: 1.1,
                courierOrgId: "courier_org_id",
                id: "_id"
            )
        ]
        let response = try await client.shipperPayCourierRateSheets.listByCourierOrgIdV1()
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.shipperPayCourierRateSheets.createV1(request: .init(
            schemaVersion: 1,
            baseMileageDistanceMiles: 1.1,
            baseMileageRateUsdPerInstance: 1.1,
            additionalMileageRateUsdPerMile: 1.1,
            longDistanceSurchargeMilesBeforeSurcharge: 1.1,
            longDistanceSurchargeRateUsdPerMile: 1.1,
            fuelSurchargeRateUsdPerMile: 1.1,
            waitTimeBeforeChargeMinutes: 1.1,
            waitTimeRateUsdPerMinute: 1.1,
            extraStopRateUsd: 1.1,
            dangerousGoodsRateUsdPerInstance: 1.1,
            afterHours: 1.1,
            weekend: 1.1,
            holiday: 1.1
        ))
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "cargo_types": [
                    "spare_parts"
                  ],
                  "vehicle_types": [
                    "sedan"
                  ],
                  "route_types": [
                    "routed"
                  ],
                  "shipper_org_id": "shipper_org_id",
                  "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                  "comments": "comments",
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
                  "after_hours": 1.1,
                  "weekend": 1.1,
                  "holiday": 1.1,
                  "courier_org_id": "courier_org_id",
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
        let expectedResponse = ShipperPayCourierRateSheet1(
            schemaVersion: 1,
            name: Optional("name"),
            cargoTypes: Optional([
                .spareParts
            ]),
            vehicleTypes: Optional([
                .sedan
            ]),
            routeTypes: Optional([
                .routed
            ]),
            shipperOrgId: Optional("shipper_org_id"),
            offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
            comments: Optional("comments"),
            baseMileageDistanceMiles: 1.1,
            baseMileageRateUsdPerInstance: 1.1,
            additionalMileageRateUsdPerMile: 1.1,
            longDistanceSurchargeMilesBeforeSurcharge: 1.1,
            longDistanceSurchargeRateUsdPerMile: 1.1,
            fuelSurchargeRateUsdPerMile: 1.1,
            waitTimeBeforeChargeMinutes: 1.1,
            waitTimeRateUsdPerMinute: 1.1,
            extraStopRateUsd: 1.1,
            dangerousGoodsRateUsdPerInstance: 1.1,
            afterHours: 1.1,
            weekend: 1.1,
            holiday: 1.1,
            courierOrgId: "courier_org_id",
            id: "_id"
        )
        let response = try await client.shipperPayCourierRateSheets.getV1(id: "id")
        try #require(response == expectedResponse)
    }

    @Test func deleteByIdV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.shipperPayCourierRateSheets.deleteByIdV1(id: "id")
        try #require(response == expectedResponse)
    }

    @Test func updateByIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "cargo_types": [
                    "spare_parts"
                  ],
                  "vehicle_types": [
                    "sedan"
                  ],
                  "route_types": [
                    "routed"
                  ],
                  "shipper_org_id": "shipper_org_id",
                  "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                  "comments": "comments",
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
                  "after_hours": 1.1,
                  "weekend": 1.1,
                  "holiday": 1.1,
                  "courier_org_id": "courier_org_id",
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
        let expectedResponse = ShipperPayCourierRateSheet1(
            schemaVersion: 1,
            name: Optional("name"),
            cargoTypes: Optional([
                .spareParts
            ]),
            vehicleTypes: Optional([
                .sedan
            ]),
            routeTypes: Optional([
                .routed
            ]),
            shipperOrgId: Optional("shipper_org_id"),
            offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
            comments: Optional("comments"),
            baseMileageDistanceMiles: 1.1,
            baseMileageRateUsdPerInstance: 1.1,
            additionalMileageRateUsdPerMile: 1.1,
            longDistanceSurchargeMilesBeforeSurcharge: 1.1,
            longDistanceSurchargeRateUsdPerMile: 1.1,
            fuelSurchargeRateUsdPerMile: 1.1,
            waitTimeBeforeChargeMinutes: 1.1,
            waitTimeRateUsdPerMinute: 1.1,
            extraStopRateUsd: 1.1,
            dangerousGoodsRateUsdPerInstance: 1.1,
            afterHours: 1.1,
            weekend: 1.1,
            holiday: 1.1,
            courierOrgId: "courier_org_id",
            id: "_id"
        )
        let response = try await client.shipperPayCourierRateSheets.updateByIdV1(
            id: "id",
            request: .init()
        )
        try #require(response == expectedResponse)
    }
}