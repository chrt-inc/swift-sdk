import Foundation
import Testing
import Chrt

@Suite("RateSheetLineItemsClient Wire Tests") struct RateSheetLineItemsClientWireTests {
    @Test func generateManyV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "created_invoice_line_item_count": 1,
                  "failed_order_count": 1,
                  "results": [
                    {
                      "created_invoice_line_items": [
                        {
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
                      ],
                      "error_detail": "error_detail",
                      "error_status_code": 1,
                      "order_id": "order_id",
                      "status": "generated"
                    }
                  ],
                  "skipped_order_count": 1,
                  "succeeded_order_count": 1,
                  "total_order_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderRateSheetLineItemsGenerateManyRes(
            createdInvoiceLineItemCount: 1,
            failedOrderCount: 1,
            results: Optional([
                OrderRateSheetLineItemsGenerateManyResult1(
                    createdInvoiceLineItems: Optional([
                        InvoiceLineItem1(
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
                        )
                    ]),
                    errorDetail: Optional("error_detail"),
                    errorStatusCode: Optional(1),
                    orderId: "order_id",
                    status: OrderRateSheetLineItemsGenerateManyStatusEnum.generated
                )
            ]),
            skippedOrderCount: 1,
            succeededOrderCount: 1,
            totalOrderCount: 1
        )
        let response = try await client.billingNew.orders.rateSheetLineItems.generateManyV1(
            request: .init(orderIds: [
                "order_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}