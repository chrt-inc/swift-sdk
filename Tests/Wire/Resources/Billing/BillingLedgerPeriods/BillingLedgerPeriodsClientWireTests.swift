import Foundation
import Testing
import Chrt

@Suite("BillingLedgerPeriodsClient Wire Tests") struct BillingLedgerPeriodsClientWireTests {
    @Test func getByIdV11() async throws -> Void {
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
        let response = try await client.billing.billingLedgerPeriods.getByIdV1(
            id: "id",
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
        let expectedResponse = BillingLedgerPeriodListRes(
            items: [
                BillingLedgerPeriod1(
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
            ],
            totalCount: 1
        )
        let response = try await client.billing.billingLedgerPeriods.listV1(
            sortBy: .periodEndAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterBillingLedgerId: "filter_billing_ledger_id",
            filterOwnedByOrgId: "filter_owned_by_org_id",
            filterStatementId: "filter_statement_id",
            filterAttachedToStatement: true,
            filterPeriodEndAtTimestampBefore: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPeriodEndAtTimestampAfter: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func openV11() async throws -> Void {
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
        let response = try await client.billing.billingLedgerPeriods.openV1(
            billingLedgerId: "billing_ledger_id",
            request: .init(
                cycle: .daily,
                rateUsd: 1.1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func closeV11() async throws -> Void {
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
        let response = try await client.billing.billingLedgerPeriods.closeV1(
            billingLedgerPeriodId: "billing_ledger_period_id",
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
        let response = try await client.billing.billingLedgerPeriods.updateV1(
            billingLedgerPeriodId: "billing_ledger_period_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}