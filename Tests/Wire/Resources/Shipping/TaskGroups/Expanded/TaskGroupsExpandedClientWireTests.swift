import Foundation
import Testing
import Chrt

@Suite("TaskGroupsExpandedClient Wire Tests") struct TaskGroupsExpandedClientWireTests {
    @Test func forCoordinatorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "coordinator_org_id": "coordinator_org_id",
                  "driver": {
                    "_id": "_id",
                    "auto_assign_enabled": true,
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "last_seen_at_location": {
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
                      "id": 1,
                      "type": "Feature"
                    },
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "waiting": true
                  },
                  "executor_org_company_name": "executor_org_company_name",
                  "executor_org_handle": "executor_org_handle",
                  "executor_org_id": "executor_org_id",
                  "off_chrt_executor_org_company_name": "off_chrt_executor_org_company_name",
                  "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "shipper_org_id": "shipper_org_id",
                  "task_group": {
                    "_id": "_id",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "coordinator_org_id": "coordinator_org_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "driver_id": "driver_id",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "executor_org_id": "executor_org_id",
                    "flight_leg_ids": [
                      "flight_leg_ids"
                    ],
                    "flight_setup_notes": "flight_setup_notes",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "messages": [
                      {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      }
                    ],
                    "mileage_asserted": true,
                    "mileage_estimated": 1.1,
                    "mileage_observed": 1.1,
                    "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                    "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                    "order_id": "order_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "order_short_id": "order_short_id",
                    "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id",
                    "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                    "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                    "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                    "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                    "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                    "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                    "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "task_group_type": "chrt_ground_provider",
                    "task_ids": [
                      "task_ids"
                    ],
                    "vehicle_type": "sedan",
                    "wait_time_total_minutes": 1.1
                  },
                  "tasks_expanded": [
                    {
                      "cargos": [
                        {
                          "_id": "_id",
                          "cargo_type": "spare_parts",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1
                        }
                      ],
                      "contacts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "name": "name",
                          "schema_version": 1
                        }
                      ],
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_id": "task_group_id"
                      },
                      "task_artifacts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1,
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "type": "image"
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
        let expectedResponse = TaskGroupExpanded(
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            driver: Optional(Driver1(
                id: "_id",
                autoAssignEnabled: Optional(true),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                lastSeenAtLocation: Optional(LocationFeature(
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
                    )),
                    type: .feature
                )),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ]),
                waiting: Optional(true)
            )),
            executorOrgCompanyName: Optional("executor_org_company_name"),
            executorOrgHandle: Optional("executor_org_handle"),
            executorOrgId: Optional("executor_org_id"),
            offChrtExecutorOrgCompanyName: Optional("off_chrt_executor_org_company_name"),
            offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            shipperOrgId: Optional("shipper_org_id"),
            taskGroup: TaskGroup1(
                id: "_id",
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorOrgId: Optional("coordinator_org_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                driverId: Optional("driver_id"),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                executorOrgId: Optional("executor_org_id"),
                flightLegIds: Optional([
                    "flight_leg_ids"
                ]),
                flightSetupNotes: Optional("flight_setup_notes"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )
                ]),
                mileageAsserted: Optional(true),
                mileageEstimated: Optional(1.1),
                mileageObserved: Optional(1.1),
                offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                orderId: "order_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                orderShortId: "order_short_id",
                providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id"),
                providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                taskGroupType: .chrtGroundProvider,
                taskIds: Optional([
                    "task_ids"
                ]),
                vehicleType: Optional(.sedan),
                waitTimeTotalMinutes: Optional(1.1)
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    cargos: Optional([
                        Cargo1(
                            id: "_id",
                            cargoType: .spareParts,
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1
                        )
                    ]),
                    contacts: Optional([
                        Contact1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            name: "name",
                            schemaVersion: 1
                        )
                    ]),
                    task: Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupId: "task_group_id"
                    ),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1,
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            type: .image
                        )
                    ])
                )
            ])
        )
        let response = try await client.shipping.taskGroups.expanded.forCoordinatorOperatorsV1(
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
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "coordinator_org_id": "coordinator_org_id",
                  "driver": {
                    "_id": "_id",
                    "auto_assign_enabled": true,
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "last_seen_at_location": {
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
                      "id": 1,
                      "type": "Feature"
                    },
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "waiting": true
                  },
                  "executor_org_company_name": "executor_org_company_name",
                  "executor_org_handle": "executor_org_handle",
                  "executor_org_id": "executor_org_id",
                  "off_chrt_executor_org_company_name": "off_chrt_executor_org_company_name",
                  "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "shipper_org_id": "shipper_org_id",
                  "task_group": {
                    "_id": "_id",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "coordinator_org_id": "coordinator_org_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "driver_id": "driver_id",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "executor_org_id": "executor_org_id",
                    "flight_leg_ids": [
                      "flight_leg_ids"
                    ],
                    "flight_setup_notes": "flight_setup_notes",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "messages": [
                      {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      }
                    ],
                    "mileage_asserted": true,
                    "mileage_estimated": 1.1,
                    "mileage_observed": 1.1,
                    "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                    "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                    "order_id": "order_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "order_short_id": "order_short_id",
                    "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id",
                    "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                    "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                    "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                    "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                    "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                    "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                    "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "task_group_type": "chrt_ground_provider",
                    "task_ids": [
                      "task_ids"
                    ],
                    "vehicle_type": "sedan",
                    "wait_time_total_minutes": 1.1
                  },
                  "tasks_expanded": [
                    {
                      "cargos": [
                        {
                          "_id": "_id",
                          "cargo_type": "spare_parts",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1
                        }
                      ],
                      "contacts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "name": "name",
                          "schema_version": 1
                        }
                      ],
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_id": "task_group_id"
                      },
                      "task_artifacts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1,
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "type": "image"
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
        let expectedResponse = TaskGroupExpanded(
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            driver: Optional(Driver1(
                id: "_id",
                autoAssignEnabled: Optional(true),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                lastSeenAtLocation: Optional(LocationFeature(
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
                    )),
                    type: .feature
                )),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ]),
                waiting: Optional(true)
            )),
            executorOrgCompanyName: Optional("executor_org_company_name"),
            executorOrgHandle: Optional("executor_org_handle"),
            executorOrgId: Optional("executor_org_id"),
            offChrtExecutorOrgCompanyName: Optional("off_chrt_executor_org_company_name"),
            offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            shipperOrgId: Optional("shipper_org_id"),
            taskGroup: TaskGroup1(
                id: "_id",
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorOrgId: Optional("coordinator_org_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                driverId: Optional("driver_id"),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                executorOrgId: Optional("executor_org_id"),
                flightLegIds: Optional([
                    "flight_leg_ids"
                ]),
                flightSetupNotes: Optional("flight_setup_notes"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )
                ]),
                mileageAsserted: Optional(true),
                mileageEstimated: Optional(1.1),
                mileageObserved: Optional(1.1),
                offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                orderId: "order_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                orderShortId: "order_short_id",
                providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id"),
                providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                taskGroupType: .chrtGroundProvider,
                taskIds: Optional([
                    "task_ids"
                ]),
                vehicleType: Optional(.sedan),
                waitTimeTotalMinutes: Optional(1.1)
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    cargos: Optional([
                        Cargo1(
                            id: "_id",
                            cargoType: .spareParts,
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1
                        )
                    ]),
                    contacts: Optional([
                        Contact1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            name: "name",
                            schemaVersion: 1
                        )
                    ]),
                    task: Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupId: "task_group_id"
                    ),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1,
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            type: .image
                        )
                    ])
                )
            ])
        )
        let response = try await client.shipping.taskGroups.expanded.forDriverForExecutorV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forExecutorOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "coordinator_org_id": "coordinator_org_id",
                  "driver": {
                    "_id": "_id",
                    "auto_assign_enabled": true,
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "last_seen_at_location": {
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
                      "id": 1,
                      "type": "Feature"
                    },
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "waiting": true
                  },
                  "executor_org_company_name": "executor_org_company_name",
                  "executor_org_handle": "executor_org_handle",
                  "executor_org_id": "executor_org_id",
                  "off_chrt_executor_org_company_name": "off_chrt_executor_org_company_name",
                  "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "shipper_org_id": "shipper_org_id",
                  "task_group": {
                    "_id": "_id",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "coordinator_org_id": "coordinator_org_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "driver_id": "driver_id",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "executor_org_id": "executor_org_id",
                    "flight_leg_ids": [
                      "flight_leg_ids"
                    ],
                    "flight_setup_notes": "flight_setup_notes",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "messages": [
                      {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      }
                    ],
                    "mileage_asserted": true,
                    "mileage_estimated": 1.1,
                    "mileage_observed": 1.1,
                    "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                    "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                    "order_id": "order_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "order_short_id": "order_short_id",
                    "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id",
                    "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                    "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                    "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                    "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                    "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                    "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                    "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "task_group_type": "chrt_ground_provider",
                    "task_ids": [
                      "task_ids"
                    ],
                    "vehicle_type": "sedan",
                    "wait_time_total_minutes": 1.1
                  },
                  "tasks_expanded": [
                    {
                      "cargos": [
                        {
                          "_id": "_id",
                          "cargo_type": "spare_parts",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1
                        }
                      ],
                      "contacts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "name": "name",
                          "schema_version": 1
                        }
                      ],
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_id": "task_group_id"
                      },
                      "task_artifacts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1,
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "type": "image"
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
        let expectedResponse = TaskGroupExpanded(
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            driver: Optional(Driver1(
                id: "_id",
                autoAssignEnabled: Optional(true),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                lastSeenAtLocation: Optional(LocationFeature(
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
                    )),
                    type: .feature
                )),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ]),
                waiting: Optional(true)
            )),
            executorOrgCompanyName: Optional("executor_org_company_name"),
            executorOrgHandle: Optional("executor_org_handle"),
            executorOrgId: Optional("executor_org_id"),
            offChrtExecutorOrgCompanyName: Optional("off_chrt_executor_org_company_name"),
            offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            shipperOrgId: Optional("shipper_org_id"),
            taskGroup: TaskGroup1(
                id: "_id",
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorOrgId: Optional("coordinator_org_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                driverId: Optional("driver_id"),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                executorOrgId: Optional("executor_org_id"),
                flightLegIds: Optional([
                    "flight_leg_ids"
                ]),
                flightSetupNotes: Optional("flight_setup_notes"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )
                ]),
                mileageAsserted: Optional(true),
                mileageEstimated: Optional(1.1),
                mileageObserved: Optional(1.1),
                offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                orderId: "order_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                orderShortId: "order_short_id",
                providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id"),
                providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                taskGroupType: .chrtGroundProvider,
                taskIds: Optional([
                    "task_ids"
                ]),
                vehicleType: Optional(.sedan),
                waitTimeTotalMinutes: Optional(1.1)
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    cargos: Optional([
                        Cargo1(
                            id: "_id",
                            cargoType: .spareParts,
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1
                        )
                    ]),
                    contacts: Optional([
                        Contact1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            name: "name",
                            schemaVersion: 1
                        )
                    ]),
                    task: Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupId: "task_group_id"
                    ),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1,
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            type: .image
                        )
                    ])
                )
            ])
        )
        let response = try await client.shipping.taskGroups.expanded.forExecutorOperatorsV1(
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
                  "awb_numbers": [
                    "awb_numbers"
                  ],
                  "coordinator_org_company_name": "coordinator_org_company_name",
                  "coordinator_org_handle": "coordinator_org_handle",
                  "coordinator_org_id": "coordinator_org_id",
                  "driver": {
                    "_id": "_id",
                    "auto_assign_enabled": true,
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "last_seen_at_location": {
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
                      "id": 1,
                      "type": "Feature"
                    },
                    "last_seen_at_location_city": "last_seen_at_location_city",
                    "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "waiting": true
                  },
                  "executor_org_company_name": "executor_org_company_name",
                  "executor_org_handle": "executor_org_handle",
                  "executor_org_id": "executor_org_id",
                  "off_chrt_executor_org_company_name": "off_chrt_executor_org_company_name",
                  "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "shipper_org_id": "shipper_org_id",
                  "task_group": {
                    "_id": "_id",
                    "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "coordinator_org_id": "coordinator_org_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "driver_id": "driver_id",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "executor_org_id": "executor_org_id",
                    "flight_leg_ids": [
                      "flight_leg_ids"
                    ],
                    "flight_setup_notes": "flight_setup_notes",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "messages": [
                      {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      }
                    ],
                    "mileage_asserted": true,
                    "mileage_estimated": 1.1,
                    "mileage_observed": 1.1,
                    "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                    "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                    "order_id": "order_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "order_short_id": "order_short_id",
                    "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id",
                    "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                    "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                    "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                    "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                    "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                    "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                    "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "task_group_type": "chrt_ground_provider",
                    "task_ids": [
                      "task_ids"
                    ],
                    "vehicle_type": "sedan",
                    "wait_time_total_minutes": 1.1
                  },
                  "tasks_expanded": [
                    {
                      "cargos": [
                        {
                          "_id": "_id",
                          "cargo_type": "spare_parts",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1
                        }
                      ],
                      "contacts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "name": "name",
                          "schema_version": 1
                        }
                      ],
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_id": "task_group_id"
                      },
                      "task_artifacts": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1,
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "type": "image"
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
        let expectedResponse = TaskGroupExpanded(
            awbNumbers: Optional([
                "awb_numbers"
            ]),
            coordinatorOrgCompanyName: Optional("coordinator_org_company_name"),
            coordinatorOrgHandle: Optional("coordinator_org_handle"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            driver: Optional(Driver1(
                id: "_id",
                autoAssignEnabled: Optional(true),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                lastSeenAtLocation: Optional(LocationFeature(
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
                    )),
                    type: .feature
                )),
                lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ]),
                waiting: Optional(true)
            )),
            executorOrgCompanyName: Optional("executor_org_company_name"),
            executorOrgHandle: Optional("executor_org_handle"),
            executorOrgId: Optional("executor_org_id"),
            offChrtExecutorOrgCompanyName: Optional("off_chrt_executor_org_company_name"),
            offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            shipperOrgId: Optional("shipper_org_id"),
            taskGroup: TaskGroup1(
                id: "_id",
                cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorOrgId: Optional("coordinator_org_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: Optional("created_by_user_id"),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                driverId: Optional("driver_id"),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                executorOrgId: Optional("executor_org_id"),
                flightLegIds: Optional([
                    "flight_leg_ids"
                ]),
                flightSetupNotes: Optional("flight_setup_notes"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )
                ]),
                mileageAsserted: Optional(true),
                mileageEstimated: Optional(1.1),
                mileageObserved: Optional(1.1),
                offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                orderId: "order_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                orderShortId: "order_short_id",
                providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id"),
                providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                taskGroupType: .chrtGroundProvider,
                taskIds: Optional([
                    "task_ids"
                ]),
                vehicleType: Optional(.sedan),
                waitTimeTotalMinutes: Optional(1.1)
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    cargos: Optional([
                        Cargo1(
                            id: "_id",
                            cargoType: .spareParts,
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1
                        )
                    ]),
                    contacts: Optional([
                        Contact1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            name: "name",
                            schemaVersion: 1
                        )
                    ]),
                    task: Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupId: "task_group_id"
                    ),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1,
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            type: .image
                        )
                    ])
                )
            ])
        )
        let response = try await client.shipping.taskGroups.expanded.forShipperOperatorsV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
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
                      "off_chrt_executor_org_company_name": "off_chrt_executor_org_company_name",
                      "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
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
                    offChrtExecutorOrgCompanyName: Optional("off_chrt_executor_org_company_name"),
                    offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
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
            ],
            totalCount: 1
        )
        let response = try await client.shipping.taskGroups.expanded.listForDriverForExecutorV1(
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
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
            filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
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
                      "off_chrt_executor_org_company_name": "off_chrt_executor_org_company_name",
                      "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
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
                    offChrtExecutorOrgCompanyName: Optional("off_chrt_executor_org_company_name"),
                    offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
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
            ],
            totalCount: 1
        )
        let response = try await client.shipping.taskGroups.expanded.listForExecutorOperatorsV1(
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
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
            filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}