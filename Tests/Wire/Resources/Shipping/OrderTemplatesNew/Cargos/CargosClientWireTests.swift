import Foundation
import Testing
import Chrt

@Suite("CargosClient Wire Tests") struct CargosClientWireTests {
    @Test func putReorderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "cargos": [
                    {
                      "awb_number": "awb_number",
                      "cargo_key": "cargo_key",
                      "cargo_type": "spare_parts",
                      "description": "description",
                      "girth_inches": 1.1,
                      "height_inches": 1.1,
                      "length_inches": 1.1,
                      "quantity": 1,
                      "schema_version": 1,
                      "stackable": true,
                      "turnable": true,
                      "weight_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "coordinator_assigned_user_ids": [
                    "coordinator_assigned_user_ids"
                  ],
                  "coordinator_department_id": "coordinator_department_id",
                  "coordinator_label": "coordinator_label",
                  "coordinator_org_id": "coordinator_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "off_chrt_reference_id": "off_chrt_reference_id",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1,
                  "service_line": "on_demand",
                  "shipper_org_id": "shipper_org_id",
                  "task_groups": [
                    {
                      "coordinator_setup_notes": "coordinator_setup_notes",
                      "driver_id": "driver_id",
                      "executor_assigned_user_ids": [
                        "executor_assigned_user_ids"
                      ],
                      "executor_org_id": "executor_org_id",
                      "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                      "task_group_key": "task_group_key",
                      "task_group_type": "chrt_ground_provider",
                      "tasks": [
                        {
                          "datetime_windows_dateparser_str": [
                            {
                              "time_zone_name": "America/New_York"
                            }
                          ],
                          "task_key": "task_key"
                        }
                      ],
                      "vehicle_type": "sedan"
                    }
                  ],
                  "task_lists_to_apply_at_order_creation": [
                    {
                      "department_id": "department_id",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
                    }
                  ],
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "department_id": "department_id",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = OrderTemplateNew1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cargos: Optional([
                OrderTemplateNewCargo1(
                    awbNumber: Optional("awb_number"),
                    cargoKey: "cargo_key",
                    cargoType: .spareParts,
                    description: Optional("description"),
                    girthInches: Optional(1.1),
                    heightInches: Optional(1.1),
                    lengthInches: Optional(1.1),
                    quantity: Optional(1),
                    schemaVersion: Optional(1),
                    stackable: Optional(true),
                    turnable: Optional(true),
                    weightPounds: Optional(1.1),
                    widthInches: Optional(1.1)
                )
            ]),
            coordinatorAssignedUserIds: Optional([
                "coordinator_assigned_user_ids"
            ]),
            coordinatorDepartmentId: Optional("coordinator_department_id"),
            coordinatorLabel: Optional("coordinator_label"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            offChrtReferenceId: Optional("off_chrt_reference_id"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1,
            serviceLine: Optional(.onDemand),
            shipperOrgId: Optional("shipper_org_id"),
            taskGroups: Optional([
                OrderTemplateNewTaskGroup1(
                    coordinatorSetupNotes: Optional("coordinator_setup_notes"),
                    driverId: Optional("driver_id"),
                    executorAssignedUserIds: Optional([
                        "executor_assigned_user_ids"
                    ]),
                    executorOrgId: Optional("executor_org_id"),
                    offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                    taskGroupKey: "task_group_key",
                    taskGroupType: .chrtGroundProvider,
                    tasks: Optional([
                        OrderTemplateNewTask1(
                            datetimeWindowsDateparserStr: Optional([
                                OrderTemplateNewDateTimeWindow1(
                                    timeZoneName: "America/New_York"
                                )
                            ]),
                            taskKey: "task_key"
                        )
                    ]),
                    vehicleType: Optional(.sedan)
                )
            ]),
            taskListsToApplyAtOrderCreation: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ]),
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
        )
        let response = try await client.shipping.orderTemplatesNew.cargos.putReorderV1(
            orderTemplateId: "order_template_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postCreateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "cargos": [
                    {
                      "awb_number": "awb_number",
                      "cargo_key": "cargo_key",
                      "cargo_type": "spare_parts",
                      "description": "description",
                      "girth_inches": 1.1,
                      "height_inches": 1.1,
                      "length_inches": 1.1,
                      "quantity": 1,
                      "schema_version": 1,
                      "stackable": true,
                      "turnable": true,
                      "weight_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "coordinator_assigned_user_ids": [
                    "coordinator_assigned_user_ids"
                  ],
                  "coordinator_department_id": "coordinator_department_id",
                  "coordinator_label": "coordinator_label",
                  "coordinator_org_id": "coordinator_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "off_chrt_reference_id": "off_chrt_reference_id",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1,
                  "service_line": "on_demand",
                  "shipper_org_id": "shipper_org_id",
                  "task_groups": [
                    {
                      "coordinator_setup_notes": "coordinator_setup_notes",
                      "driver_id": "driver_id",
                      "executor_assigned_user_ids": [
                        "executor_assigned_user_ids"
                      ],
                      "executor_org_id": "executor_org_id",
                      "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                      "task_group_key": "task_group_key",
                      "task_group_type": "chrt_ground_provider",
                      "tasks": [
                        {
                          "datetime_windows_dateparser_str": [
                            {
                              "time_zone_name": "America/New_York"
                            }
                          ],
                          "task_key": "task_key"
                        }
                      ],
                      "vehicle_type": "sedan"
                    }
                  ],
                  "task_lists_to_apply_at_order_creation": [
                    {
                      "department_id": "department_id",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
                    }
                  ],
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "department_id": "department_id",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = OrderTemplateNew1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cargos: Optional([
                OrderTemplateNewCargo1(
                    awbNumber: Optional("awb_number"),
                    cargoKey: "cargo_key",
                    cargoType: .spareParts,
                    description: Optional("description"),
                    girthInches: Optional(1.1),
                    heightInches: Optional(1.1),
                    lengthInches: Optional(1.1),
                    quantity: Optional(1),
                    schemaVersion: Optional(1),
                    stackable: Optional(true),
                    turnable: Optional(true),
                    weightPounds: Optional(1.1),
                    widthInches: Optional(1.1)
                )
            ]),
            coordinatorAssignedUserIds: Optional([
                "coordinator_assigned_user_ids"
            ]),
            coordinatorDepartmentId: Optional("coordinator_department_id"),
            coordinatorLabel: Optional("coordinator_label"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            offChrtReferenceId: Optional("off_chrt_reference_id"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1,
            serviceLine: Optional(.onDemand),
            shipperOrgId: Optional("shipper_org_id"),
            taskGroups: Optional([
                OrderTemplateNewTaskGroup1(
                    coordinatorSetupNotes: Optional("coordinator_setup_notes"),
                    driverId: Optional("driver_id"),
                    executorAssignedUserIds: Optional([
                        "executor_assigned_user_ids"
                    ]),
                    executorOrgId: Optional("executor_org_id"),
                    offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                    taskGroupKey: "task_group_key",
                    taskGroupType: .chrtGroundProvider,
                    tasks: Optional([
                        OrderTemplateNewTask1(
                            datetimeWindowsDateparserStr: Optional([
                                OrderTemplateNewDateTimeWindow1(
                                    timeZoneName: "America/New_York"
                                )
                            ]),
                            taskKey: "task_key"
                        )
                    ]),
                    vehicleType: Optional(.sedan)
                )
            ]),
            taskListsToApplyAtOrderCreation: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ]),
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
        )
        let response = try await client.shipping.orderTemplatesNew.cargos.postCreateV1(
            orderTemplateId: "order_template_id",
            request: .init(cargoType: .spareParts),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "cargos": [
                    {
                      "awb_number": "awb_number",
                      "cargo_key": "cargo_key",
                      "cargo_type": "spare_parts",
                      "description": "description",
                      "girth_inches": 1.1,
                      "height_inches": 1.1,
                      "length_inches": 1.1,
                      "quantity": 1,
                      "schema_version": 1,
                      "stackable": true,
                      "turnable": true,
                      "weight_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "coordinator_assigned_user_ids": [
                    "coordinator_assigned_user_ids"
                  ],
                  "coordinator_department_id": "coordinator_department_id",
                  "coordinator_label": "coordinator_label",
                  "coordinator_org_id": "coordinator_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "off_chrt_reference_id": "off_chrt_reference_id",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1,
                  "service_line": "on_demand",
                  "shipper_org_id": "shipper_org_id",
                  "task_groups": [
                    {
                      "coordinator_setup_notes": "coordinator_setup_notes",
                      "driver_id": "driver_id",
                      "executor_assigned_user_ids": [
                        "executor_assigned_user_ids"
                      ],
                      "executor_org_id": "executor_org_id",
                      "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                      "task_group_key": "task_group_key",
                      "task_group_type": "chrt_ground_provider",
                      "tasks": [
                        {
                          "datetime_windows_dateparser_str": [
                            {
                              "time_zone_name": "America/New_York"
                            }
                          ],
                          "task_key": "task_key"
                        }
                      ],
                      "vehicle_type": "sedan"
                    }
                  ],
                  "task_lists_to_apply_at_order_creation": [
                    {
                      "department_id": "department_id",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
                    }
                  ],
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "department_id": "department_id",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = OrderTemplateNew1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cargos: Optional([
                OrderTemplateNewCargo1(
                    awbNumber: Optional("awb_number"),
                    cargoKey: "cargo_key",
                    cargoType: .spareParts,
                    description: Optional("description"),
                    girthInches: Optional(1.1),
                    heightInches: Optional(1.1),
                    lengthInches: Optional(1.1),
                    quantity: Optional(1),
                    schemaVersion: Optional(1),
                    stackable: Optional(true),
                    turnable: Optional(true),
                    weightPounds: Optional(1.1),
                    widthInches: Optional(1.1)
                )
            ]),
            coordinatorAssignedUserIds: Optional([
                "coordinator_assigned_user_ids"
            ]),
            coordinatorDepartmentId: Optional("coordinator_department_id"),
            coordinatorLabel: Optional("coordinator_label"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            offChrtReferenceId: Optional("off_chrt_reference_id"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1,
            serviceLine: Optional(.onDemand),
            shipperOrgId: Optional("shipper_org_id"),
            taskGroups: Optional([
                OrderTemplateNewTaskGroup1(
                    coordinatorSetupNotes: Optional("coordinator_setup_notes"),
                    driverId: Optional("driver_id"),
                    executorAssignedUserIds: Optional([
                        "executor_assigned_user_ids"
                    ]),
                    executorOrgId: Optional("executor_org_id"),
                    offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                    taskGroupKey: "task_group_key",
                    taskGroupType: .chrtGroundProvider,
                    tasks: Optional([
                        OrderTemplateNewTask1(
                            datetimeWindowsDateparserStr: Optional([
                                OrderTemplateNewDateTimeWindow1(
                                    timeZoneName: "America/New_York"
                                )
                            ]),
                            taskKey: "task_key"
                        )
                    ]),
                    vehicleType: Optional(.sedan)
                )
            ]),
            taskListsToApplyAtOrderCreation: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ]),
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
        )
        let response = try await client.shipping.orderTemplatesNew.cargos.deleteV1(
            orderTemplateId: "order_template_id",
            cargoKey: "cargo_key",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func patchUpdateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "cargos": [
                    {
                      "awb_number": "awb_number",
                      "cargo_key": "cargo_key",
                      "cargo_type": "spare_parts",
                      "description": "description",
                      "girth_inches": 1.1,
                      "height_inches": 1.1,
                      "length_inches": 1.1,
                      "quantity": 1,
                      "schema_version": 1,
                      "stackable": true,
                      "turnable": true,
                      "weight_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "coordinator_assigned_user_ids": [
                    "coordinator_assigned_user_ids"
                  ],
                  "coordinator_department_id": "coordinator_department_id",
                  "coordinator_label": "coordinator_label",
                  "coordinator_org_id": "coordinator_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "off_chrt_reference_id": "off_chrt_reference_id",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1,
                  "service_line": "on_demand",
                  "shipper_org_id": "shipper_org_id",
                  "task_groups": [
                    {
                      "coordinator_setup_notes": "coordinator_setup_notes",
                      "driver_id": "driver_id",
                      "executor_assigned_user_ids": [
                        "executor_assigned_user_ids"
                      ],
                      "executor_org_id": "executor_org_id",
                      "off_chrt_executor_org_data_id": "off_chrt_executor_org_data_id",
                      "task_group_key": "task_group_key",
                      "task_group_type": "chrt_ground_provider",
                      "tasks": [
                        {
                          "datetime_windows_dateparser_str": [
                            {
                              "time_zone_name": "America/New_York"
                            }
                          ],
                          "task_key": "task_key"
                        }
                      ],
                      "vehicle_type": "sedan"
                    }
                  ],
                  "task_lists_to_apply_at_order_creation": [
                    {
                      "department_id": "department_id",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
                    }
                  ],
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "department_id": "department_id",
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = OrderTemplateNew1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            cargos: Optional([
                OrderTemplateNewCargo1(
                    awbNumber: Optional("awb_number"),
                    cargoKey: "cargo_key",
                    cargoType: .spareParts,
                    description: Optional("description"),
                    girthInches: Optional(1.1),
                    heightInches: Optional(1.1),
                    lengthInches: Optional(1.1),
                    quantity: Optional(1),
                    schemaVersion: Optional(1),
                    stackable: Optional(true),
                    turnable: Optional(true),
                    weightPounds: Optional(1.1),
                    widthInches: Optional(1.1)
                )
            ]),
            coordinatorAssignedUserIds: Optional([
                "coordinator_assigned_user_ids"
            ]),
            coordinatorDepartmentId: Optional("coordinator_department_id"),
            coordinatorLabel: Optional("coordinator_label"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            offChrtReferenceId: Optional("off_chrt_reference_id"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1,
            serviceLine: Optional(.onDemand),
            shipperOrgId: Optional("shipper_org_id"),
            taskGroups: Optional([
                OrderTemplateNewTaskGroup1(
                    coordinatorSetupNotes: Optional("coordinator_setup_notes"),
                    driverId: Optional("driver_id"),
                    executorAssignedUserIds: Optional([
                        "executor_assigned_user_ids"
                    ]),
                    executorOrgId: Optional("executor_org_id"),
                    offChrtExecutorOrgDataId: Optional("off_chrt_executor_org_data_id"),
                    taskGroupKey: "task_group_key",
                    taskGroupType: .chrtGroundProvider,
                    tasks: Optional([
                        OrderTemplateNewTask1(
                            datetimeWindowsDateparserStr: Optional([
                                OrderTemplateNewDateTimeWindow1(
                                    timeZoneName: "America/New_York"
                                )
                            ]),
                            taskKey: "task_key"
                        )
                    ]),
                    vehicleType: Optional(.sedan)
                )
            ]),
            taskListsToApplyAtOrderCreation: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ]),
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToOrder1(
                    departmentId: Optional("department_id"),
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
        )
        let response = try await client.shipping.orderTemplatesNew.cargos.patchUpdateV1(
            orderTemplateId: "order_template_id",
            cargoKey: "cargo_key",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}