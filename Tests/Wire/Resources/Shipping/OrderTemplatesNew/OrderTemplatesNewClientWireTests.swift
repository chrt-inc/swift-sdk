import Foundation
import Testing
import Chrt

@Suite("OrderTemplatesNewClient Wire Tests") struct OrderTemplatesNewClientWireTests {
    @Test func postArchiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.shipping.orderTemplatesNew.postArchiveV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func putReplaceCoreV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
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
                    cargoType: CargoTypeEnum1.spareParts,
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
            serviceLine: Optional(ServiceLineEnum.onDemand),
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
                    taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider,
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
                    vehicleType: Optional(VehicleTypeEnum.sedan)
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
        let response = try await client.shipping.orderTemplatesNew.putReplaceCoreV1(
            orderTemplateId: "order_template_id",
            request: OrderTemplateNewCore1(
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func resolveDateparserV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "anchor_timestamp": "2024-01-15T09:30:00Z",
                  "dateparser_str": "dateparser_str",
                  "dateparser_str_has_time_zone": true,
                  "resolved_to_timestamp": "2024-01-15T09:30:00Z",
                  "time_zone_name": "America/New_York"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderTemplateNewDateparserResolveRes(
            anchorTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            dateparserStr: "dateparser_str",
            dateparserStrHasTimeZone: true,
            resolvedToTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            timeZoneName: "America/New_York"
        )
        let response = try await client.shipping.orderTemplatesNew.resolveDateparserV1(
            request: .init(
                dateparserStr: "dateparser_str",
                timeZoneName: "America/New_York"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "archived_at_timestamp": "2024-01-15T09:30:00Z",
                      "cargos": [
                        {
                          "cargo_key": "cargo_key",
                          "cargo_type": "spare_parts"
                        }
                      ],
                      "coordinator_assigned_user_ids": [
                        "coordinator_assigned_user_ids"
                      ],
                      "coordinator_department_id": "coordinator_department_id",
                      "coordinator_label": "coordinator_label",
                      "coordinator_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "coordinator_org_id": "coordinator_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "description": "description",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "off_chrt_shipper_org": {
                        "_id": "_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "org_type": "provider",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1
                      },
                      "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "schema_version": 1,
                      "service_line": "on_demand",
                      "shipper_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "shipper_org_id": "shipper_org_id",
                      "task_groups": [
                        {
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
                          ]
                        }
                      ],
                      "task_groups_expanded": [
                        {
                          "task_group": {
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
                            ]
                          }
                        }
                      ],
                      "task_lists_to_apply_at_order_creation": [
                        {
                          "task_list_id": "task_list_id"
                        }
                      ],
                      "task_lists_to_apply_at_order_staging": [
                        {
                          "task_list_id": "task_list_id"
                        }
                      ]
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderTemplateNewListRes(
            items: [
                OrderTemplateNewExpanded1(
                    id: "_id",
                    archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cargos: Optional([
                        OrderTemplateNewCargo1(
                            cargoKey: "cargo_key",
                            cargoType: CargoTypeEnum1.spareParts
                        )
                    ]),
                    coordinatorAssignedUserIds: Optional([
                        "coordinator_assigned_user_ids"
                    ]),
                    coordinatorDepartmentId: Optional("coordinator_department_id"),
                    coordinatorLabel: Optional("coordinator_label"),
                    coordinatorOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    description: Optional("description"),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    name: "name",
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    offChrtShipperOrg: Optional(OffChrtOrgData1(
                        id: "_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        orgType: OrgTypeEnum.provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    )),
                    offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                    ownedByOrgId: "owned_by_org_id",
                    ownedByUserId: "owned_by_user_id",
                    schemaVersion: 1,
                    serviceLine: Optional(ServiceLineEnum.onDemand),
                    shipperOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    shipperOrgId: Optional("shipper_org_id"),
                    taskGroups: Optional([
                        OrderTemplateNewTaskGroup1(
                            taskGroupKey: "task_group_key",
                            taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider,
                            tasks: Optional([
                                OrderTemplateNewTask1(
                                    datetimeWindowsDateparserStr: Optional([
                                        OrderTemplateNewDateTimeWindow1(
                                            timeZoneName: "America/New_York"
                                        )
                                    ]),
                                    taskKey: "task_key"
                                )
                            ])
                        )
                    ]),
                    taskGroupsExpanded: Optional([
                        OrderTemplateNewTaskGroupExpanded1(
                            taskGroup: OrderTemplateNewTaskGroup1(
                                taskGroupKey: "task_group_key",
                                taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider,
                                tasks: Optional([
                                    OrderTemplateNewTask1(
                                        datetimeWindowsDateparserStr: Optional([
                                            OrderTemplateNewDateTimeWindow1(
                                                timeZoneName: "America/New_York"
                                            )
                                        ]),
                                        taskKey: "task_key"
                                    )
                                ])
                            )
                        )
                    ]),
                    taskListsToApplyAtOrderCreation: Optional([
                        TaskListToApplyToOrder1(
                            taskListId: "task_list_id"
                        )
                    ]),
                    taskListsToApplyAtOrderStaging: Optional([
                        TaskListToApplyToOrder1(
                            taskListId: "task_list_id"
                        )
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orderTemplatesNew.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterArchived: true,
            filterOwnedByUserId: "filter_owned_by_user_id",
            filterCoordinatorLabel: "filter_coordinator_label",
            filterExecutorOrgId: "filter_executor_org_id",
            filterOffChrtExecutorOrgDataId: "filter_off_chrt_executor_org_data_id",
            filterShipperOrgId: "filter_shipper_org_id",
            filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
            filterCoordinatorShipperAccountIds: [
                "filter_coordinator_shipper_account_ids"
            ],
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastUsedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastUsedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postUnarchiveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.shipping.orderTemplatesNew.postUnarchiveV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
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
                    cargoType: CargoTypeEnum1.spareParts,
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
            serviceLine: Optional(ServiceLineEnum.onDemand),
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
                    taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider,
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
                    vehicleType: Optional(VehicleTypeEnum.sedan)
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
        let response = try await client.shipping.orderTemplatesNew.updateV1(
            orderTemplateId: "order_template_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
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
                    cargoType: CargoTypeEnum1.spareParts,
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
            serviceLine: Optional(ServiceLineEnum.onDemand),
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
                    taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider,
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
                    vehicleType: Optional(VehicleTypeEnum.sedan)
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
        let response = try await client.shipping.orderTemplatesNew.createV1(
            request: .init(
                name: "name",
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
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
                    cargoType: CargoTypeEnum1.spareParts,
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
            serviceLine: Optional(ServiceLineEnum.onDemand),
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
                    taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider,
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
                    vehicleType: Optional(VehicleTypeEnum.sedan)
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
        let response = try await client.shipping.orderTemplatesNew.getByIdV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.shipping.orderTemplatesNew.deleteV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}