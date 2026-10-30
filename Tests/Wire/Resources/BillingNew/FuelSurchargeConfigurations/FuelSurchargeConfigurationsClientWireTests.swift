import Foundation
import Testing
import Chrt

@Suite("FuelSurchargeConfigurationsClient Wire Tests") struct FuelSurchargeConfigurationsClientWireTests {
    @Test func archiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "rates": [
                    {
                      "effective_from_date": "effective_from_date",
                      "surcharge_percentage": 1.1
                    }
                  ],
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FuelSurchargeConfiguration1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            rates: [
                FuelSurchargeConfigurationRate1(
                    effectiveFromDate: "effective_from_date",
                    surchargePercentage: 1.1
                )
            ],
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id")
        )
        let response = try await client.billingNew.fuelSurchargeConfigurations.archiveV1(
            fuelSurchargeConfigurationId: "fuel_surcharge_configuration_id",
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
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "rates": [
                    {
                      "effective_from_date": "effective_from_date",
                      "surcharge_percentage": 1.1
                    }
                  ],
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FuelSurchargeConfiguration1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            rates: [
                FuelSurchargeConfigurationRate1(
                    effectiveFromDate: "effective_from_date",
                    surchargePercentage: 1.1
                )
            ],
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id")
        )
        let response = try await client.billingNew.fuelSurchargeConfigurations.createV1(
            request: .init(
                invoiceType: .accountsReceivable,
                name: "name",
                rates: [
                    FuelSurchargeConfigurationRate1(
                        effectiveFromDate: "effective_from_date",
                        surchargePercentage: 1.1
                    )
                ],
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
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "rates": [
                    {
                      "effective_from_date": "effective_from_date",
                      "surcharge_percentage": 1.1
                    }
                  ],
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FuelSurchargeConfiguration1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            rates: [
                FuelSurchargeConfigurationRate1(
                    effectiveFromDate: "effective_from_date",
                    surchargePercentage: 1.1
                )
            ],
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id")
        )
        let response = try await client.billingNew.fuelSurchargeConfigurations.getV1(
            fuelSurchargeConfigurationId: "fuel_surcharge_configuration_id",
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
                      "archived_at_timestamp": "2024-01-15T09:30:00Z",
                      "archived_by_user_id": "archived_by_user_id",
                      "counterparty_driver_id": "counterparty_driver_id",
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "counterparty_org_id": "counterparty_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "invoice_type": "accounts_receivable",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_edited_by_user_id": "last_edited_by_user_id",
                      "name": "name",
                      "owned_by_org_id": "owned_by_org_id",
                      "rates": [
                        {
                          "effective_from_date": "effective_from_date",
                          "surcharge_percentage": 1.1
                        }
                      ],
                      "schema_version": 1,
                      "shipper_account_id": "shipper_account_id"
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
        let expectedResponse = FuelSurchargeConfigurationListRes(
            items: Optional([
                FuelSurchargeConfiguration1(
                    id: "_id",
                    archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    archivedByUserId: Optional("archived_by_user_id"),
                    counterpartyDriverId: Optional("counterparty_driver_id"),
                    counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                    counterpartyOrgId: Optional("counterparty_org_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    invoiceType: InvoiceTypeEnum1.accountsReceivable,
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedByUserId: "last_edited_by_user_id",
                    name: "name",
                    ownedByOrgId: "owned_by_org_id",
                    rates: [
                        FuelSurchargeConfigurationRate1(
                            effectiveFromDate: "effective_from_date",
                            surchargePercentage: 1.1
                        )
                    ],
                    schemaVersion: 1,
                    shipperAccountId: Optional("shipper_account_id")
                )
            ]),
            totalCount: 1
        )
        let response = try await client.billingNew.fuelSurchargeConfigurations.listV1(
            filterInvoiceType: .accountsReceivable,
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterCounterpartyDriverId: "filter_counterparty_driver_id",
            filterShipperAccountId: "filter_shipper_account_id",
            filterArchived: true,
            sortBy: .name,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
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
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_by_user_id": "archived_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "rates": [
                    {
                      "effective_from_date": "effective_from_date",
                      "surcharge_percentage": 1.1
                    }
                  ],
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FuelSurchargeConfiguration1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            archivedByUserId: Optional("archived_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            rates: [
                FuelSurchargeConfigurationRate1(
                    effectiveFromDate: "effective_from_date",
                    surchargePercentage: 1.1
                )
            ],
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id")
        )
        let response = try await client.billingNew.fuelSurchargeConfigurations.updateV1(
            fuelSurchargeConfigurationId: "fuel_surcharge_configuration_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}