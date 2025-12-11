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
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "shipper_org_id": "shipper_org_id",
                  "courier_org_id": "courier_org_id",
                  "shipper_customer_id_for_courier_stripe_connect_account": "shipper_customer_id_for_courier_stripe_connect_account",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "statement_amount": 1.1,
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
        let expectedResponse = ShipperPayCourierStatement1(
            schemaVersion: 1,
            shipperPayCourierLineItemGroupIds: [
                "shipper_pay_courier_line_item_group_ids"
            ],
            taskGroupIds: [
                "task_group_ids"
            ],
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            shipperOrgId: Optional("shipper_org_id"),
            courierOrgId: "courier_org_id",
            shipperCustomerIdForCourierStripeConnectAccount: Optional("shipper_customer_id_for_courier_stripe_connect_account"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            statementAmount: 1.1,
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
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "shipper_org_id": "shipper_org_id",
                  "courier_org_id": "courier_org_id",
                  "shipper_customer_id_for_courier_stripe_connect_account": "shipper_customer_id_for_courier_stripe_connect_account",
                  "stripe_invoice_id": "stripe_invoice_id",
                  "stripe_invoice_url": "stripe_invoice_url",
                  "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                  "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                  "statement_amount": 1.1,
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
        let expectedResponse = ShipperPayCourierStatement1(
            schemaVersion: 1,
            shipperPayCourierLineItemGroupIds: [
                "shipper_pay_courier_line_item_group_ids"
            ],
            taskGroupIds: [
                "task_group_ids"
            ],
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            shipperOrgId: Optional("shipper_org_id"),
            courierOrgId: "courier_org_id",
            shipperCustomerIdForCourierStripeConnectAccount: Optional("shipper_customer_id_for_courier_stripe_connect_account"),
            stripeInvoiceId: Optional("stripe_invoice_id"),
            stripeInvoiceUrl: Optional("stripe_invoice_url"),
            stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
            statementAmount: 1.1,
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
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "shipper_org_id": "shipper_org_id",
                      "courier_org_id": "courier_org_id",
                      "shipper_customer_id_for_courier_stripe_connect_account": "shipper_customer_id_for_courier_stripe_connect_account",
                      "stripe_invoice_id": "stripe_invoice_id",
                      "stripe_invoice_url": "stripe_invoice_url",
                      "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                      "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                      "statement_amount": 1.1,
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
                ShipperPayCourierStatement1(
                    schemaVersion: 1,
                    shipperPayCourierLineItemGroupIds: [
                        "shipper_pay_courier_line_item_group_ids"
                    ],
                    taskGroupIds: [
                        "task_group_ids"
                    ],
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    shipperOrgId: Optional("shipper_org_id"),
                    courierOrgId: "courier_org_id",
                    shipperCustomerIdForCourierStripeConnectAccount: Optional("shipper_customer_id_for_courier_stripe_connect_account"),
                    stripeInvoiceId: Optional("stripe_invoice_id"),
                    stripeInvoiceUrl: Optional("stripe_invoice_url"),
                    stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                    statementAmount: 1.1,
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
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "shipper_org_id": "shipper_org_id",
                      "courier_org_id": "courier_org_id",
                      "shipper_customer_id_for_courier_stripe_connect_account": "shipper_customer_id_for_courier_stripe_connect_account",
                      "stripe_invoice_id": "stripe_invoice_id",
                      "stripe_invoice_url": "stripe_invoice_url",
                      "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                      "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                      "statement_amount": 1.1,
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
                ShipperPayCourierStatement1(
                    schemaVersion: 1,
                    shipperPayCourierLineItemGroupIds: [
                        "shipper_pay_courier_line_item_group_ids"
                    ],
                    taskGroupIds: [
                        "task_group_ids"
                    ],
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    shipperOrgId: Optional("shipper_org_id"),
                    courierOrgId: "courier_org_id",
                    shipperCustomerIdForCourierStripeConnectAccount: Optional("shipper_customer_id_for_courier_stripe_connect_account"),
                    stripeInvoiceId: Optional("stripe_invoice_id"),
                    stripeInvoiceUrl: Optional("stripe_invoice_url"),
                    stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                    statementAmount: 1.1,
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
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "courier_org_id": "courier_org_id",
                      "driver_id": "driver_id",
                      "task_group_s3_object_metadata_ids": [
                        "task_group_s3_object_metadata_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_cancelled": true,
                      "task_group_type": "chrt_ground_courier",
                      "task_group_mileage": {
                        "tasks_mileage": 1.1,
                        "deadhead_mileage": 1.1
                      },
                      "flight_number": "flight_number",
                      "fa_flight_id": "fa_flight_id",
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ]
                    }
                  ],
                  "line_item_groups": [
                    {
                      "schema_version": 1,
                      "task_group_id": "task_group_id",
                      "courier_org_id": "courier_org_id",
                      "shipper_org_id": "shipper_org_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "order_cancelled": true,
                      "rate_sheet_id": "rate_sheet_id",
                      "line_items": [
                        {
                          "schema_version": 1,
                          "item": "base_rate",
                          "quantity": 1.1,
                          "rate": 1.1,
                          "comment": null,
                          "created_at_timestamp": "2024-01-15T09:30:00Z",
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
                    taskIds: Optional([
                        "task_ids"
                    ]),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    courierOrgId: Optional("courier_org_id"),
                    driverId: Optional("driver_id"),
                    taskGroupS3ObjectMetadataIds: Optional([
                        "task_group_s3_object_metadata_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderCancelled: Optional(true),
                    taskGroupType: .chrtGroundCourier,
                    taskGroupMileage: Optional(TaskGroupMileage1(
                        tasksMileage: 1.1,
                        deadheadMileage: 1.1
                    )),
                    flightNumber: Optional("flight_number"),
                    faFlightId: Optional("fa_flight_id"),
                    messages: Optional([
                        TaskGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ])
                )
            ],
            lineItemGroups: [
                ShipperPayCourierLineItemGroup1(
                    schemaVersion: 1,
                    taskGroupId: "task_group_id",
                    courierOrgId: "courier_org_id",
                    shipperOrgId: Optional("shipper_org_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    orderCancelled: Optional(true),
                    rateSheetId: "rate_sheet_id",
                    lineItems: [
                        LineItem1(
                            schemaVersion: 1,
                            item: .baseRate,
                            quantity: 1.1,
                            rate: 1.1,
                            comment: Optional(nil),
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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