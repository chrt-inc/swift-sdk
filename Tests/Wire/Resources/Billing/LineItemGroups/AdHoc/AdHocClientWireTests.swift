import Foundation
import Testing
import Chrt

@Suite("AdHocClient Wire Tests") struct AdHocClientWireTests {
    @Test func addLineItemV11() async throws -> Void {
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

    @Test func createV11() async throws -> Void {
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
        let response = try await client.billing.lineItemGroups.adHoc.createV1(
            request: .init(
                paymentVectorType: .shipperPayForwarder,
                settlementType: .stripeConnect
            ),
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

    @Test func removeLineItemV11() async throws -> Void {
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
        let response = try await client.billing.lineItemGroups.adHoc.removeLineItemV1(
            lineItemGroupId: "line_item_group_id",
            lineItemUuidStr: "line_item_uuid_str",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}