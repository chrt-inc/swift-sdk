import Foundation
import Testing
import Chrt

@Suite("AdHocClient Wire Tests") struct AdHocClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "line_items": [
                    {
                      "schema_version": 1,
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "units": "usd",
                      "comments": "comments",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "uuid_str": "uuid_str",
                      "amount": 1.1
                    }
                  ],
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
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
            rateSheetId: Optional("rate_sheet_id"),
            lineItems: [
                LineItem1(
                    schemaVersion: Optional(1),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    units: Optional(.usd),
                    comments: Optional("comments"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uuidStr: Optional("uuid_str"),
                    amount: 1.1
                )
            ],
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            settlementType: .stripeConnect,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.adHoc.createV1(
            request: .init(
                paymentVectorType: .shipperPayForwarder,
                settlementType: .stripeConnect
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "line_items": [
                    {
                      "schema_version": 1,
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "units": "usd",
                      "comments": "comments",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "uuid_str": "uuid_str",
                      "amount": 1.1
                    }
                  ],
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
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
            rateSheetId: Optional("rate_sheet_id"),
            lineItems: [
                LineItem1(
                    schemaVersion: Optional(1),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    units: Optional(.usd),
                    comments: Optional("comments"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uuidStr: Optional("uuid_str"),
                    amount: 1.1
                )
            ],
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            settlementType: .stripeConnect,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.adHoc.addLineItemV1(
            lineItemGroupId: "line_item_group_id",
            request: .init(
                item: .baseRate,
                quantity: 1.1,
                rate: 1.1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "rate_sheet_id": "rate_sheet_id",
                  "line_items": [
                    {
                      "schema_version": 1,
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "units": "usd",
                      "comments": "comments",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "uuid_str": "uuid_str",
                      "amount": 1.1
                    }
                  ],
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "statement_id": "statement_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_vector_type": "shipper_pay_forwarder",
                  "settlement_type": "stripe_connect",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "status": "staged",
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
            rateSheetId: Optional("rate_sheet_id"),
            lineItems: [
                LineItem1(
                    schemaVersion: Optional(1),
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    units: Optional(.usd),
                    comments: Optional("comments"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    uuidStr: Optional("uuid_str"),
                    amount: 1.1
                )
            ],
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            statementId: Optional("statement_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentVectorType: .shipperPayForwarder,
            settlementType: .stripeConnect,
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            status: Optional(.staged),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ])
        )
        let response = try await client.billing.lineItemGroups.adHoc.removeLineItemV1(
            lineItemGroupId: "line_item_group_id",
            lineItemUuidStr: "line_item_uuid_str",
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
        let response = try await client.billing.lineItemGroups.adHoc.deleteV1(
            lineItemGroupId: "line_item_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}