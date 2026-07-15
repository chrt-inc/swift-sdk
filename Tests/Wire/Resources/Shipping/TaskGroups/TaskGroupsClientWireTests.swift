import Foundation
import Testing
import Chrt

@Suite("TaskGroupsClient Wire Tests") struct TaskGroupsClientWireTests {
    @Test func addExecutorV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.addExecutorV1(
            taskGroupId: "task_group_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addMessageV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.addMessageV1(
            taskGroupId: "task_group_id",
            request: .init(message: "message"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachBillingLedgerPeriodToProviderPayDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "billing_ledger_id": "billing_ledger_id",
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_org_id": "closed_by_org_id",
                  "closed_by_user_id": "closed_by_user_id",
                  "cycle": "daily",
                  "linked_task_group_ids": [
                    "linked_task_group_ids"
                  ],
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_by_org_id": "opened_by_org_id",
                  "opened_by_user_id": "opened_by_user_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "rate_usd": 1.1,
                  "schema_version": 1,
                  "statement_id": "statement_id",
                  "status": "open"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BillingLedgerPeriod1(
            id: "_id",
            billingLedgerId: "billing_ledger_id",
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            closedByOrgId: Optional("closed_by_org_id"),
            closedByUserId: Optional("closed_by_user_id"),
            cycle: .daily,
            linkedTaskGroupIds: Optional([
                "linked_task_group_ids"
            ]),
            openedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            openedByOrgId: "opened_by_org_id",
            openedByUserId: "opened_by_user_id",
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            rateUsd: 1.1,
            schemaVersion: 1,
            statementId: Optional("statement_id"),
            status: Optional(.open)
        )
        let response = try await client.shipping.taskGroups.attachBillingLedgerPeriodToProviderPayDriverV1(
            taskGroupId: "task_group_id",
            request: AttachBillingLedgerPeriodReq(
                billingLedgerPeriodId: "billing_ledger_period_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachBillingLedgerPeriodToProviderPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "billing_ledger_id": "billing_ledger_id",
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_org_id": "closed_by_org_id",
                  "closed_by_user_id": "closed_by_user_id",
                  "cycle": "daily",
                  "linked_task_group_ids": [
                    "linked_task_group_ids"
                  ],
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_by_org_id": "opened_by_org_id",
                  "opened_by_user_id": "opened_by_user_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "rate_usd": 1.1,
                  "schema_version": 1,
                  "statement_id": "statement_id",
                  "status": "open"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BillingLedgerPeriod1(
            id: "_id",
            billingLedgerId: "billing_ledger_id",
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            closedByOrgId: Optional("closed_by_org_id"),
            closedByUserId: Optional("closed_by_user_id"),
            cycle: .daily,
            linkedTaskGroupIds: Optional([
                "linked_task_group_ids"
            ]),
            openedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            openedByOrgId: "opened_by_org_id",
            openedByUserId: "opened_by_user_id",
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            rateUsd: 1.1,
            schemaVersion: 1,
            statementId: Optional("statement_id"),
            status: Optional(.open)
        )
        let response = try await client.shipping.taskGroups.attachBillingLedgerPeriodToProviderPayProviderV1(
            taskGroupId: "task_group_id",
            request: AttachBillingLedgerPeriodReq(
                billingLedgerPeriodId: "billing_ledger_period_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachBillingLedgerPeriodToShipperPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "billing_ledger_id": "billing_ledger_id",
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_org_id": "closed_by_org_id",
                  "closed_by_user_id": "closed_by_user_id",
                  "cycle": "daily",
                  "linked_task_group_ids": [
                    "linked_task_group_ids"
                  ],
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "opened_by_org_id": "opened_by_org_id",
                  "opened_by_user_id": "opened_by_user_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "rate_usd": 1.1,
                  "schema_version": 1,
                  "statement_id": "statement_id",
                  "status": "open"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BillingLedgerPeriod1(
            id: "_id",
            billingLedgerId: "billing_ledger_id",
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            closedByOrgId: Optional("closed_by_org_id"),
            closedByUserId: Optional("closed_by_user_id"),
            cycle: .daily,
            linkedTaskGroupIds: Optional([
                "linked_task_group_ids"
            ]),
            openedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            openedByOrgId: "opened_by_org_id",
            openedByUserId: "opened_by_user_id",
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            rateUsd: 1.1,
            schemaVersion: 1,
            statementId: Optional("statement_id"),
            status: Optional(.open)
        )
        let response = try await client.shipping.taskGroups.attachBillingLedgerPeriodToShipperPayProviderV1(
            taskGroupId: "task_group_id",
            request: AttachBillingLedgerPeriodReq(
                billingLedgerPeriodId: "billing_ledger_period_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachLigToProviderPayDriverV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.attachLigToProviderPayDriverV1(
            taskGroupId: "task_group_id",
            request: AttachLigToVectorClientReq(
                lineItemGroupId: "line_item_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachLigToProviderPayProviderV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.attachLigToProviderPayProviderV1(
            taskGroupId: "task_group_id",
            request: AttachLigToVectorClientReq(
                lineItemGroupId: "line_item_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachLigToShipperPayProviderV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.attachLigToShipperPayProviderV1(
            taskGroupId: "task_group_id",
            request: AttachLigToVectorClientReq(
                lineItemGroupId: "line_item_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detachBillingLedgerPeriodFromProviderPayDriverV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.detachBillingLedgerPeriodFromProviderPayDriverV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detachBillingLedgerPeriodFromProviderPayProviderV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.detachBillingLedgerPeriodFromProviderPayProviderV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detachBillingLedgerPeriodFromShipperPayProviderV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.detachBillingLedgerPeriodFromShipperPayProviderV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detachLigFromProviderPayDriverV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.detachLigFromProviderPayDriverV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detachLigFromProviderPayProviderV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.detachLigFromProviderPayProviderV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detachLigFromShipperPayProviderV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.detachLigFromShipperPayProviderV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func quoteForProviderPayDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "line_items": [
                    {
                      "_id": "_id",
                      "ad_hoc__status": "pending",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "line_item_calculation_id": "line_item_calculation_id",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ],
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
                    }
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "rate_sheet_owned_by_org_id": "rate_sheet_owned_by_org_id",
                  "task_group_id": "task_group_id",
                  "total_amount": 1.1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupQuoteResp(
            lineItems: [
                LineItem1(
                    id: "_id",
                    adHocStatus: Optional(.pending),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    lineItemCalculationId: Optional("line_item_calculation_id"),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ]),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ],
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            rateSheetId: "rate_sheet_id",
            rateSheetOwnedByOrgId: "rate_sheet_owned_by_org_id",
            taskGroupId: "task_group_id",
            totalAmount: 1.1
        )
        let response = try await client.shipping.taskGroups.quoteForProviderPayDriverV1(
            taskGroupId: "task_group_id",
            request: .init(driverId: "driver_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func quoteForProviderPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "line_items": [
                    {
                      "_id": "_id",
                      "ad_hoc__status": "pending",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "line_item_calculation_id": "line_item_calculation_id",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ],
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
                    }
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "rate_sheet_owned_by_org_id": "rate_sheet_owned_by_org_id",
                  "task_group_id": "task_group_id",
                  "total_amount": 1.1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupQuoteResp(
            lineItems: [
                LineItem1(
                    id: "_id",
                    adHocStatus: Optional(.pending),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    lineItemCalculationId: Optional("line_item_calculation_id"),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ]),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ],
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            rateSheetId: "rate_sheet_id",
            rateSheetOwnedByOrgId: "rate_sheet_owned_by_org_id",
            taskGroupId: "task_group_id",
            totalAmount: 1.1
        )
        let response = try await client.shipping.taskGroups.quoteForProviderPayProviderV1(
            taskGroupId: "task_group_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func quoteForShipperPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "line_items": [
                    {
                      "_id": "_id",
                      "ad_hoc__status": "pending",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "line_item_calculation_id": "line_item_calculation_id",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ],
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
                    }
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_data_id": "payment_destination_off_chrt_provider_org_data_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_data_id": "payment_origin_off_chrt_shipper_org_data_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "rate_sheet_owned_by_org_id": "rate_sheet_owned_by_org_id",
                  "task_group_id": "task_group_id",
                  "total_amount": 1.1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupQuoteResp(
            lineItems: [
                LineItem1(
                    id: "_id",
                    adHocStatus: Optional(.pending),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    lineItemCalculationId: Optional("line_item_calculation_id"),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ]),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ],
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgDataId: Optional("payment_destination_off_chrt_provider_org_data_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgDataId: Optional("payment_origin_off_chrt_shipper_org_data_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            rateSheetId: "rate_sheet_id",
            rateSheetOwnedByOrgId: "rate_sheet_owned_by_org_id",
            taskGroupId: "task_group_id",
            totalAmount: 1.1
        )
        let response = try await client.shipping.taskGroups.quoteForShipperPayProviderV1(
            taskGroupId: "task_group_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeDriverV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.removeDriverV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeExecutorV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.removeExecutorV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setFlightInfoV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.setFlightInfoV1(
            taskGroupId: "task_group_id",
            request: SetFlightInfoReq(
                flightLegs: [
                    FlightLegClientCreate1(
                        carrierIata: "carrier_iata",
                        destinationIata: "destination_iata",
                        flightNumber: "flight_number",
                        originIata: "origin_iata",
                        provenance: .manual,
                        scheduledDepartureUtc: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setTaskOrderingV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.setTaskOrderingV1(
            taskGroupId: "task_group_id",
            request: .init(taskIds: [
                "task_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func startV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.startV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "type": "order_short_id",
                    "values": [
                      "values"
                    ]
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
            TaskGroupTypeaheadResult(
                type: .orderShortId,
                values: [
                    "values"
                ]
            )
        ]
        let response = try await client.shipping.taskGroups.typeaheadV1(
            query: "query",
            limit: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateDriverV11() async throws -> Void {
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
        let response = try await client.shipping.taskGroups.updateDriverV1(
            taskGroupId: "task_group_id",
            request: .init(driverId: "driver_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}