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
                      "airbill_charge": 1.1,
                      "airlines": [
                        "airlines"
                      ],
                      "awb_numbers": [
                        "awb_numbers"
                      ],
                      "base_rate": 1.1,
                      "billing_period_end_at_timestamp": "2024-01-15T09:30:00Z",
                      "billing_period_start_at_timestamp": "2024-01-15T09:30:00Z",
                      "cargo_types": [
                        "cargo_types"
                      ],
                      "charge_per_quantity": 1.1,
                      "charges_subtotal": 1.1,
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
                      "invoice_number": "invoice_number",
                      "mileage_estimated": 1.1,
                      "net_billing": 1.1,
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "order_placer_comments": "order_placer_comments",
                      "order_short_id": "order_short_id",
                      "origin_iata": "origin_iata",
                      "other_charges": 1.1,
                      "other_charges_detail": [
                        "other_charges_detail"
                      ],
                      "pod_date": "pod_date",
                      "pod_name": "pod_name",
                      "pod_time": "pod_time",
                      "quantity": 1,
                      "tax_1_amount": 1.1,
                      "tax_1_description": "tax_1_description",
                      "tax_2_amount": 1.1,
                      "tax_2_description": "tax_2_description",
                      "tax_3_amount": 1.1,
                      "tax_3_description": "tax_3_description",
                      "total_tax": 1.1,
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
        let expectedResponse = InvoiceExportListRes(
            items: [
                InvoiceExportListItem(
                    accountName: Optional("account_name"),
                    airbillCharge: 1.1,
                    airlines: Optional([
                        "airlines"
                    ]),
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
                    baseRate: 1.1,
                    billingPeriodEndAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    billingPeriodStartAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    cargoTypes: Optional([
                        "cargo_types"
                    ]),
                    chargePerQuantity: Optional(1.1),
                    chargesSubtotal: 1.1,
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
                    invoiceApprovalTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    invoiceNumber: "invoice_number",
                    mileageEstimated: Optional(1.1),
                    netBilling: 1.1,
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    orderPlacerComments: Optional("order_placer_comments"),
                    orderShortId: Optional("order_short_id"),
                    originIata: Optional("origin_iata"),
                    otherCharges: 1.1,
                    otherChargesDetail: Optional([
                        "other_charges_detail"
                    ]),
                    podDate: Optional("pod_date"),
                    podName: Optional("pod_name"),
                    podTime: Optional("pod_time"),
                    quantity: Optional(1),
                    tax1Amount: Optional(1.1),
                    tax1Description: Optional("tax_1_description"),
                    tax2Amount: Optional(1.1),
                    tax2Description: Optional("tax_2_description"),
                    tax3Amount: Optional(1.1),
                    tax3Description: Optional("tax_3_description"),
                    totalTax: 1.1,
                    weightPounds: Optional(1.1)
                )
            ],
            totalCount: 1
        )
        let response = try await client.billingNew.invoices.export.listV1(
            invoiceId: "invoice_id",
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}