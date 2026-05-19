import Foundation
import Testing
import Chrt

@Suite("OrderSchedulesClient Wire Tests") struct OrderSchedulesClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "name": "name",
                      "description": "description",
                      "order_manifest": {},
                      "schedule_spec": {},
                      "_id": "_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_org_type": "provider",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "draft",
                      "orchestrator_schedule_status": "not_created",
                      "orchestrator_schedule_id": "orchestrator_schedule_id",
                      "orchestrator_schedule_paused": true,
                      "orchestrator_schedule_created_at_timestamp": "2024-01-15T09:30:00Z"
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
                    schemaVersion: 1,
                    name: "name",
                    description: Optional("description"),
                    orderManifest: OrderManifest1(

                    ),
                    scheduleSpec: ScheduleSpec(

                    ),
                    id: "_id",
                    ownedByUserId: "owned_by_user_id",
                    ownedByOrgId: "owned_by_org_id",
                    ownedByOrgType: .provider,
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    status: Optional(.draft),
                    orchestratorScheduleStatus: Optional(.notCreated),
                    orchestratorScheduleId: "orchestrator_schedule_id",
                    orchestratorSchedulePaused: Optional(true),
                    orchestratorScheduleCreatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orderSchedules.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterOwnedByUserId: "filter_owned_by_user_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
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
                  "schema_version": 1,
                  "name": "name",
                  "description": "description",
                  "order_manifest": {
                    "coordinator_org_id": "coordinator_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "off_chrt_reference_id": "off_chrt_reference_id",
                    "cargos": [
                      {
                        "schema_version": 1,
                        "cargo_type": "spare_parts"
                      }
                    ],
                    "task_groups": [
                      {
                        "task_group_type": "chrt_ground_provider",
                        "tasks": [
                          {
                            "schema_version": 1
                          }
                        ]
                      }
                    ],
                    "auto_stage": true
                  },
                  "schedule_spec": {
                    "calendars": [
                      {}
                    ],
                    "intervals": [
                      {
                        "every": "every"
                      }
                    ],
                    "cron_expressions": [
                      "cron_expressions"
                    ],
                    "skip": [
                      {}
                    ],
                    "start_at": "2024-01-15T09:30:00Z",
                    "end_at": "2024-01-15T09:30:00Z",
                    "jitter": "jitter",
                    "time_zone_name": "time_zone_name"
                  },
                  "_id": "_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_org_type": "provider",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "status": "draft",
                  "orchestrator_schedule_status": "not_created",
                  "orchestrator_schedule_id": "orchestrator_schedule_id",
                  "orchestrator_schedule_paused": true,
                  "orchestrator_schedule_created_at_timestamp": "2024-01-15T09:30:00Z"
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
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            orderManifest: OrderManifest1(
                coordinatorOrgId: Optional("coordinator_org_id"),
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                offChrtReferenceId: Optional("off_chrt_reference_id"),
                cargos: Optional([
                    CargoManifest1(
                        schemaVersion: 1,
                        cargoType: .spareParts
                    )
                ]),
                taskGroups: Optional([
                    TaskGroupManifest1(
                        taskGroupType: .chrtGroundProvider,
                        tasks: [
                            TaskManifest1(
                                schemaVersion: 1
                            )
                        ]
                    )
                ]),
                autoStage: Optional(true)
            ),
            scheduleSpec: ScheduleSpec(
                calendars: Optional([
                    ScheduleCalendarSpec(

                    )
                ]),
                intervals: Optional([
                    ScheduleIntervalSpec(
                        every: "every"
                    )
                ]),
                cronExpressions: Optional([
                    "cron_expressions"
                ]),
                skip: Optional([
                    ScheduleCalendarSpec(

                    )
                ]),
                startAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                endAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                jitter: Optional("jitter"),
                timeZoneName: Optional("time_zone_name")
            ),
            id: "_id",
            ownedByUserId: "owned_by_user_id",
            ownedByOrgId: "owned_by_org_id",
            ownedByOrgType: .provider,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            status: Optional(.draft),
            orchestratorScheduleStatus: Optional(.notCreated),
            orchestratorScheduleId: "orchestrator_schedule_id",
            orchestratorSchedulePaused: Optional(true),
            orchestratorScheduleCreatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.shipping.orderSchedules.getByIdV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func aboutV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_schedule": {
                    "schema_version": 1,
                    "name": "name",
                    "description": "description",
                    "order_manifest": {
                      "coordinator_org_id": "coordinator_org_id",
                      "shipper_org_id": "shipper_org_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "cargos": [
                        {
                          "schema_version": 1,
                          "cargo_type": "spare_parts"
                        }
                      ],
                      "task_groups": [
                        {
                          "task_group_type": "chrt_ground_provider",
                          "tasks": [
                            {
                              "schema_version": 1
                            }
                          ]
                        }
                      ],
                      "auto_stage": true
                    },
                    "schedule_spec": {
                      "calendars": [
                        {}
                      ],
                      "intervals": [
                        {
                          "every": "every"
                        }
                      ],
                      "cron_expressions": [
                        "cron_expressions"
                      ],
                      "skip": [
                        {}
                      ],
                      "start_at": "2024-01-15T09:30:00Z",
                      "end_at": "2024-01-15T09:30:00Z",
                      "jitter": "jitter",
                      "time_zone_name": "time_zone_name"
                    },
                    "_id": "_id",
                    "owned_by_user_id": "owned_by_user_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "owned_by_org_type": "provider",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "orchestrator_schedule_status": "not_created",
                    "orchestrator_schedule_id": "orchestrator_schedule_id",
                    "orchestrator_schedule_paused": true,
                    "orchestrator_schedule_created_at_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "orders_created_count": 1,
                  "orchestrator_schedule_status": {
                    "status": "not_created",
                    "exists": true,
                    "paused": true,
                    "actions_count": 1,
                    "next_action_times": [
                      "2024-01-15T09:30:00Z"
                    ],
                    "recent_actions": [
                      {
                        "scheduled_at": "2024-01-15T09:30:00Z",
                        "started_at": "2024-01-15T09:30:00Z"
                      }
                    ]
                  }
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
            orderSchedule: OrderSchedule1(
                schemaVersion: 1,
                name: "name",
                description: Optional("description"),
                orderManifest: OrderManifest1(
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    shipperOrgId: Optional("shipper_org_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    cargos: Optional([
                        CargoManifest1(
                            schemaVersion: 1,
                            cargoType: .spareParts
                        )
                    ]),
                    taskGroups: Optional([
                        TaskGroupManifest1(
                            taskGroupType: .chrtGroundProvider,
                            tasks: [
                                TaskManifest1(
                                    schemaVersion: 1
                                )
                            ]
                        )
                    ]),
                    autoStage: Optional(true)
                ),
                scheduleSpec: ScheduleSpec(
                    calendars: Optional([
                        ScheduleCalendarSpec(

                        )
                    ]),
                    intervals: Optional([
                        ScheduleIntervalSpec(
                            every: "every"
                        )
                    ]),
                    cronExpressions: Optional([
                        "cron_expressions"
                    ]),
                    skip: Optional([
                        ScheduleCalendarSpec(

                        )
                    ]),
                    startAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    endAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    jitter: Optional("jitter"),
                    timeZoneName: Optional("time_zone_name")
                ),
                id: "_id",
                ownedByUserId: "owned_by_user_id",
                ownedByOrgId: "owned_by_org_id",
                ownedByOrgType: .provider,
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                status: Optional(.draft),
                orchestratorScheduleStatus: Optional(.notCreated),
                orchestratorScheduleId: "orchestrator_schedule_id",
                orchestratorSchedulePaused: Optional(true),
                orchestratorScheduleCreatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            ),
            ordersCreatedCount: 1,
            orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus(
                status: .notCreated,
                exists: true,
                paused: Optional(true),
                actionsCount: Optional(1),
                nextActionTimes: Optional([
                    try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ]),
                recentActions: Optional([
                    OrderScheduleOrchestratorScheduleActionResult(
                        scheduledAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ])
            )
        )
        let response = try await client.shipping.orderSchedules.aboutV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func newV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.shipping.orderSchedules.newV1(
            request: .init(
                schemaVersion: 1,
                name: "name",
                orderManifest: OrderManifest1(

                ),
                scheduleSpec: ScheduleSpec(

                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.updateV1(
            orderScheduleId: "order_schedule_id",
            request: .init(),
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
}