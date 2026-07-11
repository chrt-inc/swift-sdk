import Foundation
import Testing
import Chrt

@Suite("LineItemGroupsClient Wire Tests") struct LineItemGroupsClientWireTests {
    @Test func adHocAddLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.adHocAddLineItemV1(
            lineItemGroupId: "line_item_group_id",
            request: LineItemClientCreate1(
                item: .baseRate,
                quantity: 1.1,
                rate: 1.1
            ),
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
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.adHocCreateV1(
            request: .init(ownedByOrgId: "owned_by_org_id"),
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
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.adHocRemoveLineItemV1(
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
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.approveLineItemV1(
            lineItemGroupId: "line_item_group_id",
            lineItemId: "line_item_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.getByIdV1(
            id: "id",
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

    @Test func denyLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.denyLineItemV1(
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
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
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

    @Test func fromRateSheetCreateForProviderPayDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.fromRateSheetCreateForProviderPayDriverV1(
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
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.fromRateSheetCreateForProviderPayProviderV1(
            request: CreateLigFromRateSheetForVectorClientReq(
                taskGroupId: "task_group_id"
            ),
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
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.fromRateSheetCreateForShipperPayProviderV1(
            request: CreateLigFromRateSheetForVectorClientReq(
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getLineItemsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "agreement_line_items": [
                    {
                      "_id": "_id",
                      "ad_hoc__status": "pending",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "line_item_calculation_id": "line_item_calculation_id",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ],
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
                    }
                  ],
                  "amendment_line_items": [
                    {
                      "_id": "_id",
                      "ad_hoc__status": "pending",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "line_item_calculation_id": "line_item_calculation_id",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ],
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
                    }
                  ],
                  "denied_line_items": [
                    {
                      "_id": "_id",
                      "ad_hoc__status": "pending",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "line_item_calculation_id": "line_item_calculation_id",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ],
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
                    }
                  ],
                  "items": [
                    {
                      "_id": "_id",
                      "ad_hoc__status": "pending",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "line_item_calculation_id": "line_item_calculation_id",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ],
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
                    }
                  ],
                  "pending_line_items": [
                    {
                      "_id": "_id",
                      "ad_hoc__status": "pending",
                      "ad_hoc__submitted_by_org_id": "ad_hoc__submitted_by_org_id",
                      "ad_hoc__submitted_by_user_id": "ad_hoc__submitted_by_user_id",
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "line_item_calculation_id": "line_item_calculation_id",
                      "line_item_s3_object_metadata_ids": [
                        "line_item_s3_object_metadata_ids"
                      ],
                      "pro_forma__bid_thread_id": "pro_forma__bid_thread_id",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
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
        let expectedResponse = LineItemGroupLineItemsRes(
            agreementLineItems: [
                LineItem1(
                    id: "_id",
                    adHocStatus: Optional(.pending),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    lineItemCalculationId: Optional("line_item_calculation_id"),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ]),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ],
            amendmentLineItems: [
                LineItem1(
                    id: "_id",
                    adHocStatus: Optional(.pending),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    lineItemCalculationId: Optional("line_item_calculation_id"),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ]),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ],
            deniedLineItems: [
                LineItem1(
                    id: "_id",
                    adHocStatus: Optional(.pending),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    lineItemCalculationId: Optional("line_item_calculation_id"),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ]),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ],
            items: [
                LineItem1(
                    id: "_id",
                    adHocStatus: Optional(.pending),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    lineItemCalculationId: Optional("line_item_calculation_id"),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ]),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ],
            pendingLineItems: [
                LineItem1(
                    id: "_id",
                    adHocStatus: Optional(.pending),
                    adHocSubmittedByOrgId: Optional("ad_hoc__submitted_by_org_id"),
                    adHocSubmittedByUserId: Optional("ad_hoc__submitted_by_user_id"),
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    lineItemCalculationId: Optional("line_item_calculation_id"),
                    lineItemS3ObjectMetadataIds: Optional([
                        "line_item_s3_object_metadata_ids"
                    ]),
                    proFormaBidThreadId: Optional("pro_forma__bid_thread_id"),
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ]
        )
        let response = try await client.billing.lineItemGroups.getLineItemsV1(
            lineItemGroupId: "line_item_group_id",
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
                      "_id": "_id",
                      "agreement_amount": 1.1,
                      "agreement_line_item_ids": [
                        "agreement_line_item_ids"
                      ],
                      "amendment_amount": 1.1,
                      "amendment_line_item_ids": [
                        "amendment_line_item_ids"
                      ],
                      "denied_amount": 1.1,
                      "denied_line_item_ids": [
                        "denied_line_item_ids"
                      ],
                      "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                      "finalized_by_user_id": "finalized_by_user_id",
                      "line_item_group_s3_object_metadata_ids": [
                        "line_item_group_s3_object_metadata_ids"
                      ],
                      "messages": [
                        {
                          "message": "message",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z",
                          "user_id": "user_id"
                        }
                      ],
                      "order_group_id": "order_group_id",
                      "order_group_short_id": "order_group_short_id",
                      "order_id": "order_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "order_short_id": "order_short_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "payment_destination_driver_id": "payment_destination_driver_id",
                      "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                      "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                      "payment_destination_org_id": "payment_destination_org_id",
                      "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                      "payment_origin_org_id": "payment_origin_org_id",
                      "pending_amount": 1.1,
                      "pending_line_item_ids": [
                        "pending_line_item_ids"
                      ],
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
            items: [
                LineItemGroup1(
                    id: "_id",
                    agreementAmount: Optional(1.1),
                    agreementLineItemIds: Optional([
                        "agreement_line_item_ids"
                    ]),
                    amendmentAmount: Optional(1.1),
                    amendmentLineItemIds: Optional([
                        "amendment_line_item_ids"
                    ]),
                    deniedAmount: Optional(1.1),
                    deniedLineItemIds: Optional([
                        "denied_line_item_ids"
                    ]),
                    finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    finalizedByUserId: Optional("finalized_by_user_id"),
                    lineItemGroupS3ObjectMetadataIds: Optional([
                        "line_item_group_s3_object_metadata_ids"
                    ]),
                    messages: Optional([
                        LineItemGroupMessage1(
                            message: "message",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            userId: "user_id"
                        )
                    ]),
                    orderGroupId: Optional("order_group_id"),
                    orderGroupShortId: Optional("order_group_short_id"),
                    orderId: Optional("order_id"),
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    orderShortId: Optional("order_short_id"),
                    ownedByOrgId: "owned_by_org_id",
                    paymentDestinationDriverId: Optional("payment_destination_driver_id"),
                    paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
                    paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
                    paymentDestinationOrgId: Optional("payment_destination_org_id"),
                    paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
                    paymentOriginOrgId: Optional("payment_origin_org_id"),
                    pendingAmount: Optional(1.1),
                    pendingLineItemIds: Optional([
                        "pending_line_item_ids"
                    ]),
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: 1,
                    settlementType: Optional(.stripeConnect),
                    statementId: Optional("statement_id"),
                    status: Optional(.staged),
                    taskGroupId: Optional("task_group_id")
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.lineItemGroups.listV1(
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
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

    @Test func proposeLineItemV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.proposeLineItemV1(
            lineItemGroupId: "line_item_group_id",
            request: LineItemClientCreate1(
                item: .baseRate,
                quantity: 1.1,
                rate: 1.1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sharedTaskGroupMileageCreateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.sharedTaskGroupMileageCreateV1(
            request: .init(
                orderGroupId: "order_group_id",
                paymentDestinationDriverId: "payment_destination_driver_id",
                rateSheetId: "rate_sheet_id",
                taskIds: [
                    "task_ids"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sharedTaskGroupMileageCreateForProviderPayProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.sharedTaskGroupMileageCreateForProviderPayProviderV1(
            request: .init(
                orderGroupId: "order_group_id",
                rateSheetId: "rate_sheet_id",
                taskIds: [
                    "task_ids"
                ]
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
                  "_id": "_id",
                  "agreement_amount": 1.1,
                  "agreement_line_item_ids": [
                    "agreement_line_item_ids"
                  ],
                  "amendment_amount": 1.1,
                  "amendment_line_item_ids": [
                    "amendment_line_item_ids"
                  ],
                  "denied_amount": 1.1,
                  "denied_line_item_ids": [
                    "denied_line_item_ids"
                  ],
                  "finalized_at_timestamp": "2024-01-15T09:30:00Z",
                  "finalized_by_user_id": "finalized_by_user_id",
                  "line_item_group_s3_object_metadata_ids": [
                    "line_item_group_s3_object_metadata_ids"
                  ],
                  "messages": [
                    {
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_group_id": "order_group_id",
                  "order_group_short_id": "order_group_short_id",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "payment_destination_driver_id": "payment_destination_driver_id",
                  "payment_destination_off_chrt_provider_org_id": "payment_destination_off_chrt_provider_org_id",
                  "payment_destination_off_chrt_vendor_id": "payment_destination_off_chrt_vendor_id",
                  "payment_destination_org_id": "payment_destination_org_id",
                  "payment_origin_off_chrt_shipper_org_id": "payment_origin_off_chrt_shipper_org_id",
                  "payment_origin_org_id": "payment_origin_org_id",
                  "pending_amount": 1.1,
                  "pending_line_item_ids": [
                    "pending_line_item_ids"
                  ],
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
            agreementAmount: Optional(1.1),
            agreementLineItemIds: Optional([
                "agreement_line_item_ids"
            ]),
            amendmentAmount: Optional(1.1),
            amendmentLineItemIds: Optional([
                "amendment_line_item_ids"
            ]),
            deniedAmount: Optional(1.1),
            deniedLineItemIds: Optional([
                "denied_line_item_ids"
            ]),
            finalizedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finalizedByUserId: Optional("finalized_by_user_id"),
            lineItemGroupS3ObjectMetadataIds: Optional([
                "line_item_group_s3_object_metadata_ids"
            ]),
            messages: Optional([
                LineItemGroupMessage1(
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderGroupId: Optional("order_group_id"),
            orderGroupShortId: Optional("order_group_short_id"),
            orderId: Optional("order_id"),
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: Optional("order_short_id"),
            ownedByOrgId: "owned_by_org_id",
            paymentDestinationDriverId: Optional("payment_destination_driver_id"),
            paymentDestinationOffChrtProviderOrgId: Optional("payment_destination_off_chrt_provider_org_id"),
            paymentDestinationOffChrtVendorId: Optional("payment_destination_off_chrt_vendor_id"),
            paymentDestinationOrgId: Optional("payment_destination_org_id"),
            paymentOriginOffChrtShipperOrgId: Optional("payment_origin_off_chrt_shipper_org_id"),
            paymentOriginOrgId: Optional("payment_origin_org_id"),
            pendingAmount: Optional(1.1),
            pendingLineItemIds: Optional([
                "pending_line_item_ids"
            ]),
            rateSheetId: Optional("rate_sheet_id"),
            schemaVersion: 1,
            settlementType: Optional(.stripeConnect),
            statementId: Optional("statement_id"),
            status: Optional(.staged),
            taskGroupId: Optional("task_group_id")
        )
        let response = try await client.billing.lineItemGroups.withdrawLineItemV1(
            lineItemGroupId: "line_item_group_id",
            lineItemId: "line_item_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}