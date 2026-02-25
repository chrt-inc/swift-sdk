import Foundation
import Testing
import Chrt

@Suite("LineItemGroupsClient Wire Tests") struct LineItemGroupsClientWireTests {
    @Test func adjustLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "line_items": [
                    {
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "amount": 1.1,
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "schema_version": 1,
                      "units": "usd",
                      "uuid_str": "uuid_str"
                    }
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "rate_sheet_id": "rate_sheet_id",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "statement_id": "statement_id",
                  "status": "staged",
                  "task_group_id": "task_group_id"
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
            id: "_id",
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            lineItems: [
                LineItem1(
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    amount: 1.1,
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    schemaVersion: Optional(1),
                    units: Optional(.usd),
                    uuidStr: Optional("uuid_str")
                )
            ],
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: .stripeConnect,
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.adjustLineItemV1(
            lineItemGroupId: "line_item_group_id",
            request: .init(
                adjustment: 1.1,
                lineItemUuidStr: "line_item_uuid_str"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func associateWithStatementV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "line_items": [
                    {
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "amount": 1.1,
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "schema_version": 1,
                      "units": "usd",
                      "uuid_str": "uuid_str"
                    }
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "rate_sheet_id": "rate_sheet_id",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "statement_id": "statement_id",
                  "status": "staged",
                  "task_group_id": "task_group_id"
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
            id: "_id",
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            lineItems: [
                LineItem1(
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    amount: 1.1,
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    schemaVersion: Optional(1),
                    units: Optional(.usd),
                    uuidStr: Optional("uuid_str")
                )
            ],
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: .stripeConnect,
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.associateWithStatementV1(
            lineItemGroupId: "line_item_group_id",
            statementId: "statement_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func calculateLineItemsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "line_items": [
                    {
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "amount": 1.1,
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "schema_version": 1,
                      "units": "usd",
                      "uuid_str": "uuid_str"
                    }
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "rate_sheet_id": "rate_sheet_id",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "statement_id": "statement_id",
                  "status": "staged",
                  "task_group_id": "task_group_id"
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
            id: "_id",
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            lineItems: [
                LineItem1(
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    amount: 1.1,
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    schemaVersion: Optional(1),
                    units: Optional(.usd),
                    uuidStr: Optional("uuid_str")
                )
            ],
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: .stripeConnect,
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.calculateLineItemsV1(
            lineItemGroupId: "line_item_group_id",
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
                  "_id": "_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "line_items": [
                    {
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "amount": 1.1,
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "schema_version": 1,
                      "units": "usd",
                      "uuid_str": "uuid_str"
                    }
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "rate_sheet_id": "rate_sheet_id",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "statement_id": "statement_id",
                  "status": "staged",
                  "task_group_id": "task_group_id"
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
            id: "_id",
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            lineItems: [
                LineItem1(
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    amount: 1.1,
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    schemaVersion: Optional(1),
                    units: Optional(.usd),
                    uuidStr: Optional("uuid_str")
                )
            ],
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: .stripeConnect,
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.finalizeV1(
            lineItemGroupId: "line_item_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForCourierOrgV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "line_item_groups": [
                    {
                      "_id": "_id",
                      "line_item_group_s3_object_metadata_ids": [
                        "line_item_group_s3_object_metadata_ids"
                      ],
                      "line_items": [
                        {
                          "amount": 1.1,
                          "item": "base_rate",
                          "quantity": 1.1,
                          "rate": 1.1
                        }
                      ],
                      "messages": [
                        {
                          "message": "message",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z",
                          "user_id": "user_id"
                        }
                      ],
                      "owned_by_org_id": "owned_by_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "payment_vector_type": "shipper_pay_forwarder",
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "settlement_type": "stripe_connect",
                      "statement_id": "statement_id",
                      "status": "staged",
                      "task_group_id": "task_group_id"
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
            lineItemGroups: [
                LineItemGroup1(
                    id: "_id",
                    lineItemGroupS3ObjectMetadataIds: Optional([
                        "line_item_group_s3_object_metadata_ids"
                    ]),
                    lineItems: [
                        LineItem1(
                            amount: 1.1,
                            item: .baseRate,
                            quantity: 1.1,
                            rate: 1.1
                        )
                    ],
                    messages: Optional([
                        LineItemGroupMessage1(
                            message: "message",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            userId: "user_id"
                        )
                    ]),
                    ownedByOrgId: "owned_by_org_id",
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    paymentVectorType: .shipperPayForwarder,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: 1,
                    settlementType: .stripeConnect,
                    statementId: Optional("statement_id"),
                    status: Optional(.staged),
                    taskGroupId: Optional("task_group_id")
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.lineItemGroups.listForCourierOrgV1(
            filterDriverId: "filter_driver_id",
            filterAttachedToStatement: true,
            filterPaymentRole: .origin,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func quoteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "line_items": [
                    {
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "amount": 1.1,
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "schema_version": 1,
                      "units": "usd",
                      "uuid_str": "uuid_str"
                    }
                  ],
                  "rate_sheet_id": "rate_sheet_id",
                  "task_group_id": "task_group_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Quote(
            lineItems: [
                LineItem1(
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    amount: 1.1,
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    schemaVersion: Optional(1),
                    units: Optional(.usd),
                    uuidStr: Optional("uuid_str")
                )
            ],
            rateSheetId: "rate_sheet_id",
            taskGroupId: "task_group_id"
        )
        let response = try await client.billing.lineItemGroups.quoteV1(
            taskGroupId: "task_group_id",
            paymentVectorType: .shipperPayForwarder,
            rateSheetId: "rate_sheet_id",
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
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "line_items": [
                    {
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "amount": 1.1,
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "schema_version": 1,
                      "units": "usd",
                      "uuid_str": "uuid_str"
                    }
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "rate_sheet_id": "rate_sheet_id",
                  "schema_version": 1,
                  "settlement_type": "stripe_connect",
                  "statement_id": "statement_id",
                  "status": "staged",
                  "task_group_id": "task_group_id"
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
            id: "_id",
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            lineItems: [
                LineItem1(
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    amount: 1.1,
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    schemaVersion: Optional(1),
                    units: Optional(.usd),
                    uuidStr: Optional("uuid_str")
                )
            ],
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentVectorType: .shipperPayForwarder,
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: .stripeConnect,
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.getV1(
            lineItemGroupId: "line_item_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}