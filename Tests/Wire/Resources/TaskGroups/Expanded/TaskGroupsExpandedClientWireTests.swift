import Foundation
import Testing
import Chrt

@Suite("TaskGroupsExpandedClient Wire Tests") struct TaskGroupsExpandedClientWireTests {
    @Test func forCourierOperatorsV11() async throws -> Void {
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
                    "task_ids": [
                      "task_ids"
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "courier_org_id": "courier_org_id",
                    "driver_id": "driver_id",
                    "service_type": "on_demand",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "task_group_type": "chrt_ground_courier",
                    "tasks_mileage": 1.1,
                    "flight_number": "flight_number",
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "shipper_pay_forwarder_rate_sheet_id": "shipper_pay_forwarder_rate_sheet_id",
                    "shipper_pay_forwarder_line_item_group_id": "shipper_pay_forwarder_line_item_group_id",
                    "forwarder_pay_courier_rate_sheet_id": "forwarder_pay_courier_rate_sheet_id",
                    "forwarder_pay_courier_line_item_group_id": "forwarder_pay_courier_line_item_group_id",
                    "shipper_pay_courier_rate_sheet_id": "shipper_pay_courier_rate_sheet_id",
                    "shipper_pay_courier_line_item_group_id": "shipper_pay_courier_line_item_group_id",
                    "courier_pay_driver_rate_sheet_id": "courier_pay_driver_rate_sheet_id",
                    "courier_pay_driver_line_item_group_id": "courier_pay_driver_line_item_group_id"
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
                        "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "shipper_contacts": [
                        {
                          "schema_version": 1,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
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
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand"
                  },
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
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
                taskIds: Optional([
                    "task_ids"
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                courierOrgId: Optional("courier_org_id"),
                driverId: Optional("driver_id"),
                serviceType: Optional(.onDemand),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                taskGroupType: .chrtGroundCourier,
                tasksMileage: Optional(1.1),
                flightNumber: Optional("flight_number"),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                shipperPayForwarderRateSheetId: Optional("shipper_pay_forwarder_rate_sheet_id"),
                shipperPayForwarderLineItemGroupId: Optional("shipper_pay_forwarder_line_item_group_id"),
                forwarderPayCourierRateSheetId: Optional("forwarder_pay_courier_rate_sheet_id"),
                forwarderPayCourierLineItemGroupId: Optional("forwarder_pay_courier_line_item_group_id"),
                shipperPayCourierRateSheetId: Optional("shipper_pay_courier_rate_sheet_id"),
                shipperPayCourierLineItemGroupId: Optional("shipper_pay_courier_line_item_group_id"),
                courierPayDriverRateSheetId: Optional("courier_pay_driver_rate_sheet_id"),
                courierPayDriverLineItemGroupId: Optional("courier_pay_driver_line_item_group_id")
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
                        createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    shipperContacts: Optional([
                        ShipperContact1(
                            schemaVersion: 1,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
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
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand")
            )),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.taskGroups.expanded.forCourierOperatorsV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forCourierDriverV11() async throws -> Void {
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
                    "task_ids": [
                      "task_ids"
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "courier_org_id": "courier_org_id",
                    "driver_id": "driver_id",
                    "service_type": "on_demand",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "task_group_type": "chrt_ground_courier",
                    "tasks_mileage": 1.1,
                    "flight_number": "flight_number",
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "shipper_pay_forwarder_rate_sheet_id": "shipper_pay_forwarder_rate_sheet_id",
                    "shipper_pay_forwarder_line_item_group_id": "shipper_pay_forwarder_line_item_group_id",
                    "forwarder_pay_courier_rate_sheet_id": "forwarder_pay_courier_rate_sheet_id",
                    "forwarder_pay_courier_line_item_group_id": "forwarder_pay_courier_line_item_group_id",
                    "shipper_pay_courier_rate_sheet_id": "shipper_pay_courier_rate_sheet_id",
                    "shipper_pay_courier_line_item_group_id": "shipper_pay_courier_line_item_group_id",
                    "courier_pay_driver_rate_sheet_id": "courier_pay_driver_rate_sheet_id",
                    "courier_pay_driver_line_item_group_id": "courier_pay_driver_line_item_group_id"
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
                        "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "shipper_contacts": [
                        {
                          "schema_version": 1,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
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
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand"
                  },
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
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
                taskIds: Optional([
                    "task_ids"
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                courierOrgId: Optional("courier_org_id"),
                driverId: Optional("driver_id"),
                serviceType: Optional(.onDemand),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                taskGroupType: .chrtGroundCourier,
                tasksMileage: Optional(1.1),
                flightNumber: Optional("flight_number"),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                shipperPayForwarderRateSheetId: Optional("shipper_pay_forwarder_rate_sheet_id"),
                shipperPayForwarderLineItemGroupId: Optional("shipper_pay_forwarder_line_item_group_id"),
                forwarderPayCourierRateSheetId: Optional("forwarder_pay_courier_rate_sheet_id"),
                forwarderPayCourierLineItemGroupId: Optional("forwarder_pay_courier_line_item_group_id"),
                shipperPayCourierRateSheetId: Optional("shipper_pay_courier_rate_sheet_id"),
                shipperPayCourierLineItemGroupId: Optional("shipper_pay_courier_line_item_group_id"),
                courierPayDriverRateSheetId: Optional("courier_pay_driver_rate_sheet_id"),
                courierPayDriverLineItemGroupId: Optional("courier_pay_driver_line_item_group_id")
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
                        createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    shipperContacts: Optional([
                        ShipperContact1(
                            schemaVersion: 1,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
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
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand")
            )),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.taskGroups.expanded.forCourierDriverV1(
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
                    "task_ids": [
                      "task_ids"
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "courier_org_id": "courier_org_id",
                    "driver_id": "driver_id",
                    "service_type": "on_demand",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "task_group_type": "chrt_ground_courier",
                    "tasks_mileage": 1.1,
                    "flight_number": "flight_number",
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "shipper_pay_forwarder_rate_sheet_id": "shipper_pay_forwarder_rate_sheet_id",
                    "shipper_pay_forwarder_line_item_group_id": "shipper_pay_forwarder_line_item_group_id",
                    "forwarder_pay_courier_rate_sheet_id": "forwarder_pay_courier_rate_sheet_id",
                    "forwarder_pay_courier_line_item_group_id": "forwarder_pay_courier_line_item_group_id",
                    "shipper_pay_courier_rate_sheet_id": "shipper_pay_courier_rate_sheet_id",
                    "shipper_pay_courier_line_item_group_id": "shipper_pay_courier_line_item_group_id",
                    "courier_pay_driver_rate_sheet_id": "courier_pay_driver_rate_sheet_id",
                    "courier_pay_driver_line_item_group_id": "courier_pay_driver_line_item_group_id"
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
                        "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "shipper_contacts": [
                        {
                          "schema_version": 1,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
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
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand"
                  },
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
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
                taskIds: Optional([
                    "task_ids"
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                courierOrgId: Optional("courier_org_id"),
                driverId: Optional("driver_id"),
                serviceType: Optional(.onDemand),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                taskGroupType: .chrtGroundCourier,
                tasksMileage: Optional(1.1),
                flightNumber: Optional("flight_number"),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                shipperPayForwarderRateSheetId: Optional("shipper_pay_forwarder_rate_sheet_id"),
                shipperPayForwarderLineItemGroupId: Optional("shipper_pay_forwarder_line_item_group_id"),
                forwarderPayCourierRateSheetId: Optional("forwarder_pay_courier_rate_sheet_id"),
                forwarderPayCourierLineItemGroupId: Optional("forwarder_pay_courier_line_item_group_id"),
                shipperPayCourierRateSheetId: Optional("shipper_pay_courier_rate_sheet_id"),
                shipperPayCourierLineItemGroupId: Optional("shipper_pay_courier_line_item_group_id"),
                courierPayDriverRateSheetId: Optional("courier_pay_driver_rate_sheet_id"),
                courierPayDriverLineItemGroupId: Optional("courier_pay_driver_line_item_group_id")
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
                        createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    shipperContacts: Optional([
                        ShipperContact1(
                            schemaVersion: 1,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
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
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand")
            )),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.taskGroups.expanded.forShipperOperatorsV1(
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
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "courier_org_id": "courier_org_id",
                    "driver_id": "driver_id",
                    "service_type": "on_demand",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "task_group_type": "chrt_ground_courier",
                    "tasks_mileage": 1.1,
                    "flight_number": "flight_number",
                    "fa_flight_ids": [
                      "fa_flight_ids"
                    ],
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ],
                    "shipper_pay_forwarder_rate_sheet_id": "shipper_pay_forwarder_rate_sheet_id",
                    "shipper_pay_forwarder_line_item_group_id": "shipper_pay_forwarder_line_item_group_id",
                    "forwarder_pay_courier_rate_sheet_id": "forwarder_pay_courier_rate_sheet_id",
                    "forwarder_pay_courier_line_item_group_id": "forwarder_pay_courier_line_item_group_id",
                    "shipper_pay_courier_rate_sheet_id": "shipper_pay_courier_rate_sheet_id",
                    "shipper_pay_courier_line_item_group_id": "shipper_pay_courier_line_item_group_id",
                    "courier_pay_driver_rate_sheet_id": "courier_pay_driver_rate_sheet_id",
                    "courier_pay_driver_line_item_group_id": "courier_pay_driver_line_item_group_id"
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
                        "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
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
                          "created_by_user_id": "created_by_user_id",
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "shipper_contacts": [
                        {
                          "schema_version": 1,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
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
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand"
                  },
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
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
                taskIds: Optional([
                    "task_ids"
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                courierOrgId: Optional("courier_org_id"),
                driverId: Optional("driver_id"),
                serviceType: Optional(.onDemand),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                taskGroupType: .chrtGroundCourier,
                tasksMileage: Optional(1.1),
                flightNumber: Optional("flight_number"),
                faFlightIds: Optional([
                    "fa_flight_ids"
                ]),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ]),
                shipperPayForwarderRateSheetId: Optional("shipper_pay_forwarder_rate_sheet_id"),
                shipperPayForwarderLineItemGroupId: Optional("shipper_pay_forwarder_line_item_group_id"),
                forwarderPayCourierRateSheetId: Optional("forwarder_pay_courier_rate_sheet_id"),
                forwarderPayCourierLineItemGroupId: Optional("forwarder_pay_courier_line_item_group_id"),
                shipperPayCourierRateSheetId: Optional("shipper_pay_courier_rate_sheet_id"),
                shipperPayCourierLineItemGroupId: Optional("shipper_pay_courier_line_item_group_id"),
                courierPayDriverRateSheetId: Optional("courier_pay_driver_rate_sheet_id"),
                courierPayDriverLineItemGroupId: Optional("courier_pay_driver_line_item_group_id")
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
                        createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
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
                            createdByUserId: "created_by_user_id",
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    shipperContacts: Optional([
                        ShipperContact1(
                            schemaVersion: 1,
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
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
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand")
            )),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.taskGroups.expanded.forForwarderOperatorsV1(
            taskGroupId: "task_group_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
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
                      "task_group": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "task_group_type": "chrt_ground_courier"
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
                            "created_by_user_id": "created_by_user_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                          }
                        }
                      ],
                      "driver": {
                        "schema_version": 1,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle",
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "shipper_org_company_name": "shipper_org_company_name",
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
            taskGroupsExpanded: [
                TaskGroupExpanded(
                    taskGroup: TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        taskGroupType: .chrtGroundCourier
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
                                createdByUserId: "created_by_user_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                            )
                        )
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle"),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.taskGroups.expanded.listForCourierOperatorsV1(
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

    @Test func listForCourierDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_groups_expanded": [
                    {
                      "task_group": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "task_group_type": "chrt_ground_courier"
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
                            "created_by_user_id": "created_by_user_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                          }
                        }
                      ],
                      "driver": {
                        "schema_version": 1,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle",
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "shipper_org_company_name": "shipper_org_company_name",
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
            taskGroupsExpanded: [
                TaskGroupExpanded(
                    taskGroup: TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        taskGroupType: .chrtGroundCourier
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
                                createdByUserId: "created_by_user_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                            )
                        )
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle"),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.taskGroups.expanded.listForCourierDriverV1(
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