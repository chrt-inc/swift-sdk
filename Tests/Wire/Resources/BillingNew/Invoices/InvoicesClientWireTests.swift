import Foundation
import Testing
import Chrt

@Suite("InvoicesClient Wire Tests") struct InvoicesClientWireTests {
    @Test func approveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "approved_at_timestamp": "2024-01-15T09:30:00Z",
                  "approved_by_user_id": "approved_by_user_id",
                  "counterparty_account_ids": [
                    "counterparty_account_ids"
                  ],
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Invoice1(
            id: "_id",
            approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            approvedByUserId: Optional("approved_by_user_id"),
            counterpartyAccountIds: Optional([
                "counterparty_account_ids"
            ]),
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
        )
        let response = try await client.billingNew.invoices.approveV1(
            invoiceId: "invoice_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
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
        let response = try await client.billingNew.invoices.createV1(
            request: .init(
                currencyCode: .usd,
                invoiceType: .accountsReceivable,
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
        let response = try await client.billingNew.invoices.deleteV1(
            invoiceId: "invoice_id",
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
                  "counterparty_accounts": [
                    {
                      "_id": "_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "location": {
                        "geometry": {
                          "geometries": [
                            {
                              "coordinates": [
                                []
                              ],
                              "type": "LineString"
                            }
                          ],
                          "type": "GeometryCollection"
                        },
                        "type": "Feature"
                      },
                      "name": "name",
                      "off_chrt_org_data_id": "off_chrt_org_data_id",
                      "org_id": "org_id",
                      "schema_version": 1
                    }
                  ],
                  "counterparty_off_chrt_org_data": {
                    "_id": "_id",
                    "created_by_user_id": "created_by_user_id",
                    "email_address": "email_address",
                    "industry": "industry",
                    "name": "name",
                    "org_type": "provider",
                    "owned_by_org_id": "owned_by_org_id",
                    "phone_number": "phone_number",
                    "schema_version": 1,
                    "street_address": {
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1,
                      "type": "Feature"
                    }
                  },
                  "counterparty_org": {
                    "_id": "_id",
                    "description": "description",
                    "email_address": "email_address",
                    "handle": "handle",
                    "industry": "industry",
                    "name": "name",
                    "org_id": "org_id",
                    "org_type": "provider",
                    "phone_number": "phone_number",
                    "schema_version": 1,
                    "street_address": {
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1,
                      "type": "Feature"
                    }
                  },
                  "invoice": {
                    "_id": "_id",
                    "approved_at_timestamp": "2024-01-15T09:30:00Z",
                    "approved_by_user_id": "approved_by_user_id",
                    "counterparty_account_ids": [
                      "counterparty_account_ids"
                    ],
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
                  "invoice_line_items": [
                    {
                      "_id": "_id",
                      "counterparty_account_id": "counterparty_account_id",
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
                      "schema_version": 1,
                      "task_group_id": "task_group_id",
                      "unit": "each",
                      "unit_price": 1.1
                    }
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
        let expectedResponse = InvoiceExpandedRes(
            counterpartyAccounts: Optional([
                Account1(
                    id: "_id",
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    location: Optional(LocationFeature(
                        geometry: .geometryCollection(
                            .init(
                                geometries: [
                                    .lineString(
                                        .init(
                                            coordinates: [
                                                LineStringCoordinatesItem.position2D(
                                                    []
                                                )
                                            ]
                                        )
                                    )
                                ]
                            )
                        ),
                        type: .feature
                    )),
                    name: "name",
                    offChrtOrgDataId: Optional("off_chrt_org_data_id"),
                    orgId: Optional("org_id"),
                    schemaVersion: 1
                )
            ]),
            counterpartyOffChrtOrgData: Optional(OffChrtOrgData1(
                id: "_id",
                createdByUserId: "created_by_user_id",
                emailAddress: Optional("email_address"),
                industry: Optional("industry"),
                name: "name",
                orgType: .provider,
                ownedByOrgId: "owned_by_org_id",
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    )),
                    type: .feature
                ))
            )),
            counterpartyOrg: Optional(OrgPublicData1(
                id: "_id",
                description: Optional("description"),
                emailAddress: Optional("email_address"),
                handle: Optional("handle"),
                industry: Optional("industry"),
                name: "name",
                orgId: "org_id",
                orgType: .provider,
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    )),
                    type: .feature
                ))
            )),
            invoice: Invoice1(
                id: "_id",
                approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                approvedByUserId: Optional("approved_by_user_id"),
                counterpartyAccountIds: Optional([
                    "counterparty_account_ids"
                ]),
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
            ),
            invoiceLineItems: Optional([
                InvoiceLineItem1(
                    id: "_id",
                    counterpartyAccountId: Optional("counterparty_account_id"),
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
                    schemaVersion: 1,
                    taskGroupId: Optional("task_group_id"),
                    unit: Optional(.each),
                    unitPrice: 1.1
                )
            ])
        )
        let response = try await client.billingNew.invoices.getExpandedV1(
            invoiceId: "invoice_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "approved_at_timestamp": "2024-01-15T09:30:00Z",
                  "approved_by_user_id": "approved_by_user_id",
                  "counterparty_account_ids": [
                    "counterparty_account_ids"
                  ],
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Invoice1(
            id: "_id",
            approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            approvedByUserId: Optional("approved_by_user_id"),
            counterpartyAccountIds: Optional([
                "counterparty_account_ids"
            ]),
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
        )
        let response = try await client.billingNew.invoices.addLineItemV1(
            invoiceId: "invoice_id",
            invoiceLineItemId: "invoice_line_item_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "approved_at_timestamp": "2024-01-15T09:30:00Z",
                  "approved_by_user_id": "approved_by_user_id",
                  "counterparty_account_ids": [
                    "counterparty_account_ids"
                  ],
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Invoice1(
            id: "_id",
            approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            approvedByUserId: Optional("approved_by_user_id"),
            counterpartyAccountIds: Optional([
                "counterparty_account_ids"
            ]),
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
        )
        let response = try await client.billingNew.invoices.removeLineItemV1(
            invoiceId: "invoice_id",
            invoiceLineItemId: "invoice_line_item_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addLineItemsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "approved_at_timestamp": "2024-01-15T09:30:00Z",
                  "approved_by_user_id": "approved_by_user_id",
                  "counterparty_account_ids": [
                    "counterparty_account_ids"
                  ],
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Invoice1(
            id: "_id",
            approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            approvedByUserId: Optional("approved_by_user_id"),
            counterpartyAccountIds: Optional([
                "counterparty_account_ids"
            ]),
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
        )
        let response = try await client.billingNew.invoices.addLineItemsV1(
            invoiceId: "invoice_id",
            request: .init(invoiceLineItemIds: [
                "invoice_line_item_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeLineItemsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "approved_at_timestamp": "2024-01-15T09:30:00Z",
                  "approved_by_user_id": "approved_by_user_id",
                  "counterparty_account_ids": [
                    "counterparty_account_ids"
                  ],
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Invoice1(
            id: "_id",
            approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            approvedByUserId: Optional("approved_by_user_id"),
            counterpartyAccountIds: Optional([
                "counterparty_account_ids"
            ]),
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
        )
        let response = try await client.billingNew.invoices.removeLineItemsV1(
            invoiceId: "invoice_id",
            request: .init(invoiceLineItemIds: [
                "invoice_line_item_ids"
            ]),
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
                      "approved_at_timestamp": "2024-01-15T09:30:00Z",
                      "approved_by_user_id": "approved_by_user_id",
                      "counterparty_account_ids": [
                        "counterparty_account_ids"
                      ],
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
        let expectedResponse = InvoiceListRes(
            items: [
                Invoice1(
                    id: "_id",
                    approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    approvedByUserId: Optional("approved_by_user_id"),
                    counterpartyAccountIds: Optional([
                        "counterparty_account_ids"
                    ]),
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
                )
            ],
            totalCount: 1
        )
        let response = try await client.billingNew.invoices.listV1(
            search: "search",
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterCounterpartyAccountId: "filter_counterparty_account_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
        let response = try await client.billingNew.invoices.updateV1(
            invoiceId: "invoice_id",
            request: .init(),
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
                  "approved_at_timestamp": "2024-01-15T09:30:00Z",
                  "approved_by_user_id": "approved_by_user_id",
                  "counterparty_account_ids": [
                    "counterparty_account_ids"
                  ],
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Invoice1(
            id: "_id",
            approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            approvedByUserId: Optional("approved_by_user_id"),
            counterpartyAccountIds: Optional([
                "counterparty_account_ids"
            ]),
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
        )
        let response = try await client.billingNew.invoices.getV1(
            invoiceId: "invoice_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func voidV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "approved_at_timestamp": "2024-01-15T09:30:00Z",
                  "approved_by_user_id": "approved_by_user_id",
                  "counterparty_account_ids": [
                    "counterparty_account_ids"
                  ],
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Invoice1(
            id: "_id",
            approvedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            approvedByUserId: Optional("approved_by_user_id"),
            counterpartyAccountIds: Optional([
                "counterparty_account_ids"
            ]),
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
        )
        let response = try await client.billingNew.invoices.voidV1(
            invoiceId: "invoice_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}