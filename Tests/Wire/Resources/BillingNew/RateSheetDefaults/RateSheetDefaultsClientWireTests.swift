import Foundation
import Testing
import Chrt

@Suite("RateSheetDefaultsClient Wire Tests") struct RateSheetDefaultsClientWireTests {
    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.billingNew.rateSheetDefaults.deleteV1(
            rateSheetDefaultId: "rate_sheet_default_id",
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
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "invoice_type": "accounts_receivable",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "rate_sheet_id": "rate_sheet_id",
                    "schema_version": 1,
                    "service_line": "on_demand",
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
            RateSheetDefault1(
                id: "_id",
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                invoiceType: InvoiceTypeEnum1.accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                ownedByOrgId: "owned_by_org_id",
                rateSheetId: Optional("rate_sheet_id"),
                schemaVersion: 1,
                serviceLine: ServiceLineEnum.onDemand,
                taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider
            )
        ]
        let response = try await client.billingNew.rateSheetDefaults.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func setV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "schema_version": 1,
                  "service_line": "on_demand",
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
        let expectedResponse = RateSheetDefault1(
            id: "_id",
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            ownedByOrgId: "owned_by_org_id",
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            serviceLine: ServiceLineEnum.onDemand,
            taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider
        )
        let response = try await client.billingNew.rateSheetDefaults.setV1(
            request: .init(
                invoiceType: .accountsReceivable,
                schemaVersion: 1,
                serviceLine: .onDemand,
                taskGroupType: .chrtGroundProvider
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}