import Foundation
import Testing
import Chrt

@Suite("LineItemGroupsClient Wire Tests") struct LineItemGroupsClientWireTests {
    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.getByIdV1(
            id: "id",
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
                      "schema_version": 1,
                      "_id": "_id",
                      "task_group_id": "task_group_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "rate_sheet_id": "rate_sheet_id",
                      "agreement_line_item_ids": [
                        "agreement_line_item_ids"
                      ],
                      "agreement_amount": 1.1,
                      "amendment_line_item_ids": [
                        "amendment_line_item_ids"
                      ],
                      "amendment_amount": 1.1,
                      "pending_line_item_ids": [
                        "pending_line_item_ids"
                      ],
                      "pending_amount": 1.1,
                      "denied_line_item_ids": [
                        "denied_line_item_ids"
                      ],
                      "denied_amount": 1.1,
                      "line_item_group_s3_object_metadata_ids": [
                        "line_item_group_s3_object_metadata_ids"
                      ],
                      "statement_id": "statement_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "settlement_type": "stripe_connect",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "status": "staged",
                      "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                      "finalized_by_user_id": "finalized_by_user_id",
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
        let expectedResponse = LineItemGroupListRes(
            items: [
                LineItemGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    taskGroupId: Optional("task_group_id"),
                    orderId: Optional("order_id"),
                    orderShortId: Optional("order_short_id"),
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    rateSheetId: Optional("rate_sheet_id"),
                    agreementLineItemIds: Optional([
                        "agreement_line_item_ids"
                    ]),
                    agreementAmount: Optional(1.1),
                    amendmentLineItemIds: Optional([
                        "amendment_line_item_ids"
                    ]),
                    amendmentAmount: Optional(1.1),
                    pendingLineItemIds: Optional([
                        "pending_line_item_ids"
                    ]),
                    pendingAmount: Optional(1.1),
                    deniedLineItemIds: Optional([
                        "denied_line_item_ids"
                    ]),
                    deniedAmount: Optional(1.1),
                    lineItemGroupS3ObjectMetadataIds: Optional([
                        "line_item_group_s3_object_metadata_ids"
                    ]),
                    statementId: Optional("statement_id"),
                    ownedByOrgId: "owned_by_org_id",
                    settlementType: Optional(.stripeConnect),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    status: Optional(.staged),
                    finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    finalizedByUserId: Optional("finalized_by_user_id"),
                    messages: Optional([
                        LineItemGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.lineItemGroups.listV1(
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterStatus: [
                .staged
            ],
            filterTaskGroupId: "filter_task_group_id",
            filterOrderId: "filter_order_id",
            filterOrderShortId: "filter_order_short_id",
            filterOrderOffChrtReferenceId: "filter_order_off_chrt_reference_id",
            filterOwnedByOrgId: "filter_owned_by_org_id",
            filterPaymentOriginOrgId: "filter_payment_origin_org_id",
            filterPaymentDestinationOrgId: "filter_payment_destination_org_id",
            filterPaymentDestinationDriverId: "filter_payment_destination_driver_id",
            filterRateSheetId: "filter_rate_sheet_id",
            filterStatementId: "filter_statement_id",
            filterAttachedToStatement: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func adHocCreateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.adHocCreateV1(
            request: .init(ownedByOrgId: "owned_by_org_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func adHocAddLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.adHocAddLineItemV1(
            lineItemGroupId: "line_item_group_id",
            request: LineItemClientCreate1(
                item: .baseRate,
                rate: 1.1,
                quantity: 1.1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func adHocRemoveLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.adHocRemoveLineItemV1(
            lineItemGroupId: "line_item_group_id",
            lineItemId: "line_item_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func finalizeV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.finalizeV1(
            lineItemGroupId: "line_item_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func proposeLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.proposeLineItemV1(
            lineItemGroupId: "line_item_group_id",
            request: LineItemClientCreate1(
                item: .baseRate,
                rate: 1.1,
                quantity: 1.1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func withdrawLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.withdrawLineItemV1(
            lineItemGroupId: "line_item_group_id",
            lineItemId: "line_item_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func approveLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.approveLineItemV1(
            lineItemGroupId: "line_item_group_id",
            lineItemId: "line_item_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func denyLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.denyLineItemV1(
            lineItemGroupId: "line_item_group_id",
            lineItemId: "line_item_id",
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
        let response = try await client.billing.lineItemGroups.deleteV1(
            lineItemGroupId: "line_item_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func fromRateSheetCreateForShipperPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.fromRateSheetCreateForShipperPayProviderV1(
            request: CreateLigFromRateSheetForVectorClientReq(
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func fromRateSheetCreateForProviderPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.fromRateSheetCreateForProviderPayProviderV1(
            request: CreateLigFromRateSheetForVectorClientReq(
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func fromRateSheetCreateForProviderPayDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "agreement_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
                  "pending_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "messages": [
                    {
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LineItemGroup1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: Optional("task_group_id"),
            orderId: Optional("order_id"),
            orderShortId: Optional("order_short_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            rateSheetId: Optional("rate_sheet_id"),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            agreementAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            pendingAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            settlementType: Optional(.stripeConnect),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.fromRateSheetCreateForProviderPayDriverV1(
            request: CreateLigFromRateSheetForVectorClientReq(
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}