import Foundation
import Testing
import Chrt

@Suite("StatementsClient Wire Tests") struct StatementsClientWireTests {
    @Test func getByLigIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "amount": 1,
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "staged_by_user_id": "staged_by_user_id",
                  "status": "staged",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_status": "draft",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "units": "usd"
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
            id: "_id",
            amount: Optional(1),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            schemaVersion: 1,
            settlementType: .stripeConnect,
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stagedByUserId: Optional("staged_by_user_id"),
            status: Optional(.staged),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceStatus: Optional(.draft),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            units: Optional(.usd)
        )
        let response = try await client.billing.statements.getByLigIdV1(
            lineItemGroupId: "line_item_group_id",
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
                  "_id": "_id",
                  "amount": 1,
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "staged_by_user_id": "staged_by_user_id",
                  "status": "staged",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_status": "draft",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "units": "usd"
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
            id: "_id",
            amount: Optional(1),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            schemaVersion: 1,
            settlementType: .stripeConnect,
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stagedByUserId: Optional("staged_by_user_id"),
            status: Optional(.staged),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceStatus: Optional(.draft),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            units: Optional(.usd)
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

    @Test func expandedRetrieveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "line_item_groups": [
                    {
                      "_id": "_id",
                      "line_item_group_s3_object_metadata_ids": [
                        "line_item_group_s3_object_metadata_ids"
                      ],
                      "line_items": [
                        {
                          "amount": 1.1,
                          "item": "base_rate",
                          "quantity": 1.1,
                          "rate": 1.1
                        }
                      ],
                      "messages": [
                        {
                          "message": "message",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z",
                          "user_id": "user_id"
                        }
                      ],
                      "owned_by_org_id": "owned_by_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_vector_type": "shipper_pay_forwarder",
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "settlement_type": "stripe_connect",
                      "statement_id": "statement_id",
                      "status": "staged",
                      "task_group_id": "task_group_id"
                    }
                  ],
                  "statement": {
                    "_id": "_id",
                    "amount": 1,
                    "line_item_group_ids": [
                      "line_item_group_ids"
                    ],
                    "marked_open_by_user_id": "marked_open_by_user_id",
                    "marked_paid_by_user_id": "marked_paid_by_user_id",
                    "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                    "opened_at_timestamp": "2024-01-15T09:30:00Z",
                    "owned_by_org_id": "owned_by_org_id",
                    "paid_at_timestamp": "2024-01-15T09:30:00Z",
                    "payment_destination_driver_id": "payment_destination_driver_id",
                    "payment_destination_org_id": "payment_destination_org_id",
                    "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                    "payment_origin_org_id": "payment_origin_org_id",
                    "payment_vector_type": "shipper_pay_forwarder",
                    "schema_version": 1,
                    "settlement_type": "stripe_connect",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_by_user_id": "staged_by_user_id",
                    "status": "staged",
                    "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                    "stripe_invoice_id": "stripe_invoice_id",
                    "stripe_invoice_status": "draft",
                    "stripe_invoice_url": "stripe_invoice_url",
                    "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                    "units": "usd"
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
        let expectedResponse = StatementExpandedRes(
            lineItemGroups: [
                LineItemGroup1(
                    id: "_id",
                    lineItemGroupS3ObjectMetadataIds: Optional([
                        "line_item_group_s3_object_metadata_ids"
                    ]),
                    lineItems: [
                        LineItem1(
                            amount: 1.1,
                            item: .baseRate,
                            quantity: 1.1,
                            rate: 1.1
                        )
                    ],
                    messages: Optional([
                        LineItemGroupMessage1(
                            message: "message",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            userId: "user_id"
                        )
                    ]),
                    ownedByOrgId: "owned_by_org_id",
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentVectorType: .shipperPayForwarder,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: 1,
                    settlementType: .stripeConnect,
                    statementId: Optional("statement_id"),
                    status: Optional(.staged),
                    taskGroupId: Optional("task_group_id")
                )
            ],
            statement: Statement1(
                id: "_id",
                amount: Optional(1),
                lineItemGroupIds: Optional([
                    "line_item_group_ids"
                ]),
                markedOpenByUserId: Optional("marked_open_by_user_id"),
                markedPaidByUserId: Optional("marked_paid_by_user_id"),
                markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
                openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                ownedByOrgId: "owned_by_org_id",
                paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                paymentDestinationOrgId: Optional("payment_destination_org_id"),
                paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                paymentOriginOrgId: Optional("payment_origin_org_id"),
                paymentVectorType: .shipperPayForwarder,
                schemaVersion: 1,
                settlementType: .stripeConnect,
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedByUserId: Optional("staged_by_user_id"),
                status: Optional(.staged),
                stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceStatus: Optional(.draft),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                units: Optional(.usd)
            )
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
                      "_id": "_id",
                      "amount": 1,
                      "line_item_group_ids": [
                        "line_item_group_ids"
                      ],
                      "marked_open_by_user_id": "marked_open_by_user_id",
                      "marked_paid_by_user_id": "marked_paid_by_user_id",
                      "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                      "opened_at_timestamp": "2024-01-15T09:30:00Z",
                      "owned_by_org_id": "owned_by_org_id",
                      "paid_at_timestamp": "2024-01-15T09:30:00Z",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_vector_type": "shipper_pay_forwarder",
                      "schema_version": 1,
                      "settlement_type": "stripe_connect",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_by_user_id": "staged_by_user_id",
                      "status": "staged",
                      "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                      "stripe_invoice_id": "stripe_invoice_id",
                      "stripe_invoice_status": "draft",
                      "stripe_invoice_url": "stripe_invoice_url",
                      "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                      "units": "usd"
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
                    id: "_id",
                    amount: Optional(1),
                    lineItemGroupIds: Optional([
                        "line_item_group_ids"
                    ]),
                    markedOpenByUserId: Optional("marked_open_by_user_id"),
                    markedPaidByUserId: Optional("marked_paid_by_user_id"),
                    markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
                    openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    ownedByOrgId: "owned_by_org_id",
                    paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentVectorType: .shipperPayForwarder,
                    schemaVersion: 1,
                    settlementType: .stripeConnect,
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stagedByUserId: Optional("staged_by_user_id"),
                    status: Optional(.staged),
                    stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                    stripeInvoiceId: Optional("stripe_invoice_id"),
                    stripeInvoiceStatus: Optional(.draft),
                    stripeInvoiceUrl: Optional("stripe_invoice_url"),
                    uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    units: Optional(.usd)
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
                  "_id": "_id",
                  "amount": 1,
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "staged_by_user_id": "staged_by_user_id",
                  "status": "staged",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_status": "draft",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "units": "usd"
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
            id: "_id",
            amount: Optional(1),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            schemaVersion: 1,
            settlementType: .stripeConnect,
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stagedByUserId: Optional("staged_by_user_id"),
            status: Optional(.staged),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceStatus: Optional(.draft),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            units: Optional(.usd)
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
                  "_id": "_id",
                  "amount": 1,
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "staged_by_user_id": "staged_by_user_id",
                  "status": "staged",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_status": "draft",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "units": "usd"
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
            id: "_id",
            amount: Optional(1),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            schemaVersion: 1,
            settlementType: .stripeConnect,
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stagedByUserId: Optional("staged_by_user_id"),
            status: Optional(.staged),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceStatus: Optional(.draft),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            units: Optional(.usd)
        )
        let response = try await client.billing.statements.syncInvoiceV1(
            statementId: "statement_id",
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
                  "_id": "_id",
                  "amount": 1,
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "staged_by_user_id": "staged_by_user_id",
                  "status": "staged",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_status": "draft",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "units": "usd"
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
            id: "_id",
            amount: Optional(1),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            schemaVersion: 1,
            settlementType: .stripeConnect,
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stagedByUserId: Optional("staged_by_user_id"),
            status: Optional(.staged),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceStatus: Optional(.draft),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            units: Optional(.usd)
        )
        let response = try await client.billing.statements.updateOffChrtSettlementStateV1(
            statementId: "statement_id",
            request: .init(newStatus: .staged),
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
                  "_id": "_id",
                  "amount": 1,
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "staged_by_user_id": "staged_by_user_id",
                  "status": "staged",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_status": "draft",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "units": "usd"
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
            id: "_id",
            amount: Optional(1),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            schemaVersion: 1,
            settlementType: .stripeConnect,
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stagedByUserId: Optional("staged_by_user_id"),
            status: Optional(.staged),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceStatus: Optional(.draft),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            units: Optional(.usd)
        )
        let response = try await client.billing.statements.updateSettlementTypeV1(
            statementId: "statement_id",
            request: .init(settlementType: .stripeConnect),
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
                  "amount": 1,
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "staged_by_user_id": "staged_by_user_id",
                  "status": "staged",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_status": "draft",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "units": "usd"
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
            id: "_id",
            amount: Optional(1),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            schemaVersion: 1,
            settlementType: .stripeConnect,
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stagedByUserId: Optional("staged_by_user_id"),
            status: Optional(.staged),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceStatus: Optional(.draft),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            units: Optional(.usd)
        )
        let response = try await client.billing.statements.getV1(
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
                  "_id": "_id",
                  "amount": 1,
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "staged_at_timestamp": "2024-01-15T09:30:00Z",
                  "staged_by_user_id": "staged_by_user_id",
                  "status": "staged",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_status": "draft",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "uncollectible_at_timestamp": "2024-01-15T09:30:00Z",
                  "units": "usd"
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
            id: "_id",
            amount: Optional(1),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            schemaVersion: 1,
            settlementType: .stripeConnect,
            stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stagedByUserId: Optional("staged_by_user_id"),
            status: Optional(.staged),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceStatus: Optional(.draft),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            uncollectibleAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            units: Optional(.usd)
        )
        let response = try await client.billing.statements.voidInvoiceV1(
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}