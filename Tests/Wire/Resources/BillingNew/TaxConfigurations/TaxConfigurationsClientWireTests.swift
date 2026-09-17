import Foundation
import Testing
import Chrt

@Suite("TaxConfigurationsClient Wire Tests") struct TaxConfigurationsClientWireTests {
    @Test func archiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived": true,
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "tax_rules": [
                    {
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "name": "name",
                      "percentage": 1.1
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxConfiguration1(
            id: "_id",
            archived: Optional(true),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            taxRules: Optional([
                TaxRule1(
                    exportRefSageItemId: Optional("export_ref__sage__item_id"),
                    name: "name",
                    percentage: 1.1
                )
            ])
        )
        let response = try await client.billingNew.taxConfigurations.archiveV1(
            taxConfigurationId: "tax_configuration_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived": true,
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "tax_rules": [
                    {
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "name": "name",
                      "percentage": 1.1
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxConfiguration1(
            id: "_id",
            archived: Optional(true),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            taxRules: Optional([
                TaxRule1(
                    exportRefSageItemId: Optional("export_ref__sage__item_id"),
                    name: "name",
                    percentage: 1.1
                )
            ])
        )
        let response = try await client.billingNew.taxConfigurations.createV1(
            request: .init(
                name: "name",
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived": true,
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "tax_rules": [
                    {
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "name": "name",
                      "percentage": 1.1
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxConfiguration1(
            id: "_id",
            archived: Optional(true),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            taxRules: Optional([
                TaxRule1(
                    exportRefSageItemId: Optional("export_ref__sage__item_id"),
                    name: "name",
                    percentage: 1.1
                )
            ])
        )
        let response = try await client.billingNew.taxConfigurations.getV1(
            taxConfigurationId: "tax_configuration_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "archived": true,
                      "counterparty_driver_id": "counterparty_driver_id",
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "counterparty_org_id": "counterparty_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_edited_by_user_id": "last_edited_by_user_id",
                      "name": "name",
                      "owned_by_org_id": "owned_by_org_id",
                      "schema_version": 1,
                      "shipper_account_id": "shipper_account_id",
                      "tax_rules": [
                        {
                          "name": "name",
                          "percentage": 1.1
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
        let expectedResponse = TaxConfigurationListRes(
            items: Optional([
                TaxConfiguration1(
                    id: "_id",
                    archived: Optional(true),
                    counterpartyDriverId: Optional("counterparty_driver_id"),
                    counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                    counterpartyOrgId: Optional("counterparty_org_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedByUserId: "last_edited_by_user_id",
                    name: "name",
                    ownedByOrgId: "owned_by_org_id",
                    schemaVersion: 1,
                    shipperAccountId: Optional("shipper_account_id"),
                    taxRules: Optional([
                        TaxRule1(
                            name: "name",
                            percentage: 1.1
                        )
                    ])
                )
            ]),
            totalCount: 1
        )
        let response = try await client.billingNew.taxConfigurations.listV1(
            sortBy: .name,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterCounterpartyDriverId: "filter_counterparty_driver_id",
            filterShipperAccountId: "filter_shipper_account_id",
            filterArchived: true,
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func resolveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived": true,
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "tax_rules": [
                    {
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "name": "name",
                      "percentage": 1.1
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Optional(TaxConfiguration1(
            id: "_id",
            archived: Optional(true),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            taxRules: Optional([
                TaxRule1(
                    exportRefSageItemId: Optional("export_ref__sage__item_id"),
                    name: "name",
                    percentage: 1.1
                )
            ])
        ))
        let response = try await client.billingNew.taxConfigurations.resolveV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived": true,
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "tax_rules": [
                    {
                      "export_ref__sage__item_id": "export_ref__sage__item_id",
                      "name": "name",
                      "percentage": 1.1
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxConfiguration1(
            id: "_id",
            archived: Optional(true),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            taxRules: Optional([
                TaxRule1(
                    exportRefSageItemId: Optional("export_ref__sage__item_id"),
                    name: "name",
                    percentage: 1.1
                )
            ])
        )
        let response = try await client.billingNew.taxConfigurations.updateV1(
            taxConfigurationId: "tax_configuration_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}