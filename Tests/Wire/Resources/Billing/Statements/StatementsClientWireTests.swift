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
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "voided_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_voided_by_user_id": "marked_voided_by_user_id",
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
            amount: 1,
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedVoidedByUserId: Optional("marked_voided_by_user_id"),
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
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "voided_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_voided_by_user_id": "marked_voided_by_user_id",
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
            amount: 1,
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedVoidedByUserId: Optional("marked_voided_by_user_id"),
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
                    "amount": 1,
                    "units": "usd",
                    "staged_by_user_id": "staged_by_user_id",
                    "settlement_type": "stripe_connect",
                    "owned_by_org_id": "owned_by_org_id",
                    "payment_vector_type": "shipper_pay_forwarder",
                    "payment_origin_org_id": "payment_origin_org_id",
                    "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                    "payment_destination_org_id": "payment_destination_org_id",
                    "payment_destination_driver_id": "payment_destination_driver_id",
                    "status": "staged",
                    "stripe_invoice_id": "stripe_invoice_id",
                    "stripe_invoice_url": "stripe_invoice_url",
                    "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                    "stripe_invoice_status": "draft",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "opened_at_timestamp": "2024-01-15T09:30:00Z",
                    "paid_at_timestamp": "2024-01-15T09:30:00Z",
                    "voided_at_timestamp": "2024-01-15T09:30:00Z",
                    "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                    "marked_open_by_user_id": "marked_open_by_user_id",
                    "marked_paid_by_user_id": "marked_paid_by_user_id",
                    "marked_voided_by_user_id": "marked_voided_by_user_id",
                    "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                  },
                  "line_item_groups": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "task_group_id": "task_group_id",
                      "rate_sheet_id": "rate_sheet_id",
                      "line_items": [
                        {
                          "item": "base_rate",
                          "quantity": 1.1,
                          "rate": 1.1,
                          "amount": 1.1
                        }
                      ],
                      "line_item_group_s3_object_metadata_ids": [
                        "line_item_group_s3_object_metadata_ids"
                      ],
                      "statement_id": "statement_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "payment_vector_type": "shipper_pay_forwarder",
                      "settlement_type": "stripe_connect",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "status": "staged",
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
                amount: 1,
                units: Optional(.usd),
                stagedByUserId: Optional("staged_by_user_id"),
                settlementType: .stripeConnect,
                ownedByOrgId: "owned_by_org_id",
                paymentVectorType: .shipperPayForwarder,
                paymentOriginOrgId: Optional("payment_origin_org_id"),
                paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                paymentDestinationOrgId: Optional("payment_destination_org_id"),
                paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                status: Optional(.staged),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                stripeInvoiceStatus: Optional(.draft),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                markedOpenByUserId: Optional("marked_open_by_user_id"),
                markedPaidByUserId: Optional("marked_paid_by_user_id"),
                markedVoidedByUserId: Optional("marked_voided_by_user_id"),
                markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
            ),
            lineItemGroups: [
                LineItemGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    taskGroupId: Optional("task_group_id"),
                    rateSheetId: Optional("rate_sheet_id"),
                    lineItems: [
                        LineItem1(
                            item: .baseRate,
                            quantity: 1.1,
                            rate: 1.1,
                            amount: 1.1
                        )
                    ],
                    lineItemGroupS3ObjectMetadataIds: Optional([
                        "line_item_group_s3_object_metadata_ids"
                    ]),
                    statementId: Optional("statement_id"),
                    ownedByOrgId: "owned_by_org_id",
                    paymentVectorType: .shipperPayForwarder,
                    settlementType: .stripeConnect,
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    status: Optional(.staged),
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
                  "statements": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "line_item_group_ids": [
                        "line_item_group_ids"
                      ],
                      "amount": 1,
                      "units": "usd",
                      "staged_by_user_id": "staged_by_user_id",
                      "settlement_type": "stripe_connect",
                      "owned_by_org_id": "owned_by_org_id",
                      "payment_vector_type": "shipper_pay_forwarder",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "status": "staged",
                      "stripe_invoice_id": "stripe_invoice_id",
                      "stripe_invoice_url": "stripe_invoice_url",
                      "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                      "stripe_invoice_status": "draft",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "opened_at_timestamp": "2024-01-15T09:30:00Z",
                      "paid_at_timestamp": "2024-01-15T09:30:00Z",
                      "voided_at_timestamp": "2024-01-15T09:30:00Z",
                      "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                      "marked_open_by_user_id": "marked_open_by_user_id",
                      "marked_paid_by_user_id": "marked_paid_by_user_id",
                      "marked_voided_by_user_id": "marked_voided_by_user_id",
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
            statements: [
                Statement1(
                    schemaVersion: 1,
                    id: "_id",
                    lineItemGroupIds: Optional([
                        "line_item_group_ids"
                    ]),
                    amount: 1,
                    units: Optional(.usd),
                    stagedByUserId: Optional("staged_by_user_id"),
                    settlementType: .stripeConnect,
                    ownedByOrgId: "owned_by_org_id",
                    paymentVectorType: .shipperPayForwarder,
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    status: Optional(.staged),
                    stripeInvoiceId: Optional("stripe_invoice_id"),
                    stripeInvoiceUrl: Optional("stripe_invoice_url"),
                    stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                    stripeInvoiceStatus: Optional(.draft),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    markedOpenByUserId: Optional("marked_open_by_user_id"),
                    markedPaidByUserId: Optional("marked_paid_by_user_id"),
                    markedVoidedByUserId: Optional("marked_voided_by_user_id"),
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
            filterPaymentOriginOrgId: "filter_payment_origin_org_id",
            filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
            filterOwnedByOrgId: "filter_owned_by_org_id",
            filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOpenedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOpenedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPaidAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPaidAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterVoidedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterVoidedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "voided_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_voided_by_user_id": "marked_voided_by_user_id",
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
            amount: 1,
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedVoidedByUserId: Optional("marked_voided_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.createV1(
            request: .init(
                paymentVectorType: .shipperPayForwarder,
                settlementType: .stripeConnect
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
        let response = try await client.billing.statements.deleteV1(
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
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "voided_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_voided_by_user_id": "marked_voided_by_user_id",
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
            amount: 1,
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedVoidedByUserId: Optional("marked_voided_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.updateSettlementTypeV1(
            statementId: "statement_id",
            request: .init(settlementType: .stripeConnect),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateOffChrtSettlementStateV11() async throws -> Void {
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
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "voided_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_voided_by_user_id": "marked_voided_by_user_id",
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
            amount: 1,
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedVoidedByUserId: Optional("marked_voided_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.updateOffChrtSettlementStateV1(
            statementId: "statement_id",
            request: .init(newStatus: .staged),
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
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "voided_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_voided_by_user_id": "marked_voided_by_user_id",
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
            amount: 1,
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedVoidedByUserId: Optional("marked_voided_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.openInvoiceV1(
            statementId: "statement_id",
            request: .init(),
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
                  "statement": {
                    "schema_version": 1,
                    "_id": "_id",
                    "line_item_group_ids": [
                      "line_item_group_ids"
                    ],
                    "amount": 1,
                    "units": "usd",
                    "staged_by_user_id": "staged_by_user_id",
                    "settlement_type": "stripe_connect",
                    "owned_by_org_id": "owned_by_org_id",
                    "payment_vector_type": "shipper_pay_forwarder",
                    "payment_origin_org_id": "payment_origin_org_id",
                    "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                    "payment_destination_org_id": "payment_destination_org_id",
                    "payment_destination_driver_id": "payment_destination_driver_id",
                    "status": "staged",
                    "stripe_invoice_id": "stripe_invoice_id",
                    "stripe_invoice_url": "stripe_invoice_url",
                    "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                    "stripe_invoice_status": "draft",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "opened_at_timestamp": "2024-01-15T09:30:00Z",
                    "paid_at_timestamp": "2024-01-15T09:30:00Z",
                    "voided_at_timestamp": "2024-01-15T09:30:00Z",
                    "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                    "marked_open_by_user_id": "marked_open_by_user_id",
                    "marked_paid_by_user_id": "marked_paid_by_user_id",
                    "marked_voided_by_user_id": "marked_voided_by_user_id",
                    "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id"
                  },
                  "synced": true,
                  "stripe_invoice_status": "draft"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SyncInvoiceRes(
            statement: Statement1(
                schemaVersion: 1,
                id: "_id",
                lineItemGroupIds: Optional([
                    "line_item_group_ids"
                ]),
                amount: 1,
                units: Optional(.usd),
                stagedByUserId: Optional("staged_by_user_id"),
                settlementType: .stripeConnect,
                ownedByOrgId: "owned_by_org_id",
                paymentVectorType: .shipperPayForwarder,
                paymentOriginOrgId: Optional("payment_origin_org_id"),
                paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                paymentDestinationOrgId: Optional("payment_destination_org_id"),
                paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                status: Optional(.staged),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                stripeInvoiceStatus: Optional(.draft),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                markedOpenByUserId: Optional("marked_open_by_user_id"),
                markedPaidByUserId: Optional("marked_paid_by_user_id"),
                markedVoidedByUserId: Optional("marked_voided_by_user_id"),
                markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
            ),
            synced: true,
            stripeInvoiceStatus: Optional(.draft)
        )
        let response = try await client.billing.statements.syncInvoiceV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cancelInvoiceV11() async throws -> Void {
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
                  "amount": 1,
                  "units": "usd",
                  "staged_by_user_id": "staged_by_user_id",
                  "settlement_type": "stripe_connect",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_status": "draft",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "voided_at_timestamp": "2024-01-15T09:30:00Z",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_voided_by_user_id": "marked_voided_by_user_id",
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
            amount: 1,
            units: Optional(.usd),
            stagedByUserId: Optional("staged_by_user_id"),
            settlementType: .stripeConnect,
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceStatus: Optional(.draft),
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedVoidedByUserId: Optional("marked_voided_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id")
        )
        let response = try await client.billing.statements.cancelInvoiceV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}