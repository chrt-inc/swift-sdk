import Foundation
import Testing
import Chrt

@Suite("BillingPeriodsClient Wire Tests") struct BillingPeriodsClientWireTests {
    @Test func closeV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "billing_period": {
                    "_id": "_id",
                    "amount": 1.1,
                    "closed_at_timestamp": "2024-01-15T09:30:00Z",
                    "closed_by_user_id": "closed_by_user_id",
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "currency_code": "USD",
                    "cycle": "daily",
                    "description": "description",
                    "invoice_type": "accounts_receivable",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "name": "name",
                    "owned_by_org_id": "owned_by_org_id",
                    "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                    "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "shipper_account_id": "shipper_account_id",
                    "status": "open",
                    "task_group_ids": [
                      "task_group_ids"
                    ]
                  },
                  "invoice": {
                    "_id": "_id",
                    "approved_at_timestamp": "2024-01-15T09:30:00Z",
                    "approved_by_user_id": "approved_by_user_id",
                    "counterparty_account_ids": [
                      "counterparty_account_ids"
                    ],
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "currency_code": "USD",
                    "description": "description",
                    "export_ref__sage__customer_id": "export_ref__sage__customer_id",
                    "export_ref__sage__department_id": "export_ref__sage__department_id",
                    "file_exported_at_timestamp": "2024-01-15T09:30:00Z",
                    "file_exported_by_user_id": "file_exported_by_user_id",
                    "invoice_line_item_ids": [
                      "invoice_line_item_ids"
                    ],
                    "invoice_type": "accounts_receivable",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "merge_exported_at_timestamp": "2024-01-15T09:30:00Z",
                    "merge_exported_by_user_id": "merge_exported_by_user_id",
                    "merge_invoice_id": "merge_invoice_id",
                    "merge_invoice_number": "merge_invoice_number",
                    "merge_invoice_url": "merge_invoice_url",
                    "merge_linked_account_id": "merge_linked_account_id",
                    "merge_remote_id": "merge_remote_id",
                    "merge_remote_was_deleted": true,
                    "merge_status": "draft",
                    "name": "name",
                    "owned_by_org_id": "owned_by_org_id",
                    "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                    "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "status": "draft",
                    "stripe_exported_at_timestamp": "2024-01-15T09:30:00Z",
                    "stripe_exported_by_user_id": "stripe_exported_by_user_id",
                    "stripe_invoice_id": "stripe_invoice_id",
                    "stripe_invoice_number": "stripe_invoice_number",
                    "stripe_invoice_url": "stripe_invoice_url",
                    "stripe_status": "draft",
                    "stripe_was_deleted": true,
                    "total_amount": 1.1,
                    "void_reason": "void_reason",
                    "voided_at_timestamp": "2024-01-15T09:30:00Z",
                    "voided_by_user_id": "voided_by_user_id"
                  },
                  "invoice_line_item": {
                    "_id": "_id",
                    "awb_number": "awb_number",
                    "billing_period_id": "billing_period_id",
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "currency_code": "USD",
                    "description": "description",
                    "export_ref__sage__item_id": "export_ref__sage__item_id",
                    "invoice_id": "invoice_id",
                    "invoice_type": "accounts_receivable",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "line_item_type": "base_rate",
                    "order_id": "order_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "quantity": 1.1,
                    "rate_sheet_id": "rate_sheet_id",
                    "schema_version": 1,
                    "shipper_account_id": "shipper_account_id",
                    "status": "draft",
                    "task_group_id": "task_group_id",
                    "tax_percentage": 1.1,
                    "unit": "each",
                    "unit_price": 1.1
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
        let expectedResponse = BillingPeriodExpanded1(
            billingPeriod: BillingPeriod1(
                id: "_id",
                amount: 1.1,
                closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                closedByUserId: Optional("closed_by_user_id"),
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: .usd,
                cycle: .daily,
                description: "description",
                invoiceType: .accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                name: Optional("name"),
                ownedByOrgId: "owned_by_org_id",
                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1,
                shipperAccountId: Optional("shipper_account_id"),
                status: Optional(.open),
                taskGroupIds: Optional([
                    "task_group_ids"
                ])
            ),
            invoice: Optional(Invoice1(
                id: "_id",
                approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                approvedByUserId: Optional("approved_by_user_id"),
                counterpartyAccountIds: Optional([
                    "counterparty_account_ids"
                ]),
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: .usd,
                description: Optional("description"),
                exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
                exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
                fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                fileExportedByUserId: Optional("file_exported_by_user_id"),
                invoiceLineItemIds: Optional([
                    "invoice_line_item_ids"
                ]),
                invoiceType: .accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                mergeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                mergeExportedByUserId: Optional("merge_exported_by_user_id"),
                mergeInvoiceId: Optional("merge_invoice_id"),
                mergeInvoiceNumber: Optional("merge_invoice_number"),
                mergeInvoiceUrl: Optional("merge_invoice_url"),
                mergeLinkedAccountId: Optional("merge_linked_account_id"),
                mergeRemoteId: Optional("merge_remote_id"),
                mergeRemoteWasDeleted: Optional(true),
                mergeStatus: Optional(.draft),
                name: Optional("name"),
                ownedByOrgId: "owned_by_org_id",
                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1,
                status: Optional(.draft),
                stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceNumber: Optional("stripe_invoice_number"),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                stripeStatus: Optional(.draft),
                stripeWasDeleted: Optional(true),
                totalAmount: Optional(1.1),
                voidReason: Optional("void_reason"),
                voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                voidedByUserId: Optional("voided_by_user_id")
            )),
            invoiceLineItem: Optional(InvoiceLineItem1(
                id: "_id",
                awbNumber: Optional("awb_number"),
                billingPeriodId: Optional("billing_period_id"),
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: .usd,
                description: "description",
                exportRefSageItemId: Optional("export_ref__sage__item_id"),
                invoiceId: Optional("invoice_id"),
                invoiceType: .accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                lineItemType: .baseRate,
                orderId: Optional("order_id"),
                ownedByOrgId: "owned_by_org_id",
                quantity: 1.1,
                rateSheetId: Optional("rate_sheet_id"),
                schemaVersion: 1,
                shipperAccountId: Optional("shipper_account_id"),
                status: Optional(.draft),
                taskGroupId: Optional("task_group_id"),
                taxPercentage: Optional(1.1),
                unit: Optional(.each),
                unitPrice: 1.1
            ))
        )
        let response = try await client.billingNew.billingPeriods.closeV1(
            billingPeriodId: "billing_period_id",
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
                  "amount": 1.1,
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_user_id": "closed_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "cycle": "daily",
                  "description": "description",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "open",
                  "task_group_ids": [
                    "task_group_ids"
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
        let expectedResponse = BillingPeriod1(
            id: "_id",
            amount: 1.1,
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            closedByUserId: Optional("closed_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: .usd,
            cycle: .daily,
            description: "description",
            invoiceType: .accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(.open),
            taskGroupIds: Optional([
                "task_group_ids"
            ])
        )
        let response = try await client.billingNew.billingPeriods.createV1(
            request: .init(
                amount: 1.1,
                currencyCode: .usd,
                cycle: .daily,
                description: "description",
                invoiceType: .accountsReceivable,
                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1
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
        let response = try await client.billingNew.billingPeriods.deleteV1(
            billingPeriodId: "billing_period_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getExpandedV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "billing_period": {
                    "_id": "_id",
                    "amount": 1.1,
                    "closed_at_timestamp": "2024-01-15T09:30:00Z",
                    "closed_by_user_id": "closed_by_user_id",
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "currency_code": "USD",
                    "cycle": "daily",
                    "description": "description",
                    "invoice_type": "accounts_receivable",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "name": "name",
                    "owned_by_org_id": "owned_by_org_id",
                    "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                    "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "shipper_account_id": "shipper_account_id",
                    "status": "open",
                    "task_group_ids": [
                      "task_group_ids"
                    ]
                  },
                  "invoice": {
                    "_id": "_id",
                    "approved_at_timestamp": "2024-01-15T09:30:00Z",
                    "approved_by_user_id": "approved_by_user_id",
                    "counterparty_account_ids": [
                      "counterparty_account_ids"
                    ],
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "currency_code": "USD",
                    "description": "description",
                    "export_ref__sage__customer_id": "export_ref__sage__customer_id",
                    "export_ref__sage__department_id": "export_ref__sage__department_id",
                    "file_exported_at_timestamp": "2024-01-15T09:30:00Z",
                    "file_exported_by_user_id": "file_exported_by_user_id",
                    "invoice_line_item_ids": [
                      "invoice_line_item_ids"
                    ],
                    "invoice_type": "accounts_receivable",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "merge_exported_at_timestamp": "2024-01-15T09:30:00Z",
                    "merge_exported_by_user_id": "merge_exported_by_user_id",
                    "merge_invoice_id": "merge_invoice_id",
                    "merge_invoice_number": "merge_invoice_number",
                    "merge_invoice_url": "merge_invoice_url",
                    "merge_linked_account_id": "merge_linked_account_id",
                    "merge_remote_id": "merge_remote_id",
                    "merge_remote_was_deleted": true,
                    "merge_status": "draft",
                    "name": "name",
                    "owned_by_org_id": "owned_by_org_id",
                    "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                    "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "status": "draft",
                    "stripe_exported_at_timestamp": "2024-01-15T09:30:00Z",
                    "stripe_exported_by_user_id": "stripe_exported_by_user_id",
                    "stripe_invoice_id": "stripe_invoice_id",
                    "stripe_invoice_number": "stripe_invoice_number",
                    "stripe_invoice_url": "stripe_invoice_url",
                    "stripe_status": "draft",
                    "stripe_was_deleted": true,
                    "total_amount": 1.1,
                    "void_reason": "void_reason",
                    "voided_at_timestamp": "2024-01-15T09:30:00Z",
                    "voided_by_user_id": "voided_by_user_id"
                  },
                  "invoice_line_item": {
                    "_id": "_id",
                    "awb_number": "awb_number",
                    "billing_period_id": "billing_period_id",
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "currency_code": "USD",
                    "description": "description",
                    "export_ref__sage__item_id": "export_ref__sage__item_id",
                    "invoice_id": "invoice_id",
                    "invoice_type": "accounts_receivable",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "line_item_type": "base_rate",
                    "order_id": "order_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "quantity": 1.1,
                    "rate_sheet_id": "rate_sheet_id",
                    "schema_version": 1,
                    "shipper_account_id": "shipper_account_id",
                    "status": "draft",
                    "task_group_id": "task_group_id",
                    "tax_percentage": 1.1,
                    "unit": "each",
                    "unit_price": 1.1
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
        let expectedResponse = BillingPeriodExpanded1(
            billingPeriod: BillingPeriod1(
                id: "_id",
                amount: 1.1,
                closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                closedByUserId: Optional("closed_by_user_id"),
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: .usd,
                cycle: .daily,
                description: "description",
                invoiceType: .accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                name: Optional("name"),
                ownedByOrgId: "owned_by_org_id",
                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1,
                shipperAccountId: Optional("shipper_account_id"),
                status: Optional(.open),
                taskGroupIds: Optional([
                    "task_group_ids"
                ])
            ),
            invoice: Optional(Invoice1(
                id: "_id",
                approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                approvedByUserId: Optional("approved_by_user_id"),
                counterpartyAccountIds: Optional([
                    "counterparty_account_ids"
                ]),
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: .usd,
                description: Optional("description"),
                exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
                exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
                fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                fileExportedByUserId: Optional("file_exported_by_user_id"),
                invoiceLineItemIds: Optional([
                    "invoice_line_item_ids"
                ]),
                invoiceType: .accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                mergeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                mergeExportedByUserId: Optional("merge_exported_by_user_id"),
                mergeInvoiceId: Optional("merge_invoice_id"),
                mergeInvoiceNumber: Optional("merge_invoice_number"),
                mergeInvoiceUrl: Optional("merge_invoice_url"),
                mergeLinkedAccountId: Optional("merge_linked_account_id"),
                mergeRemoteId: Optional("merge_remote_id"),
                mergeRemoteWasDeleted: Optional(true),
                mergeStatus: Optional(.draft),
                name: Optional("name"),
                ownedByOrgId: "owned_by_org_id",
                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1,
                status: Optional(.draft),
                stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceNumber: Optional("stripe_invoice_number"),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                stripeStatus: Optional(.draft),
                stripeWasDeleted: Optional(true),
                totalAmount: Optional(1.1),
                voidReason: Optional("void_reason"),
                voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                voidedByUserId: Optional("voided_by_user_id")
            )),
            invoiceLineItem: Optional(InvoiceLineItem1(
                id: "_id",
                awbNumber: Optional("awb_number"),
                billingPeriodId: Optional("billing_period_id"),
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: .usd,
                description: "description",
                exportRefSageItemId: Optional("export_ref__sage__item_id"),
                invoiceId: Optional("invoice_id"),
                invoiceType: .accountsReceivable,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                lineItemType: .baseRate,
                orderId: Optional("order_id"),
                ownedByOrgId: "owned_by_org_id",
                quantity: 1.1,
                rateSheetId: Optional("rate_sheet_id"),
                schemaVersion: 1,
                shipperAccountId: Optional("shipper_account_id"),
                status: Optional(.draft),
                taskGroupId: Optional("task_group_id"),
                taxPercentage: Optional(1.1),
                unit: Optional(.each),
                unitPrice: 1.1
            ))
        )
        let response = try await client.billingNew.billingPeriods.getExpandedV1(
            billingPeriodId: "billing_period_id",
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
                      "billing_period": {
                        "_id": "_id",
                        "amount": 1.1,
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "currency_code": "USD",
                        "cycle": "daily",
                        "description": "description",
                        "invoice_type": "accounts_receivable",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "last_edited_by_user_id": "last_edited_by_user_id",
                        "owned_by_org_id": "owned_by_org_id",
                        "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                        "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1
                      },
                      "invoice": {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "currency_code": "USD",
                        "invoice_type": "accounts_receivable",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "last_edited_by_user_id": "last_edited_by_user_id",
                        "owned_by_org_id": "owned_by_org_id",
                        "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                        "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1
                      },
                      "invoice_line_item": {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "currency_code": "USD",
                        "description": "description",
                        "invoice_type": "accounts_receivable",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "last_edited_by_user_id": "last_edited_by_user_id",
                        "line_item_type": "base_rate",
                        "owned_by_org_id": "owned_by_org_id",
                        "quantity": 1.1,
                        "schema_version": 1,
                        "unit_price": 1.1
                      }
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
        let expectedResponse = BillingPeriodListRes(
            items: [
                BillingPeriodExpanded1(
                    billingPeriod: BillingPeriod1(
                        id: "_id",
                        amount: 1.1,
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        currencyCode: .usd,
                        cycle: .daily,
                        description: "description",
                        invoiceType: .accountsReceivable,
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedByUserId: "last_edited_by_user_id",
                        ownedByOrgId: "owned_by_org_id",
                        periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1
                    ),
                    invoice: Optional(Invoice1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        currencyCode: .usd,
                        invoiceType: .accountsReceivable,
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedByUserId: "last_edited_by_user_id",
                        ownedByOrgId: "owned_by_org_id",
                        periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1
                    )),
                    invoiceLineItem: Optional(InvoiceLineItem1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        currencyCode: .usd,
                        description: "description",
                        invoiceType: .accountsReceivable,
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedByUserId: "last_edited_by_user_id",
                        lineItemType: .baseRate,
                        ownedByOrgId: "owned_by_org_id",
                        quantity: 1.1,
                        schemaVersion: 1,
                        unitPrice: 1.1
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.billingNew.billingPeriods.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterStatuses: [
                .open
            ],
            filterInvoiceTypes: [
                .accountsReceivable
            ],
            filterCurrencyCodes: [
                .usd
            ],
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterCounterpartyDriverId: "filter_counterparty_driver_id",
            filterShipperAccountId: "filter_shipper_account_id",
            filterTaskGroupId: "filter_task_group_id",
            filterPeriodStartAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPeriodStartAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPeriodEndAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterPeriodEndAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addTaskGroupsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "amount": 1.1,
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_user_id": "closed_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "cycle": "daily",
                  "description": "description",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "open",
                  "task_group_ids": [
                    "task_group_ids"
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
        let expectedResponse = BillingPeriod1(
            id: "_id",
            amount: 1.1,
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            closedByUserId: Optional("closed_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: .usd,
            cycle: .daily,
            description: "description",
            invoiceType: .accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(.open),
            taskGroupIds: Optional([
                "task_group_ids"
            ])
        )
        let response = try await client.billingNew.billingPeriods.addTaskGroupsV1(
            billingPeriodId: "billing_period_id",
            request: BillingPeriodTaskGroupsReq(
                taskGroupIds: [
                    "task_group_ids"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeTaskGroupsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "amount": 1.1,
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_user_id": "closed_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "cycle": "daily",
                  "description": "description",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "open",
                  "task_group_ids": [
                    "task_group_ids"
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
        let expectedResponse = BillingPeriod1(
            id: "_id",
            amount: 1.1,
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            closedByUserId: Optional("closed_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: .usd,
            cycle: .daily,
            description: "description",
            invoiceType: .accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(.open),
            taskGroupIds: Optional([
                "task_group_ids"
            ])
        )
        let response = try await client.billingNew.billingPeriods.removeTaskGroupsV1(
            billingPeriodId: "billing_period_id",
            request: BillingPeriodTaskGroupsReq(
                taskGroupIds: [
                    "task_group_ids"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "amount": 1.1,
                  "closed_at_timestamp": "2024-01-15T09:30:00Z",
                  "closed_by_user_id": "closed_by_user_id",
                  "counterparty_driver_id": "counterparty_driver_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "cycle": "daily",
                  "description": "description",
                  "invoice_type": "accounts_receivable",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                  "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "open",
                  "task_group_ids": [
                    "task_group_ids"
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
        let expectedResponse = BillingPeriod1(
            id: "_id",
            amount: 1.1,
            closedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            closedByUserId: Optional("closed_by_user_id"),
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: .usd,
            cycle: .daily,
            description: "description",
            invoiceType: .accountsReceivable,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(.open),
            taskGroupIds: Optional([
                "task_group_ids"
            ])
        )
        let response = try await client.billingNew.billingPeriods.updateV1(
            billingPeriodId: "billing_period_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}