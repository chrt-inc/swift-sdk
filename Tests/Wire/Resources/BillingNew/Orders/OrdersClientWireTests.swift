import Foundation
import Testing
import Chrt

@Suite("OrdersClient Wire Tests") struct OrdersClientWireTests {
    @Test func listAwbBillingForCoordinatorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "accounts": [
                        {
                          "account_id": "account_id",
                          "task_group_id": "task_group_id"
                        }
                      ],
                      "awb_number": "awb_number",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id"
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
        let expectedResponse = OrderAwbBillingListRes(
            items: Optional([
                OrderAwbBillingListItem1(
                    accounts: Optional([
                        OrderAwbBillingAccount1(
                            accountId: "account_id",
                            taskGroupId: "task_group_id"
                        )
                    ]),
                    awbNumber: "awb_number",
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderId: "order_id",
                    orderShortId: "order_short_id"
                )
            ]),
            totalCount: 1
        )
        let response = try await client.billingNew.orders.listAwbBillingForCoordinatorOperatorsV1(
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listExpandedForCoordinatorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "accounts": [
                        {
                          "account_id": "account_id"
                        }
                      ],
                      "awb_numbers": [
                        "awb_numbers"
                      ],
                      "billing_periods": [
                        {
                          "billing_period": {
                            "_id": "_id",
                            "amount": 1.1,
                            "created_at_timestamp": "2024-01-15T09:30:00Z",
                            "created_by_user_id": "created_by_user_id",
                            "currency_code": "USD",
                            "cycle": "daily",
                            "description": "description",
                            "invoice_type": "accounts_receivable",
                            "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                            "last_edited_by_user_id": "last_edited_by_user_id",
                            "owned_by_org_id": "owned_by_org_id",
                            "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                            "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                            "schema_version": 1
                          }
                        }
                      ],
                      "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "coordinator_labels": [
                        "coordinator_labels"
                      ],
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "executors": [
                        {
                          "task_group_id": "task_group_id"
                        }
                      ],
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "includes_air_waybill_invoice_line_item": true,
                      "invoice_count": 1,
                      "invoice_line_item_count": 1,
                      "invoice_statuses": [
                        "draft"
                      ],
                      "last_delivery_task_completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "order_status": "draft",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "totals_by_currency": [
                        {
                          "accounts_payable_total_amount": 1.1,
                          "accounts_receivable_total_amount": 1.1,
                          "currency_code": "USD"
                        }
                      ]
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
        let expectedResponse = OrderBillingExpandedListRes(
            items: [
                OrderBillingExpandedListItem1(
                    accounts: Optional([
                        OrderBillingAccount1(
                            accountId: "account_id"
                        )
                    ]),
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
                    billingPeriods: Optional([
                        OrderBillingPeriod1(
                            billingPeriod: BillingPeriod1(
                                id: "_id",
                                amount: 1.1,
                                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                createdByUserId: "created_by_user_id",
                                currencyCode: BillingCurrencyCodeEnum1.usd,
                                cycle: BillingPeriodCycleEnum1.daily,
                                description: "description",
                                invoiceType: InvoiceTypeEnum1.accountsReceivable,
                                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                lastEditedByUserId: "last_edited_by_user_id",
                                ownedByOrgId: "owned_by_org_id",
                                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                schemaVersion: 1
                            )
                        )
                    ]),
                    cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    coordinatorLabels: Optional([
                        "coordinator_labels"
                    ]),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    executors: Optional([
                        OrderBillingExecutor1(
                            taskGroupId: "task_group_id"
                        )
                    ]),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    includesAirWaybillInvoiceLineItem: true,
                    invoiceCount: 1,
                    invoiceLineItemCount: 1,
                    invoiceStatuses: Optional([
                        InvoiceStatusEnum1.draft
                    ]),
                    lastDeliveryTaskCompletedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    orderStatus: OrderStatusEnum1.draft,
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    totalsByCurrency: Optional([
                        OrderBillingCurrencyTotals1(
                            accountsPayableTotalAmount: 1.1,
                            accountsReceivableTotalAmount: 1.1,
                            currencyCode: BillingCurrencyCodeEnum1.usd
                        )
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.billingNew.orders.listExpandedForCoordinatorOperatorsV1(
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterStatus: [
                .draft
            ],
            filterAwbNumber: "filter_awb_number",
            filterShipperOrgId: "filter_shipper_org_id",
            filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
            filterCoordinatorShipperAccountIds: [
                "filter_coordinator_shipper_account_ids"
            ],
            filterExecutorOrgId: "filter_executor_org_id",
            filterOffChrtExecutorOrgDataId: "filter_off_chrt_executor_org_data_id",
            filterCoordinatorLabels: [
                "filter_coordinator_labels"
            ],
            filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastDeliveryTaskCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastDeliveryTaskCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func generateRateSheetLineItemsManyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "created_invoice_line_item_count": 1,
                  "failed_order_count": 1,
                  "results": [
                    {
                      "created_invoice_line_items": [
                        {
                          "_id": "_id",
                          "created_at_timestamp": "2024-01-15T09:30:00Z",
                          "created_by_user_id": "created_by_user_id",
                          "currency_code": "USD",
                          "description": "description",
                          "invoice_type": "accounts_receivable",
                          "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                          "last_edited_by_user_id": "last_edited_by_user_id",
                          "line_item_type": "base_rate",
                          "owned_by_org_id": "owned_by_org_id",
                          "quantity": 1.1,
                          "schema_version": 1,
                          "unit_price": 1.1
                        }
                      ],
                      "error_detail": "error_detail",
                      "error_status_code": 1,
                      "order_id": "order_id",
                      "status": "generated"
                    }
                  ],
                  "skipped_order_count": 1,
                  "succeeded_order_count": 1,
                  "total_order_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderRateSheetLineItemsGenerateManyRes(
            createdInvoiceLineItemCount: 1,
            failedOrderCount: 1,
            results: Optional([
                OrderRateSheetLineItemsGenerateManyResult1(
                    createdInvoiceLineItems: Optional([
                        InvoiceLineItem1(
                            id: "_id",
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            createdByUserId: "created_by_user_id",
                            currencyCode: BillingCurrencyCodeEnum1.usd,
                            description: "description",
                            invoiceType: InvoiceTypeEnum1.accountsReceivable,
                            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            lastEditedByUserId: "last_edited_by_user_id",
                            lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                            ownedByOrgId: "owned_by_org_id",
                            quantity: 1.1,
                            schemaVersion: 1,
                            unitPrice: 1.1
                        )
                    ]),
                    errorDetail: Optional("error_detail"),
                    errorStatusCode: Optional(1),
                    orderId: "order_id",
                    status: OrderRateSheetLineItemsGenerateManyStatusEnum.generated
                )
            ]),
            skippedOrderCount: 1,
            succeededOrderCount: 1,
            totalOrderCount: 1
        )
        let response = try await client.billingNew.orders.generateRateSheetLineItemsManyV1(
            request: .init(orderIds: [
                "order_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxEstimatesV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "calculation": {
                      "currency_code": "USD",
                      "net_amounts": {
                        "key": 1.1
                      },
                      "subtotal": 1.1,
                      "tax_breakdown": [
                        {
                          "invoice_line_item_id": "invoice_line_item_id",
                          "name": "name",
                          "percentage": 1.1,
                          "tax_amount": 1.1,
                          "tax_configuration_id": "tax_configuration_id",
                          "taxable_amount": 1.1
                        }
                      ],
                      "tax_total": 1.1,
                      "total_amount": 1.1
                    },
                    "invoice": {
                      "counterparty_driver_id": "counterparty_driver_id",
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "counterparty_org_id": "counterparty_org_id",
                      "currency_code": "USD",
                      "description": "description",
                      "export_ref__sage__customer_id": "export_ref__sage__customer_id",
                      "export_ref__sage__department_id": "export_ref__sage__department_id",
                      "invoice_type": "accounts_receivable",
                      "name": "name",
                      "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                      "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                      "schema_version": 1
                    },
                    "invoice_line_items": [
                      {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "currency_code": "USD",
                        "description": "description",
                        "invoice_type": "accounts_receivable",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "last_edited_by_user_id": "last_edited_by_user_id",
                        "line_item_type": "base_rate",
                        "owned_by_org_id": "owned_by_org_id",
                        "quantity": 1.1,
                        "schema_version": 1,
                        "unit_price": 1.1
                      }
                    ],
                    "tax_configurations_by_line_item_id": {
                      "key": {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "last_edited_by_user_id": "last_edited_by_user_id",
                        "name": "name",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1
                      }
                    }
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
            InvoicePreviewRes(
                calculation: InvoiceTaxCalculation1(
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    netAmounts: Optional([
                        "key": 1.1
                    ]),
                    subtotal: 1.1,
                    taxBreakdown: Optional([
                        CalculatedInvoiceTax1(
                            invoiceLineItemId: "invoice_line_item_id",
                            name: "name",
                            percentage: 1.1,
                            taxAmount: 1.1,
                            taxConfigurationId: "tax_configuration_id",
                            taxableAmount: 1.1
                        )
                    ]),
                    taxTotal: 1.1,
                    totalAmount: 1.1
                ),
                invoice: InvoiceClientCreate1(
                    counterpartyDriverId: Optional("counterparty_driver_id"),
                    counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                    counterpartyOrgId: Optional("counterparty_org_id"),
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    description: Optional("description"),
                    exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
                    exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
                    invoiceType: InvoiceTypeEnum1.accountsReceivable,
                    name: Optional("name"),
                    periodEndAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    periodStartAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    schemaVersion: 1
                ),
                invoiceLineItems: Optional([
                    InvoiceLineItem1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        currencyCode: BillingCurrencyCodeEnum1.usd,
                        description: "description",
                        invoiceType: InvoiceTypeEnum1.accountsReceivable,
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedByUserId: "last_edited_by_user_id",
                        lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                        ownedByOrgId: "owned_by_org_id",
                        quantity: 1.1,
                        schemaVersion: 1,
                        unitPrice: 1.1
                    )
                ]),
                taxConfigurationsByLineItemId: Optional([
                    "key": Optional(TaxConfiguration1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedByUserId: "last_edited_by_user_id",
                        name: "name",
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    ))
                ])
            )
        ]
        let response = try await client.billingNew.orders.taxEstimatesV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}