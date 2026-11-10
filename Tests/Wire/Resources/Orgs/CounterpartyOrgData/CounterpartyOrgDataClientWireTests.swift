import Foundation
import Testing
import Chrt

@Suite("CounterpartyOrgDataClient Wire Tests") struct CounterpartyOrgDataClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "invoice_details": [
                    {
                      "invoice_frequency": "per_order",
                      "invoice_period_notes": "invoice_period_notes",
                      "invoice_recipients": [
                        {
                          "email_address": "email_address",
                          "role": "accounts_payable"
                        }
                      ],
                      "label": "label",
                      "notes": "notes",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "payment_instructions": "payment_instructions",
                      "payment_terms_net_days": 1
                    }
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "notes": "notes",
                  "off_chrt_reference_ids": [
                    "off_chrt_reference_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "status": "onboarding"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CounterpartyOrgData1(
            id: "_id",
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            invoiceDetails: Optional([
                CounterpartyInvoiceDetails1(
                    invoiceFrequency: Optional(CounterpartyInvoiceFrequencyEnum1.perOrder),
                    invoicePeriodNotes: Optional("invoice_period_notes"),
                    invoiceRecipients: Optional([
                        CounterpartyInvoiceRecipient1(
                            emailAddress: "email_address",
                            role: CounterpartyInvoiceRecipientRoleEnum1.accountsPayable
                        )
                    ]),
                    label: "label",
                    notes: Optional("notes"),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    paymentInstructions: Optional("payment_instructions"),
                    paymentTermsNetDays: Optional(1)
                )
            ]),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            notes: Optional("notes"),
            offChrtReferenceIds: Optional([
                "off_chrt_reference_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            status: Optional(CounterpartyOrgStatusEnum1.onboarding)
        )
        let response = try await client.orgs.counterpartyOrgData.createV1(
            request: .init(schemaVersion: 1),
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
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "invoice_details": [
                    {
                      "invoice_frequency": "per_order",
                      "invoice_period_notes": "invoice_period_notes",
                      "invoice_recipients": [
                        {
                          "email_address": "email_address",
                          "role": "accounts_payable"
                        }
                      ],
                      "label": "label",
                      "notes": "notes",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "payment_instructions": "payment_instructions",
                      "payment_terms_net_days": 1
                    }
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "notes": "notes",
                  "off_chrt_reference_ids": [
                    "off_chrt_reference_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "status": "onboarding"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CounterpartyOrgData1(
            id: "_id",
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            invoiceDetails: Optional([
                CounterpartyInvoiceDetails1(
                    invoiceFrequency: Optional(CounterpartyInvoiceFrequencyEnum1.perOrder),
                    invoicePeriodNotes: Optional("invoice_period_notes"),
                    invoiceRecipients: Optional([
                        CounterpartyInvoiceRecipient1(
                            emailAddress: "email_address",
                            role: CounterpartyInvoiceRecipientRoleEnum1.accountsPayable
                        )
                    ]),
                    label: "label",
                    notes: Optional("notes"),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    paymentInstructions: Optional("payment_instructions"),
                    paymentTermsNetDays: Optional(1)
                )
            ]),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            notes: Optional("notes"),
            offChrtReferenceIds: Optional([
                "off_chrt_reference_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            status: Optional(CounterpartyOrgStatusEnum1.onboarding)
        )
        let response = try await client.orgs.counterpartyOrgData.getV1(
            counterpartyOrgDataId: "counterparty_org_data_id",
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
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "counterparty_org_id": "counterparty_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "invoice_details": [
                        {
                          "label": "label"
                        }
                      ],
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_edited_by_user_id": "last_edited_by_user_id",
                      "notes": "notes",
                      "off_chrt_reference_ids": [
                        "off_chrt_reference_ids"
                      ],
                      "owned_by_org_id": "owned_by_org_id",
                      "schema_version": 1,
                      "status": "onboarding"
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
        let expectedResponse = CounterpartyOrgDataListRes(
            items: Optional([
                CounterpartyOrgData1(
                    id: "_id",
                    counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                    counterpartyOrgId: Optional("counterparty_org_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    invoiceDetails: Optional([
                        CounterpartyInvoiceDetails1(
                            label: "label"
                        )
                    ]),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedByUserId: "last_edited_by_user_id",
                    notes: Optional("notes"),
                    offChrtReferenceIds: Optional([
                        "off_chrt_reference_ids"
                    ]),
                    ownedByOrgId: "owned_by_org_id",
                    schemaVersion: 1,
                    status: Optional(CounterpartyOrgStatusEnum1.onboarding)
                )
            ]),
            totalCount: 1
        )
        let response = try await client.orgs.counterpartyOrgData.listV1(
            page: 1,
            pageSize: 1,
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterStatus: .onboarding,
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
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "invoice_details": [
                    {
                      "invoice_frequency": "per_order",
                      "invoice_period_notes": "invoice_period_notes",
                      "invoice_recipients": [
                        {
                          "email_address": "email_address",
                          "role": "accounts_payable"
                        }
                      ],
                      "label": "label",
                      "notes": "notes",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "payment_instructions": "payment_instructions",
                      "payment_terms_net_days": 1
                    }
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "notes": "notes",
                  "off_chrt_reference_ids": [
                    "off_chrt_reference_ids"
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "schema_version": 1,
                  "status": "onboarding"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CounterpartyOrgData1(
            id: "_id",
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            invoiceDetails: Optional([
                CounterpartyInvoiceDetails1(
                    invoiceFrequency: Optional(CounterpartyInvoiceFrequencyEnum1.perOrder),
                    invoicePeriodNotes: Optional("invoice_period_notes"),
                    invoiceRecipients: Optional([
                        CounterpartyInvoiceRecipient1(
                            emailAddress: "email_address",
                            role: CounterpartyInvoiceRecipientRoleEnum1.accountsPayable
                        )
                    ]),
                    label: "label",
                    notes: Optional("notes"),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    paymentInstructions: Optional("payment_instructions"),
                    paymentTermsNetDays: Optional(1)
                )
            ]),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            notes: Optional("notes"),
            offChrtReferenceIds: Optional([
                "off_chrt_reference_ids"
            ]),
            ownedByOrgId: "owned_by_org_id",
            schemaVersion: 1,
            status: Optional(CounterpartyOrgStatusEnum1.onboarding)
        )
        let response = try await client.orgs.counterpartyOrgData.updateV1(
            counterpartyOrgDataId: "counterparty_org_data_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}