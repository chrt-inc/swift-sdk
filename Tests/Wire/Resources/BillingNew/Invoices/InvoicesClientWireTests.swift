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
                  "counterparty_driver": {
                    "_id": "_id",
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
                                                CoordinatesItem.position2D(
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
            counterpartyDriver: Optional(Driver1(
                id: "_id",
                autoAssignEnabled: Optional(true),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                lastSeenAtLocation: Optional(LocationFeature(
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
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
                )),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
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
                                            CoordinatesItem.position2D(
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
                                            CoordinatesItem.position2D(
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
                        orgType: .provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    )),
                    counterpartyOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    )),
                    invoice: Invoice1(
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

    @Test func updatePeriodV11() async throws -> Void {
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
            body: Data(
                """
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
        )
        let response = try await client.billingNew.invoices.voidV1(
            invoiceId: "invoice_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}