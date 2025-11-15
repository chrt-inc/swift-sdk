import Foundation
import Testing
import Chrt

@Suite("ExpandedListClient Wire Tests") struct ExpandedListClientWireTests {
    @Test func postShipperExpandedListV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "orders_expanded": [
                    {
                      "order": {
                        "schema_version": 1,
                        "_id": "_id",
                        "short_id": "short_id",
                        "task_group_ids": null,
                        "created_by_org_type": "courier",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "forwarder_org_id": null,
                        "shipper_org_id": null,
                        "off_chrt_shipper_org_id": null,
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "staged_at_timestamp": null,
                        "in_progress_at_timestamp": null,
                        "completed_at_timestamp": null,
                        "exception_at_timestamp": null,
                        "order_cancelled_at_timestamp": null
                      },
                      "task_groups": [
                        {
                          "schema_version": 1,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "courier_org_id": null,
                          "driver_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "in_progress_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null,
                          "task_group_type": "chrt_ground_courier",
                          "task_group_mileage": null
                        }
                      ],
                      "tasks": [
                        {
                          "schema_version": 1,
                          "location": null,
                          "order_placer_comments": null,
                          "shipper_contact_info_ids": null,
                          "flight_number": null,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "cargo_ids": null,
                          "task_artifact_ids": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null,
                          "task_notification_email_ids": null,
                          "task_notification_sms_ids": null,
                          "task_notification_push_ids": null,
                          "task_notification_voice_ids": null
                        }
                      ],
                      "task_artifacts": [
                        {
                          "schema_version": 1,
                          "type": "image",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "requested_by_org_id": null,
                          "requested_by_user_id": null,
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "cargos": [
                        {
                          "schema_version": 1,
                          "cargo_type": "spare_parts",
                          "quantity": null,
                          "weight_pounds": null,
                          "length_inches": null,
                          "width_inches": null,
                          "height_inches": null,
                          "turnable": null,
                          "stackable": null,
                          "description_from_shipper": null,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "device_ids": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "in_transit_at_timestamp": null,
                          "delivered_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle"
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
        let expectedResponse = OrdersExpandedForShipperRes(
            ordersExpanded: [
                OrderExpandedForShipper(
                    order: Order1(
                        schemaVersion: 1,
                        id: "_id",
                        shortId: "short_id",
                        taskGroupIds: Optional(nil),
                        createdByOrgType: .courier,
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        forwarderOrgId: Optional(nil),
                        shipperOrgId: Optional(nil),
                        offChrtShipperOrgId: Optional(nil),
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        stagedAtTimestamp: Optional(nil),
                        inProgressAtTimestamp: Optional(nil),
                        completedAtTimestamp: Optional(nil),
                        exceptionAtTimestamp: Optional(nil),
                        orderCancelledAtTimestamp: Optional(nil)
                    ),
                    taskGroups: Optional([
                        TaskGroup1(
                            schemaVersion: 1,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            courierOrgId: Optional(nil),
                            driverId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            inProgressAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil),
                            taskGroupType: .chrtGroundCourier,
                            taskGroupMileage: Optional(nil)
                        )
                    ]),
                    tasks: Optional([
                        Task1(
                            schemaVersion: 1,
                            location: Optional(nil),
                            orderPlacerComments: Optional(nil),
                            shipperContactInfoIds: Optional(nil),
                            flightNumber: Optional(nil),
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            cargoIds: Optional(nil),
                            taskArtifactIds: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil),
                            taskNotificationEmailIds: Optional(nil),
                            taskNotificationSmsIds: Optional(nil),
                            taskNotificationPushIds: Optional(nil),
                            taskNotificationVoiceIds: Optional(nil)
                        )
                    ]),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            schemaVersion: 1,
                            type: .image,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            requestedByOrgId: Optional(nil),
                            requestedByUserId: Optional(nil),
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    cargos: Optional([
                        Cargo1(
                            schemaVersion: 1,
                            cargoType: .spareParts,
                            quantity: Optional(nil),
                            weightPounds: Optional(nil),
                            lengthInches: Optional(nil),
                            widthInches: Optional(nil),
                            heightInches: Optional(nil),
                            turnable: Optional(nil),
                            stackable: Optional(nil),
                            descriptionFromShipper: Optional(nil),
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            deviceIds: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            inTransitAtTimestamp: Optional(nil),
                            deliveredAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle")
                )
            ],
            totalCount: 1
        )
        let response = try await client.orders.expandedList.postShipperExpandedListV1(
            page: 1,
            pageSize: 1,
            sortBy: .draftStartedAt,
            sortOrder: .asc,
            filterDraftStartedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDraftStartedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOrderCancelled: true,
            request: .init(body: OrderExpandedForShipperReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postOrderCreatorExpandedListV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "orders_expanded": [
                    {
                      "order": {
                        "schema_version": 1,
                        "_id": "_id",
                        "short_id": "short_id",
                        "task_group_ids": null,
                        "created_by_org_type": "courier",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "forwarder_org_id": null,
                        "shipper_org_id": null,
                        "off_chrt_shipper_org_id": null,
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "staged_at_timestamp": null,
                        "in_progress_at_timestamp": null,
                        "completed_at_timestamp": null,
                        "exception_at_timestamp": null,
                        "order_cancelled_at_timestamp": null
                      },
                      "task_groups": [
                        {
                          "schema_version": 1,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "courier_org_id": null,
                          "driver_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "in_progress_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null,
                          "task_group_type": "chrt_ground_courier",
                          "task_group_mileage": null
                        }
                      ],
                      "tasks": [
                        {
                          "schema_version": 1,
                          "location": null,
                          "order_placer_comments": null,
                          "shipper_contact_info_ids": null,
                          "flight_number": null,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "cargo_ids": null,
                          "task_artifact_ids": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null,
                          "task_notification_email_ids": null,
                          "task_notification_sms_ids": null,
                          "task_notification_push_ids": null,
                          "task_notification_voice_ids": null
                        }
                      ],
                      "task_artifacts": [
                        {
                          "schema_version": 1,
                          "type": "image",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "requested_by_org_id": null,
                          "requested_by_user_id": null,
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "cargos": [
                        {
                          "schema_version": 1,
                          "cargo_type": "spare_parts",
                          "quantity": null,
                          "weight_pounds": null,
                          "length_inches": null,
                          "width_inches": null,
                          "height_inches": null,
                          "turnable": null,
                          "stackable": null,
                          "description_from_shipper": null,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "device_ids": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "in_transit_at_timestamp": null,
                          "delivered_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "shipper_org_company_name": "shipper_org_company_name",
                      "shipper_org_handle": "shipper_org_handle"
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
        let expectedResponse = OrdersExpandedForOrderCreatorRes(
            ordersExpanded: [
                OrderExpandedForOrderCreator(
                    order: Order1(
                        schemaVersion: 1,
                        id: "_id",
                        shortId: "short_id",
                        taskGroupIds: Optional(nil),
                        createdByOrgType: .courier,
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        forwarderOrgId: Optional(nil),
                        shipperOrgId: Optional(nil),
                        offChrtShipperOrgId: Optional(nil),
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        stagedAtTimestamp: Optional(nil),
                        inProgressAtTimestamp: Optional(nil),
                        completedAtTimestamp: Optional(nil),
                        exceptionAtTimestamp: Optional(nil),
                        orderCancelledAtTimestamp: Optional(nil)
                    ),
                    taskGroups: Optional([
                        TaskGroup1(
                            schemaVersion: 1,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            courierOrgId: Optional(nil),
                            driverId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            inProgressAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil),
                            taskGroupType: .chrtGroundCourier,
                            taskGroupMileage: Optional(nil)
                        )
                    ]),
                    tasks: Optional([
                        Task1(
                            schemaVersion: 1,
                            location: Optional(nil),
                            orderPlacerComments: Optional(nil),
                            shipperContactInfoIds: Optional(nil),
                            flightNumber: Optional(nil),
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            cargoIds: Optional(nil),
                            taskArtifactIds: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil),
                            taskNotificationEmailIds: Optional(nil),
                            taskNotificationSmsIds: Optional(nil),
                            taskNotificationPushIds: Optional(nil),
                            taskNotificationVoiceIds: Optional(nil)
                        )
                    ]),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            schemaVersion: 1,
                            type: .image,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            requestedByOrgId: Optional(nil),
                            requestedByUserId: Optional(nil),
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    cargos: Optional([
                        Cargo1(
                            schemaVersion: 1,
                            cargoType: .spareParts,
                            quantity: Optional(nil),
                            weightPounds: Optional(nil),
                            lengthInches: Optional(nil),
                            widthInches: Optional(nil),
                            heightInches: Optional(nil),
                            turnable: Optional(nil),
                            stackable: Optional(nil),
                            descriptionFromShipper: Optional(nil),
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            deviceIds: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            inTransitAtTimestamp: Optional(nil),
                            deliveredAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    shipperOrgHandle: Optional("shipper_org_handle")
                )
            ],
            totalCount: 1
        )
        let response = try await client.orders.expandedList.postOrderCreatorExpandedListV1(
            page: 1,
            pageSize: 1,
            sortBy: .draftStartedAt,
            sortOrder: .asc,
            filterDraftStartedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDraftStartedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOrderCancelled: true,
            request: .init(body: OrderExpandedForOrderCreatorReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}