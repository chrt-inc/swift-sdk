import Foundation
import Testing
import Chrt

@Suite("RatesClient Wire Tests") struct RatesClientWireTests {
    @Test func addCounterpartiesV11() async throws -> Void {
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
        let response = try await client.billingNew.rates.addCounterpartiesV1(
            rateId: "rate_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeCounterpartiesV11() async throws -> Void {
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
        let response = try await client.billingNew.rates.removeCounterpartiesV1(
            rateId: "rate_id",
            request: .init(),
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
        let response = try await client.billingNew.rates.createV1(
            request: .init(
                currencyCode: .usd,
                schemaVersion: 1
            ),
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
        let response = try await client.billingNew.rates.deleteV1(
            rateId: "rate_id",
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
                      "_id": "_id",
                      "additional_mileage": {
                        "ends_at_total_distance_miles": 1.1,
                        "rate_per_mile": 1.1,
                        "starts_at_total_distance_miles": 1.1
                      },
                      "after_hours": {
                        "rate_per_instance": 1.1
                      },
                      "archived": true,
                      "attempt": {
                        "rate_per_instance": 1.1
                      },
                      "base_mileage": {
                        "included_distance_miles": 1.1,
                        "rate_per_instance": 1.1
                      },
                      "cargo_types": [
                        "spare_parts"
                      ],
                      "comments": "comments",
                      "counterparty_account_ids": [
                        "counterparty_account_ids"
                      ],
                      "counterparty_driver_ids": [
                        "counterparty_driver_ids"
                      ],
                      "counterparty_off_chrt_org_data_ids": [
                        "counterparty_off_chrt_org_data_ids"
                      ],
                      "counterparty_org_ids": [
                        "counterparty_org_ids"
                      ],
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "currency_code": "USD",
                      "dangerous_goods": {
                        "rate_per_instance": 1.1
                      },
                      "extra_stop": {
                        "rate_per_instance": 1.1
                      },
                      "flat_fee": {
                        "rate_per_instance": 1.1
                      },
                      "fuel_surcharge": {
                        "rate_per_mile": 1.1
                      },
                      "holiday": {
                        "rate_per_instance": 1.1
                      },
                      "long_distance_surcharge": {
                        "rate_per_mile": 1.1,
                        "starts_at_total_distance_miles": 1.1
                      },
                      "name": "name",
                      "owned_by_org_id": "owned_by_org_id",
                      "pick_and_hold": {
                        "rate_per_instance": 1.1
                      },
                      "schema_version": 1,
                      "updated_at_timestamp": "2024-01-15T09:30:00Z",
                      "vehicle_types": [
                        "sedan"
                      ],
                      "wait_time": {
                        "included_minutes": 1.1,
                        "rate_per_minute": 1.1
                      },
                      "weekend": {
                        "rate_per_instance": 1.1
                      }
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
        let expectedResponse = ChrtGroundProviderRatesListRes(
            items: [
                ChrtGroundProviderRates1(
                    id: "_id",
                    additionalMileage: Optional(AdditionalMileageRate1(
                        endsAtTotalDistanceMiles: 1.1,
                        ratePerMile: 1.1,
                        startsAtTotalDistanceMiles: 1.1
                    )),
                    afterHours: Optional(AfterHoursRate1(
                        ratePerInstance: 1.1
                    )),
                    archived: Optional(true),
                    attempt: Optional(AttemptRate1(
                        ratePerInstance: 1.1
                    )),
                    baseMileage: Optional(BaseMileageRate1(
                        includedDistanceMiles: 1.1,
                        ratePerInstance: 1.1
                    )),
                    cargoTypes: Optional([
                        .spareParts
                    ]),
                    comments: Optional("comments"),
                    counterpartyAccountIds: Optional([
                        "counterparty_account_ids"
                    ]),
                    counterpartyDriverIds: Optional([
                        "counterparty_driver_ids"
                    ]),
                    counterpartyOffChrtOrgDataIds: Optional([
                        "counterparty_off_chrt_org_data_ids"
                    ]),
                    counterpartyOrgIds: Optional([
                        "counterparty_org_ids"
                    ]),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    currencyCode: .usd,
                    dangerousGoods: Optional(DangerousGoodsRate1(
                        ratePerInstance: 1.1
                    )),
                    extraStop: Optional(ExtraStopRate1(
                        ratePerInstance: 1.1
                    )),
                    flatFee: Optional(FlatFeeRate1(
                        ratePerInstance: 1.1
                    )),
                    fuelSurcharge: Optional(FuelSurchargeRate1(
                        ratePerMile: 1.1
                    )),
                    holiday: Optional(HolidayRate1(
                        ratePerInstance: 1.1
                    )),
                    longDistanceSurcharge: Optional(LongDistanceSurchargeRate1(
                        ratePerMile: 1.1,
                        startsAtTotalDistanceMiles: 1.1
                    )),
                    name: Optional("name"),
                    ownedByOrgId: "owned_by_org_id",
                    pickAndHold: Optional(PickAndHoldRate1(
                        ratePerInstance: 1.1
                    )),
                    schemaVersion: 1,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    vehicleTypes: Optional([
                        .sedan
                    ]),
                    waitTime: Optional(WaitTimeRate1(
                        includedMinutes: 1.1,
                        ratePerMinute: 1.1
                    )),
                    weekend: Optional(WeekendRate1(
                        ratePerInstance: 1.1
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.billingNew.rates.listV1(
            search: "search",
            sortBy: .name,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterCurrencyCodes: [
                .usd
            ],
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterCounterpartyAccountId: "filter_counterparty_account_id",
            filterCounterpartyDriverId: "filter_counterparty_driver_id",
            filterCargoTypes: [
                .spareParts
            ],
            filterVehicleTypes: [
                .sedan
            ],
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterUpdatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterUpdatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
        let response = try await client.billingNew.rates.updateV1(
            rateId: "rate_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "additional_mileage": {
                    "ends_at_total_distance_miles": 1.1,
                    "rate_per_mile": 1.1,
                    "sage_item_id": "sage_item_id",
                    "starts_at_total_distance_miles": 1.1
                  },
                  "after_hours": {
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "archived": true,
                  "attempt": {
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "base_mileage": {
                    "included_distance_miles": 1.1,
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "cargo_types": [
                    "spare_parts"
                  ],
                  "comments": "comments",
                  "counterparty_account_ids": [
                    "counterparty_account_ids"
                  ],
                  "counterparty_driver_ids": [
                    "counterparty_driver_ids"
                  ],
                  "counterparty_off_chrt_org_data_ids": [
                    "counterparty_off_chrt_org_data_ids"
                  ],
                  "counterparty_org_ids": [
                    "counterparty_org_ids"
                  ],
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "currency_code": "USD",
                  "dangerous_goods": {
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "extra_stop": {
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "flat_fee": {
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "fuel_surcharge": {
                    "rate_per_mile": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "holiday": {
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "long_distance_surcharge": {
                    "rate_per_mile": 1.1,
                    "sage_item_id": "sage_item_id",
                    "starts_at_total_distance_miles": 1.1
                  },
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "pick_and_hold": {
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "schema_version": 1,
                  "updated_at_timestamp": "2024-01-15T09:30:00Z",
                  "vehicle_types": [
                    "sedan"
                  ],
                  "wait_time": {
                    "included_minutes": 1.1,
                    "rate_per_minute": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "weekend": {
                    "rate_per_instance": 1.1,
                    "sage_item_id": "sage_item_id"
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
        let expectedResponse = ChrtGroundProviderRates1(
            id: "_id",
            additionalMileage: Optional(AdditionalMileageRate1(
                endsAtTotalDistanceMiles: 1.1,
                ratePerMile: 1.1,
                sageItemId: Optional("sage_item_id"),
                startsAtTotalDistanceMiles: 1.1
            )),
            afterHours: Optional(AfterHoursRate1(
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            archived: Optional(true),
            attempt: Optional(AttemptRate1(
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            baseMileage: Optional(BaseMileageRate1(
                includedDistanceMiles: 1.1,
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            cargoTypes: Optional([
                .spareParts
            ]),
            comments: Optional("comments"),
            counterpartyAccountIds: Optional([
                "counterparty_account_ids"
            ]),
            counterpartyDriverIds: Optional([
                "counterparty_driver_ids"
            ]),
            counterpartyOffChrtOrgDataIds: Optional([
                "counterparty_off_chrt_org_data_ids"
            ]),
            counterpartyOrgIds: Optional([
                "counterparty_org_ids"
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            currencyCode: .usd,
            dangerousGoods: Optional(DangerousGoodsRate1(
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            extraStop: Optional(ExtraStopRate1(
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            flatFee: Optional(FlatFeeRate1(
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            fuelSurcharge: Optional(FuelSurchargeRate1(
                ratePerMile: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            holiday: Optional(HolidayRate1(
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            longDistanceSurcharge: Optional(LongDistanceSurchargeRate1(
                ratePerMile: 1.1,
                sageItemId: Optional("sage_item_id"),
                startsAtTotalDistanceMiles: 1.1
            )),
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            pickAndHold: Optional(PickAndHoldRate1(
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            schemaVersion: 1,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            vehicleTypes: Optional([
                .sedan
            ]),
            waitTime: Optional(WaitTimeRate1(
                includedMinutes: 1.1,
                ratePerMinute: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            weekend: Optional(WeekendRate1(
                ratePerInstance: 1.1,
                sageItemId: Optional("sage_item_id")
            ))
        )
        let response = try await client.billingNew.rates.getV1(
            rateId: "rate_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}