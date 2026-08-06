import Foundation
import Testing
import Chrt

@Suite("InvoiceLineItemsClient Wire Tests") struct InvoiceLineItemsClientWireTests {
    @Test func createAdHocV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
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
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
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
        ]
        let response = try await client.billingNew.invoiceLineItems.createAdHocV1(
            request: AdHocInvoiceLineItemsReq(
                adHocLineItems: [
                    AdHocInvoiceLineItem1(
                        invoiceLineItem: InvoiceLineItemClientCreate1(
                            currencyCode: .usd,
                            description: "description",
                            invoiceType: .accountsReceivable,
                            lineItemType: .baseRate,
                            quantity: 1.1,
                            schemaVersion: 1,
                            unitPrice: 1.1
                        )
                    )
                ],
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func previewAdHocV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
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
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            InvoiceLineItemServerCreate1(
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
        ]
        let response = try await client.billingNew.invoiceLineItems.previewAdHocV1(
            request: AdHocInvoiceLineItemsReq(
                adHocLineItems: [
                    AdHocInvoiceLineItem1(
                        invoiceLineItem: InvoiceLineItemClientCreate1(
                            currencyCode: .usd,
                            description: "description",
                            invoiceType: .accountsReceivable,
                            lineItemType: .baseRate,
                            quantity: 1.1,
                            schemaVersion: 1,
                            unitPrice: 1.1
                        )
                    )
                ],
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func approveManyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
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
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
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
        ]
        let response = try await client.billingNew.invoiceLineItems.approveManyV1(
            request: .init(invoiceLineItemIds: [
                "invoice_line_item_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "billing_periods": [
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
                  "counterparty_drivers": [
                    {
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
                    }
                  ],
                  "counterparty_off_chrt_org_data": [
                    {
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
                        "type": "Feature"
                      }
                    }
                  ],
                  "counterparty_orgs": [
                    {
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
                        "type": "Feature"
                      }
                    }
                  ],
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
                  ],
                  "shipper_accounts": [
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
        let expectedResponse = InvoiceLineItemsByOrderExpandedRes(
            billingPeriods: [
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
            counterpartyDrivers: [
                Driver1(
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
                )
            ],
            counterpartyOffChrtOrgData: [
                OffChrtOrgData1(
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
                    ))
                )
            ],
            counterpartyOrgs: [
                OrgPublicData1(
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
                        type: .feature
                    ))
                )
            ],
            invoiceLineItems: [
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
            ],
            shipperAccounts: [
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
            ]
        )
        let response = try await client.billingNew.invoiceLineItems.listByOrderV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createFromAmountV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "created_invoice_line_item_count": 1,
                  "invoice_id": "invoice_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateInvoiceLineItemsFromAmountRes(
            createdInvoiceLineItemCount: 1,
            invoiceId: "invoice_id"
        )
        let response = try await client.billingNew.invoiceLineItems.createFromAmountV1(
            request: .init(
                amount: 1.1,
                currencyCode: .usd,
                description: "description",
                invoiceType: .accountsReceivable,
                lineItemType: .baseRate
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createFromAwbCostsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "created_awbs": [
                    {
                      "awb_number": "awb_number",
                      "created_invoice_line_item_count": 1,
                      "order_id": "order_id"
                    }
                  ],
                  "created_invoice_line_item_count": 1,
                  "invoices": [
                    {
                      "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                      "created_awb_count": 1,
                      "created_invoice_line_item_count": 1,
                      "currency_code": "USD",
                      "invoice_id": "invoice_id"
                    }
                  ],
                  "rejected_awbs": [
                    {
                      "awb_number": "awb_number",
                      "reason": "already_billed"
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
        let expectedResponse = CreateInvoiceLineItemsFromAwbCostsRes(
            createdAwbs: Optional([
                CreateInvoiceLineItemsFromAwbCostsCreatedAwb1(
                    awbNumber: "awb_number",
                    createdInvoiceLineItemCount: 1,
                    orderId: "order_id"
                )
            ]),
            createdInvoiceLineItemCount: 1,
            invoices: Optional([
                CreateInvoiceLineItemsFromAwbCostsInvoiceRes1(
                    counterpartyOffChrtOrgDataId: "counterparty_off_chrt_org_data_id",
                    createdAwbCount: 1,
                    createdInvoiceLineItemCount: 1,
                    currencyCode: .usd,
                    invoiceId: "invoice_id"
                )
            ]),
            rejectedAwbs: Optional([
                CreateInvoiceLineItemsFromAwbCostsRejectedAwb1(
                    awbNumber: "awb_number",
                    reason: .alreadyBilled
                )
            ])
        )
        let response = try await client.billingNew.invoiceLineItems.createFromAwbCostsV1(
            request: .init(awbCosts: [
                CreateInvoiceLineItemsFromAwbCostsItem1(
                    awbNumber: "awb_number",
                    cost: Cost.double(
                        1.1
                    ),
                    currencyCode: .usd
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createFromLineItemsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "created_invoice_line_item_count": 1,
                  "invoice_id": "invoice_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateInvoiceLineItemsFromLineItemsRes(
            createdInvoiceLineItemCount: 1,
            invoiceId: "invoice_id"
        )
        let response = try await client.billingNew.invoiceLineItems.createFromLineItemsV1(
            request: .init(
                description: "description",
                invoiceLineItemAmountTransformation: InvoiceLineItemAmountTransformation1(
                    transformationType: .percent,
                    value: 1.1
                ),
                invoiceType: .accountsReceivable,
                lineItemType: .baseRate,
                sourceInvoiceLineItems: [
                    InvoiceLineItem1(
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
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteManyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "deleted_invoice_line_item_ids": [
                    "deleted_invoice_line_item_ids"
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
        let expectedResponse = InvoiceLineItemsDeleteManyRes(
            deletedInvoiceLineItemIds: [
                "deleted_invoice_line_item_ids"
            ]
        )
        let response = try await client.billingNew.invoiceLineItems.deleteManyV1(
            request: .init(invoiceLineItemIds: [
                "invoice_line_item_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createFromRateSheetsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
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
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
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
        ]
        let response = try await client.billingNew.invoiceLineItems.createFromRateSheetsV1(
            request: InvoiceLineItemsFromChrtGroundProviderRateSheetsReq(
                taskGroupChrtGroundProviderRateSheetIds: [
                    TaskGroupChrtGroundProviderRateSheetIds1(
                        rateSheetIds: [
                            "rate_sheet_ids"
                        ],
                        taskGroupId: "task_group_id"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func previewFromRateSheetsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "accounts_payable_invoice_line_items": [
                      {
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
                    ],
                    "accounts_receivable_invoice_line_items": [
                      {
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
                    ],
                    "task_group_id": "task_group_id"
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            TaskGroupInvoiceLineItemsFromChrtGroundProviderRateSheetsPreview1(
                accountsPayableInvoiceLineItems: Optional([
                    InvoiceLineItemServerCreate1(
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
                    )
                ]),
                accountsReceivableInvoiceLineItems: Optional([
                    InvoiceLineItemServerCreate1(
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
                    )
                ]),
                taskGroupId: "task_group_id"
            )
        ]
        let response = try await client.billingNew.invoiceLineItems.previewFromRateSheetsV1(
            request: InvoiceLineItemsFromChrtGroundProviderRateSheetsReq(
                taskGroupChrtGroundProviderRateSheetIds: [
                    TaskGroupChrtGroundProviderRateSheetIds1(
                        rateSheetIds: [
                            "rate_sheet_ids"
                        ],
                        taskGroupId: "task_group_id"
                    )
                ]
            ),
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
        let expectedResponse = InvoiceLineItemListRes(
            items: [
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
            ],
            totalCount: 1
        )
        let response = try await client.billingNew.invoiceLineItems.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterCounterpartyDriverId: "filter_counterparty_driver_id",
            filterShipperAccountId: "filter_shipper_account_id",
            filterInvoiceId: "filter_invoice_id",
            filterIsInvoiced: true,
            filterOrderId: "filter_order_id",
            filterTaskGroupId: "filter_task_group_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recalculateTaxesV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
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
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
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
        ]
        let response = try await client.billingNew.invoiceLineItems.recalculateTaxesV1(
            request: .init(orderId: "order_id"),
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
        let response = try await client.billingNew.invoiceLineItems.updateV1(
            invoiceLineItemId: "invoice_line_item_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}