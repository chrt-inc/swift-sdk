import Foundation
import Testing
import Chrt

@Suite("OrderTemplatesClient Wire Tests") struct OrderTemplatesClientWireTests {
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
        let response = try await client.shipping.orderTemplates.archiveV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getExpandedByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "directory_entries": [
                    {
                      "_id": "_id",
                      "created_by_user_id": "created_by_user_id",
                      "email_address": "email_address",
                      "entry_off_chrt_org_data_id": "entry_off_chrt_org_data_id",
                      "entry_org_id": "entry_org_id",
                      "job_title": "job_title",
                      "location": {
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
                        "type": "Feature"
                      },
                      "name": "name",
                      "notes": "notes",
                      "owned_by_org_id": "owned_by_org_id",
                      "phone_number": "phone_number",
                      "schema_version": 1
                    }
                  ],
                  "drivers": [
                    {
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
                    }
                  ],
                  "executor_orgs": [
                    {
                      "company_name": "company_name",
                      "handle": "handle",
                      "org_id": "org_id"
                    }
                  ],
                  "off_chrt_executor_orgs": [
                    {
                      "_id": "_id",
                      "created_by_user_id": "created_by_user_id",
                      "email_address": "email_address",
                      "industry": "industry",
                      "name": "name",
                      "org_type": "provider",
                      "owned_by_org_id": "owned_by_org_id",
                      "phone_number": "phone_number",
                      "schema_version": 1,
                      "street_address": {
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
                        "type": "Feature"
                      }
                    }
                  ],
                  "off_chrt_shipper_org": {
                    "_id": "_id",
                    "created_by_user_id": "created_by_user_id",
                    "email_address": "email_address",
                    "industry": "industry",
                    "name": "name",
                    "org_type": "provider",
                    "owned_by_org_id": "owned_by_org_id",
                    "phone_number": "phone_number",
                    "schema_version": 1,
                    "street_address": {
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
                    }
                  },
                  "order_template": {
                    "_id": "_id",
                    "archived_at_timestamp": "2024-01-15T09:30:00Z",
                    "coordinator_label": "coordinator_label",
                    "coordinator_org_id": "coordinator_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "department_id": "department_id",
                    "description": "description",
                    "directory_entry_ids": [
                      "directory_entry_ids"
                    ],
                    "driver_ids": [
                      "driver_ids"
                    ],
                    "executor_org_ids": [
                      "executor_org_ids"
                    ],
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                    "name": "name",
                    "off_chrt_executor_org_data_ids": [
                      "off_chrt_executor_org_data_ids"
                    ],
                    "off_chrt_reference_id_str": "off_chrt_reference_id_str",
                    "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "owned_by_user_id": "owned_by_user_id",
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
                  "orders": [
                    {
                      "_id": "_id",
                      "awb_numbers": [
                        "awb_numbers"
                      ],
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
                      "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                      "order_classification_by_task_group_type": "chrt_ground_provider",
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
                          "task_group_id": "task_group_id",
                          "task_group_type": "chrt_ground_provider"
                        }
                      ]
                    }
                  ],
                  "orders_total_count": 1,
                  "shipper_org": {
                    "company_name": "company_name",
                    "handle": "handle",
                    "org_id": "org_id"
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
        let expectedResponse = OrderTemplateExpanded1(
            directoryEntries: Optional([
                DirectoryEntry1(
                    id: "_id",
                    createdByUserId: "created_by_user_id",
                    emailAddress: Optional("email_address"),
                    entryOffChrtOrgDataId: Optional("entry_off_chrt_org_data_id"),
                    entryOrgId: Optional("entry_org_id"),
                    jobTitle: Optional("job_title"),
                    location: Optional(LocationFeature(
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
                        type: .feature
                    )),
                    name: "name",
                    notes: Optional("notes"),
                    ownedByOrgId: "owned_by_org_id",
                    phoneNumber: Optional("phone_number"),
                    schemaVersion: 1
                )
            ]),
            drivers: Optional([
                Driver1(
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
                )
            ]),
            executorOrgs: Optional([
                OrderTemplateOrgInfo1(
                    companyName: Optional("company_name"),
                    handle: Optional("handle"),
                    orgId: "org_id"
                )
            ]),
            offChrtExecutorOrgs: Optional([
                OffChrtOrgData1(
                    id: "_id",
                    createdByUserId: "created_by_user_id",
                    emailAddress: Optional("email_address"),
                    industry: Optional("industry"),
                    name: "name",
                    orgType: .provider,
                    ownedByOrgId: "owned_by_org_id",
                    phoneNumber: Optional("phone_number"),
                    schemaVersion: 1,
                    streetAddress: Optional(LocationFeature(
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
                        type: .feature
                    ))
                )
            ]),
            offChrtShipperOrg: Optional(OffChrtOrgData1(
                id: "_id",
                createdByUserId: "created_by_user_id",
                emailAddress: Optional("email_address"),
                industry: Optional("industry"),
                name: "name",
                orgType: .provider,
                ownedByOrgId: "owned_by_org_id",
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
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
                ))
            )),
            orderTemplate: OrderTemplate1(
                id: "_id",
                archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                coordinatorLabel: Optional("coordinator_label"),
                coordinatorOrgId: Optional("coordinator_org_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                departmentId: Optional("department_id"),
                description: Optional("description"),
                directoryEntryIds: Optional([
                    "directory_entry_ids"
                ]),
                driverIds: Optional([
                    "driver_ids"
                ]),
                executorOrgIds: Optional([
                    "executor_org_ids"
                ]),
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                name: "name",
                offChrtExecutorOrgDataIds: Optional([
                    "off_chrt_executor_org_data_ids"
                ]),
                offChrtReferenceIdStr: Optional("off_chrt_reference_id_str"),
                offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                ownedByOrgId: "owned_by_org_id",
                ownedByUserId: "owned_by_user_id",
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                taskListsToApplyAtOrderCreation: Optional([
                    TaskListToApplyToOrder1(
                        taskListId: "task_list_id"
                    )
                ]),
                taskListsToApplyAtOrderStaging: Optional([
                    TaskListToApplyToOrder1(
                        taskListId: "task_list_id"
                    )
                ]),
                text: Optional("text")
            ),
            orders: Optional([
                Order1(
                    id: "_id",
                    awbNumbers: Optional([
                        "awb_numbers"
                    ]),
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
                    offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                    orderClassificationByTaskGroupType: Optional(.chrtGroundProvider),
                    orderScheduleId: Optional("order_schedule_id"),
                    orderScheduleRunIdempotencyKey: Optional("order_schedule_run_idempotency_key"),
                    orderTemplateId: Optional("order_template_id"),
                    schemaVersion: 1,
                    shipperOrgId: Optional("shipper_org_id"),
                    shortId: "short_id",
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(.draft),
                    taskGroupDetails: Optional([
                        OrderTaskGroupExecutorDetails1(
                            taskGroupId: "task_group_id",
                            taskGroupType: .chrtGroundProvider
                        )
                    ])
                )
            ]),
            ordersTotalCount: Optional(1),
            shipperOrg: Optional(OrderTemplateOrgInfo1(
                companyName: Optional("company_name"),
                handle: Optional("handle"),
                orgId: "org_id"
            ))
        )
        let response = try await client.shipping.orderTemplates.getExpandedByIdV1(
            orderTemplateId: "order_template_id",
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
                      "archived_at_timestamp": "2024-01-15T09:30:00Z",
                      "coordinator_label": "coordinator_label",
                      "coordinator_org_id": "coordinator_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "department_id": "department_id",
                      "description": "description",
                      "directory_entry_ids": [
                        "directory_entry_ids"
                      ],
                      "driver_ids": [
                        "driver_ids"
                      ],
                      "executor_org_ids": [
                        "executor_org_ids"
                      ],
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "off_chrt_executor_org_data_ids": [
                        "off_chrt_executor_org_data_ids"
                      ],
                      "off_chrt_reference_id_str": "off_chrt_reference_id_str",
                      "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_user_id": "owned_by_user_id",
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
        let expectedResponse = OrderTemplateListRes(
            items: [
                OrderTemplate1(
                    id: "_id",
                    archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    coordinatorLabel: Optional("coordinator_label"),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    departmentId: Optional("department_id"),
                    description: Optional("description"),
                    directoryEntryIds: Optional([
                        "directory_entry_ids"
                    ]),
                    driverIds: Optional([
                        "driver_ids"
                    ]),
                    executorOrgIds: Optional([
                        "executor_org_ids"
                    ]),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    name: "name",
                    offChrtExecutorOrgDataIds: Optional([
                        "off_chrt_executor_org_data_ids"
                    ]),
                    offChrtReferenceIdStr: Optional("off_chrt_reference_id_str"),
                    offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                    ownedByOrgId: "owned_by_org_id",
                    ownedByUserId: "owned_by_user_id",
                    schemaVersion: 1,
                    shipperOrgId: Optional("shipper_org_id"),
                    taskListsToApplyAtOrderCreation: Optional([
                        TaskListToApplyToOrder1(
                            taskListId: "task_list_id"
                        )
                    ]),
                    taskListsToApplyAtOrderStaging: Optional([
                        TaskListToApplyToOrder1(
                            taskListId: "task_list_id"
                        )
                    ]),
                    text: Optional("text")
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orderTemplates.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterArchived: true,
            filterOwnedByUserId: "filter_owned_by_user_id",
            filterOffChrtReferenceIdStr: "filter_off_chrt_reference_id_str",
            filterShipperOrgId: "filter_shipper_org_id",
            filterOffChrtShipperOrgDataId: "filter_off_chrt_shipper_org_data_id",
            filterCoordinatorOrgId: "filter_coordinator_org_id",
            filterDepartmentId: "filter_department_id",
            filterCoordinatorLabel: "filter_coordinator_label",
            filterDriverId: "filter_driver_id",
            filterDirectoryEntryId: "filter_directory_entry_id",
            filterTaskListsToApplyAtOrderCreationTaskListId: "filter_task_lists_to_apply_at_order_creation_task_list_id",
            filterTaskListsToApplyAtOrderStagingTaskListId: "filter_task_lists_to_apply_at_order_staging_task_list_id",
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

    @Test func referencesRemoveV11() async throws -> Void {
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
        let response = try await client.shipping.orderTemplates.referencesRemoveV1(
            orderTemplateId: "order_template_id",
            request: .init(column: .shipperOrgId),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unarchiveV11() async throws -> Void {
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
        let response = try await client.shipping.orderTemplates.unarchiveV1(
            orderTemplateId: "order_template_id",
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
        let response = try await client.shipping.orderTemplates.updateV1(
            orderTemplateId: "order_template_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
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
        let response = try await client.shipping.orderTemplates.createV1(
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
            body: Data(
                """
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "coordinator_label": "coordinator_label",
                  "coordinator_org_id": "coordinator_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "department_id": "department_id",
                  "description": "description",
                  "directory_entry_ids": [
                    "directory_entry_ids"
                  ],
                  "driver_ids": [
                    "driver_ids"
                  ],
                  "executor_org_ids": [
                    "executor_org_ids"
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "off_chrt_executor_org_data_ids": [
                    "off_chrt_executor_org_data_ids"
                  ],
                  "off_chrt_reference_id_str": "off_chrt_reference_id_str",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1,
                  "shipper_org_id": "shipper_org_id",
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
                  ],
                  "text": "text"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderTemplate1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            coordinatorLabel: Optional("coordinator_label"),
            coordinatorOrgId: Optional("coordinator_org_id"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            departmentId: Optional("department_id"),
            description: Optional("description"),
            directoryEntryIds: Optional([
                "directory_entry_ids"
            ]),
            driverIds: Optional([
                "driver_ids"
            ]),
            executorOrgIds: Optional([
                "executor_org_ids"
            ]),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            offChrtExecutorOrgDataIds: Optional([
                "off_chrt_executor_org_data_ids"
            ]),
            offChrtReferenceIdStr: Optional("off_chrt_reference_id_str"),
            offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1,
            shipperOrgId: Optional("shipper_org_id"),
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
            ]),
            text: Optional("text")
        )
        let response = try await client.shipping.orderTemplates.getByIdV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
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
        let response = try await client.shipping.orderTemplates.deleteV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}