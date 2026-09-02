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
                      "coordinator_label": "coordinator_label",
                      "executors": [
                        {
                          "task_group_id": "task_group_id"
                        }
                      ],
                      "includes_air_waybill_invoice_line_item": true,
                      "invoice_count": 1,
                      "invoice_line_item_count": 1,
                      "invoice_statuses": [
                        "draft"
                      ],
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "order_status": "draft",
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
                    coordinatorLabel: Optional("coordinator_label"),
                    executors: Optional([
                        OrderBillingExecutor1(
                            taskGroupId: "task_group_id"
                        )
                    ]),
                    includesAirWaybillInvoiceLineItem: true,
                    invoiceCount: 1,
                    invoiceLineItemCount: 1,
                    invoiceStatuses: Optional([
                        InvoiceStatusEnum1.draft
                    ]),
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    orderStatus: OrderStatusEnum1.draft,
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
            filterCoordinatorLabel: "filter_coordinator_label",
            filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}