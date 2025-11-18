import Foundation
import Testing
import Chrt

@Suite("ExpandedClient Wire Tests") struct ExpandedClientWireTests {
    @Test func postForShipperByOrderIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order": {
                    "schema_version": 1,
                    "_id": "_id",
                    "short_id": "short_id",
                    "task_group_ids": [
                      "task_group_ids"
                    ],
                    "created_by_org_type": "courier",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "forwarder_org_id": "forwarder_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "order_cancelled_at_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "task_groups": [
                    {
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
                      "task_group_s3_object_metadata_ids": [
                        "task_group_s3_object_metadata_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_cancelled": true,
                      "task_group_type": "chrt_ground_courier",
                      "task_group_mileage": {
                        "tasks_mileage": 1.1,
                        "deadhead_mileage": 1.1
                      },
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ]
                    }
                  ],
                  "tasks": [
                    {
                      "schema_version": 1,
                      "location": {
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
                        "properties": null
                      },
                      "action": "chrt_ground_courier__pickup",
                      "time_windows": [
                        {
                          "left_boundary_timestamp": null,
                          "right_boundary_timestamp": null
                        }
                      ],
                      "order_placer_comments": "order_placer_comments",
                      "shipper_contact_info_ids": [
                        "shipper_contact_info_ids"
                      ],
                      "flight_number": "flight_number",
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "task_group_id": "task_group_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "completed_by_org_id": "completed_by_org_id",
                      "completed_by_user_id": "completed_by_user_id",
                      "cargo_ids": [
                        "cargo_ids"
                      ],
                      "task_artifact_ids": [
                        "task_artifact_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_cancelled": true,
                      "task_notification_email_ids": [
                        "task_notification_email_ids"
                      ],
                      "task_notification_sms_ids": [
                        "task_notification_sms_ids"
                      ],
                      "task_notification_push_ids": [
                        "task_notification_push_ids"
                      ],
                      "task_notification_voice_ids": [
                        "task_notification_voice_ids"
                      ]
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
                      "task_artifact_s3_object_metadata_ids": [
                        "task_artifact_s3_object_metadata_ids"
                      ],
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "requested_by_org_id": "requested_by_org_id",
                      "requested_by_user_id": "requested_by_user_id",
                      "completed_by_org_id": "completed_by_org_id",
                      "completed_by_user_id": "completed_by_user_id",
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "cargos": [
                    {
                      "schema_version": 1,
                      "cargo_type": "spare_parts",
                      "quantity": 1,
                      "weight_pounds": 1.1,
                      "length_inches": 1.1,
                      "width_inches": 1.1,
                      "height_inches": 1.1,
                      "turnable": true,
                      "stackable": true,
                      "description": "description",
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "device_ids": [
                        "device_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                      "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderExpandedForShipper(
            order: Order1(
                schemaVersion: 1,
                id: "_id",
                shortId: "short_id",
                taskGroupIds: Optional([
                    "task_group_ids"
                ]),
                createdByOrgType: .courier,
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                forwarderOrgId: Optional("forwarder_org_id"),
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                orderCancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            ),
            taskGroups: Optional([
                TaskGroup1(
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
                    taskGroupS3ObjectMetadataIds: Optional([
                        "task_group_s3_object_metadata_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderCancelled: Optional(true),
                    taskGroupType: .chrtGroundCourier,
                    taskGroupMileage: Optional(TaskGroupMileage1(
                        tasksMileage: 1.1,
                        deadheadMileage: 1.1
                    )),
                    messages: Optional([
                        TaskGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ])
                )
            ]),
            tasks: Optional([
                Task1(
                    schemaVersion: 1,
                    location: Optional(LocationFeature(
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
                        properties: Optional(nil)
                    )),
                    action: Optional(Action.chrtGroundCourierTaskActionEnum1(
                        .chrtGroundCourierPickup
                    )),
                    timeWindows: Optional([
                        TimeWindow1(
                            leftBoundaryTimestamp: Optional(nil),
                            rightBoundaryTimestamp: Optional(nil)
                        )
                    ]),
                    orderPlacerComments: Optional("order_placer_comments"),
                    shipperContactInfoIds: Optional([
                        "shipper_contact_info_ids"
                    ]),
                    flightNumber: Optional("flight_number"),
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    taskGroupId: "task_group_id",
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    completedByOrgId: Optional("completed_by_org_id"),
                    completedByUserId: Optional("completed_by_user_id"),
                    cargoIds: Optional([
                        "cargo_ids"
                    ]),
                    taskArtifactIds: Optional([
                        "task_artifact_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderCancelled: Optional(true),
                    taskNotificationEmailIds: Optional([
                        "task_notification_email_ids"
                    ]),
                    taskNotificationSmsIds: Optional([
                        "task_notification_sms_ids"
                    ]),
                    taskNotificationPushIds: Optional([
                        "task_notification_push_ids"
                    ]),
                    taskNotificationVoiceIds: Optional([
                        "task_notification_voice_ids"
                    ])
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
                    taskArtifactS3ObjectMetadataIds: Optional([
                        "task_artifact_s3_object_metadata_ids"
                    ]),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    requestedByOrgId: Optional("requested_by_org_id"),
                    requestedByUserId: Optional("requested_by_user_id"),
                    completedByOrgId: Optional("completed_by_org_id"),
                    completedByUserId: Optional("completed_by_user_id"),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            cargos: Optional([
                Cargo1(
                    schemaVersion: 1,
                    cargoType: .spareParts,
                    quantity: Optional(1),
                    weightPounds: Optional(1.1),
                    lengthInches: Optional(1.1),
                    widthInches: Optional(1.1),
                    heightInches: Optional(1.1),
                    turnable: Optional(true),
                    stackable: Optional(true),
                    description: Optional("description"),
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    deviceIds: Optional([
                        "device_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle")
        )
        let response = try await client.orders.expanded.postForShipperByOrderIdV1(
            orderIdOrShortId: "order_id_or_short_id",
            request: OrderExpandedForShipperReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postForOrderCreatorByOrderIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order": {
                    "schema_version": 1,
                    "_id": "_id",
                    "short_id": "short_id",
                    "task_group_ids": [
                      "task_group_ids"
                    ],
                    "created_by_org_type": "courier",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "forwarder_org_id": "forwarder_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "order_cancelled_at_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "task_groups": [
                    {
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
                      "task_group_s3_object_metadata_ids": [
                        "task_group_s3_object_metadata_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_cancelled": true,
                      "task_group_type": "chrt_ground_courier",
                      "task_group_mileage": {
                        "tasks_mileage": 1.1,
                        "deadhead_mileage": 1.1
                      },
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ]
                    }
                  ],
                  "tasks": [
                    {
                      "schema_version": 1,
                      "location": {
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
                        "properties": null
                      },
                      "action": "chrt_ground_courier__pickup",
                      "time_windows": [
                        {
                          "left_boundary_timestamp": null,
                          "right_boundary_timestamp": null
                        }
                      ],
                      "order_placer_comments": "order_placer_comments",
                      "shipper_contact_info_ids": [
                        "shipper_contact_info_ids"
                      ],
                      "flight_number": "flight_number",
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "task_group_id": "task_group_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "completed_by_org_id": "completed_by_org_id",
                      "completed_by_user_id": "completed_by_user_id",
                      "cargo_ids": [
                        "cargo_ids"
                      ],
                      "task_artifact_ids": [
                        "task_artifact_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_cancelled": true,
                      "task_notification_email_ids": [
                        "task_notification_email_ids"
                      ],
                      "task_notification_sms_ids": [
                        "task_notification_sms_ids"
                      ],
                      "task_notification_push_ids": [
                        "task_notification_push_ids"
                      ],
                      "task_notification_voice_ids": [
                        "task_notification_voice_ids"
                      ]
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
                      "task_artifact_s3_object_metadata_ids": [
                        "task_artifact_s3_object_metadata_ids"
                      ],
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "requested_by_org_id": "requested_by_org_id",
                      "requested_by_user_id": "requested_by_user_id",
                      "completed_by_org_id": "completed_by_org_id",
                      "completed_by_user_id": "completed_by_user_id",
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "cargos": [
                    {
                      "schema_version": 1,
                      "cargo_type": "spare_parts",
                      "quantity": 1,
                      "weight_pounds": 1.1,
                      "length_inches": 1.1,
                      "width_inches": 1.1,
                      "height_inches": 1.1,
                      "turnable": true,
                      "stackable": true,
                      "description": "description",
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "device_ids": [
                        "device_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                      "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "shipper_org_company_name": "shipper_org_company_name",
                  "shipper_org_handle": "shipper_org_handle"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderExpandedForOrderCreator(
            order: Order1(
                schemaVersion: 1,
                id: "_id",
                shortId: "short_id",
                taskGroupIds: Optional([
                    "task_group_ids"
                ]),
                createdByOrgType: .courier,
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                forwarderOrgId: Optional("forwarder_org_id"),
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                orderCancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            ),
            taskGroups: Optional([
                TaskGroup1(
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
                    taskGroupS3ObjectMetadataIds: Optional([
                        "task_group_s3_object_metadata_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderCancelled: Optional(true),
                    taskGroupType: .chrtGroundCourier,
                    taskGroupMileage: Optional(TaskGroupMileage1(
                        tasksMileage: 1.1,
                        deadheadMileage: 1.1
                    )),
                    messages: Optional([
                        TaskGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ])
                )
            ]),
            tasks: Optional([
                Task1(
                    schemaVersion: 1,
                    location: Optional(LocationFeature(
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
                        properties: Optional(nil)
                    )),
                    action: Optional(Action.chrtGroundCourierTaskActionEnum1(
                        .chrtGroundCourierPickup
                    )),
                    timeWindows: Optional([
                        TimeWindow1(
                            leftBoundaryTimestamp: Optional(nil),
                            rightBoundaryTimestamp: Optional(nil)
                        )
                    ]),
                    orderPlacerComments: Optional("order_placer_comments"),
                    shipperContactInfoIds: Optional([
                        "shipper_contact_info_ids"
                    ]),
                    flightNumber: Optional("flight_number"),
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    taskGroupId: "task_group_id",
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    completedByOrgId: Optional("completed_by_org_id"),
                    completedByUserId: Optional("completed_by_user_id"),
                    cargoIds: Optional([
                        "cargo_ids"
                    ]),
                    taskArtifactIds: Optional([
                        "task_artifact_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderCancelled: Optional(true),
                    taskNotificationEmailIds: Optional([
                        "task_notification_email_ids"
                    ]),
                    taskNotificationSmsIds: Optional([
                        "task_notification_sms_ids"
                    ]),
                    taskNotificationPushIds: Optional([
                        "task_notification_push_ids"
                    ]),
                    taskNotificationVoiceIds: Optional([
                        "task_notification_voice_ids"
                    ])
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
                    taskArtifactS3ObjectMetadataIds: Optional([
                        "task_artifact_s3_object_metadata_ids"
                    ]),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    requestedByOrgId: Optional("requested_by_org_id"),
                    requestedByUserId: Optional("requested_by_user_id"),
                    completedByOrgId: Optional("completed_by_org_id"),
                    completedByUserId: Optional("completed_by_user_id"),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            cargos: Optional([
                Cargo1(
                    schemaVersion: 1,
                    cargoType: .spareParts,
                    quantity: Optional(1),
                    weightPounds: Optional(1.1),
                    lengthInches: Optional(1.1),
                    widthInches: Optional(1.1),
                    heightInches: Optional(1.1),
                    turnable: Optional(true),
                    stackable: Optional(true),
                    description: Optional("description"),
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    deviceIds: Optional([
                        "device_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            shipperOrgHandle: Optional("shipper_org_handle")
        )
        let response = try await client.orders.expanded.postForOrderCreatorByOrderIdV1(
            orderIdOrShortId: "order_id_or_short_id",
            request: OrderExpandedForOrderCreatorReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}