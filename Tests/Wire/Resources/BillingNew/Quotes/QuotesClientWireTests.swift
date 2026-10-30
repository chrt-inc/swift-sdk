import Foundation
import Testing
import Chrt

@Suite("QuotesClient Wire Tests") struct QuotesClientWireTests {
    @Test func acceptV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "accepted_at_timestamp": "2024-01-15T09:30:00Z",
                  "accepted_by_user_id": "accepted_by_user_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "line_items": [
                    {
                      "awb_number": "awb_number",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "currency_code": "USD",
                      "description": "description",
                      "line_item_type": "base_rate",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "tax_percentage": 1.1,
                      "unit": "each",
                      "unit_price": 1.1
                    }
                  ],
                  "order_id": "order_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "quote_type": "non_binding",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "draft",
                  "superseded_at_timestamp": "2024-01-15T09:30:00Z",
                  "superseded_by_order_billing_quote_id": "superseded_by_order_billing_quote_id",
                  "withdrawn_at_timestamp": "2024-01-15T09:30:00Z",
                  "withdrawn_by_user_id": "withdrawn_by_user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderBillingQuote1(
            id: "_id",
            acceptedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            acceptedByUserId: Optional("accepted_by_user_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            lineItems: Optional([
                ProFormaLineItem1(
                    awbNumber: Optional("awb_number"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    description: "description",
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    provenance: ProFormaLineItemProvenanceEnum1.rateSheet,
                    quantity: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    taxPercentage: Optional(1.1),
                    unit: Optional(InvoiceLineItemUnitEnum1.each),
                    unitPrice: 1.1
                )
            ]),
            orderId: "order_id",
            ownedByOrgId: "owned_by_org_id",
            quoteType: OrderBillingQuoteTypeEnum1.nonBinding,
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(OrderBillingQuoteStatusEnum1.draft),
            supersededAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            supersededByOrderBillingQuoteId: Optional("superseded_by_order_billing_quote_id"),
            withdrawnAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            withdrawnByUserId: Optional("withdrawn_by_user_id")
        )
        let response = try await client.billingNew.quotes.acceptV1(
            quoteId: "quote_id",
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
                  "accepted_at_timestamp": "2024-01-15T09:30:00Z",
                  "accepted_by_user_id": "accepted_by_user_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "line_items": [
                    {
                      "awb_number": "awb_number",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "currency_code": "USD",
                      "description": "description",
                      "line_item_type": "base_rate",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "tax_percentage": 1.1,
                      "unit": "each",
                      "unit_price": 1.1
                    }
                  ],
                  "order_id": "order_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "quote_type": "non_binding",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "draft",
                  "superseded_at_timestamp": "2024-01-15T09:30:00Z",
                  "superseded_by_order_billing_quote_id": "superseded_by_order_billing_quote_id",
                  "withdrawn_at_timestamp": "2024-01-15T09:30:00Z",
                  "withdrawn_by_user_id": "withdrawn_by_user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderBillingQuote1(
            id: "_id",
            acceptedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            acceptedByUserId: Optional("accepted_by_user_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            lineItems: Optional([
                ProFormaLineItem1(
                    awbNumber: Optional("awb_number"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    description: "description",
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    provenance: ProFormaLineItemProvenanceEnum1.rateSheet,
                    quantity: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    taxPercentage: Optional(1.1),
                    unit: Optional(InvoiceLineItemUnitEnum1.each),
                    unitPrice: 1.1
                )
            ]),
            orderId: "order_id",
            ownedByOrgId: "owned_by_org_id",
            quoteType: OrderBillingQuoteTypeEnum1.nonBinding,
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(OrderBillingQuoteStatusEnum1.draft),
            supersededAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            supersededByOrderBillingQuoteId: Optional("superseded_by_order_billing_quote_id"),
            withdrawnAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            withdrawnByUserId: Optional("withdrawn_by_user_id")
        )
        let response = try await client.billingNew.quotes.createV1(
            request: .init(
                currencyCode: .usd,
                orderId: "order_id",
                quoteType: .nonBinding,
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
        let response = try await client.billingNew.quotes.deleteV1(
            quoteId: "quote_id",
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
                  "accepted_at_timestamp": "2024-01-15T09:30:00Z",
                  "accepted_by_user_id": "accepted_by_user_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "line_items": [
                    {
                      "awb_number": "awb_number",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "currency_code": "USD",
                      "description": "description",
                      "line_item_type": "base_rate",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "tax_percentage": 1.1,
                      "unit": "each",
                      "unit_price": 1.1
                    }
                  ],
                  "order_id": "order_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "quote_type": "non_binding",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "draft",
                  "superseded_at_timestamp": "2024-01-15T09:30:00Z",
                  "superseded_by_order_billing_quote_id": "superseded_by_order_billing_quote_id",
                  "withdrawn_at_timestamp": "2024-01-15T09:30:00Z",
                  "withdrawn_by_user_id": "withdrawn_by_user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderBillingQuote1(
            id: "_id",
            acceptedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            acceptedByUserId: Optional("accepted_by_user_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            lineItems: Optional([
                ProFormaLineItem1(
                    awbNumber: Optional("awb_number"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    description: "description",
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    provenance: ProFormaLineItemProvenanceEnum1.rateSheet,
                    quantity: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    taxPercentage: Optional(1.1),
                    unit: Optional(InvoiceLineItemUnitEnum1.each),
                    unitPrice: 1.1
                )
            ]),
            orderId: "order_id",
            ownedByOrgId: "owned_by_org_id",
            quoteType: OrderBillingQuoteTypeEnum1.nonBinding,
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(OrderBillingQuoteStatusEnum1.draft),
            supersededAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            supersededByOrderBillingQuoteId: Optional("superseded_by_order_billing_quote_id"),
            withdrawnAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            withdrawnByUserId: Optional("withdrawn_by_user_id")
        )
        let response = try await client.billingNew.quotes.getV1(
            quoteId: "quote_id",
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
                    "accepted_at_timestamp": "2024-01-15T09:30:00Z",
                    "accepted_by_user_id": "accepted_by_user_id",
                    "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                    "counterparty_org_id": "counterparty_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "currency_code": "USD",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_by_user_id": "last_edited_by_user_id",
                    "line_items": [
                      {
                        "currency_code": "USD",
                        "description": "description",
                        "line_item_type": "base_rate",
                        "provenance": "rate_sheet",
                        "quantity": 1.1,
                        "unit_price": 1.1
                      }
                    ],
                    "order_id": "order_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "quote_type": "non_binding",
                    "schema_version": 1,
                    "shipper_account_id": "shipper_account_id",
                    "status": "draft",
                    "superseded_at_timestamp": "2024-01-15T09:30:00Z",
                    "superseded_by_order_billing_quote_id": "superseded_by_order_billing_quote_id",
                    "withdrawn_at_timestamp": "2024-01-15T09:30:00Z",
                    "withdrawn_by_user_id": "withdrawn_by_user_id"
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
            OrderBillingQuote1(
                id: "_id",
                acceptedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                acceptedByUserId: Optional("accepted_by_user_id"),
                counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
                counterpartyOrgId: Optional("counterparty_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                currencyCode: BillingCurrencyCodeEnum1.usd,
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedByUserId: "last_edited_by_user_id",
                lineItems: Optional([
                    ProFormaLineItem1(
                        currencyCode: BillingCurrencyCodeEnum1.usd,
                        description: "description",
                        lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                        provenance: ProFormaLineItemProvenanceEnum1.rateSheet,
                        quantity: 1.1,
                        unitPrice: 1.1
                    )
                ]),
                orderId: "order_id",
                ownedByOrgId: "owned_by_org_id",
                quoteType: OrderBillingQuoteTypeEnum1.nonBinding,
                schemaVersion: 1,
                shipperAccountId: Optional("shipper_account_id"),
                status: Optional(OrderBillingQuoteStatusEnum1.draft),
                supersededAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                supersededByOrderBillingQuoteId: Optional("superseded_by_order_billing_quote_id"),
                withdrawnAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                withdrawnByUserId: Optional("withdrawn_by_user_id")
            )
        ]
        let response = try await client.billingNew.quotes.listV1(
            orderId: "order_id",
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
                  "accepted_at_timestamp": "2024-01-15T09:30:00Z",
                  "accepted_by_user_id": "accepted_by_user_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "line_items": [
                    {
                      "awb_number": "awb_number",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "currency_code": "USD",
                      "description": "description",
                      "line_item_type": "base_rate",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "tax_percentage": 1.1,
                      "unit": "each",
                      "unit_price": 1.1
                    }
                  ],
                  "order_id": "order_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "quote_type": "non_binding",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "draft",
                  "superseded_at_timestamp": "2024-01-15T09:30:00Z",
                  "superseded_by_order_billing_quote_id": "superseded_by_order_billing_quote_id",
                  "withdrawn_at_timestamp": "2024-01-15T09:30:00Z",
                  "withdrawn_by_user_id": "withdrawn_by_user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderBillingQuote1(
            id: "_id",
            acceptedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            acceptedByUserId: Optional("accepted_by_user_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            lineItems: Optional([
                ProFormaLineItem1(
                    awbNumber: Optional("awb_number"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    description: "description",
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    provenance: ProFormaLineItemProvenanceEnum1.rateSheet,
                    quantity: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    taxPercentage: Optional(1.1),
                    unit: Optional(InvoiceLineItemUnitEnum1.each),
                    unitPrice: 1.1
                )
            ]),
            orderId: "order_id",
            ownedByOrgId: "owned_by_org_id",
            quoteType: OrderBillingQuoteTypeEnum1.nonBinding,
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(OrderBillingQuoteStatusEnum1.draft),
            supersededAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            supersededByOrderBillingQuoteId: Optional("superseded_by_order_billing_quote_id"),
            withdrawnAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            withdrawnByUserId: Optional("withdrawn_by_user_id")
        )
        let response = try await client.billingNew.quotes.updateV1(
            quoteId: "quote_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func withdrawV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "accepted_at_timestamp": "2024-01-15T09:30:00Z",
                  "accepted_by_user_id": "accepted_by_user_id",
                  "counterparty_off_chrt_org_data_id": "counterparty_off_chrt_org_data_id",
                  "counterparty_org_id": "counterparty_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "currency_code": "USD",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_by_user_id": "last_edited_by_user_id",
                  "line_items": [
                    {
                      "awb_number": "awb_number",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "currency_code": "USD",
                      "description": "description",
                      "line_item_type": "base_rate",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "tax_percentage": 1.1,
                      "unit": "each",
                      "unit_price": 1.1
                    }
                  ],
                  "order_id": "order_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "quote_type": "non_binding",
                  "schema_version": 1,
                  "shipper_account_id": "shipper_account_id",
                  "status": "draft",
                  "superseded_at_timestamp": "2024-01-15T09:30:00Z",
                  "superseded_by_order_billing_quote_id": "superseded_by_order_billing_quote_id",
                  "withdrawn_at_timestamp": "2024-01-15T09:30:00Z",
                  "withdrawn_by_user_id": "withdrawn_by_user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderBillingQuote1(
            id: "_id",
            acceptedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            acceptedByUserId: Optional("accepted_by_user_id"),
            counterpartyOffChrtOrgDataId: Optional("counterparty_off_chrt_org_data_id"),
            counterpartyOrgId: Optional("counterparty_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            currencyCode: BillingCurrencyCodeEnum1.usd,
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedByUserId: "last_edited_by_user_id",
            lineItems: Optional([
                ProFormaLineItem1(
                    awbNumber: Optional("awb_number"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    description: "description",
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    provenance: ProFormaLineItemProvenanceEnum1.rateSheet,
                    quantity: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    taxPercentage: Optional(1.1),
                    unit: Optional(InvoiceLineItemUnitEnum1.each),
                    unitPrice: 1.1
                )
            ]),
            orderId: "order_id",
            ownedByOrgId: "owned_by_org_id",
            quoteType: OrderBillingQuoteTypeEnum1.nonBinding,
            schemaVersion: 1,
            shipperAccountId: Optional("shipper_account_id"),
            status: Optional(OrderBillingQuoteStatusEnum1.draft),
            supersededAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            supersededByOrderBillingQuoteId: Optional("superseded_by_order_billing_quote_id"),
            withdrawnAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            withdrawnByUserId: Optional("withdrawn_by_user_id")
        )
        let response = try await client.billingNew.quotes.withdrawV1(
            quoteId: "quote_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}