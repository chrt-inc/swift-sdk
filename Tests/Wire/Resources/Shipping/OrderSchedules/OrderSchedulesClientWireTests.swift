import Foundation
import Testing
import Chrt

@Suite("OrderSchedulesClient Wire Tests") struct OrderSchedulesClientWireTests {
    @Test func aboutV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "orchestrator_schedule_status": {
                    "actions_count": 1,
                    "exists": true,
                    "next_action_times": [
                      "2024-01-15T09:30:00Z"
                    ],
                    "paused": true,
                    "recent_actions": [
                      {
                        "scheduled_at": "2024-01-15T09:30:00Z",
                        "started_at": "2024-01-15T09:30:00Z"
                      }
                    ]
                  },
                  "orders_created_count": 1,
                  "short_id": "short_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderScheduleAboutRes(
            orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus(
                actionsCount: Optional(1),
                exists: true,
                nextActionTimes: Optional([
                    try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ]),
                paused: Optional(true),
                recentActions: Optional([
                    OrderScheduleOrchestratorScheduleActionResult(
                        scheduledAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ])
            ),
            ordersCreatedCount: 1,
            shortId: "short_id"
        )
        let response = try await client.shipping.orderSchedules.aboutV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func activateV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.activateV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func archiveV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.archiveV1(
            orderScheduleId: "order_schedule_id",
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
                      "auto_stage": true,
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "description": "description",
                      "intended_status": "draft",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "orchestrator_schedule_id": "orchestrator_schedule_id",
                      "orchestrator_schedule_paused": true,
                      "order_template_core": {
                        "schema_version": 1
                      },
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_org_type": "provider",
                      "owned_by_user_id": "owned_by_user_id",
                      "schedule_spec": {
                        "time_zone_name": "America/New_York"
                      },
                      "schema_version": 1,
                      "short_id": "short_id"
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
        let expectedResponse = OrderScheduleListRes(
            items: [
                OrderSchedule1(
                    id: "_id",
                    autoStage: Optional(true),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    description: Optional("description"),
                    intendedStatus: Optional(.draft),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    name: "name",
                    orchestratorScheduleId: Optional("orchestrator_schedule_id"),
                    orchestratorSchedulePaused: Optional(true),
                    orderTemplateCore: Optional(OrderTemplateCore1(
                        schemaVersion: 1
                    )),
                    ownedByOrgId: "owned_by_org_id",
                    ownedByOrgType: .provider,
                    ownedByUserId: "owned_by_user_id",
                    scheduleSpec: Optional(OrderScheduleSpec1(
                        timeZoneName: "America/New_York"
                    )),
                    schemaVersion: 1,
                    shortId: "short_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orderSchedules.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterIntendedStatus: [
                .draft
            ],
            filterOwnedByUserId: "filter_owned_by_user_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pauseV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.pauseV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncWithOrchestratorV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.syncWithOrchestratorV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func takeOwnershipV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.takeOwnershipV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func triggerV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.triggerV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unpauseV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.unpauseV1(
            orderScheduleId: "order_schedule_id",
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
                  "auto_stage": true,
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "intended_status": "draft",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "orchestrator_schedule_id": "orchestrator_schedule_id",
                  "orchestrator_schedule_paused": true,
                  "order_template_core": {
                    "case_tag": "case_tag",
                    "coordinator_org_id": "coordinator_org_id",
                    "department_id": "department_id",
                    "directory_entry_ids": [
                      "directory_entry_ids"
                    ],
                    "driver_ids": [
                      "driver_ids"
                    ],
                    "executor_org_ids": [
                      "executor_org_ids"
                    ],
                    "off_chrt_executor_org_ids": [
                      "off_chrt_executor_org_ids"
                    ],
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "task_lists_to_apply_at_order_creation": [
                      {
                        "task_list_id": "task_list_id"
                      }
                    ],
                    "task_lists_to_apply_at_order_staging": [
                      {
                        "task_list_id": "task_list_id"
                      }
                    ],
                    "text": "text"
                  },
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_org_type": "provider",
                  "owned_by_user_id": "owned_by_user_id",
                  "schedule_spec": {
                    "end_at": "2024-01-15T09:30:00Z",
                    "schedule_calendar_spec": {
                      "comment": "comment",
                      "day_of_month": [
                        {
                          "start": 1
                        }
                      ],
                      "day_of_week": [
                        {
                          "start": 1
                        }
                      ],
                      "hour": [
                        {
                          "start": 1
                        }
                      ],
                      "minute": [
                        {
                          "start": 1
                        }
                      ],
                      "month": [
                        {
                          "start": 1
                        }
                      ],
                      "second": [
                        {
                          "start": 1
                        }
                      ],
                      "year": [
                        {
                          "start": 1
                        }
                      ]
                    },
                    "start_at": "2024-01-15T09:30:00Z",
                    "time_zone_name": "America/New_York"
                  },
                  "schema_version": 1,
                  "short_id": "short_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderSchedule1(
            id: "_id",
            autoStage: Optional(true),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            intendedStatus: Optional(.draft),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            name: "name",
            orchestratorScheduleId: Optional("orchestrator_schedule_id"),
            orchestratorSchedulePaused: Optional(true),
            orderTemplateCore: Optional(OrderTemplateCore1(
                caseTag: Optional("case_tag"),
                coordinatorOrgId: Optional("coordinator_org_id"),
                departmentId: Optional("department_id"),
                directoryEntryIds: Optional([
                    "directory_entry_ids"
                ]),
                driverIds: Optional([
                    "driver_ids"
                ]),
                executorOrgIds: Optional([
                    "executor_org_ids"
                ]),
                offChrtExecutorOrgIds: Optional([
                    "off_chrt_executor_org_ids"
                ]),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                taskListsToApplyAtOrderCreation: Optional([
                    TaskListToApplyToCase1(
                        taskListId: "task_list_id"
                    )
                ]),
                taskListsToApplyAtOrderStaging: Optional([
                    TaskListToApplyToCase1(
                        taskListId: "task_list_id"
                    )
                ]),
                text: Optional("text")
            )),
            ownedByOrgId: "owned_by_org_id",
            ownedByOrgType: .provider,
            ownedByUserId: "owned_by_user_id",
            scheduleSpec: Optional(OrderScheduleSpec1(
                endAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                scheduleCalendarSpec: Optional(ScheduleCalendarSpec(
                    comment: Optional("comment"),
                    dayOfMonth: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    dayOfWeek: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    hour: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    minute: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    month: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    second: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    year: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ])
                )),
                startAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                timeZoneName: "America/New_York"
            )),
            schemaVersion: 1,
            shortId: "short_id"
        )
        let response = try await client.shipping.orderSchedules.getByIdV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}