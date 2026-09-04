import Foundation
import Testing
import Chrt

@Suite("ExportClient Wire Tests") struct ExportClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "account_name": "account_name",
                      "airlines": [
                        "airlines"
                      ],
                      "awb_numbers": [
                        "awb_numbers"
                      ],
                      "billing_period_end_at_timestamp": "2024-01-15T09:30:00Z",
                      "billing_period_start_at_timestamp": "2024-01-15T09:30:00Z",
                      "cargo_descriptions": [
                        "cargo_descriptions"
                      ],
                      "cargo_quantity": 1,
                      "cargo_types": [
                        "cargo_types"
                      ],
                      "counterparty_name": "counterparty_name",
                      "currency_code": "USD",
                      "delivery_address": "delivery_address",
                      "delivery_location_name": "delivery_location_name",
                      "delivery_status": "delivery_status",
                      "delivery_stop_number": 1,
                      "delivery_stops_on_order": 1,
                      "destination_iata": "destination_iata",
                      "flight_numbers": [
                        "flight_numbers"
                      ],
                      "invoice_approval_timestamp": "2024-01-15T09:30:00Z",
                      "invoice_line_item_id": "invoice_line_item_id",
                      "invoice_line_item_status": "draft",
                      "invoice_number": "invoice_number",
                      "invoice_status": "draft",
                      "invoice_type": "accounts_receivable",
                      "line_item_awb_number": "line_item_awb_number",
                      "line_item_description": "line_item_description",
                      "line_item_quantity": 1.1,
                      "line_item_total_amount": 1.1,
                      "line_item_type": "base_rate",
                      "line_item_unit": "each",
                      "line_item_unit_price": 1.1,
                      "mileage_estimated": 1.1,
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "order_placer_comments": "order_placer_comments",
                      "order_short_id": "order_short_id",
                      "origin_iata": "origin_iata",
                      "pod_at_timestamp": "2024-01-15T09:30:00Z",
                      "pod_name": "pod_name",
                      "tax_percentage": 1.1,
                      "weight_pounds": 1.1
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
        let expectedResponse = InvoiceLineItemExportListRes(
            items: [
                InvoiceLineItemExportListItem(
                    accountName: Optional("account_name"),
                    airlines: Optional([
                        "airlines"
                    ]),
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
                    billingPeriodEndAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    billingPeriodStartAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cargoDescriptions: Optional([
                        "cargo_descriptions"
                    ]),
                    cargoQuantity: Optional(1),
                    cargoTypes: Optional([
                        "cargo_types"
                    ]),
                    counterpartyName: Optional("counterparty_name"),
                    currencyCode: BillingCurrencyCodeEnum1.usd,
                    deliveryAddress: Optional("delivery_address"),
                    deliveryLocationName: Optional("delivery_location_name"),
                    deliveryStatus: Optional("delivery_status"),
                    deliveryStopNumber: Optional(1),
                    deliveryStopsOnOrder: Optional(1),
                    destinationIata: Optional("destination_iata"),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
                    invoiceApprovalTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    invoiceLineItemId: "invoice_line_item_id",
                    invoiceLineItemStatus: InvoiceLineItemStatusEnum1.draft,
                    invoiceNumber: Optional("invoice_number"),
                    invoiceStatus: Optional(InvoiceStatusEnum1.draft),
                    invoiceType: InvoiceTypeEnum1.accountsReceivable,
                    lineItemAwbNumber: Optional("line_item_awb_number"),
                    lineItemDescription: "line_item_description",
                    lineItemQuantity: 1.1,
                    lineItemTotalAmount: 1.1,
                    lineItemType: InvoiceLineItemTypeEnum1.baseRate,
                    lineItemUnit: Optional(InvoiceLineItemUnitEnum1.each),
                    lineItemUnitPrice: 1.1,
                    mileageEstimated: Optional(1.1),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    orderPlacerComments: Optional("order_placer_comments"),
                    orderShortId: Optional("order_short_id"),
                    originIata: Optional("origin_iata"),
                    podAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    podName: Optional("pod_name"),
                    taxPercentage: Optional(1.1),
                    weightPounds: Optional(1.1)
                )
            ],
            totalCount: 1
        )
        let response = try await client.billingNew.invoiceLineItems.export.listV1(
            page: 1,
            pageSize: 1,
            request: .init(orderIds: [
                "order_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}