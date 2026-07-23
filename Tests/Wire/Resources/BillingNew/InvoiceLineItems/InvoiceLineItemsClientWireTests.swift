import Foundation
import Testing
import Chrt

@Suite("InvoiceLineItemsClient Wire Tests") struct InvoiceLineItemsClientWireTests {
    @Test func applyChrtGroundProviderRatesV11() async throws -> Void {
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
        let expectedResponse = ApplyChrtGroundProviderRatesRes(
            createdInvoiceLineItemCount: 1,
            invoiceId: "invoice_id"
        )
        let response = try await client.billingNew.invoiceLineItems.applyChrtGroundProviderRatesV1(
            request: .init(
                invoiceType: .accountsReceivable,
                orgId: "org_id",
                rateSheetId: "rate_sheet_id",
                taskGroupId: "task_group_id"
            ),
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
                  "counterparty_off_chrt_org_data": [
                    {
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
        let expectedResponse = InvoiceLineItemsByOrderExpandedRes(
            counterpartyAccounts: [
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
            ],
            counterpartyOffChrtOrgData: [
                OffChrtOrgData1(
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
                    ))
                )
            ],
            invoiceLineItems: [
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
                lineItemType: .baseRate,
                orgId: "org_id"
            ),
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
                orgId: "org_id",
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

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
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
            ],
            totalCount: 1
        )
        let response = try await client.billingNew.invoiceLineItems.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterInvoiceTypes: [
                .accountsReceivable
            ],
            filterCurrencyCodes: [
                .usd
            ],
            filterLineItemTypes: [
                .baseRate
            ],
            filterUnits: [
                .each
            ],
            filterCounterpartyOrgId: "filter_counterparty_org_id",
            filterCounterpartyOffChrtOrgDataId: "filter_counterparty_off_chrt_org_data_id",
            filterCounterpartyAccountId: "filter_counterparty_account_id",
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