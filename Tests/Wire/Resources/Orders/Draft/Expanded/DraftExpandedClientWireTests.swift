import Foundation
import Testing
import Chrt

@Suite("DraftExpandedClient Wire Tests") struct DraftExpandedClientWireTests {
    @Test func postExpandedV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order": {
                    "schema_version": 1,
                    "_id": "_id",
                    "short_id": "short_id",
                    "task_group_ids": [
                      "task_group_ids"
                    ],
                    "created_by_org_type": "courier",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "forwarder_org_id": "forwarder_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "order_cancelled_at_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "task_groups_expanded": [
                    {
                      "task_group": {
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
                      },
                      "tasks_expanded": [
                        {
                          "task": {
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
                          },
                          "cargos": null,
                          "task_artifacts": null,
                          "shipper_contacts": null
                        }
                      ],
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle"
                    }
                  ],
                  "shipper_org_company_name": "shipper_org_company_name",
                  "shipper_org_handle": "shipper_org_handle",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderDraftExpandedRes(
            order: Order1(
                schemaVersion: 1,
                id: "_id",
                shortId: "short_id",
                taskGroupIds: Optional([
                    "task_group_ids"
                ]),
                createdByOrgType: .courier,
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                forwarderOrgId: Optional("forwarder_org_id"),
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                orderCancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            ),
            taskGroupsExpanded: Optional([
                TaskGroupDraftExpanded(
                    taskGroup: TaskGroup1(
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
                    ),
                    tasksExpanded: Optional([
                        TaskDraftExpanded(
                            task: Task1(
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
                            ),
                            cargos: Optional(nil),
                            taskArtifacts: Optional(nil),
                            shipperContacts: Optional(nil)
                        )
                    ]),
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle")
                )
            ]),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            shipperOrgHandle: Optional("shipper_org_handle"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle")
        )
        let response = try await client.orders.draft.expanded.postExpandedV1(
            orderIdOrShortId: "order_id_or_short_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postExpandedListV11() async throws -> Void {
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
                      "task_groups_expanded": [
                        {
                          "task_group": {
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
                          },
                          "tasks_expanded": null,
                          "courier_org_company_name": null,
                          "courier_org_handle": null
                        }
                      ],
                      "shipper_org_company_name": "shipper_org_company_name",
                      "shipper_org_handle": "shipper_org_handle",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle"
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
        let expectedResponse = OrderDraftExpandedListRes(
            ordersExpanded: [
                OrderDraftExpandedRes(
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
                    taskGroupsExpanded: Optional([
                        TaskGroupDraftExpanded(
                            taskGroup: TaskGroup1(
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
                            ),
                            tasksExpanded: Optional(nil),
                            courierOrgCompanyName: Optional(nil),
                            courierOrgHandle: Optional(nil)
                        )
                    ]),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    shipperOrgHandle: Optional("shipper_org_handle"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle")
                )
            ],
            totalCount: 1
        )
        let response = try await client.orders.draft.expanded.postExpandedListV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}