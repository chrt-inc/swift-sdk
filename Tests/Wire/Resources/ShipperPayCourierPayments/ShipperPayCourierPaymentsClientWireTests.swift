import Foundation
import Testing
import Chrt

@Suite("ShipperPayCourierPaymentsClient Wire Tests") struct ShipperPayCourierPaymentsClientWireTests {
    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "shipper_pay_courier_line_item_group_ids": [
                    "shipper_pay_courier_line_item_group_ids"
                  ],
                  "task_group_ids": [
                    "task_group_ids"
                  ],
                  "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                  "shipper_org_id": "shipper_org_id",
                  "courier_org_id": "courier_org_id",
                  "stripe_connect_shipper_pay_courier_customer_id": "stripe_connect_shipper_pay_courier_customer_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "payment_amount": 1.1,
                  "stripe_invoice_status": "invoice_not_yet_created",
                  "stripe_invoice_completed_timestamp": "2024-01-15T09:30:00Z",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShipperPayCourierPayment1(
            schemaVersion: 1,
            shipperPayCourierLineItemGroupIds: [
                "shipper_pay_courier_line_item_group_ids"
            ],
            taskGroupIds: [
                "task_group_ids"
            ],
            offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
            shipperOrgId: Optional("shipper_org_id"),
            courierOrgId: "courier_org_id",
            stripeConnectShipperPayCourierCustomerId: Optional("stripe_connect_shipper_pay_courier_customer_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            paymentAmount: 1.1,
            stripeInvoiceStatus: Optional(.invoiceNotYetCreated),
            stripeInvoiceCompletedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: "_id"
        )
        let response = try await client.shipperPayCourierPayments.getByIdV1(
            shipperPayCourierPaymentId: "shipper_pay_courier_payment_id",
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
        let response = try await client.shipperPayCourierPayments.deleteV1(
            shipperPayCourierPaymentId: "shipper_pay_courier_payment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByOrderIdOrShortIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "shipper_pay_courier_line_item_group_ids": [
                    "shipper_pay_courier_line_item_group_ids"
                  ],
                  "task_group_ids": [
                    "task_group_ids"
                  ],
                  "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                  "shipper_org_id": "shipper_org_id",
                  "courier_org_id": "courier_org_id",
                  "stripe_connect_shipper_pay_courier_customer_id": "stripe_connect_shipper_pay_courier_customer_id",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "payment_amount": 1.1,
                  "stripe_invoice_status": "invoice_not_yet_created",
                  "stripe_invoice_completed_timestamp": "2024-01-15T09:30:00Z",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShipperPayCourierPayment1(
            schemaVersion: 1,
            shipperPayCourierLineItemGroupIds: [
                "shipper_pay_courier_line_item_group_ids"
            ],
            taskGroupIds: [
                "task_group_ids"
            ],
            offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
            shipperOrgId: Optional("shipper_org_id"),
            courierOrgId: "courier_org_id",
            stripeConnectShipperPayCourierCustomerId: Optional("stripe_connect_shipper_pay_courier_customer_id"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            paymentAmount: 1.1,
            stripeInvoiceStatus: Optional(.invoiceNotYetCreated),
            stripeInvoiceCompletedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: "_id"
        )
        let response = try await client.shipperPayCourierPayments.getByOrderIdOrShortIdV1(
            orderIdOrShortId: "order_id_or_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByShipperOrgIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "payments": [
                    {
                      "schema_version": 1,
                      "shipper_pay_courier_line_item_group_ids": [
                        "shipper_pay_courier_line_item_group_ids"
                      ],
                      "task_group_ids": [
                        "task_group_ids"
                      ],
                      "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                      "shipper_org_id": "shipper_org_id",
                      "courier_org_id": "courier_org_id",
                      "stripe_connect_shipper_pay_courier_customer_id": "stripe_connect_shipper_pay_courier_customer_id",
                      "stripe_invoice_id": "stripe_invoice_id",
                      "stripe_invoice_url": "stripe_invoice_url",
                      "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                      "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                      "payment_amount": 1.1,
                      "stripe_invoice_status": "invoice_not_yet_created",
                      "stripe_invoice_completed_timestamp": "2024-01-15T09:30:00Z",
                      "_id": "_id"
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
        let expectedResponse = GetShipperPayCourierPaymentsForShipperRes(
            payments: [
                ShipperPayCourierPayment1(
                    schemaVersion: 1,
                    shipperPayCourierLineItemGroupIds: [
                        "shipper_pay_courier_line_item_group_ids"
                    ],
                    taskGroupIds: [
                        "task_group_ids"
                    ],
                    offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                    shipperOrgId: Optional("shipper_org_id"),
                    courierOrgId: "courier_org_id",
                    stripeConnectShipperPayCourierCustomerId: Optional("stripe_connect_shipper_pay_courier_customer_id"),
                    stripeInvoiceId: Optional("stripe_invoice_id"),
                    stripeInvoiceUrl: Optional("stripe_invoice_url"),
                    stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                    paymentAmount: 1.1,
                    stripeInvoiceStatus: Optional(.invoiceNotYetCreated),
                    stripeInvoiceCompletedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    id: "_id"
                )
            ]
        )
        let response = try await client.shipperPayCourierPayments.listByShipperOrgIdV1(
            request: .init(statuses: [
                .invoiceNotYetCreated
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByCourierOrgIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "payments": [
                    {
                      "schema_version": 1,
                      "shipper_pay_courier_line_item_group_ids": [
                        "shipper_pay_courier_line_item_group_ids"
                      ],
                      "task_group_ids": [
                        "task_group_ids"
                      ],
                      "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                      "shipper_org_id": "shipper_org_id",
                      "courier_org_id": "courier_org_id",
                      "stripe_connect_shipper_pay_courier_customer_id": "stripe_connect_shipper_pay_courier_customer_id",
                      "stripe_invoice_id": "stripe_invoice_id",
                      "stripe_invoice_url": "stripe_invoice_url",
                      "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                      "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                      "payment_amount": 1.1,
                      "stripe_invoice_status": "invoice_not_yet_created",
                      "stripe_invoice_completed_timestamp": "2024-01-15T09:30:00Z",
                      "_id": "_id"
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
        let expectedResponse = GetShipperPayCourierPaymentsForShipperRes(
            payments: [
                ShipperPayCourierPayment1(
                    schemaVersion: 1,
                    shipperPayCourierLineItemGroupIds: [
                        "shipper_pay_courier_line_item_group_ids"
                    ],
                    taskGroupIds: [
                        "task_group_ids"
                    ],
                    offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                    shipperOrgId: Optional("shipper_org_id"),
                    courierOrgId: "courier_org_id",
                    stripeConnectShipperPayCourierCustomerId: Optional("stripe_connect_shipper_pay_courier_customer_id"),
                    stripeInvoiceId: Optional("stripe_invoice_id"),
                    stripeInvoiceUrl: Optional("stripe_invoice_url"),
                    stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                    paymentAmount: 1.1,
                    stripeInvoiceStatus: Optional(.invoiceNotYetCreated),
                    stripeInvoiceCompletedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    id: "_id"
                )
            ]
        )
        let response = try await client.shipperPayCourierPayments.listByCourierOrgIdV1(
            request: .init(statuses: [
                .invoiceNotYetCreated
            ]),
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
        let response = try await client.shipperPayCourierPayments.createV1(
            request: CreateShipperPayCourierPaymentReq(
                orderIdOrShortId: "order_id_or_short_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func previewV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_groups": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "task_ids": [
                        "task_ids"
                      ],
                      "courier_org_id": "courier_org_id",
                      "order_cancelled": true,
                      "status": "not_started",
                      "driver_id": "driver_id",
                      "created_at": "2024-01-15T09:30:00Z",
                      "started_at": "2024-01-15T09:30:00Z",
                      "completed_at": "2024-01-15T09:30:00Z",
                      "completed": true,
                      "paused": true
                    }
                  ],
                  "line_item_groups": [
                    {
                      "schema_version": 1,
                      "task_group_id": "task_group_id",
                      "courier_org_id": "courier_org_id",
                      "shipper_org_id": "shipper_org_id",
                      "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                      "order_cancelled": true,
                      "rate_sheet_id": "rate_sheet_id",
                      "line_items": [
                        {
                          "schema_version": 1,
                          "item": "base_rate",
                          "quantity": 1.1,
                          "rate": 1.1,
                          "comment": null,
                          "created_at": "2024-01-15T09:30:00Z",
                          "uuid_str": "uuid_str"
                        }
                      ],
                      "_id": "_id"
                    }
                  ],
                  "total_amount": 1.1,
                  "payment_ready": true
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PaymentPreviewResponse(
            taskGroups: [
                TaskGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    taskIds: [
                        "task_ids"
                    ],
                    courierOrgId: Optional("courier_org_id"),
                    orderCancelled: Optional(true),
                    status: Optional(.notStarted),
                    driverId: Optional("driver_id"),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    startedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completed: Optional(true),
                    paused: Optional(true)
                )
            ],
            lineItemGroups: [
                ShipperPayCourierLineItemGroup1(
                    schemaVersion: 1,
                    taskGroupId: "task_group_id",
                    courierOrgId: "courier_org_id",
                    shipperOrgId: Optional("shipper_org_id"),
                    offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                    orderCancelled: Optional(true),
                    rateSheetId: "rate_sheet_id",
                    lineItems: [
                        LineItem1(
                            schemaVersion: 1,
                            item: .baseRate,
                            quantity: 1.1,
                            rate: 1.1,
                            comment: Optional(nil),
                            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            uuidStr: "uuid_str"
                        )
                    ],
                    id: "_id"
                )
            ],
            totalAmount: 1.1,
            paymentReady: true
        )
        let response = try await client.shipperPayCourierPayments.previewV1(
            request: CreateShipperPayCourierPaymentReq(
                orderIdOrShortId: "order_id_or_short_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}