import Foundation
import Testing
import Chrt

@Suite("RateSheetsClient Wire Tests") struct RateSheetsClientWireTests {
    @Test func archiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "applies_to_service_lines": [
                    "on_demand"
                  ],
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "effective_ends_at_timestamp": "2024-01-15T09:30:00Z",
                  "effective_starts_at_timestamp": "2024-01-15T09:30:00Z",
                  "effective_time_zone_name": "America/New_York",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "revision": 1,
                  "rules": [
                    {
                      "charged_per": "order",
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "flat_rate": 1.1,
                      "line_item_description": "line_item_description",
                      "rule_key": "rule_key",
                      "rule_type": "after_hours"
                    }
                  ],
                  "schema_version": 1,
                  "task_group_type": "chrt_ground_provider"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheet1(
            id: "_id",
            appliesToServiceLines: Optional([
                ServiceLineEnum.onDemand
            ]),
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            effectiveEndsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            effectiveStartsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            effectiveTimeZoneName: Optional("America/New_York"),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            revision: Optional(1),
            rules: [
                RulesItem.afterHours(
                    .init(
                        chargedPer: Optional(RateSheetRuleChargedPerEnum1.order),
                        exportRefSageItemId: Optional("export_ref__sage__item_id"),
                        flatRate: 1.1,
                        lineItemDescription: "line_item_description",
                        ruleKey: Optional("rule_key"),
                        additionalProperties: [
                            "rule_type": JSONValue.string("after_hours")
                        ]
                    )
                )
            ],
            schemaVersion: 1,
            taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider
        )
        let response = try await client.billingNew.rateSheets.archiveV1(
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "applies_to_service_lines": [
                    "on_demand"
                  ],
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "effective_ends_at_timestamp": "2024-01-15T09:30:00Z",
                  "effective_starts_at_timestamp": "2024-01-15T09:30:00Z",
                  "effective_time_zone_name": "America/New_York",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "revision": 1,
                  "rules": [
                    {
                      "charged_per": "order",
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "flat_rate": 1.1,
                      "line_item_description": "line_item_description",
                      "rule_key": "rule_key",
                      "rule_type": "after_hours"
                    }
                  ],
                  "schema_version": 1,
                  "task_group_type": "chrt_ground_provider"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheet1(
            id: "_id",
            appliesToServiceLines: Optional([
                ServiceLineEnum.onDemand
            ]),
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            effectiveEndsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            effectiveStartsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            effectiveTimeZoneName: Optional("America/New_York"),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            revision: Optional(1),
            rules: [
                RulesItem.afterHours(
                    .init(
                        chargedPer: Optional(RateSheetRuleChargedPerEnum1.order),
                        exportRefSageItemId: Optional("export_ref__sage__item_id"),
                        flatRate: 1.1,
                        lineItemDescription: "line_item_description",
                        ruleKey: Optional("rule_key"),
                        additionalProperties: [
                            "rule_type": JSONValue.string("after_hours")
                        ]
                    )
                )
            ],
            schemaVersion: 1,
            taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider
        )
        let response = try await client.billingNew.rateSheets.createV1(
            request: RateSheetClientCreate1(
                currencyCode: .usd,
                invoiceType: .accountsReceivable,
                name: "name",
                rules: [
                    RulesItem.afterHours(
                        AfterHoursChargeRule1(
                            flatRate: 1.1,
                            lineItemDescription: "line_item_description"
                        )
                    )
                ],
                schemaVersion: 1,
                taskGroupType: .chrtGroundProvider
            ),
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
                  "applies_to_service_lines": [
                    "on_demand"
                  ],
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "effective_ends_at_timestamp": "2024-01-15T09:30:00Z",
                  "effective_starts_at_timestamp": "2024-01-15T09:30:00Z",
                  "effective_time_zone_name": "America/New_York",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "revision": 1,
                  "rules": [
                    {
                      "charged_per": "order",
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "flat_rate": 1.1,
                      "line_item_description": "line_item_description",
                      "rule_key": "rule_key",
                      "rule_type": "after_hours"
                    }
                  ],
                  "schema_version": 1,
                  "task_group_type": "chrt_ground_provider"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheet1(
            id: "_id",
            appliesToServiceLines: Optional([
                ServiceLineEnum.onDemand
            ]),
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            effectiveEndsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            effectiveStartsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            effectiveTimeZoneName: Optional("America/New_York"),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            revision: Optional(1),
            rules: [
                RulesItem.afterHours(
                    .init(
                        chargedPer: Optional(RateSheetRuleChargedPerEnum1.order),
                        exportRefSageItemId: Optional("export_ref__sage__item_id"),
                        flatRate: 1.1,
                        lineItemDescription: "line_item_description",
                        ruleKey: Optional("rule_key"),
                        additionalProperties: [
                            "rule_type": JSONValue.string("after_hours")
                        ]
                    )
                )
            ],
            schemaVersion: 1,
            taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider
        )
        let response = try await client.billingNew.rateSheets.getV1(
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "_id": "_id",
                    "applies_to_service_lines": [
                      "on_demand"
                    ],
                    "archived_at_timestamp": "2024-01-15T09:30:00Z",
                    "archived_by_user_id": "archived_by_user_id",
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "currency_code": "USD",
                    "effective_ends_at_timestamp": "2024-01-15T09:30:00Z",
                    "effective_starts_at_timestamp": "2024-01-15T09:30:00Z",
                    "effective_time_zone_name": "America/New_York",
                    "invoice_type": "accounts_receivable",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "name": "name",
                    "owned_by_org_id": "owned_by_org_id",
                    "revision": 1,
                    "rules": [
                      {
                        "flat_rate": 1.1,
                        "line_item_description": "line_item_description",
                        "rule_type": "after_hours"
                      }
                    ],
                    "schema_version": 1,
                    "task_group_type": "chrt_ground_provider"
                  }
                ]
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            RateSheet1(
                id: "_id",
                appliesToServiceLines: Optional([
                    ServiceLineEnum.onDemand
                ]),
                archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                archivedByUserId: Optional("archived_by_user_id"),
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: BillingCurrencyCodeEnum1.usd,
                effectiveEndsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                effectiveStartsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                effectiveTimeZoneName: Optional("America/New_York"),
                invoiceType: InvoiceTypeEnum1.accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                name: "name",
                ownedByOrgId: "owned_by_org_id",
                revision: Optional(1),
                rules: [
                    RulesItem.afterHours(
                        .init(
                            flatRate: 1.1,
                            lineItemDescription: "line_item_description",
                            additionalProperties: [
                                "rule_type": JSONValue.string("after_hours")
                            ]
                        )
                    )
                ],
                schemaVersion: 1,
                taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider
            )
        ]
        let response = try await client.billingNew.rateSheets.listV1(
            invoiceType: .accountsReceivable,
            taskGroupType: .chrtGroundProvider,
            includeArchived: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func previewV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "line_items": [
                    {
                      "billing_line_key": "billing_line_key",
                      "counterparty_driver_id": "counterparty_driver_id",
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "counterparty_org_id": "counterparty_org_id",
                      "currency_code": "USD",
                      "description": "description",
                      "invoice_type": "accounts_receivable",
                      "line_item_type": "base_rate",
                      "quantity": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "task_group_id": "task_group_id",
                      "unit": "each",
                      "unit_price": 1.1
                    }
                  ],
                  "order_id": "order_id",
                  "task_group_ids": [
                    "task_group_ids"
                  ],
                  "unpriced_reasons": [
                    {
                      "code": "no_rate_sheet",
                      "rate_sheet_id": "rate_sheet_id",
                      "relationship_type": "receivable",
                      "rule_key": "rule_key",
                      "task_group_id": "task_group_id",
                      "task_id": "task_id"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheetPreviewRes(
            lineItems: Optional([
                OrderBillingEstimateLineItem1(
                    billingLineKey: "billing_line_key",
                    counterpartyDriverId: Optional("counterparty_driver_id"),
                    counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                    counterpartyOrgId: Optional("counterparty_org_id"),
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    description: "description",
                    invoiceType: InvoiceTypeEnum1.accountsReceivable,
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    quantity: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    taskGroupId: Optional("task_group_id"),
                    unit: Optional(InvoiceLineItemUnitEnum1.each),
                    unitPrice: 1.1
                )
            ]),
            orderId: "order_id",
            taskGroupIds: Optional([
                "task_group_ids"
            ]),
            unpricedReasons: Optional([
                UnpricedReason1(
                    code: UnpricedReasonCodeEnum1.noRateSheet,
                    rateSheetId: Optional("rate_sheet_id"),
                    relationshipType: Optional(BillingRelationshipTypeEnum1.receivable),
                    ruleKey: Optional("rule_key"),
                    taskGroupId: Optional("task_group_id"),
                    taskId: Optional("task_id")
                )
            ])
        )
        let response = try await client.billingNew.rateSheets.previewV1(
            request: .init(
                orderId: "order_id",
                rateSheet: RateSheetClientCreate1(
                    currencyCode: .usd,
                    invoiceType: .accountsReceivable,
                    name: "name",
                    rules: [
                        RulesItem.afterHours(
                            AfterHoursChargeRule1(
                                flatRate: 1.1,
                                lineItemDescription: "line_item_description"
                            )
                        )
                    ],
                    schemaVersion: 1,
                    taskGroupType: .chrtGroundProvider
                )
            ),
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
                  "applies_to_service_lines": [
                    "on_demand"
                  ],
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "effective_ends_at_timestamp": "2024-01-15T09:30:00Z",
                  "effective_starts_at_timestamp": "2024-01-15T09:30:00Z",
                  "effective_time_zone_name": "America/New_York",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "revision": 1,
                  "rules": [
                    {
                      "charged_per": "order",
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "flat_rate": 1.1,
                      "line_item_description": "line_item_description",
                      "rule_key": "rule_key",
                      "rule_type": "after_hours"
                    }
                  ],
                  "schema_version": 1,
                  "task_group_type": "chrt_ground_provider"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheet1(
            id: "_id",
            appliesToServiceLines: Optional([
                ServiceLineEnum.onDemand
            ]),
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            effectiveEndsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            effectiveStartsAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            effectiveTimeZoneName: Optional("America/New_York"),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            revision: Optional(1),
            rules: [
                RulesItem.afterHours(
                    .init(
                        chargedPer: Optional(RateSheetRuleChargedPerEnum1.order),
                        exportRefSageItemId: Optional("export_ref__sage__item_id"),
                        flatRate: 1.1,
                        lineItemDescription: "line_item_description",
                        ruleKey: Optional("rule_key"),
                        additionalProperties: [
                            "rule_type": JSONValue.string("after_hours")
                        ]
                    )
                )
            ],
            schemaVersion: 1,
            taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider
        )
        let response = try await client.billingNew.rateSheets.updateV1(
            rateSheetId: "rate_sheet_id",
            request: .init(
                expectedRevision: 1,
                rateSheet: RateSheetClientCreate1(
                    currencyCode: .usd,
                    invoiceType: .accountsReceivable,
                    name: "name",
                    rules: [
                        RulesItem.afterHours(
                            AfterHoursChargeRule1(
                                flatRate: 1.1,
                                lineItemDescription: "line_item_description"
                            )
                        )
                    ],
                    schemaVersion: 1,
                    taskGroupType: .chrtGroundProvider
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func usageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "order_count": 1,
                  "rate_sheet_default_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RateSheetUsageRes(
            orderCount: 1,
            rateSheetDefaultCount: 1
        )
        let response = try await client.billingNew.rateSheets.usageV1(
            rateSheetId: "rate_sheet_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}