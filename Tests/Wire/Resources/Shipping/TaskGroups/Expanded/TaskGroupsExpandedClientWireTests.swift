import Foundation
import Testing
import Chrt

@Suite("TaskGroupsExpandedClient Wire Tests") struct TaskGroupsExpandedClientWireTests {
    @Test func forExecutorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "order_schedule_template_path_idempotency_key": "order_schedule_template_path_idempotency_key",
                    "created_by_user_id": "created_by_user_id",
                    "created_by_org_id": "created_by_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "coordinator_org_id": "coordinator_org_id",
                    "executor_org_id": "executor_org_id",
                    "off_chrt_executor_org_id": "off_chrt_executor_org_id",
                    "driver_id": "driver_id",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "task_group_type": "chrt_ground_provider",
                    "vehicle_type": "sedan",
                    "flight_setup_notes": "flight_setup_notes",
                    "mileage_estimated": 1.1,
                    "mileage_observed": 1.1,
                    "wait_time_total_minutes": 1.1,
                    "mileage_asserted": true,
                    "flight_leg_ids": [
                      "flight_leg_ids"
                    ],
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                    "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                    "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                    "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                    "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                    "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                    "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                    "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                    "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id"
                  },
                  "tasks_expanded": [
                    {
                      "task": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_group_id": "task_group_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                      },
                      "cargos": [
                        {
                          "schema_version": 1,
                          "cargo_type": "spare_parts",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
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
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "directory_entries": [
                        {
                          "schema_version": 1,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
                  ],
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "driver": {
                    "schema_version": 1,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "_id": "_id",
                    "org_id": "org_id",
                    "user_id": "user_id",
                    "status": "unassigned",
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "waiting": true,
                    "auto_assign_enabled": true,
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "last_seen_at_location": {
                      "type": "Feature",
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city"
                  },
                  "executor_org_id": "executor_org_id",
                  "executor_org_company_name": "executor_org_company_name",
                  "executor_org_handle": "executor_org_handle",
                  "coordinator_org_id": "coordinator_org_id",
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "shipper_org_id": "shipper_org_id",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpanded(
            taskGroup: TaskGroup1(
                schemaVersion: 1,
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                taskIds: Optional([
                    "task_ids"
                ]),
                orderScheduleTemplatePathIdempotencyKey: Optional("order_schedule_template_path_idempotency_key"),
                createdByUserId: Optional("created_by_user_id"),
                createdByOrgId: "created_by_org_id",
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                coordinatorOrgId: Optional("coordinator_org_id"),
                executorOrgId: Optional("executor_org_id"),
                offChrtExecutorOrgId: Optional("off_chrt_executor_org_id"),
                driverId: Optional("driver_id"),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                taskGroupType: .chrtGroundProvider,
                vehicleType: Optional(.sedan),
                flightSetupNotes: Optional("flight_setup_notes"),
                mileageEstimated: Optional(1.1),
                mileageObserved: Optional(1.1),
                waitTimeTotalMinutes: Optional(1.1),
                mileageAsserted: Optional(true),
                flightLegIds: Optional([
                    "flight_leg_ids"
                ]),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id")
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    task: Task1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskGroupId: "task_group_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ),
                    cargos: Optional([
                        Cargo1(
                            schemaVersion: 1,
                            cargoType: .spareParts,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    directoryEntries: Optional([
                        DirectoryEntry1(
                            schemaVersion: 1,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
            ]),
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            driver: Optional(Driver1(
                schemaVersion: 1,
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                vehicleTypes: Optional([
                    .sedan
                ]),
                id: "_id",
                orgId: "org_id",
                userId: "user_id",
                status: Optional(.unassigned),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                waiting: Optional(true),
                autoAssignEnabled: Optional(true),
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city")
            )),
            executorOrgId: Optional("executor_org_id"),
            executorOrgCompanyName: Optional("executor_org_company_name"),
            executorOrgHandle: Optional("executor_org_handle"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            shipperOrgId: Optional("shipper_org_id"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.shipping.taskGroups.expanded.forExecutorOperatorsV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forDriverForExecutorV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "order_schedule_template_path_idempotency_key": "order_schedule_template_path_idempotency_key",
                    "created_by_user_id": "created_by_user_id",
                    "created_by_org_id": "created_by_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "coordinator_org_id": "coordinator_org_id",
                    "executor_org_id": "executor_org_id",
                    "off_chrt_executor_org_id": "off_chrt_executor_org_id",
                    "driver_id": "driver_id",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "task_group_type": "chrt_ground_provider",
                    "vehicle_type": "sedan",
                    "flight_setup_notes": "flight_setup_notes",
                    "mileage_estimated": 1.1,
                    "mileage_observed": 1.1,
                    "wait_time_total_minutes": 1.1,
                    "mileage_asserted": true,
                    "flight_leg_ids": [
                      "flight_leg_ids"
                    ],
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                    "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                    "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                    "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                    "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                    "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                    "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                    "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                    "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id"
                  },
                  "tasks_expanded": [
                    {
                      "task": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_group_id": "task_group_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                      },
                      "cargos": [
                        {
                          "schema_version": 1,
                          "cargo_type": "spare_parts",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
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
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "directory_entries": [
                        {
                          "schema_version": 1,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
                  ],
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "driver": {
                    "schema_version": 1,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "_id": "_id",
                    "org_id": "org_id",
                    "user_id": "user_id",
                    "status": "unassigned",
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "waiting": true,
                    "auto_assign_enabled": true,
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "last_seen_at_location": {
                      "type": "Feature",
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city"
                  },
                  "executor_org_id": "executor_org_id",
                  "executor_org_company_name": "executor_org_company_name",
                  "executor_org_handle": "executor_org_handle",
                  "coordinator_org_id": "coordinator_org_id",
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "shipper_org_id": "shipper_org_id",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpanded(
            taskGroup: TaskGroup1(
                schemaVersion: 1,
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                taskIds: Optional([
                    "task_ids"
                ]),
                orderScheduleTemplatePathIdempotencyKey: Optional("order_schedule_template_path_idempotency_key"),
                createdByUserId: Optional("created_by_user_id"),
                createdByOrgId: "created_by_org_id",
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                coordinatorOrgId: Optional("coordinator_org_id"),
                executorOrgId: Optional("executor_org_id"),
                offChrtExecutorOrgId: Optional("off_chrt_executor_org_id"),
                driverId: Optional("driver_id"),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                taskGroupType: .chrtGroundProvider,
                vehicleType: Optional(.sedan),
                flightSetupNotes: Optional("flight_setup_notes"),
                mileageEstimated: Optional(1.1),
                mileageObserved: Optional(1.1),
                waitTimeTotalMinutes: Optional(1.1),
                mileageAsserted: Optional(true),
                flightLegIds: Optional([
                    "flight_leg_ids"
                ]),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id")
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    task: Task1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskGroupId: "task_group_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ),
                    cargos: Optional([
                        Cargo1(
                            schemaVersion: 1,
                            cargoType: .spareParts,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    directoryEntries: Optional([
                        DirectoryEntry1(
                            schemaVersion: 1,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
            ]),
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            driver: Optional(Driver1(
                schemaVersion: 1,
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                vehicleTypes: Optional([
                    .sedan
                ]),
                id: "_id",
                orgId: "org_id",
                userId: "user_id",
                status: Optional(.unassigned),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                waiting: Optional(true),
                autoAssignEnabled: Optional(true),
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city")
            )),
            executorOrgId: Optional("executor_org_id"),
            executorOrgCompanyName: Optional("executor_org_company_name"),
            executorOrgHandle: Optional("executor_org_handle"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            shipperOrgId: Optional("shipper_org_id"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.shipping.taskGroups.expanded.forDriverForExecutorV1(
            taskGroupId: "task_group_id",
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
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "order_schedule_template_path_idempotency_key": "order_schedule_template_path_idempotency_key",
                    "created_by_user_id": "created_by_user_id",
                    "created_by_org_id": "created_by_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "coordinator_org_id": "coordinator_org_id",
                    "executor_org_id": "executor_org_id",
                    "off_chrt_executor_org_id": "off_chrt_executor_org_id",
                    "driver_id": "driver_id",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "task_group_type": "chrt_ground_provider",
                    "vehicle_type": "sedan",
                    "flight_setup_notes": "flight_setup_notes",
                    "mileage_estimated": 1.1,
                    "mileage_observed": 1.1,
                    "wait_time_total_minutes": 1.1,
                    "mileage_asserted": true,
                    "flight_leg_ids": [
                      "flight_leg_ids"
                    ],
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                    "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                    "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                    "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                    "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                    "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                    "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                    "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                    "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id"
                  },
                  "tasks_expanded": [
                    {
                      "task": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_group_id": "task_group_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                      },
                      "cargos": [
                        {
                          "schema_version": 1,
                          "cargo_type": "spare_parts",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
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
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "directory_entries": [
                        {
                          "schema_version": 1,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
                  ],
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "driver": {
                    "schema_version": 1,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "_id": "_id",
                    "org_id": "org_id",
                    "user_id": "user_id",
                    "status": "unassigned",
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "waiting": true,
                    "auto_assign_enabled": true,
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "last_seen_at_location": {
                      "type": "Feature",
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city"
                  },
                  "executor_org_id": "executor_org_id",
                  "executor_org_company_name": "executor_org_company_name",
                  "executor_org_handle": "executor_org_handle",
                  "coordinator_org_id": "coordinator_org_id",
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "shipper_org_id": "shipper_org_id",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpanded(
            taskGroup: TaskGroup1(
                schemaVersion: 1,
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                taskIds: Optional([
                    "task_ids"
                ]),
                orderScheduleTemplatePathIdempotencyKey: Optional("order_schedule_template_path_idempotency_key"),
                createdByUserId: Optional("created_by_user_id"),
                createdByOrgId: "created_by_org_id",
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                coordinatorOrgId: Optional("coordinator_org_id"),
                executorOrgId: Optional("executor_org_id"),
                offChrtExecutorOrgId: Optional("off_chrt_executor_org_id"),
                driverId: Optional("driver_id"),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                taskGroupType: .chrtGroundProvider,
                vehicleType: Optional(.sedan),
                flightSetupNotes: Optional("flight_setup_notes"),
                mileageEstimated: Optional(1.1),
                mileageObserved: Optional(1.1),
                waitTimeTotalMinutes: Optional(1.1),
                mileageAsserted: Optional(true),
                flightLegIds: Optional([
                    "flight_leg_ids"
                ]),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id")
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    task: Task1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskGroupId: "task_group_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ),
                    cargos: Optional([
                        Cargo1(
                            schemaVersion: 1,
                            cargoType: .spareParts,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    directoryEntries: Optional([
                        DirectoryEntry1(
                            schemaVersion: 1,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
            ]),
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            driver: Optional(Driver1(
                schemaVersion: 1,
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                vehicleTypes: Optional([
                    .sedan
                ]),
                id: "_id",
                orgId: "org_id",
                userId: "user_id",
                status: Optional(.unassigned),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                waiting: Optional(true),
                autoAssignEnabled: Optional(true),
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city")
            )),
            executorOrgId: Optional("executor_org_id"),
            executorOrgCompanyName: Optional("executor_org_company_name"),
            executorOrgHandle: Optional("executor_org_handle"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            shipperOrgId: Optional("shipper_org_id"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.shipping.taskGroups.expanded.forShipperOperatorsV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forCoordinatorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "order_schedule_template_path_idempotency_key": "order_schedule_template_path_idempotency_key",
                    "created_by_user_id": "created_by_user_id",
                    "created_by_org_id": "created_by_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "coordinator_org_id": "coordinator_org_id",
                    "executor_org_id": "executor_org_id",
                    "off_chrt_executor_org_id": "off_chrt_executor_org_id",
                    "driver_id": "driver_id",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "task_group_type": "chrt_ground_provider",
                    "vehicle_type": "sedan",
                    "flight_setup_notes": "flight_setup_notes",
                    "mileage_estimated": 1.1,
                    "mileage_observed": 1.1,
                    "wait_time_total_minutes": 1.1,
                    "mileage_asserted": true,
                    "flight_leg_ids": [
                      "flight_leg_ids"
                    ],
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                    "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                    "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                    "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                    "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                    "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                    "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                    "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                    "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id"
                  },
                  "tasks_expanded": [
                    {
                      "task": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_group_id": "task_group_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                      },
                      "cargos": [
                        {
                          "schema_version": 1,
                          "cargo_type": "spare_parts",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
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
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "directory_entries": [
                        {
                          "schema_version": 1,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
                  ],
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "driver": {
                    "schema_version": 1,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "_id": "_id",
                    "org_id": "org_id",
                    "user_id": "user_id",
                    "status": "unassigned",
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "waiting": true,
                    "auto_assign_enabled": true,
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "last_seen_at_location": {
                      "type": "Feature",
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city"
                  },
                  "executor_org_id": "executor_org_id",
                  "executor_org_company_name": "executor_org_company_name",
                  "executor_org_handle": "executor_org_handle",
                  "coordinator_org_id": "coordinator_org_id",
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "shipper_org_id": "shipper_org_id",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpanded(
            taskGroup: TaskGroup1(
                schemaVersion: 1,
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                taskIds: Optional([
                    "task_ids"
                ]),
                orderScheduleTemplatePathIdempotencyKey: Optional("order_schedule_template_path_idempotency_key"),
                createdByUserId: Optional("created_by_user_id"),
                createdByOrgId: "created_by_org_id",
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                coordinatorOrgId: Optional("coordinator_org_id"),
                executorOrgId: Optional("executor_org_id"),
                offChrtExecutorOrgId: Optional("off_chrt_executor_org_id"),
                driverId: Optional("driver_id"),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                taskGroupType: .chrtGroundProvider,
                vehicleType: Optional(.sedan),
                flightSetupNotes: Optional("flight_setup_notes"),
                mileageEstimated: Optional(1.1),
                mileageObserved: Optional(1.1),
                waitTimeTotalMinutes: Optional(1.1),
                mileageAsserted: Optional(true),
                flightLegIds: Optional([
                    "flight_leg_ids"
                ]),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id")
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    task: Task1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskGroupId: "task_group_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ),
                    cargos: Optional([
                        Cargo1(
                            schemaVersion: 1,
                            cargoType: .spareParts,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    directoryEntries: Optional([
                        DirectoryEntry1(
                            schemaVersion: 1,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
            ]),
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            driver: Optional(Driver1(
                schemaVersion: 1,
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                vehicleTypes: Optional([
                    .sedan
                ]),
                id: "_id",
                orgId: "org_id",
                userId: "user_id",
                status: Optional(.unassigned),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                waiting: Optional(true),
                autoAssignEnabled: Optional(true),
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city")
            )),
            executorOrgId: Optional("executor_org_id"),
            executorOrgCompanyName: Optional("executor_org_company_name"),
            executorOrgHandle: Optional("executor_org_handle"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            shipperOrgId: Optional("shipper_org_id"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.shipping.taskGroups.expanded.forCoordinatorOperatorsV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForExecutorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "task_group": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "task_group_type": "chrt_ground_provider"
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "schema_version": 1,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "task_group_id": "task_group_id",
                            "created_by_org_id": "created_by_org_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                          }
                        }
                      ],
                      "awb_numbers": [
                        "awb_numbers"
                      ],
                      "driver": {
                        "schema_version": 1,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "executor_org_id": "executor_org_id",
                      "executor_org_company_name": "executor_org_company_name",
                      "executor_org_handle": "executor_org_handle",
                      "coordinator_org_id": "coordinator_org_id",
                      "coordinator_org_company_name": "coordinator_org_company_name",
                      "coordinator_org_handle": "coordinator_org_handle",
                      "shipper_org_id": "shipper_org_id",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
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
        let expectedResponse = TaskGroupExpandedListRes(
            items: [
                TaskGroupExpanded(
                    taskGroup: TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        taskGroupType: .chrtGroundProvider
                    ),
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                taskGroupId: "task_group_id",
                                createdByOrgId: "created_by_org_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                            )
                        )
                    ]),
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    executorOrgId: Optional("executor_org_id"),
                    executorOrgCompanyName: Optional("executor_org_company_name"),
                    executorOrgHandle: Optional("executor_org_handle"),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
                    coordinatorOrgHandle: Optional("coordinator_org_handle"),
                    shipperOrgId: Optional("shipper_org_id"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.taskGroups.expanded.listForExecutorOperatorsV1(
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
            filterSkippedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterSkippedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDriverId: "filter_driver_id",
            filterCoordinatorOrgId: "filter_coordinator_org_id",
            filterShipperOrgId: "filter_shipper_org_id",
            filterOffChrtShipperOrgId: "filter_off_chrt_shipper_org_id",
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForDriverForExecutorV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "task_group": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "task_group_type": "chrt_ground_provider"
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "schema_version": 1,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "task_group_id": "task_group_id",
                            "created_by_org_id": "created_by_org_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                          }
                        }
                      ],
                      "awb_numbers": [
                        "awb_numbers"
                      ],
                      "driver": {
                        "schema_version": 1,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "executor_org_id": "executor_org_id",
                      "executor_org_company_name": "executor_org_company_name",
                      "executor_org_handle": "executor_org_handle",
                      "coordinator_org_id": "coordinator_org_id",
                      "coordinator_org_company_name": "coordinator_org_company_name",
                      "coordinator_org_handle": "coordinator_org_handle",
                      "shipper_org_id": "shipper_org_id",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
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
        let expectedResponse = TaskGroupExpandedListRes(
            items: [
                TaskGroupExpanded(
                    taskGroup: TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        taskGroupType: .chrtGroundProvider
                    ),
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                taskGroupId: "task_group_id",
                                createdByOrgId: "created_by_org_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                            )
                        )
                    ]),
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    executorOrgId: Optional("executor_org_id"),
                    executorOrgCompanyName: Optional("executor_org_company_name"),
                    executorOrgHandle: Optional("executor_org_handle"),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
                    coordinatorOrgHandle: Optional("coordinator_org_handle"),
                    shipperOrgId: Optional("shipper_org_id"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.taskGroups.expanded.listForDriverForExecutorV1(
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
            filterSkippedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterSkippedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCancelledAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCoordinatorOrgId: "filter_coordinator_org_id",
            filterShipperOrgId: "filter_shipper_org_id",
            filterOffChrtShipperOrgId: "filter_off_chrt_shipper_org_id",
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}