import Foundation
import Testing
import Chrt

@Suite("StatementsClient Wire Tests") struct StatementsClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.getV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByLigIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.getByLigIdV1(
            lineItemGroupId: "line_item_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expandedRetrieveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "statement": {
                    "schema_version": 1,
                    "_id": "_id",
                    "line_item_group_ids": [
                      "line_item_group_ids"
                    ],
                    "billing_ledger_period_ids": [
                      "billing_ledger_period_ids"
                    ],
                    "order_ids": [
                      "order_ids"
                    ],
                    "order_short_ids": [
                      "order_short_ids"
                    ],
                    "order_off_chrt_reference_ids": [
                      "order_off_chrt_reference_ids"
                    ],
                    "amount": 1,
                    "units": "usd",
                    "staged_by_user_id": "staged_by_user_id",
                    "settlement_type": "stripe_connect",
                    "owned_by_org_id": "owned_by_org_id",
                    "payment_origin_org_id": "payment_origin_org_id",
                    "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                    "payment_destination_org_id": "payment_destination_org_id",
                    "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                    "payment_destination_driver_id": "payment_destination_driver_id",
                    "status": "staged",
                    "stripe_invoice_id": "stripe_invoice_id",
                    "stripe_invoice_url": "stripe_invoice_url",
                    "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                    "stripe_invoice_status": "draft",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "opened_at_timestamp": "2024-01-15T09:30:00Z",
                    "paid_at_timestamp": "2024-01-15T09:30:00Z",
                    "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                    "marked_open_by_user_id": "marked_open_by_user_id",
                    "marked_paid_by_user_id": "marked_paid_by_user_id",
                    "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                  },
                  "line_item_groups": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "task_group_id": "task_group_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "rate_sheet_id": "rate_sheet_id",
                      "agreement_line_item_ids": [
                        "agreement_line_item_ids"
                      ],
                      "agreement_amount": 1.1,
                      "amendment_line_item_ids": [
                        "amendment_line_item_ids"
                      ],
                      "amendment_amount": 1.1,
                      "pending_line_item_ids": [
                        "pending_line_item_ids"
                      ],
                      "pending_amount": 1.1,
                      "denied_line_item_ids": [
                        "denied_line_item_ids"
                      ],
                      "denied_amount": 1.1,
                      "line_item_group_s3_object_metadata_ids": [
                        "line_item_group_s3_object_metadata_ids"
                      ],
                      "statement_id": "statement_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "settlement_type": "stripe_connect",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "status": "staged",
                      "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                      "finalized_by_user_id": "finalized_by_user_id",
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ]
                    }
                  ]
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = StatementExpandedRes(
            statement: Statement1(
                schemaVersion: 1,
                id: "_id",
                lineItemGroupIds: Optional([
                    "line_item_group_ids"
                ]),
                billingLedgerPeriodIds: Optional([
                    "billing_ledger_period_ids"
                ]),
                orderIds: Optional([
                    "order_ids"
                ]),
                orderShortIds: Optional([
                    "order_short_ids"
                ]),
                orderOffChrtReferenceIds: Optional([
                    "order_off_chrt_reference_ids"
                ]),
                amount: Optional(1),
                units: Optional(.usd),
                stagedByUserId: Optional("staged_by_user_id"),
                settlementType: .stripeConnect,
                ownedByOrgId: "owned_by_org_id",
                paymentOriginOrgId: Optional("payment_origin_org_id"),
                paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                paymentDestinationOrgId: Optional("payment_destination_org_id"),
                paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
                paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                status: Optional(.staged),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                stripeInvoiceStatus: Optional(.draft),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                markedOpenByUserId: Optional("marked_open_by_user_id"),
                markedPaidByUserId: Optional("marked_paid_by_user_id"),
                markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
            ),
            lineItemGroups: [
                LineItemGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    taskGroupId: Optional("task_group_id"),
                    orderId: Optional("order_id"),
                    orderShortId: Optional("order_short_id"),
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    rateSheetId: Optional("rate_sheet_id"),
                    agreementLineItemIds: Optional([
                        "agreement_line_item_ids"
                    ]),
                    agreementAmount: Optional(1.1),
                    amendmentLineItemIds: Optional([
                        "amendment_line_item_ids"
                    ]),
                    amendmentAmount: Optional(1.1),
                    pendingLineItemIds: Optional([
                        "pending_line_item_ids"
                    ]),
                    pendingAmount: Optional(1.1),
                    deniedLineItemIds: Optional([
                        "denied_line_item_ids"
                    ]),
                    deniedAmount: Optional(1.1),
                    lineItemGroupS3ObjectMetadataIds: Optional([
                        "line_item_group_s3_object_metadata_ids"
                    ]),
                    statementId: Optional("statement_id"),
                    ownedByOrgId: "owned_by_org_id",
                    settlementType: Optional(.stripeConnect),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    status: Optional(.staged),
                    finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    finalizedByUserId: Optional("finalized_by_user_id"),
                    messages: Optional([
                        LineItemGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ])
                )
            ]
        )
        let response = try await client.billing.statements.expandedRetrieveV1(
            request: .init(statementId: "statement_id"),
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
                      "_id": "_id",
                      "line_item_group_ids": [
                        "line_item_group_ids"
                      ],
                      "billing_ledger_period_ids": [
                        "billing_ledger_period_ids"
                      ],
                      "order_ids": [
                        "order_ids"
                      ],
                      "order_short_ids": [
                        "order_short_ids"
                      ],
                      "order_off_chrt_reference_ids": [
                        "order_off_chrt_reference_ids"
                      ],
                      "amount": 1,
                      "units": "usd",
                      "staged_by_user_id": "staged_by_user_id",
                      "settlement_type": "stripe_connect",
                      "owned_by_org_id": "owned_by_org_id",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "status": "staged",
                      "stripe_invoice_id": "stripe_invoice_id",
                      "stripe_invoice_url": "stripe_invoice_url",
                      "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                      "stripe_invoice_status": "draft",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "opened_at_timestamp": "2024-01-15T09:30:00Z",
                      "paid_at_timestamp": "2024-01-15T09:30:00Z",
                      "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                      "marked_open_by_user_id": "marked_open_by_user_id",
                      "marked_paid_by_user_id": "marked_paid_by_user_id",
                      "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
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
        let expectedResponse = StatementsListRes(
            items: [
                Statement1(
                    schemaVersion: 1,
                    id: "_id",
                    lineItemGroupIds: Optional([
                        "line_item_group_ids"
                    ]),
                    billingLedgerPeriodIds: Optional([
                        "billing_ledger_period_ids"
                    ]),
                    orderIds: Optional([
                        "order_ids"
                    ]),
                    orderShortIds: Optional([
                        "order_short_ids"
                    ]),
                    orderOffChrtReferenceIds: Optional([
                        "order_off_chrt_reference_ids"
                    ]),
                    amount: Optional(1),
                    units: Optional(.usd),
                    stagedByUserId: Optional("staged_by_user_id"),
                    settlementType: .stripeConnect,
                    ownedByOrgId: "owned_by_org_id",
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    status: Optional(.staged),
                    stripeInvoiceId: Optional("stripe_invoice_id"),
                    stripeInvoiceUrl: Optional("stripe_invoice_url"),
                    stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                    stripeInvoiceStatus: Optional(.draft),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    markedOpenByUserId: Optional("marked_open_by_user_id"),
                    markedPaidByUserId: Optional("marked_paid_by_user_id"),
                    markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.statements.listV1(
            sortBy: .amount,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterSettlementType: .stripeConnect,
            filterOrderId: "filter_order_id",
            filterOrderShortId: "filter_order_short_id",
            filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
            filterPaymentOriginOrgId: "filter_payment_origin_org_id",
            filterPaymentOriginOffChrtShipperOrgId: "filter_payment_origin_off_chrt_shipper_org_id",
            filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
            filterOwnedByOrgId: "filter_owned_by_org_id",
            filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOpenedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOpenedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPaidAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPaidAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterUncollectibleAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterUncollectibleAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expandedListV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "statement": {
                        "schema_version": 1,
                        "_id": "_id",
                        "settlement_type": "stripe_connect",
                        "owned_by_org_id": "owned_by_org_id"
                      },
                      "line_item_groups": [
                        {
                          "schema_version": 1,
                          "_id": "_id",
                          "owned_by_org_id": "owned_by_org_id"
                        }
                      ],
                      "task_groups": [
                        {
                          "schema_version": 1,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "task_group_type": "chrt_ground_provider"
                        }
                      ]
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
        let expectedResponse = StatementsExpandedListRes(
            items: [
                StatementExpandedListItem(
                    statement: Statement1(
                        schemaVersion: 1,
                        id: "_id",
                        settlementType: .stripeConnect,
                        ownedByOrgId: "owned_by_org_id"
                    ),
                    lineItemGroups: [
                        LineItemGroup1(
                            schemaVersion: 1,
                            id: "_id",
                            ownedByOrgId: "owned_by_org_id"
                        )
                    ],
                    taskGroups: [
                        TaskGroup1(
                            schemaVersion: 1,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            taskGroupType: .chrtGroundProvider
                        )
                    ]
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.statements.expandedListV1(
            sortBy: .amount,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterSettlementType: .stripeConnect,
            filterOrderId: "filter_order_id",
            filterOrderShortId: "filter_order_short_id",
            filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
            filterPaymentOriginOrgId: "filter_payment_origin_org_id",
            filterPaymentOriginOffChrtShipperOrgId: "filter_payment_origin_off_chrt_shipper_org_id",
            filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
            filterOwnedByOrgId: "filter_owned_by_org_id",
            filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOpenedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOpenedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPaidAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPaidAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterUncollectibleAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterUncollectibleAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.createV1(
            request: .init(settlementType: .stripeConnect),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachLineItemGroupV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.attachLineItemGroupV1(
            statementId: "statement_id",
            lineItemGroupId: "line_item_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detachLineItemGroupV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.detachLineItemGroupV1(
            statementId: "statement_id",
            lineItemGroupId: "line_item_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachBillingLedgerPeriodV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.attachBillingLedgerPeriodV1(
            statementId: "statement_id",
            billingLedgerPeriodId: "billing_ledger_period_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detachBillingLedgerPeriodV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.detachBillingLedgerPeriodV1(
            statementId: "statement_id",
            billingLedgerPeriodId: "billing_ledger_period_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func openOffChrtV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.openOffChrtV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func markPaidOffChrtV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.markPaidOffChrtV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func markUncollectibleOffChrtV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.markUncollectibleOffChrtV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func openInvoiceV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.openInvoiceV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncInvoiceV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.syncInvoiceV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func voidInvoiceV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.voidInvoiceV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateSettlementTypeV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Statement1(
            schemaVersion: 1,
            id: "_id",
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            orderIds: Optional([
                "order_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            amount: Optional(1),
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.updateSettlementTypeV1(
            statementId: "statement_id",
            request: .init(settlementType: .stripeConnect),
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
        let response = try await client.billing.statements.deleteV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}