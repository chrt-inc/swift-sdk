import Foundation
import Testing
import Chrt

@Suite("ExpandedClient Wire Tests") struct ExpandedClientWireTests {
    @Test func forCoordinatorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "notification_intents_ad_hoc": [
                    {
                      "_id": "_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "directory_entry_id": "directory_entry_id",
                      "email_events": [
                        "shipping.order.staged"
                      ],
                      "order_id": "order_id",
                      "push_events": [
                        "shipping.order.staged"
                      ],
                      "schema_version": 1,
                      "session_id": "session_id",
                      "sms_events": [
                        "shipping.order.staged"
                      ]
                    }
                  ],
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "order": {
                    "_id": "_id",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "coordinator_assigned_user_ids": [
                      "coordinator_assigned_user_ids"
                    ],
                    "coordinator_department_id": "coordinator_department_id",
                    "coordinator_label": "coordinator_label",
                    "coordinator_org_id": "coordinator_org_id",
                    "coordinator_task_lists_to_apply_at_order_staging": [
                      {
                        "task_list_id": "task_list_id"
                      }
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "creation_idempotency_key": "creation_idempotency_key",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "off_chrt_reference_id": "off_chrt_reference_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "order_schedule_id": "order_schedule_id",
                    "order_schedule_run_idempotency_key": "order_schedule_run_idempotency_key",
                    "order_template_id": "order_template_id",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "short_id": "short_id",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_details": [
                      {
                        "task_group_id": "task_group_id"
                      }
                    ]
                  },
                  "shipper_org_company_name": "shipper_org_company_name",
                  "task_groups_expanded": [
                    {
                      "awb_numbers": [
                        "awb_numbers"
                      ],
                      "coordinator_org_company_name": "coordinator_org_company_name",
                      "coordinator_org_handle": "coordinator_org_handle",
                      "coordinator_org_id": "coordinator_org_id",
                      "driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "executor_org_company_name": "executor_org_company_name",
                      "executor_org_handle": "executor_org_handle",
                      "executor_org_id": "executor_org_id",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "shipper_org_id": "shipper_org_id",
                      "task_group": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_type": "chrt_ground_provider"
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "_id": "_id",
                            "created_by_org_id": "created_by_org_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "schema_version": 1,
                            "task_group_id": "task_group_id"
                          }
                        }
                      ]
                    }
                  ],
                  "unassigned_cargos": [
                    {
                      "_id": "_id",
                      "awb_number": "awb_number",
                      "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                      "cargo_type": "spare_parts",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                      "description": "description",
                      "device_ids": [
                        "device_ids"
                      ],
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "height_inches": 1.1,
                      "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                      "length_inches": 1.1,
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "quantity": 1,
                      "schema_version": 1,
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "stackable": true,
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "draft",
                      "turnable": true,
                      "weight_pounds": 1.1,
                      "width_inches": 1.1
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
        let expectedResponse = OrderDraftExpandedForCoordinator(
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            notificationIntentsAdHoc: Optional([
                NotificationIntentAdHoc1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    directoryEntryId: "directory_entry_id",
                    emailEvents: Optional([
                        .shippingOrderStaged
                    ]),
                    orderId: Optional("order_id"),
                    pushEvents: Optional([
                        .shippingOrderStaged
                    ]),
                    schemaVersion: 1,
                    sessionId: Optional("session_id"),
                    smsEvents: Optional([
                        .shippingOrderStaged
                    ])
                )
            ]),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            order: OrderLimitedForCoordinator1(
                id: "_id",
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorAssignedUserIds: Optional([
                    "coordinator_assigned_user_ids"
                ]),
                coordinatorDepartmentId: Optional("coordinator_department_id"),
                coordinatorLabel: Optional("coordinator_label"),
                coordinatorOrgId: Optional("coordinator_org_id"),
                coordinatorTaskListsToApplyAtOrderStaging: Optional([
                    TaskListToApplyToOrder1(
                        taskListId: "task_list_id"
                    )
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                creationIdempotencyKey: Optional("creation_idempotency_key"),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                offChrtReferenceId: Optional("off_chrt_reference_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                orderScheduleId: Optional("order_schedule_id"),
                orderScheduleRunIdempotencyKey: Optional("order_schedule_run_idempotency_key"),
                orderTemplateId: Optional("order_template_id"),
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shortId: "short_id",
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupDetails: Optional([
                    OrderTaskGroupSharedDetails1(
                        taskGroupId: "task_group_id"
                    )
                ])
            ),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            taskGroupsExpanded: Optional([
                TaskGroupExpanded(
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
                    coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
                    coordinatorOrgHandle: Optional("coordinator_org_handle"),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    driver: Optional(Driver1(
                        id: "_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        userId: "user_id"
                    )),
                    executorOrgCompanyName: Optional("executor_org_company_name"),
                    executorOrgHandle: Optional("executor_org_handle"),
                    executorOrgId: Optional("executor_org_id"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    shipperOrgId: Optional("shipper_org_id"),
                    taskGroup: TaskGroup1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupType: .chrtGroundProvider
                    ),
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                id: "_id",
                                createdByOrgId: "created_by_org_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                schemaVersion: 1,
                                taskGroupId: "task_group_id"
                            )
                        )
                    ])
                )
            ]),
            unassignedCargos: Optional([
                Cargo1(
                    id: "_id",
                    awbNumber: Optional("awb_number"),
                    cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cargoType: .spareParts,
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: Optional("created_by_user_id"),
                    deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    description: Optional("description"),
                    deviceIds: Optional([
                        "device_ids"
                    ]),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    heightInches: Optional(1.1),
                    inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lengthInches: Optional(1.1),
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    quantity: Optional(1),
                    schemaVersion: 1,
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stackable: Optional(true),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(.draft),
                    turnable: Optional(true),
                    weightPounds: Optional(1.1),
                    widthInches: Optional(1.1)
                )
            ])
        )
        let response = try await client.shipping.orderDrafts.expanded.forCoordinatorOperatorsV1(
            orderRef: "order_ref",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forShipperOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "notification_intents_ad_hoc": [
                    {
                      "_id": "_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "directory_entry_id": "directory_entry_id",
                      "email_events": [
                        "shipping.order.staged"
                      ],
                      "order_id": "order_id",
                      "push_events": [
                        "shipping.order.staged"
                      ],
                      "schema_version": 1,
                      "session_id": "session_id",
                      "sms_events": [
                        "shipping.order.staged"
                      ]
                    }
                  ],
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "order": {
                    "_id": "_id",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "coordinator_org_id": "coordinator_org_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "creation_idempotency_key": "creation_idempotency_key",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "off_chrt_reference_id": "off_chrt_reference_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "order_schedule_id": "order_schedule_id",
                    "order_schedule_run_idempotency_key": "order_schedule_run_idempotency_key",
                    "order_template_id": "order_template_id",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "short_id": "short_id",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_details": [
                      {
                        "task_group_id": "task_group_id"
                      }
                    ]
                  },
                  "shipper_org_company_name": "shipper_org_company_name",
                  "task_groups_expanded": [
                    {
                      "awb_numbers": [
                        "awb_numbers"
                      ],
                      "coordinator_org_company_name": "coordinator_org_company_name",
                      "coordinator_org_handle": "coordinator_org_handle",
                      "coordinator_org_id": "coordinator_org_id",
                      "driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "executor_org_company_name": "executor_org_company_name",
                      "executor_org_handle": "executor_org_handle",
                      "executor_org_id": "executor_org_id",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "shipper_org_id": "shipper_org_id",
                      "task_group": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_type": "chrt_ground_provider"
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "_id": "_id",
                            "created_by_org_id": "created_by_org_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "schema_version": 1,
                            "task_group_id": "task_group_id"
                          }
                        }
                      ]
                    }
                  ],
                  "unassigned_cargos": [
                    {
                      "_id": "_id",
                      "awb_number": "awb_number",
                      "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                      "cargo_type": "spare_parts",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                      "description": "description",
                      "device_ids": [
                        "device_ids"
                      ],
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "height_inches": 1.1,
                      "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                      "length_inches": 1.1,
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "quantity": 1,
                      "schema_version": 1,
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "stackable": true,
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "draft",
                      "turnable": true,
                      "weight_pounds": 1.1,
                      "width_inches": 1.1
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
        let expectedResponse = OrderDraftExpandedForShipper(
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            notificationIntentsAdHoc: Optional([
                NotificationIntentAdHoc1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    directoryEntryId: "directory_entry_id",
                    emailEvents: Optional([
                        .shippingOrderStaged
                    ]),
                    orderId: Optional("order_id"),
                    pushEvents: Optional([
                        .shippingOrderStaged
                    ]),
                    schemaVersion: 1,
                    sessionId: Optional("session_id"),
                    smsEvents: Optional([
                        .shippingOrderStaged
                    ])
                )
            ]),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            order: OrderLimitedForShipper1(
                id: "_id",
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorOrgId: Optional("coordinator_org_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                creationIdempotencyKey: Optional("creation_idempotency_key"),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                offChrtReferenceId: Optional("off_chrt_reference_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                orderScheduleId: Optional("order_schedule_id"),
                orderScheduleRunIdempotencyKey: Optional("order_schedule_run_idempotency_key"),
                orderTemplateId: Optional("order_template_id"),
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shortId: "short_id",
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupDetails: Optional([
                    OrderTaskGroupSharedDetails1(
                        taskGroupId: "task_group_id"
                    )
                ])
            ),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            taskGroupsExpanded: Optional([
                TaskGroupExpanded(
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
                    coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
                    coordinatorOrgHandle: Optional("coordinator_org_handle"),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    driver: Optional(Driver1(
                        id: "_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        userId: "user_id"
                    )),
                    executorOrgCompanyName: Optional("executor_org_company_name"),
                    executorOrgHandle: Optional("executor_org_handle"),
                    executorOrgId: Optional("executor_org_id"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    shipperOrgId: Optional("shipper_org_id"),
                    taskGroup: TaskGroup1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupType: .chrtGroundProvider
                    ),
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                id: "_id",
                                createdByOrgId: "created_by_org_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                schemaVersion: 1,
                                taskGroupId: "task_group_id"
                            )
                        )
                    ])
                )
            ]),
            unassignedCargos: Optional([
                Cargo1(
                    id: "_id",
                    awbNumber: Optional("awb_number"),
                    cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cargoType: .spareParts,
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: Optional("created_by_user_id"),
                    deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    description: Optional("description"),
                    deviceIds: Optional([
                        "device_ids"
                    ]),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    heightInches: Optional(1.1),
                    inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lengthInches: Optional(1.1),
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    quantity: Optional(1),
                    schemaVersion: 1,
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stackable: Optional(true),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(.draft),
                    turnable: Optional(true),
                    weightPounds: Optional(1.1),
                    widthInches: Optional(1.1)
                )
            ])
        )
        let response = try await client.shipping.orderDrafts.expanded.forShipperOperatorsV1(
            orderRef: "order_ref",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}