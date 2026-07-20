import Foundation
import Testing
import Chrt

@Suite("StatementsClient Wire Tests") struct StatementsClientWireTests {
    @Test func attachBillingLedgerPeriodV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
        let response = try await client.billing.statements.attachBillingLedgerPeriodV1(
            statementId: "statement_id",
            billingLedgerPeriodId: "billing_ledger_period_id",
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
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
        let response = try await client.billing.statements.attachLineItemGroupV1(
            statementId: "statement_id",
            lineItemGroupId: "line_item_group_id",
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
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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

    @Test func detachBillingLedgerPeriodV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
        let response = try await client.billing.statements.detachBillingLedgerPeriodV1(
            statementId: "statement_id",
            billingLedgerPeriodId: "billing_ledger_period_id",
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
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
        let response = try await client.billing.statements.detachLineItemGroupV1(
            statementId: "statement_id",
            lineItemGroupId: "line_item_group_id",
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
                      "line_item_groups": [
                        {
                          "_id": "_id",
                          "owned_by_org_id": "owned_by_org_id",
                          "schema_version": 1
                        }
                      ],
                      "statement": {
                        "_id": "_id",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1,
                        "settlement_type": "stripe_connect"
                      },
                      "task_groups": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1,
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
                    lineItemGroups: [
                        LineItemGroup1(
                            id: "_id",
                            ownedByOrgId: "owned_by_org_id",
                            schemaVersion: 1
                        )
                    ],
                    statement: Statement1(
                        id: "_id",
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1,
                        settlementType: .stripeConnect
                    ),
                    taskGroups: [
                        TaskGroup1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1,
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
            filterPaymentOriginOffChrtShipperOrgDataId: "filter_payment_origin_off_chrt_shipper_org_data_id",
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

    @Test func expandedRetrieveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "line_item_groups": [
                    {
                      "_id": "_id",
                      "agreement_amount": 1.1,
                      "agreement_line_item_ids": [
                        "agreement_line_item_ids"
                      ],
                      "amendment_amount": 1.1,
                      "amendment_line_item_ids": [
                        "amendment_line_item_ids"
                      ],
                      "denied_amount": 1.1,
                      "denied_line_item_ids": [
                        "denied_line_item_ids"
                      ],
                      "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                      "finalized_by_user_id": "finalized_by_user_id",
                      "line_item_group_s3_object_metadata_ids": [
                        "line_item_group_s3_object_metadata_ids"
                      ],
                      "messages": [
                        {
                          "message": "message",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z",
                          "user_id": "user_id"
                        }
                      ],
                      "order_group_id": "order_group_id",
                      "order_group_short_id": "order_group_short_id",
                      "order_id": "order_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "order_short_id": "order_short_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "pending_amount": 1.1,
                      "pending_line_item_ids": [
                        "pending_line_item_ids"
                      ],
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
                    "billing_ledger_period_ids": [
                      "billing_ledger_period_ids"
                    ],
                    "line_item_group_ids": [
                      "line_item_group_ids"
                    ],
                    "marked_open_by_user_id": "marked_open_by_user_id",
                    "marked_paid_by_user_id": "marked_paid_by_user_id",
                    "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                    "opened_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_group_id": "order_group_id",
                    "order_group_short_id": "order_group_short_id",
                    "order_ids": [
                      "order_ids"
                    ],
                    "order_off_chrt_reference_ids": [
                      "order_off_chrt_reference_ids"
                    ],
                    "order_short_ids": [
                      "order_short_ids"
                    ],
                    "owned_by_org_id": "owned_by_org_id",
                    "paid_at_timestamp": "2024-01-15T09:30:00Z",
                    "payment_destination_driver_id": "payment_destination_driver_id",
                    "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                    "payment_destination_org_id": "payment_destination_org_id",
                    "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                    "payment_origin_org_id": "payment_origin_org_id",
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
                    agreementAmount: Optional(1.1),
                    agreementLineItemIds: Optional([
                        "agreement_line_item_ids"
                    ]),
                    amendmentAmount: Optional(1.1),
                    amendmentLineItemIds: Optional([
                        "amendment_line_item_ids"
                    ]),
                    deniedAmount: Optional(1.1),
                    deniedLineItemIds: Optional([
                        "denied_line_item_ids"
                    ]),
                    finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    finalizedByUserId: Optional("finalized_by_user_id"),
                    lineItemGroupS3ObjectMetadataIds: Optional([
                        "line_item_group_s3_object_metadata_ids"
                    ]),
                    messages: Optional([
                        LineItemGroupMessage1(
                            message: "message",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            userId: "user_id"
                        )
                    ]),
                    orderGroupId: Optional("order_group_id"),
                    orderGroupShortId: Optional("order_group_short_id"),
                    orderId: Optional("order_id"),
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    orderShortId: Optional("order_short_id"),
                    ownedByOrgId: "owned_by_org_id",
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    pendingAmount: Optional(1.1),
                    pendingLineItemIds: Optional([
                        "pending_line_item_ids"
                    ]),
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: 1,
                    settlementType: Optional(.stripeConnect),
                    statementId: Optional("statement_id"),
                    status: Optional(.staged),
                    taskGroupId: Optional("task_group_id")
                )
            ],
            statement: Statement1(
                id: "_id",
                amount: Optional(1),
                billingLedgerPeriodIds: Optional([
                    "billing_ledger_period_ids"
                ]),
                lineItemGroupIds: Optional([
                    "line_item_group_ids"
                ]),
                markedOpenByUserId: Optional("marked_open_by_user_id"),
                markedPaidByUserId: Optional("marked_paid_by_user_id"),
                markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
                openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderGroupId: Optional("order_group_id"),
                orderGroupShortId: Optional("order_group_short_id"),
                orderIds: Optional([
                    "order_ids"
                ]),
                orderOffChrtReferenceIds: Optional([
                    "order_off_chrt_reference_ids"
                ]),
                orderShortIds: Optional([
                    "order_short_ids"
                ]),
                ownedByOrgId: "owned_by_org_id",
                paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
                paymentDestinationOrgId: Optional("payment_destination_org_id"),
                paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
                paymentOriginOrgId: Optional("payment_origin_org_id"),
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
                  "items": [
                    {
                      "_id": "_id",
                      "amount": 1,
                      "billing_ledger_period_ids": [
                        "billing_ledger_period_ids"
                      ],
                      "line_item_group_ids": [
                        "line_item_group_ids"
                      ],
                      "marked_open_by_user_id": "marked_open_by_user_id",
                      "marked_paid_by_user_id": "marked_paid_by_user_id",
                      "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                      "opened_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_group_id": "order_group_id",
                      "order_group_short_id": "order_group_short_id",
                      "order_ids": [
                        "order_ids"
                      ],
                      "order_off_chrt_reference_ids": [
                        "order_off_chrt_reference_ids"
                      ],
                      "order_short_ids": [
                        "order_short_ids"
                      ],
                      "owned_by_org_id": "owned_by_org_id",
                      "paid_at_timestamp": "2024-01-15T09:30:00Z",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                      "payment_origin_org_id": "payment_origin_org_id",
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
            items: [
                Statement1(
                    id: "_id",
                    amount: Optional(1),
                    billingLedgerPeriodIds: Optional([
                        "billing_ledger_period_ids"
                    ]),
                    lineItemGroupIds: Optional([
                        "line_item_group_ids"
                    ]),
                    markedOpenByUserId: Optional("marked_open_by_user_id"),
                    markedPaidByUserId: Optional("marked_paid_by_user_id"),
                    markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
                    openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderGroupId: Optional("order_group_id"),
                    orderGroupShortId: Optional("order_group_short_id"),
                    orderIds: Optional([
                        "order_ids"
                    ]),
                    orderOffChrtReferenceIds: Optional([
                        "order_off_chrt_reference_ids"
                    ]),
                    orderShortIds: Optional([
                        "order_short_ids"
                    ]),
                    ownedByOrgId: "owned_by_org_id",
                    paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
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
            filterOrderId: "filter_order_id",
            filterOrderShortId: "filter_order_short_id",
            filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
            filterPaymentOriginOrgId: "filter_payment_origin_org_id",
            filterPaymentOriginOffChrtShipperOrgDataId: "filter_payment_origin_off_chrt_shipper_org_data_id",
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

    @Test func markPaidOffChrtV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
        let response = try await client.billing.statements.openOffChrtV1(
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
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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

    @Test func updateSettlementTypeV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "amount": 1,
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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
                  "billing_ledger_period_ids": [
                    "billing_ledger_period_ids"
                  ],
                  "line_item_group_ids": [
                    "line_item_group_ids"
                  ],
                  "marked_open_by_user_id": "marked_open_by_user_id",
                  "marked_paid_by_user_id": "marked_paid_by_user_id",
                  "marked_uncollectible_by_user_id": "marked_uncollectible_by_user_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_ids": [
                    "order_ids"
                  ],
                  "order_off_chrt_reference_ids": [
                    "order_off_chrt_reference_ids"
                  ],
                  "order_short_ids": [
                    "order_short_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "paid_at_timestamp": "2024-01-15T09:30:00Z",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
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
            billingLedgerPeriodIds: Optional([
                "billing_ledger_period_ids"
            ]),
            lineItemGroupIds: Optional([
                "line_item_group_ids"
            ]),
            markedOpenByUserId: Optional("marked_open_by_user_id"),
            markedPaidByUserId: Optional("marked_paid_by_user_id"),
            markedUncollectibleByUserId: Optional("marked_uncollectible_by_user_id"),
            openedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderIds: Optional([
                "order_ids"
            ]),
            orderOffChrtReferenceIds: Optional([
                "order_off_chrt_reference_ids"
            ]),
            orderShortIds: Optional([
                "order_short_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            paidAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
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