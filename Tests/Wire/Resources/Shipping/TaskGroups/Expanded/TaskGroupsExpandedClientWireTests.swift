import Foundation
import Testing
import Chrt

@Suite("TaskGroupsExpandedClient Wire Tests") struct TaskGroupsExpandedClientWireTests {
    @Test func forCourierDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "driver": {
                    "_id": "_id",
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
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
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ]
                  },
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "task_group": {
                    "_id": "_id",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "courier_org_id": "courier_org_id",
                    "courier_pay_driver_line_item_group_id": "courier_pay_driver_line_item_group_id",
                    "courier_pay_driver_rate_sheet_id": "courier_pay_driver_rate_sheet_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "driver_id": "driver_id",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "flight_number": "flight_number",
                    "forwarder_pay_courier_line_item_group_id": "forwarder_pay_courier_line_item_group_id",
                    "forwarder_pay_courier_rate_sheet_id": "forwarder_pay_courier_rate_sheet_id",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "messages": [
                      {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      }
                    ],
                    "order_cancelled": true,
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "schema_version": 1,
                    "service_type": "on_demand",
                    "shipper_pay_courier_line_item_group_id": "shipper_pay_courier_line_item_group_id",
                    "shipper_pay_courier_rate_sheet_id": "shipper_pay_courier_rate_sheet_id",
                    "shipper_pay_forwarder_line_item_group_id": "shipper_pay_forwarder_line_item_group_id",
                    "shipper_pay_forwarder_rate_sheet_id": "shipper_pay_forwarder_rate_sheet_id",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "task_group_type": "chrt_ground_courier",
                    "task_ids": [
                      "task_ids"
                    ],
                    "tasks_mileage": 1.1
                  },
                  "tasks_expanded": [
                    {
                      "cargos": [
                        {
                          "_id": "_id",
                          "cargo_type": "spare_parts",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1
                        }
                      ],
                      "directory_entries": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "schema_version": 1
                        }
                      ],
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
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
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            driver: Optional(Driver1(
                id: "_id",
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
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
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ])
            )),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            taskGroup: TaskGroup1(
                id: "_id",
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                courierOrgId: Optional("courier_org_id"),
                courierPayDriverLineItemGroupId: Optional("courier_pay_driver_line_item_group_id"),
                courierPayDriverRateSheetId: Optional("courier_pay_driver_rate_sheet_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                driverId: Optional("driver_id"),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                flightNumber: Optional("flight_number"),
                forwarderPayCourierLineItemGroupId: Optional("forwarder_pay_courier_line_item_group_id"),
                forwarderPayCourierRateSheetId: Optional("forwarder_pay_courier_rate_sheet_id"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )
                ]),
                orderCancelled: Optional(true),
                orderId: "order_id",
                orderShortId: "order_short_id",
                schemaVersion: 1,
                serviceType: Optional(.onDemand),
                shipperPayCourierLineItemGroupId: Optional("shipper_pay_courier_line_item_group_id"),
                shipperPayCourierRateSheetId: Optional("shipper_pay_courier_rate_sheet_id"),
                shipperPayForwarderLineItemGroupId: Optional("shipper_pay_forwarder_line_item_group_id"),
                shipperPayForwarderRateSheetId: Optional("shipper_pay_forwarder_rate_sheet_id"),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                taskGroupType: .chrtGroundCourier,
                taskIds: Optional([
                    "task_ids"
                ]),
                tasksMileage: Optional(1.1)
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    cargos: Optional([
                        Cargo1(
                            id: "_id",
                            cargoType: .spareParts,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1
                        )
                    ]),
                    directoryEntries: Optional([
                        DirectoryEntry1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            schemaVersion: 1
                        )
                    ]),
                    task: Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
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
        let response = try await client.shipping.taskGroups.expanded.forCourierDriverV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forCourierOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "driver": {
                    "_id": "_id",
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
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
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ]
                  },
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "task_group": {
                    "_id": "_id",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "courier_org_id": "courier_org_id",
                    "courier_pay_driver_line_item_group_id": "courier_pay_driver_line_item_group_id",
                    "courier_pay_driver_rate_sheet_id": "courier_pay_driver_rate_sheet_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "driver_id": "driver_id",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "flight_number": "flight_number",
                    "forwarder_pay_courier_line_item_group_id": "forwarder_pay_courier_line_item_group_id",
                    "forwarder_pay_courier_rate_sheet_id": "forwarder_pay_courier_rate_sheet_id",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "messages": [
                      {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      }
                    ],
                    "order_cancelled": true,
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "schema_version": 1,
                    "service_type": "on_demand",
                    "shipper_pay_courier_line_item_group_id": "shipper_pay_courier_line_item_group_id",
                    "shipper_pay_courier_rate_sheet_id": "shipper_pay_courier_rate_sheet_id",
                    "shipper_pay_forwarder_line_item_group_id": "shipper_pay_forwarder_line_item_group_id",
                    "shipper_pay_forwarder_rate_sheet_id": "shipper_pay_forwarder_rate_sheet_id",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "task_group_type": "chrt_ground_courier",
                    "task_ids": [
                      "task_ids"
                    ],
                    "tasks_mileage": 1.1
                  },
                  "tasks_expanded": [
                    {
                      "cargos": [
                        {
                          "_id": "_id",
                          "cargo_type": "spare_parts",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1
                        }
                      ],
                      "directory_entries": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "schema_version": 1
                        }
                      ],
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
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
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            driver: Optional(Driver1(
                id: "_id",
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
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
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ])
            )),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            taskGroup: TaskGroup1(
                id: "_id",
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                courierOrgId: Optional("courier_org_id"),
                courierPayDriverLineItemGroupId: Optional("courier_pay_driver_line_item_group_id"),
                courierPayDriverRateSheetId: Optional("courier_pay_driver_rate_sheet_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                driverId: Optional("driver_id"),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                flightNumber: Optional("flight_number"),
                forwarderPayCourierLineItemGroupId: Optional("forwarder_pay_courier_line_item_group_id"),
                forwarderPayCourierRateSheetId: Optional("forwarder_pay_courier_rate_sheet_id"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )
                ]),
                orderCancelled: Optional(true),
                orderId: "order_id",
                orderShortId: "order_short_id",
                schemaVersion: 1,
                serviceType: Optional(.onDemand),
                shipperPayCourierLineItemGroupId: Optional("shipper_pay_courier_line_item_group_id"),
                shipperPayCourierRateSheetId: Optional("shipper_pay_courier_rate_sheet_id"),
                shipperPayForwarderLineItemGroupId: Optional("shipper_pay_forwarder_line_item_group_id"),
                shipperPayForwarderRateSheetId: Optional("shipper_pay_forwarder_rate_sheet_id"),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                taskGroupType: .chrtGroundCourier,
                taskIds: Optional([
                    "task_ids"
                ]),
                tasksMileage: Optional(1.1)
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    cargos: Optional([
                        Cargo1(
                            id: "_id",
                            cargoType: .spareParts,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1
                        )
                    ]),
                    directoryEntries: Optional([
                        DirectoryEntry1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            schemaVersion: 1
                        )
                    ]),
                    task: Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
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
        let response = try await client.shipping.taskGroups.expanded.forCourierOperatorsV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forForwarderOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "driver": {
                    "_id": "_id",
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
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
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ]
                  },
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "task_group": {
                    "_id": "_id",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "courier_org_id": "courier_org_id",
                    "courier_pay_driver_line_item_group_id": "courier_pay_driver_line_item_group_id",
                    "courier_pay_driver_rate_sheet_id": "courier_pay_driver_rate_sheet_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "driver_id": "driver_id",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "flight_number": "flight_number",
                    "forwarder_pay_courier_line_item_group_id": "forwarder_pay_courier_line_item_group_id",
                    "forwarder_pay_courier_rate_sheet_id": "forwarder_pay_courier_rate_sheet_id",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "messages": [
                      {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      }
                    ],
                    "order_cancelled": true,
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "schema_version": 1,
                    "service_type": "on_demand",
                    "shipper_pay_courier_line_item_group_id": "shipper_pay_courier_line_item_group_id",
                    "shipper_pay_courier_rate_sheet_id": "shipper_pay_courier_rate_sheet_id",
                    "shipper_pay_forwarder_line_item_group_id": "shipper_pay_forwarder_line_item_group_id",
                    "shipper_pay_forwarder_rate_sheet_id": "shipper_pay_forwarder_rate_sheet_id",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "task_group_type": "chrt_ground_courier",
                    "task_ids": [
                      "task_ids"
                    ],
                    "tasks_mileage": 1.1
                  },
                  "tasks_expanded": [
                    {
                      "cargos": [
                        {
                          "_id": "_id",
                          "cargo_type": "spare_parts",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1
                        }
                      ],
                      "directory_entries": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "schema_version": 1
                        }
                      ],
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
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
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            driver: Optional(Driver1(
                id: "_id",
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
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
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ])
            )),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            taskGroup: TaskGroup1(
                id: "_id",
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                courierOrgId: Optional("courier_org_id"),
                courierPayDriverLineItemGroupId: Optional("courier_pay_driver_line_item_group_id"),
                courierPayDriverRateSheetId: Optional("courier_pay_driver_rate_sheet_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                driverId: Optional("driver_id"),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                flightNumber: Optional("flight_number"),
                forwarderPayCourierLineItemGroupId: Optional("forwarder_pay_courier_line_item_group_id"),
                forwarderPayCourierRateSheetId: Optional("forwarder_pay_courier_rate_sheet_id"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )
                ]),
                orderCancelled: Optional(true),
                orderId: "order_id",
                orderShortId: "order_short_id",
                schemaVersion: 1,
                serviceType: Optional(.onDemand),
                shipperPayCourierLineItemGroupId: Optional("shipper_pay_courier_line_item_group_id"),
                shipperPayCourierRateSheetId: Optional("shipper_pay_courier_rate_sheet_id"),
                shipperPayForwarderLineItemGroupId: Optional("shipper_pay_forwarder_line_item_group_id"),
                shipperPayForwarderRateSheetId: Optional("shipper_pay_forwarder_rate_sheet_id"),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                taskGroupType: .chrtGroundCourier,
                taskIds: Optional([
                    "task_ids"
                ]),
                tasksMileage: Optional(1.1)
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    cargos: Optional([
                        Cargo1(
                            id: "_id",
                            cargoType: .spareParts,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1
                        )
                    ]),
                    directoryEntries: Optional([
                        DirectoryEntry1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            schemaVersion: 1
                        )
                    ]),
                    task: Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
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
        let response = try await client.shipping.taskGroups.expanded.forForwarderOperatorsV1(
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
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "driver": {
                    "_id": "_id",
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
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
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
                    ]
                  },
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "task_group": {
                    "_id": "_id",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "courier_org_id": "courier_org_id",
                    "courier_pay_driver_line_item_group_id": "courier_pay_driver_line_item_group_id",
                    "courier_pay_driver_rate_sheet_id": "courier_pay_driver_rate_sheet_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "driver_id": "driver_id",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "flight_number": "flight_number",
                    "forwarder_pay_courier_line_item_group_id": "forwarder_pay_courier_line_item_group_id",
                    "forwarder_pay_courier_rate_sheet_id": "forwarder_pay_courier_rate_sheet_id",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "messages": [
                      {
                        "message": "message",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z",
                        "user_id": "user_id"
                      }
                    ],
                    "order_cancelled": true,
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "schema_version": 1,
                    "service_type": "on_demand",
                    "shipper_pay_courier_line_item_group_id": "shipper_pay_courier_line_item_group_id",
                    "shipper_pay_courier_rate_sheet_id": "shipper_pay_courier_rate_sheet_id",
                    "shipper_pay_forwarder_line_item_group_id": "shipper_pay_forwarder_line_item_group_id",
                    "shipper_pay_forwarder_rate_sheet_id": "shipper_pay_forwarder_rate_sheet_id",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "task_group_type": "chrt_ground_courier",
                    "task_ids": [
                      "task_ids"
                    ],
                    "tasks_mileage": 1.1
                  },
                  "tasks_expanded": [
                    {
                      "cargos": [
                        {
                          "_id": "_id",
                          "cargo_type": "spare_parts",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "schema_version": 1
                        }
                      ],
                      "directory_entries": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "schema_version": 1
                        }
                      ],
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
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
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            driver: Optional(Driver1(
                id: "_id",
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
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
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ])
            )),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            taskGroup: TaskGroup1(
                id: "_id",
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                courierOrgId: Optional("courier_org_id"),
                courierPayDriverLineItemGroupId: Optional("courier_pay_driver_line_item_group_id"),
                courierPayDriverRateSheetId: Optional("courier_pay_driver_rate_sheet_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                driverId: Optional("driver_id"),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                flightNumber: Optional("flight_number"),
                forwarderPayCourierLineItemGroupId: Optional("forwarder_pay_courier_line_item_group_id"),
                forwarderPayCourierRateSheetId: Optional("forwarder_pay_courier_rate_sheet_id"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        userId: "user_id"
                    )
                ]),
                orderCancelled: Optional(true),
                orderId: "order_id",
                orderShortId: "order_short_id",
                schemaVersion: 1,
                serviceType: Optional(.onDemand),
                shipperPayCourierLineItemGroupId: Optional("shipper_pay_courier_line_item_group_id"),
                shipperPayCourierRateSheetId: Optional("shipper_pay_courier_rate_sheet_id"),
                shipperPayForwarderLineItemGroupId: Optional("shipper_pay_forwarder_line_item_group_id"),
                shipperPayForwarderRateSheetId: Optional("shipper_pay_forwarder_rate_sheet_id"),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                taskGroupType: .chrtGroundCourier,
                taskIds: Optional([
                    "task_ids"
                ]),
                tasksMileage: Optional(1.1)
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    cargos: Optional([
                        Cargo1(
                            id: "_id",
                            cargoType: .spareParts,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            schemaVersion: 1
                        )
                    ]),
                    directoryEntries: Optional([
                        DirectoryEntry1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            schemaVersion: 1
                        )
                    ]),
                    task: Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
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

    @Test func listForCourierDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_groups_expanded": [
                    {
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle",
                      "driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "task_group": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_type": "chrt_ground_courier"
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "_id": "_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
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
            taskGroupsExpanded: [
                TaskGroupExpanded(
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle"),
                    driver: Optional(Driver1(
                        id: "_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        userId: "user_id"
                    )),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    taskGroup: TaskGroup1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupType: .chrtGroundCourier
                    ),
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                id: "_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
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
        let response = try await client.shipping.taskGroups.expanded.listForCourierDriverV1(
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .ascending,
            page: 1,
            pageSize: 1,
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
            filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForCourierOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_groups_expanded": [
                    {
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle",
                      "driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "task_group": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_type": "chrt_ground_courier"
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "_id": "_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
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
            taskGroupsExpanded: [
                TaskGroupExpanded(
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle"),
                    driver: Optional(Driver1(
                        id: "_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        userId: "user_id"
                    )),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    taskGroup: TaskGroup1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupType: .chrtGroundCourier
                    ),
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                id: "_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
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
        let response = try await client.shipping.taskGroups.expanded.listForCourierOperatorsV1(
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .ascending,
            page: 1,
            pageSize: 1,
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
            filterExceptionAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterExceptionAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}