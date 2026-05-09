import Foundation
import Testing
import Chrt

@Suite("TaskGroupsClient Wire Tests") struct TaskGroupsClientWireTests {
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

            ),
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

    @Test func attachBillingLedgerPeriodToShipperPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "billing_ledger_id": "billing_ledger_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "cycle": "daily",
                  "rate_usd": 1.1,
                  "status": "open",
                  "opened_by_user_id": "opened_by_user_id",
                  "opened_by_org_id": "opened_by_org_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_user_id": "closed_by_user_id",
                  "closed_by_org_id": "closed_by_org_id",
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "linked_task_group_ids": [
                    "linked_task_group_ids"
                  ],
                  "statement_id": "statement_id"
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
            schemaVersion: 1,
            id: "_id",
            billingLedgerId: "billing_ledger_id",
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            cycle: .daily,
            rateUsd: 1.1,
            status: Optional(.open),
            openedByUserId: "opened_by_user_id",
            openedByOrgId: "opened_by_org_id",
            openedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedByUserId: Optional("closed_by_user_id"),
            closedByOrgId: Optional("closed_by_org_id"),
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            linkedTaskGroupIds: Optional([
                "linked_task_group_ids"
            ]),
            statementId: Optional("statement_id")
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

    @Test func attachBillingLedgerPeriodToProviderPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "billing_ledger_id": "billing_ledger_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "cycle": "daily",
                  "rate_usd": 1.1,
                  "status": "open",
                  "opened_by_user_id": "opened_by_user_id",
                  "opened_by_org_id": "opened_by_org_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_user_id": "closed_by_user_id",
                  "closed_by_org_id": "closed_by_org_id",
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "linked_task_group_ids": [
                    "linked_task_group_ids"
                  ],
                  "statement_id": "statement_id"
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
            schemaVersion: 1,
            id: "_id",
            billingLedgerId: "billing_ledger_id",
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            cycle: .daily,
            rateUsd: 1.1,
            status: Optional(.open),
            openedByUserId: "opened_by_user_id",
            openedByOrgId: "opened_by_org_id",
            openedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedByUserId: Optional("closed_by_user_id"),
            closedByOrgId: Optional("closed_by_org_id"),
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            linkedTaskGroupIds: Optional([
                "linked_task_group_ids"
            ]),
            statementId: Optional("statement_id")
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

    @Test func attachBillingLedgerPeriodToProviderPayDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "billing_ledger_id": "billing_ledger_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "cycle": "daily",
                  "rate_usd": 1.1,
                  "status": "open",
                  "opened_by_user_id": "opened_by_user_id",
                  "opened_by_org_id": "opened_by_org_id",
                  "opened_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_user_id": "closed_by_user_id",
                  "closed_by_org_id": "closed_by_org_id",
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "linked_task_group_ids": [
                    "linked_task_group_ids"
                  ],
                  "statement_id": "statement_id"
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
            schemaVersion: 1,
            id: "_id",
            billingLedgerId: "billing_ledger_id",
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            cycle: .daily,
            rateUsd: 1.1,
            status: Optional(.open),
            openedByUserId: "opened_by_user_id",
            openedByOrgId: "opened_by_org_id",
            openedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedByUserId: Optional("closed_by_user_id"),
            closedByOrgId: Optional("closed_by_org_id"),
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            linkedTaskGroupIds: Optional([
                "linked_task_group_ids"
            ]),
            statementId: Optional("statement_id")
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

    @Test func quoteForShipperPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_group_id": "task_group_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "rate_sheet_owned_by_org_id": "rate_sheet_owned_by_org_id",
                  "line_items": [
                    {
                      "schema_version": 1,
                      "comments": "comments",
                      "item": "base_rate",
                      "units": "usd",
                      "rate": 1.1,
                      "quantity": 1.1,
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "_id": "_id",
                      "provenance": "rate_sheet",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__status": "pending",
                      "rate_sheet_id": "rate_sheet_id",
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ]
                    }
                  ],
                  "total_amount": 1.1,
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id"
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
            taskGroupId: "task_group_id",
            rateSheetId: "rate_sheet_id",
            rateSheetOwnedByOrgId: "rate_sheet_owned_by_org_id",
            lineItems: [
                LineItem1(
                    schemaVersion: Optional(1),
                    comments: Optional("comments"),
                    item: .baseRate,
                    units: Optional(.usd),
                    rate: 1.1,
                    quantity: 1.1,
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    id: "_id",
                    provenance: .rateSheet,
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocStatus: Optional(.pending),
                    rateSheetId: Optional("rate_sheet_id"),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ])
                )
            ],
            totalAmount: 1.1,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id")
        )
        let response = try await client.shipping.taskGroups.quoteForShipperPayProviderV1(
            taskGroupId: "task_group_id",
            request: TaskGroupQuoteClientReq(

            ),
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
                  "task_group_id": "task_group_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "rate_sheet_owned_by_org_id": "rate_sheet_owned_by_org_id",
                  "line_items": [
                    {
                      "schema_version": 1,
                      "comments": "comments",
                      "item": "base_rate",
                      "units": "usd",
                      "rate": 1.1,
                      "quantity": 1.1,
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "_id": "_id",
                      "provenance": "rate_sheet",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__status": "pending",
                      "rate_sheet_id": "rate_sheet_id",
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ]
                    }
                  ],
                  "total_amount": 1.1,
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id"
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
            taskGroupId: "task_group_id",
            rateSheetId: "rate_sheet_id",
            rateSheetOwnedByOrgId: "rate_sheet_owned_by_org_id",
            lineItems: [
                LineItem1(
                    schemaVersion: Optional(1),
                    comments: Optional("comments"),
                    item: .baseRate,
                    units: Optional(.usd),
                    rate: 1.1,
                    quantity: 1.1,
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    id: "_id",
                    provenance: .rateSheet,
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocStatus: Optional(.pending),
                    rateSheetId: Optional("rate_sheet_id"),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ])
                )
            ],
            totalAmount: 1.1,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id")
        )
        let response = try await client.shipping.taskGroups.quoteForProviderPayProviderV1(
            taskGroupId: "task_group_id",
            request: TaskGroupQuoteClientReq(

            ),
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
                  "task_group_id": "task_group_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "rate_sheet_owned_by_org_id": "rate_sheet_owned_by_org_id",
                  "line_items": [
                    {
                      "schema_version": 1,
                      "comments": "comments",
                      "item": "base_rate",
                      "units": "usd",
                      "rate": 1.1,
                      "quantity": 1.1,
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "_id": "_id",
                      "provenance": "rate_sheet",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__status": "pending",
                      "rate_sheet_id": "rate_sheet_id",
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ]
                    }
                  ],
                  "total_amount": 1.1,
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id"
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
            taskGroupId: "task_group_id",
            rateSheetId: "rate_sheet_id",
            rateSheetOwnedByOrgId: "rate_sheet_owned_by_org_id",
            lineItems: [
                LineItem1(
                    schemaVersion: Optional(1),
                    comments: Optional("comments"),
                    item: .baseRate,
                    units: Optional(.usd),
                    rate: 1.1,
                    quantity: 1.1,
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    id: "_id",
                    provenance: .rateSheet,
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocStatus: Optional(.pending),
                    rateSheetId: Optional("rate_sheet_id"),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ])
                )
            ],
            totalAmount: 1.1,
            ownedByOrgId: "owned_by_org_id",
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id")
        )
        let response = try await client.shipping.taskGroups.quoteForProviderPayDriverV1(
            taskGroupId: "task_group_id",
            request: TaskGroupQuoteClientReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}