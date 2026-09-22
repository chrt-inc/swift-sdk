import Foundation
import Testing
import Chrt

@Suite("InvoicesClient Wire Tests") struct InvoicesClientWireTests {
    @Test func approveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
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
                }
                """#.utf8
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
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            description: Optional("description"),
            exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
            exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
            fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            fileExportedByUserId: Optional("file_exported_by_user_id"),
            invoiceLineItemIds: Optional([
                "invoice_line_item_ids"
            ]),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
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
            mergeStatus: Optional(InvoiceMergeStatusEnum1.draft),
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            status: Optional(InvoiceStatusEnum1.draft),
            stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceNumber: Optional("stripe_invoice_number"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeStatus: Optional(InvoiceStripeStatusEnum1.draft),
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
            body: Foundation.Data(
                #"""
                string
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.billingNew.invoices.createV1(
            request: InvoiceCreateReq(
                currencyCode: .usd,
                invoiceType: .accountsReceivable,
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createFromOrdersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "added_invoice_line_item_ids": [
                    "added_invoice_line_item_ids"
                  ],
                  "already_invoiced_line_item_ids": [
                    "already_invoiced_line_item_ids"
                  ],
                  "finalized_line_item_ids": [
                    "finalized_line_item_ids"
                  ],
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
                  "orders_without_added_charges": [
                    "orders_without_added_charges"
                  ],
                  "unmatched_line_item_ids": [
                    "unmatched_line_item_ids"
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
        let expectedResponse = InvoiceCreateFromOrdersRes(
            addedInvoiceLineItemIds: Optional([
                "added_invoice_line_item_ids"
            ]),
            alreadyInvoicedLineItemIds: Optional([
                "already_invoiced_line_item_ids"
            ]),
            finalizedLineItemIds: Optional([
                "finalized_line_item_ids"
            ]),
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
                currencyCode: BillingCurrencyCodeEnum1.usd,
                description: Optional("description"),
                exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
                exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
                fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                fileExportedByUserId: Optional("file_exported_by_user_id"),
                invoiceLineItemIds: Optional([
                    "invoice_line_item_ids"
                ]),
                invoiceType: InvoiceTypeEnum1.accountsReceivable,
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
                mergeStatus: Optional(InvoiceMergeStatusEnum1.draft),
                name: Optional("name"),
                ownedByOrgId: "owned_by_org_id",
                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1,
                status: Optional(InvoiceStatusEnum1.draft),
                stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceNumber: Optional("stripe_invoice_number"),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                stripeStatus: Optional(InvoiceStripeStatusEnum1.draft),
                stripeWasDeleted: Optional(true),
                totalAmount: Optional(1.1),
                voidReason: Optional("void_reason"),
                voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                voidedByUserId: Optional("voided_by_user_id")
            )),
            ordersWithoutAddedCharges: Optional([
                "orders_without_added_charges"
            ]),
            unmatchedLineItemIds: Optional([
                "unmatched_line_item_ids"
            ])
        )
        let response = try await client.billingNew.invoices.createFromOrdersV1(
            request: InvoiceCreateFromOrdersReq(
                currencyCode: .usd,
                invoiceType: .accountsReceivable,
                orderIds: [
                    "order_ids"
                ],
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
        let response = try await client.billingNew.invoices.deleteV1(
            invoiceId: "invoice_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getExpandedV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                  "counterparty_driver": {
                    "_id": "_id",
                    "archived_at_timestamp": "2024-01-15T09:30:00Z",
                    "auto_assign_enabled": true,
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "last_seen_at_location": {
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
                    },
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "waiting": true
                  },
                  "counterparty_off_chrt_org_data": {
                    "_id": "_id",
                    "air_waybill_prefix": "air_waybill_prefix",
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
                  "invoice_line_items": [
                    {
                      "counterparty_driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "counterparty_off_chrt_org_data": {
                        "_id": "_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "org_type": "provider",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1
                      },
                      "counterparty_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
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
                      },
                      "order": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1,
                        "short_id": "short_id"
                      },
                      "shipper_account": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "schema_version": 1
                      }
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
        let expectedResponse = InvoiceExpandedRes(
            counterpartyAccounts: Optional([
                Account1(
                    id: "_id",
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    location: Optional(LocationFeature(
                        geometry: Geometry.geometryCollection(
                            .init(
                                geometries: [
                                    GeometriesItem.lineString(
                                        .init(
                                            coordinates: [
                                                CoordinatesItem.position2D(
                                                    []
                                                )
                                            ],
                                            additionalProperties: [
                                                "type": JSONValue.string("LineString")
                                            ]
                                        )
                                    )
                                ],
                                additionalProperties: [
                                    "type": JSONValue.string("GeometryCollection")
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
            counterpartyDriver: Optional(Driver1(
                id: "_id",
                archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                autoAssignEnabled: Optional(true),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                lastSeenAtLocation: Optional(LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometriesItem.lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
                                                []
                                            )
                                        ],
                                        additionalProperties: [
                                            "type": JSONValue.string("LineString")
                                        ]
                                    )
                                )
                            ],
                            additionalProperties: [
                                "type": JSONValue.string("GeometryCollection")
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    )),
                    type: .feature
                )),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(DriverStatusEnum.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    VehicleTypeEnum.sedan
                ]),
                waiting: Optional(true)
            )),
            counterpartyOffChrtOrgData: Optional(OffChrtOrgData1(
                id: "_id",
                airWaybillPrefix: Optional("air_waybill_prefix"),
                createdByUserId: "created_by_user_id",
                emailAddress: Optional("email_address"),
                industry: Optional("industry"),
                name: "name",
                orgType: OrgTypeEnum.provider,
                ownedByOrgId: "owned_by_org_id",
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometriesItem.lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
                                                []
                                            )
                                        ],
                                        additionalProperties: [
                                            "type": JSONValue.string("LineString")
                                        ]
                                    )
                                )
                            ],
                            additionalProperties: [
                                "type": JSONValue.string("GeometryCollection")
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
                orgType: OrgTypeEnum.provider,
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometriesItem.lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
                                                []
                                            )
                                        ],
                                        additionalProperties: [
                                            "type": JSONValue.string("LineString")
                                        ]
                                    )
                                )
                            ],
                            additionalProperties: [
                                "type": JSONValue.string("GeometryCollection")
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
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: BillingCurrencyCodeEnum1.usd,
                description: Optional("description"),
                exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
                exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
                fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                fileExportedByUserId: Optional("file_exported_by_user_id"),
                invoiceLineItemIds: Optional([
                    "invoice_line_item_ids"
                ]),
                invoiceType: InvoiceTypeEnum1.accountsReceivable,
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
                mergeStatus: Optional(InvoiceMergeStatusEnum1.draft),
                name: Optional("name"),
                ownedByOrgId: "owned_by_org_id",
                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1,
                status: Optional(InvoiceStatusEnum1.draft),
                stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceNumber: Optional("stripe_invoice_number"),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                stripeStatus: Optional(InvoiceStripeStatusEnum1.draft),
                stripeWasDeleted: Optional(true),
                totalAmount: Optional(1.1),
                voidReason: Optional("void_reason"),
                voidedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                voidedByUserId: Optional("voided_by_user_id")
            ),
            invoiceLineItems: Optional([
                InvoiceLineItemExpandedRes(
                    counterpartyDriver: Optional(Driver1(
                        id: "_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        userId: "user_id"
                    )),
                    counterpartyOffChrtOrgData: Optional(OffChrtOrgData1(
                        id: "_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        orgType: OrgTypeEnum.provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    )),
                    counterpartyOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    invoiceLineItem: InvoiceLineItem1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        currencyCode: BillingCurrencyCodeEnum1.usd,
                        description: "description",
                        invoiceType: InvoiceTypeEnum1.accountsReceivable,
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedByUserId: "last_edited_by_user_id",
                        lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                        ownedByOrgId: "owned_by_org_id",
                        quantity: 1.1,
                        schemaVersion: 1,
                        unitPrice: 1.1
                    ),
                    order: Optional(OrderLimitedForProvider1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1,
                        shortId: "short_id"
                    )),
                    shipperAccount: Optional(Account1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        schemaVersion: 1
                    ))
                )
            ])
        )
        let response = try await client.billingNew.invoices.getExpandedV1(
            invoiceId: "invoice_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addLineItemsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
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
                }
                """#.utf8
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
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            description: Optional("description"),
            exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
            exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
            fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            fileExportedByUserId: Optional("file_exported_by_user_id"),
            invoiceLineItemIds: Optional([
                "invoice_line_item_ids"
            ]),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
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
            mergeStatus: Optional(InvoiceMergeStatusEnum1.draft),
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            status: Optional(InvoiceStatusEnum1.draft),
            stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceNumber: Optional("stripe_invoice_number"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeStatus: Optional(InvoiceStripeStatusEnum1.draft),
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
            body: Foundation.Data(
                #"""
                {
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
                }
                """#.utf8
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
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            description: Optional("description"),
            exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
            exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
            fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            fileExportedByUserId: Optional("file_exported_by_user_id"),
            invoiceLineItemIds: Optional([
                "invoice_line_item_ids"
            ]),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
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
            mergeStatus: Optional(InvoiceMergeStatusEnum1.draft),
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            status: Optional(InvoiceStatusEnum1.draft),
            stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceNumber: Optional("stripe_invoice_number"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeStatus: Optional(InvoiceStripeStatusEnum1.draft),
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
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "counterparty_accounts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "name": "name",
                          "schema_version": 1
                        }
                      ],
                      "counterparty_off_chrt_org_data": {
                        "_id": "_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "org_type": "provider",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1
                      },
                      "counterparty_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
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
                      "orders": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "schema_version": 1,
                          "short_id": "short_id"
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
        let expectedResponse = InvoiceListRes(
            items: [
                InvoiceExpandedListItem(
                    counterpartyAccounts: Optional([
                        Account1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            name: "name",
                            schemaVersion: 1
                        )
                    ]),
                    counterpartyOffChrtOrgData: Optional(OffChrtOrgData1(
                        id: "_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        orgType: OrgTypeEnum.provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    )),
                    counterpartyOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    invoice: Invoice1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        currencyCode: BillingCurrencyCodeEnum1.usd,
                        invoiceType: InvoiceTypeEnum1.accountsReceivable,
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedByUserId: "last_edited_by_user_id",
                        ownedByOrgId: "owned_by_org_id",
                        periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1
                    ),
                    orders: Optional([
                        OrderLimitedForProvider1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            schemaVersion: 1,
                            shortId: "short_id"
                        )
                    ])
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
            filterInvoiceIds: [
                "filter_invoice_ids"
            ],
            filterStatuses: [
                .draft
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
            filterCounterpartyAccountId: "filter_counterparty_account_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func previewV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "calculation": {
                    "currency_code": "USD",
                    "net_amounts": {
                      "key": 1.1
                    },
                    "subtotal": 1.1,
                    "tax_breakdown": [
                      {
                        "invoice_line_item_id": "invoice_line_item_id",
                        "name": "name",
                        "percentage": 1.1,
                        "tax_amount": 1.1,
                        "tax_configuration_id": "tax_configuration_id",
                        "taxable_amount": 1.1
                      }
                    ],
                    "tax_total": 1.1,
                    "total_amount": 1.1
                  },
                  "invoice": {
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "currency_code": "USD",
                    "description": "description",
                    "export_ref__sage__customer_id": "export_ref__sage__customer_id",
                    "export_ref__sage__department_id": "export_ref__sage__department_id",
                    "invoice_type": "accounts_receivable",
                    "name": "name",
                    "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                    "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1
                  },
                  "invoice_line_items": [
                    {
                      "_id": "_id",
                      "awb_number": "awb_number",
                      "billing_period_id": "billing_period_id",
                      "counterparty_driver_id": "counterparty_driver_id",
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "counterparty_org_id": "counterparty_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "currency_code": "USD",
                      "currency_conversion": {
                        "conversion_rate": 1.1,
                        "source_currency_code": "USD",
                        "source_unit_price": 1.1
                      },
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
                      "total_amount": 1.1,
                      "unit": "each",
                      "unit_price": 1.1
                    }
                  ],
                  "tax_configurations_by_line_item_id": {
                    "key": {
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
                  }
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicePreviewRes(
            calculation: InvoiceTaxCalculation1(
                currencyCode: BillingCurrencyCodeEnum1.usd,
                netAmounts: Optional([
                    "key": 1.1
                ]),
                subtotal: 1.1,
                taxBreakdown: Optional([
                    CalculatedInvoiceTax1(
                        invoiceLineItemId: "invoice_line_item_id",
                        name: "name",
                        percentage: 1.1,
                        taxAmount: 1.1,
                        taxConfigurationId: "tax_configuration_id",
                        taxableAmount: 1.1
                    )
                ]),
                taxTotal: 1.1,
                totalAmount: 1.1
            ),
            invoice: InvoiceClientCreate1(
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                currencyCode: BillingCurrencyCodeEnum1.usd,
                description: Optional("description"),
                exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
                exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
                invoiceType: InvoiceTypeEnum1.accountsReceivable,
                name: Optional("name"),
                periodEndAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                periodStartAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                schemaVersion: 1
            ),
            invoiceLineItems: Optional([
                InvoiceLineItem1(
                    id: "_id",
                    awbNumber: Optional("awb_number"),
                    billingPeriodId: Optional("billing_period_id"),
                    counterpartyDriverId: Optional("counterparty_driver_id"),
                    counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                    counterpartyOrgId: Optional("counterparty_org_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    currencyConversion: Optional(InvoiceLineItemCurrencyConversion1(
                        conversionRate: 1.1,
                        sourceCurrencyCode: BillingCurrencyCodeEnum1.usd,
                        sourceUnitPrice: 1.1
                    )),
                    description: "description",
                    exportRefSageItemId: Optional("export_ref__sage__item_id"),
                    invoiceId: Optional("invoice_id"),
                    invoiceType: InvoiceTypeEnum1.accountsReceivable,
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedByUserId: "last_edited_by_user_id",
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    orderId: Optional("order_id"),
                    ownedByOrgId: "owned_by_org_id",
                    quantity: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: 1,
                    shipperAccountId: Optional("shipper_account_id"),
                    status: Optional(InvoiceLineItemStatusEnum1.draft),
                    taskGroupId: Optional("task_group_id"),
                    taxPercentage: Optional(1.1),
                    totalAmount: Optional(1.1),
                    unit: Optional(InvoiceLineItemUnitEnum1.each),
                    unitPrice: 1.1
                )
            ]),
            taxConfigurationsByLineItemId: Optional([
                "key": Optional(TaxConfiguration1(
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
                ))
            ])
        )
        let response = try await client.billingNew.invoices.previewV1(
            request: InvoiceCreateReq(
                currencyCode: .usd,
                invoiceType: .accountsReceivable,
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func previewFromOrdersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "already_invoiced_line_item_ids": [
                    "already_invoiced_line_item_ids"
                  ],
                  "calculation": {
                    "currency_code": "USD",
                    "net_amounts": {
                      "key": 1.1
                    },
                    "subtotal": 1.1,
                    "tax_breakdown": [
                      {
                        "invoice_line_item_id": "invoice_line_item_id",
                        "name": "name",
                        "percentage": 1.1,
                        "tax_amount": 1.1,
                        "tax_configuration_id": "tax_configuration_id",
                        "taxable_amount": 1.1
                      }
                    ],
                    "tax_total": 1.1,
                    "total_amount": 1.1
                  },
                  "finalized_line_item_ids": [
                    "finalized_line_item_ids"
                  ],
                  "invoice": {
                    "counterparty_driver_id": "counterparty_driver_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "currency_code": "USD",
                    "description": "description",
                    "export_ref__sage__customer_id": "export_ref__sage__customer_id",
                    "export_ref__sage__department_id": "export_ref__sage__department_id",
                    "invoice_type": "accounts_receivable",
                    "name": "name",
                    "period_end_at_timestamp": "2024-01-15T09:30:00Z",
                    "period_start_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1
                  },
                  "invoice_line_items": [
                    {
                      "_id": "_id",
                      "awb_number": "awb_number",
                      "billing_period_id": "billing_period_id",
                      "counterparty_driver_id": "counterparty_driver_id",
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "counterparty_org_id": "counterparty_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "currency_code": "USD",
                      "currency_conversion": {
                        "conversion_rate": 1.1,
                        "source_currency_code": "USD",
                        "source_unit_price": 1.1
                      },
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
                      "total_amount": 1.1,
                      "unit": "each",
                      "unit_price": 1.1
                    }
                  ],
                  "orders_without_selected_charges": [
                    "orders_without_selected_charges"
                  ],
                  "tax_configurations_by_line_item_id": {
                    "key": {
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
                  },
                  "tax_line_item_ids": [
                    "tax_line_item_ids"
                  ],
                  "unmatched_line_item_ids": [
                    "unmatched_line_item_ids"
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
        let expectedResponse = InvoicePreviewFromOrdersRes(
            alreadyInvoicedLineItemIds: Optional([
                "already_invoiced_line_item_ids"
            ]),
            calculation: InvoiceTaxCalculation1(
                currencyCode: BillingCurrencyCodeEnum1.usd,
                netAmounts: Optional([
                    "key": 1.1
                ]),
                subtotal: 1.1,
                taxBreakdown: Optional([
                    CalculatedInvoiceTax1(
                        invoiceLineItemId: "invoice_line_item_id",
                        name: "name",
                        percentage: 1.1,
                        taxAmount: 1.1,
                        taxConfigurationId: "tax_configuration_id",
                        taxableAmount: 1.1
                    )
                ]),
                taxTotal: 1.1,
                totalAmount: 1.1
            ),
            finalizedLineItemIds: Optional([
                "finalized_line_item_ids"
            ]),
            invoice: InvoiceClientCreate1(
                counterpartyDriverId: Optional("counterparty_driver_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                currencyCode: BillingCurrencyCodeEnum1.usd,
                description: Optional("description"),
                exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
                exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
                invoiceType: InvoiceTypeEnum1.accountsReceivable,
                name: Optional("name"),
                periodEndAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                periodStartAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                schemaVersion: 1
            ),
            invoiceLineItems: Optional([
                InvoiceLineItem1(
                    id: "_id",
                    awbNumber: Optional("awb_number"),
                    billingPeriodId: Optional("billing_period_id"),
                    counterpartyDriverId: Optional("counterparty_driver_id"),
                    counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                    counterpartyOrgId: Optional("counterparty_org_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    currencyConversion: Optional(InvoiceLineItemCurrencyConversion1(
                        conversionRate: 1.1,
                        sourceCurrencyCode: BillingCurrencyCodeEnum1.usd,
                        sourceUnitPrice: 1.1
                    )),
                    description: "description",
                    exportRefSageItemId: Optional("export_ref__sage__item_id"),
                    invoiceId: Optional("invoice_id"),
                    invoiceType: InvoiceTypeEnum1.accountsReceivable,
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedByUserId: "last_edited_by_user_id",
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    orderId: Optional("order_id"),
                    ownedByOrgId: "owned_by_org_id",
                    quantity: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: 1,
                    shipperAccountId: Optional("shipper_account_id"),
                    status: Optional(InvoiceLineItemStatusEnum1.draft),
                    taskGroupId: Optional("task_group_id"),
                    taxPercentage: Optional(1.1),
                    totalAmount: Optional(1.1),
                    unit: Optional(InvoiceLineItemUnitEnum1.each),
                    unitPrice: 1.1
                )
            ]),
            ordersWithoutSelectedCharges: Optional([
                "orders_without_selected_charges"
            ]),
            taxConfigurationsByLineItemId: Optional([
                "key": Optional(TaxConfiguration1(
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
                ))
            ]),
            taxLineItemIds: Optional([
                "tax_line_item_ids"
            ]),
            unmatchedLineItemIds: Optional([
                "unmatched_line_item_ids"
            ])
        )
        let response = try await client.billingNew.invoices.previewFromOrdersV1(
            request: InvoiceCreateFromOrdersReq(
                currencyCode: .usd,
                invoiceType: .accountsReceivable,
                orderIds: [
                    "order_ids"
                ],
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "type": "name",
                    "values": [
                      {
                        "invoice_ids": [
                          "invoice_ids"
                        ],
                        "value": "value"
                      }
                    ]
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
            InvoiceTypeaheadResult(
                type: .name,
                values: [
                    InvoiceTypeaheadValue(
                        invoiceIds: [
                            "invoice_ids"
                        ],
                        value: "value"
                    )
                ]
            )
        ]
        let response = try await client.billingNew.invoices.typeaheadV1(
            query: "query",
            limit: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
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
        let response = try await client.billingNew.invoices.updateV1(
            invoiceId: "invoice_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updatePeriodV11() async throws -> Void {
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
        let response = try await client.billingNew.invoices.updatePeriodV1(
            invoiceId: "invoice_id",
            request: .init(
                periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
                }
                """#.utf8
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
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            description: Optional("description"),
            exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
            exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
            fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            fileExportedByUserId: Optional("file_exported_by_user_id"),
            invoiceLineItemIds: Optional([
                "invoice_line_item_ids"
            ]),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
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
            mergeStatus: Optional(InvoiceMergeStatusEnum1.draft),
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            status: Optional(InvoiceStatusEnum1.draft),
            stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceNumber: Optional("stripe_invoice_number"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeStatus: Optional(InvoiceStripeStatusEnum1.draft),
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
            body: Foundation.Data(
                #"""
                {
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
                }
                """#.utf8
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
            counterpartyDriverId: Optional("counterparty_driver_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            description: Optional("description"),
            exportRefSageCustomerId: Optional("export_ref__sage__customer_id"),
            exportRefSageDepartmentId: Optional("export_ref__sage__department_id"),
            fileExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            fileExportedByUserId: Optional("file_exported_by_user_id"),
            invoiceLineItemIds: Optional([
                "invoice_line_item_ids"
            ]),
            invoiceType: InvoiceTypeEnum1.accountsReceivable,
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
            mergeStatus: Optional(InvoiceMergeStatusEnum1.draft),
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            periodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            periodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            schemaVersion: 1,
            status: Optional(InvoiceStatusEnum1.draft),
            stripeExportedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeExportedByUserId: Optional("stripe_exported_by_user_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceNumber: Optional("stripe_invoice_number"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeStatus: Optional(InvoiceStripeStatusEnum1.draft),
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