import Foundation
import Testing
import Chrt

@Suite("OrdersExpandedClient Wire Tests") struct OrdersExpandedClientWireTests {
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
                    "coordinator_org_id": "coordinator_org_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "creation_idempotency_key": "creation_idempotency_key",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "executor_org_ids": [
                      "executor_org_ids"
                    ],
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "off_chrt_executor_org_ids": [
                      "off_chrt_executor_org_ids"
                    ],
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
                    "task_group_ids": [
                      "task_group_ids"
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
        let expectedResponse = OrderExpanded(
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
            order: Order1(
                id: "_id",
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorOrgId: Optional("coordinator_org_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                creationIdempotencyKey: Optional("creation_idempotency_key"),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                executorOrgIds: Optional([
                    "executor_org_ids"
                ]),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                offChrtExecutorOrgIds: Optional([
                    "off_chrt_executor_org_ids"
                ]),
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
                taskGroupIds: Optional([
                    "task_group_ids"
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
            ])
        )
        let response = try await client.shipping.orders.expanded.forCoordinatorOperatorsV1(
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
                    "executor_org_ids": [
                      "executor_org_ids"
                    ],
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "off_chrt_executor_org_ids": [
                      "off_chrt_executor_org_ids"
                    ],
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
                    "task_group_ids": [
                      "task_group_ids"
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
        let expectedResponse = OrderExpanded(
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
            order: Order1(
                id: "_id",
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorOrgId: Optional("coordinator_org_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                creationIdempotencyKey: Optional("creation_idempotency_key"),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                executorOrgIds: Optional([
                    "executor_org_ids"
                ]),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                offChrtExecutorOrgIds: Optional([
                    "off_chrt_executor_org_ids"
                ]),
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
                taskGroupIds: Optional([
                    "task_group_ids"
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
            ])
        )
        let response = try await client.shipping.orders.expanded.forShipperOperatorsV1(
            orderRef: "order_ref",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForCoordinatorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
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
                          "schema_version": 1
                        }
                      ],
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "order": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1,
                        "short_id": "short_id"
                      },
                      "shipper_org_company_name": "shipper_org_company_name",
                      "task_groups_expanded": [
                        {
                          "task_group": {
                            "_id": "_id",
                            "created_by_org_id": "created_by_org_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "schema_version": 1,
                            "task_group_type": "chrt_ground_provider"
                          }
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
        let expectedResponse = OrdersExpandedListRes(
            items: [
                OrderExpanded(
                    coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
                    coordinatorOrgHandle: Optional("coordinator_org_handle"),
                    notificationIntentsAdHoc: Optional([
                        NotificationIntentAdHoc1(
                            id: "_id",
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            directoryEntryId: "directory_entry_id",
                            schemaVersion: 1
                        )
                    ]),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    order: Order1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1,
                        shortId: "short_id"
                    ),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    taskGroupsExpanded: Optional([
                        TaskGroupExpanded(
                            taskGroup: TaskGroup1(
                                id: "_id",
                                createdByOrgId: "created_by_org_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                schemaVersion: 1,
                                taskGroupType: .chrtGroundProvider
                            )
                        )
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orders.expanded.listForCoordinatorOperatorsV1(
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterStatus: [
                .draft
            ],
            filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExecutorOrgId: "filter_executor_org_id",
            filterShipperOrgId: "filter_shipper_org_id",
            filterOffChrtShipperOrgId: "filter_off_chrt_shipper_org_id",
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForShipperOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
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
                          "schema_version": 1
                        }
                      ],
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "order": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1,
                        "short_id": "short_id"
                      },
                      "shipper_org_company_name": "shipper_org_company_name",
                      "task_groups_expanded": [
                        {
                          "task_group": {
                            "_id": "_id",
                            "created_by_org_id": "created_by_org_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "schema_version": 1,
                            "task_group_type": "chrt_ground_provider"
                          }
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
        let expectedResponse = OrdersExpandedListRes(
            items: [
                OrderExpanded(
                    coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
                    coordinatorOrgHandle: Optional("coordinator_org_handle"),
                    notificationIntentsAdHoc: Optional([
                        NotificationIntentAdHoc1(
                            id: "_id",
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            directoryEntryId: "directory_entry_id",
                            schemaVersion: 1
                        )
                    ]),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    order: Order1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1,
                        shortId: "short_id"
                    ),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    taskGroupsExpanded: Optional([
                        TaskGroupExpanded(
                            taskGroup: TaskGroup1(
                                id: "_id",
                                createdByOrgId: "created_by_org_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                schemaVersion: 1,
                                taskGroupType: .chrtGroundProvider
                            )
                        )
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orders.expanded.listForShipperOperatorsV1(
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterStatus: [
                .draft
            ],
            filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStagedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterInProgressAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterInProgressAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExecutorOrgId: "filter_executor_org_id",
            filterCoordinatorOrgId: "filter_coordinator_org_id",
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}