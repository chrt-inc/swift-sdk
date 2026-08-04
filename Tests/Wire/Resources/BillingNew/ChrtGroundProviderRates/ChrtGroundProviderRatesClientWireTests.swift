import Foundation
import Testing
import Chrt

@Suite("ChrtGroundProviderRatesClient Wire Tests") struct ChrtGroundProviderRatesClientWireTests {
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
        let response = try await client.billingNew.chrtGroundProviderRates.createV1(
            request: .init(
                currencyCode: .usd,
                invoiceType: .accountsReceivable,
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
        let response = try await client.billingNew.chrtGroundProviderRates.deleteV1(
            rateId: "rate_id",
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
                  "counterparty_driver_ids": [
                    "counterparty_driver_ids"
                  ],
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
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
                  "from_payables": {
                    "combine": true,
                    "margin": 1.1,
                    "markup": 1.1,
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
                  "invoice_type": "accounts_receivable",
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
                  "service_line": "on_demand",
                  "shipper_account_id": "shipper_account_id",
                  "tax_1": {
                    "name": "name",
                    "note": "note",
                    "percentage": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "tax_2": {
                    "name": "name",
                    "note": "note",
                    "percentage": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
                  "tax_3": {
                    "name": "name",
                    "note": "note",
                    "percentage": 1.1,
                    "sage_item_id": "sage_item_id"
                  },
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
            counterpartyDriverIds: Optional([
                "counterparty_driver_ids"
            ]),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
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
            fromPayables: Optional(FromPayables1(
                combine: Optional(true),
                margin: Optional(1.1),
                markup: Optional(1.1),
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
            invoiceType: .accountsReceivable,
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
            serviceLine: Optional(.onDemand),
            shipperAccountId: Optional("shipper_account_id"),
            tax1: Optional(TaxRate1(
                name: "name",
                note: Optional("note"),
                percentage: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            tax2: Optional(TaxRate1(
                name: "name",
                note: Optional("note"),
                percentage: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
            tax3: Optional(TaxRate1(
                name: "name",
                note: Optional("note"),
                percentage: 1.1,
                sageItemId: Optional("sage_item_id")
            )),
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
        let response = try await client.billingNew.chrtGroundProviderRates.getV1(
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
                      "counterparty_driver_ids": [
                        "counterparty_driver_ids"
                      ],
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "counterparty_org_id": "counterparty_org_id",
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
                      "invoice_type": "accounts_receivable",
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
                      "service_line": "on_demand",
                      "shipper_account_id": "shipper_account_id",
                      "tax_1": {
                        "name": "name",
                        "percentage": 1.1
                      },
                      "tax_2": {
                        "name": "name",
                        "percentage": 1.1
                      },
                      "tax_3": {
                        "name": "name",
                        "percentage": 1.1
                      },
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
                    counterpartyDriverIds: Optional([
                        "counterparty_driver_ids"
                    ]),
                    counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                    counterpartyOrgId: Optional("counterparty_org_id"),
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
                    invoiceType: .accountsReceivable,
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
                    serviceLine: Optional(.onDemand),
                    shipperAccountId: Optional("shipper_account_id"),
                    tax1: Optional(TaxRate1(
                        name: "name",
                        percentage: 1.1
                    )),
                    tax2: Optional(TaxRate1(
                        name: "name",
                        percentage: 1.1
                    )),
                    tax3: Optional(TaxRate1(
                        name: "name",
                        percentage: 1.1
                    )),
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
        let response = try await client.billingNew.chrtGroundProviderRates.listV1(
            search: "search",
            sortBy: .name,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterServiceLine: [
                .onDemand
            ],
            filterInvoiceTypes: [
                .accountsReceivable
            ],
            filterCurrencyCodes: [
                .usd
            ],
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterShipperAccountId: "filter_shipper_account_id",
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

    @Test func resolveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "accounts_payable_rate_sheets": [
                      {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "currency_code": "USD",
                        "invoice_type": "accounts_receivable",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1,
                        "updated_at_timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "accounts_receivable_rate_sheets": [
                      {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "currency_code": "USD",
                        "invoice_type": "accounts_receivable",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1,
                        "updated_at_timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "task_group": {
                      "_id": "_id",
                      "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "coordinator_org_id": "coordinator_org_id",
                      "coordinator_setup_notes": "coordinator_setup_notes",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "driver_id": "driver_id",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "executor_org_id": "executor_org_id",
                      "flight_leg_ids": [
                        "flight_leg_ids"
                      ],
                      "flight_setup_notes": "flight_setup_notes",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "messages": [
                        {
                          "message": "message",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z",
                          "user_id": "user_id"
                        }
                      ],
                      "mileage_estimated": 1.1,
                      "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                      "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                      "order_id": "order_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "order_short_id": "order_short_id",
                      "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id",
                      "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                      "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                      "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                      "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                      "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                      "schema_version": 1,
                      "shipper_org_id": "shipper_org_id",
                      "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                      "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                      "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "draft",
                      "task_group_s3_object_metadata_ids": [
                        "task_group_s3_object_metadata_ids"
                      ],
                      "task_group_type": "chrt_ground_provider",
                      "task_ids": [
                        "task_ids"
                      ],
                      "vehicle_type": "sedan",
                      "wait_time_total_minutes": 1.1
                    }
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
            ResolvedTaskGroupChrtGroundProviderRates1(
                accountsPayableRateSheets: Optional([
                    ChrtGroundProviderRates1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        currencyCode: .usd,
                        invoiceType: .accountsReceivable,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1,
                        updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                accountsReceivableRateSheets: Optional([
                    ChrtGroundProviderRates1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        currencyCode: .usd,
                        invoiceType: .accountsReceivable,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1,
                        updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                taskGroup: TaskGroup1(
                    id: "_id",
                    cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    coordinatorSetupNotes: Optional("coordinator_setup_notes"),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: Optional("created_by_user_id"),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    driverId: Optional("driver_id"),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    executorOrgId: Optional("executor_org_id"),
                    flightLegIds: Optional([
                        "flight_leg_ids"
                    ]),
                    flightSetupNotes: Optional("flight_setup_notes"),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    messages: Optional([
                        TaskGroupMessage1(
                            message: "message",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            userId: "user_id"
                        )
                    ]),
                    mileageEstimated: Optional(1.1),
                    offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                    offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                    orderId: "order_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    orderShortId: "order_short_id",
                    providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id"),
                    providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                    providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                    providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                    providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                    providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                    schemaVersion: 1,
                    shipperOrgId: Optional("shipper_org_id"),
                    shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                    shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                    shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(.draft),
                    taskGroupS3ObjectMetadataIds: Optional([
                        "task_group_s3_object_metadata_ids"
                    ]),
                    taskGroupType: .chrtGroundProvider,
                    taskIds: Optional([
                        "task_ids"
                    ]),
                    vehicleType: Optional(.sedan),
                    waitTimeTotalMinutes: Optional(1.1)
                )
            )
        ]
        let response = try await client.billingNew.chrtGroundProviderRates.resolveV1(
            request: .init(orderId: "order_id"),
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
        let response = try await client.billingNew.chrtGroundProviderRates.updateV1(
            rateId: "rate_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}