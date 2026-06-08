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
                      "schedule_spec": {
                        "time_zone_name": "America/New_York"
                      },
                      "_id": "_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_org_type": "provider",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "intended_status": "draft",
                      "orchestrator_schedule_id": "orchestrator_schedule_id",
                      "orchestrator_schedule_paused": true
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
                    scheduleSpec: Optional(OrderScheduleSpec1(
                        timeZoneName: "America/New_York"
                    )),
                    id: "_id",
                    ownedByUserId: "owned_by_user_id",
                    ownedByOrgId: "owned_by_org_id",
                    ownedByOrgType: .provider,
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    intendedStatus: Optional(.draft),
                    orchestratorScheduleId: Optional("orchestrator_schedule_id"),
                    orchestratorSchedulePaused: Optional(true)
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
                    "cargo_manifests": [
                      {
                        "schema_version": 1,
                        "cargo_type": "spare_parts"
                      }
                    ],
                    "task_group_manifests": [
                      {
                        "task_group_type": "chrt_ground_provider",
                        "task_manifests": [
                          {
                            "schema_version": 1
                          }
                        ]
                      }
                    ],
                    "auto_stage": true
                  },
                  "schedule_spec": {
                    "schedule_calendar_spec": {
                      "second": [
                        {
                          "start": 1
                        }
                      ],
                      "minute": [
                        {
                          "start": 1
                        }
                      ],
                      "hour": [
                        {
                          "start": 1
                        }
                      ],
                      "day_of_month": [
                        {
                          "start": 1
                        }
                      ],
                      "month": [
                        {
                          "start": 1
                        }
                      ],
                      "year": [
                        {
                          "start": 1
                        }
                      ],
                      "day_of_week": [
                        {
                          "start": 1
                        }
                      ],
                      "comment": "comment"
                    },
                    "start_at": "2024-01-15T09:30:00Z",
                    "end_at": "2024-01-15T09:30:00Z",
                    "time_zone_name": "America/New_York"
                  },
                  "_id": "_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_org_type": "provider",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "intended_status": "draft",
                  "orchestrator_schedule_id": "orchestrator_schedule_id",
                  "orchestrator_schedule_paused": true
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
            orderManifest: Optional(OrderManifest1(
                coordinatorOrgId: Optional("coordinator_org_id"),
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                offChrtReferenceId: Optional("off_chrt_reference_id"),
                cargoManifests: Optional([
                    CargoManifest1(
                        schemaVersion: 1,
                        cargoType: .spareParts
                    )
                ]),
                taskGroupManifests: Optional([
                    TaskGroupManifest1(
                        taskGroupType: .chrtGroundProvider,
                        taskManifests: [
                            TaskManifest1(
                                schemaVersion: 1
                            )
                        ]
                    )
                ]),
                autoStage: Optional(true)
            )),
            scheduleSpec: Optional(OrderScheduleSpec1(
                scheduleCalendarSpec: Optional(ScheduleCalendarSpec(
                    second: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    minute: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    hour: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    dayOfMonth: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    month: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    year: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    dayOfWeek: Optional([
                        ScheduleRange(
                            start: 1
                        )
                    ]),
                    comment: Optional("comment")
                )),
                startAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                endAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                timeZoneName: "America/New_York"
            )),
            id: "_id",
            ownedByUserId: "owned_by_user_id",
            ownedByOrgId: "owned_by_org_id",
            ownedByOrgType: .provider,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            intendedStatus: Optional(.draft),
            orchestratorScheduleId: Optional("orchestrator_schedule_id"),
            orchestratorSchedulePaused: Optional(true)
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
                  "orders_created_count": 1,
                  "orchestrator_schedule_status": {
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
            ordersCreatedCount: 1,
            orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus(
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
}