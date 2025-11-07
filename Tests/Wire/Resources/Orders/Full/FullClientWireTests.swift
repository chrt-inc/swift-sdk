import Foundation
import Testing
import Chrt

@Suite("FullClient Wire Tests") struct FullClientWireTests {
    @Test func getByOrderIdOrShortIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order": {
                    "schema_version": 1,
                    "_id": "_id",
                    "short_id": "short_id",
                    "order_created_by_type": "chrt",
                    "order_dispatch_type": "dtc",
                    "transport_type": "ground_only",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at": "2024-01-15T09:30:00Z",
                    "task_group_ids": [
                      "task_group_ids"
                    ],
                    "shipper_org_id": "shipper_org_id",
                    "shipper_user_id": "shipper_user_id",
                    "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                    "order_level_expenses_ids": [
                      "order_level_expenses_ids"
                    ],
                    "order_level_receivables_line_items": [
                      {
                        "schema_version": 1,
                        "item": "base_rate",
                        "quantity": 1.1,
                        "rate": 1.1,
                        "comment": null,
                        "created_at": "2024-01-15T09:30:00Z",
                        "uuid_str": "uuid_str"
                      }
                    ],
                    "status": "not_started",
                    "order_cancelled": true
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
                      "courier_org_id": "courier_org_id",
                      "order_cancelled": true,
                      "status": "not_started",
                      "driver_id": "driver_id",
                      "created_at": "2024-01-15T09:30:00Z",
                      "started_at": "2024-01-15T09:30:00Z",
                      "completed_at": "2024-01-15T09:30:00Z",
                      "completed": true,
                      "paused": true
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
                      "action": "pickup",
                      "shipper_contact_info_ids": [
                        "shipper_contact_info_ids"
                      ],
                      "arrive_by": "2024-01-15T09:30:00Z",
                      "arrive_at": "2024-01-15T09:30:00Z",
                      "comments": "comments",
                      "flight_number": "flight_number",
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "order_cancelled": true,
                      "completed": true,
                      "completed_at": "2024-01-15T09:30:00Z",
                      "cargo_ids": [
                        "cargo_ids"
                      ],
                      "milestone_ids": [
                        "milestone_ids"
                      ]
                    }
                  ],
                  "milestones": [
                    {
                      "schema_version": 1,
                      "type": "image",
                      "requestor_comments": "requestor_comments",
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "task_id": "task_id",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_geojson_feature": {
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
                      "completed_by_user_id": "completed_by_user_id",
                      "completed": true,
                      "milestone_s3_object_metadata_ids": [
                        "milestone_s3_object_metadata_ids"
                      ],
                      "decoded_scans": [
                        "decoded_scans"
                      ],
                      "requested_by_shipper": true,
                      "completor_comments": "completor_comments",
                      "chrt_comments": "chrt_comments",
                      "notification_email_ids": [
                        "notification_email_ids"
                      ],
                      "notification_sms_ids": [
                        "notification_sms_ids"
                      ],
                      "notification_push_ids": [
                        "notification_push_ids"
                      ],
                      "notification_voice_ids": [
                        "notification_voice_ids"
                      ]
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
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "device_ids": [
                        "device_ids"
                      ],
                      "status": "awaiting_pickup"
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
        let expectedResponse = GetOrderFullRes(
            order: Order1(
                schemaVersion: 1,
                id: "_id",
                shortId: "short_id",
                orderCreatedByType: .chrt,
                orderDispatchType: .dtc,
                transportType: .groundOnly,
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                draftStartedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                taskGroupIds: Optional([
                    "task_group_ids"
                ]),
                shipperOrgId: Optional("shipper_org_id"),
                shipperUserId: Optional("shipper_user_id"),
                offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                orderLevelExpensesIds: Optional([
                    "order_level_expenses_ids"
                ]),
                orderLevelReceivablesLineItems: Optional([
                    LineItem1(
                        schemaVersion: 1,
                        item: .baseRate,
                        quantity: 1.1,
                        rate: 1.1,
                        comment: Optional(nil),
                        createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        uuidStr: "uuid_str"
                    )
                ]),
                status: Optional(.notStarted),
                orderCancelled: Optional(true)
            ),
            taskGroups: [
                TaskGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    taskIds: [
                        "task_ids"
                    ],
                    courierOrgId: Optional("courier_org_id"),
                    orderCancelled: Optional(true),
                    status: Optional(.notStarted),
                    driverId: Optional("driver_id"),
                    createdAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    startedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completed: Optional(true),
                    paused: Optional(true)
                )
            ],
            tasks: [
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
                    action: Optional(Action.taskActionEnum1(
                        .pickup
                    )),
                    shipperContactInfoIds: Optional([
                        "shipper_contact_info_ids"
                    ]),
                    arriveBy: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    arriveAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    comments: Optional("comments"),
                    flightNumber: Optional("flight_number"),
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    orderCancelled: Optional(true),
                    completed: Optional(true),
                    completedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cargoIds: Optional([
                        "cargo_ids"
                    ]),
                    milestoneIds: Optional([
                        "milestone_ids"
                    ])
                )
            ],
            milestones: [
                Milestone1(
                    schemaVersion: 1,
                    type: .image,
                    requestorComments: Optional("requestor_comments"),
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    taskId: "task_id",
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtGeojsonFeature: Optional(LocationFeature(
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
                    completedByUserId: Optional("completed_by_user_id"),
                    completed: true,
                    milestoneS3ObjectMetadataIds: Optional([
                        "milestone_s3_object_metadata_ids"
                    ]),
                    decodedScans: Optional([
                        "decoded_scans"
                    ]),
                    requestedByShipper: true,
                    completorComments: Optional("completor_comments"),
                    chrtComments: Optional("chrt_comments"),
                    notificationEmailIds: Optional([
                        "notification_email_ids"
                    ]),
                    notificationSmsIds: Optional([
                        "notification_sms_ids"
                    ]),
                    notificationPushIds: Optional([
                        "notification_push_ids"
                    ]),
                    notificationVoiceIds: Optional([
                        "notification_voice_ids"
                    ])
                )
            ],
            cargos: [
                Cargo1(
                    schemaVersion: 1,
                    cargoType: .spareParts,
                    quantity: Optional(1),
                    weightPounds: Optional(1.1),
                    lengthInches: Optional(1.1),
                    widthInches: Optional(1.1),
                    heightInches: Optional(1.1),
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    deviceIds: Optional([
                        "device_ids"
                    ]),
                    status: Optional(.awaitingPickup)
                )
            ]
        )
        let response = try await client.orders.full.getByOrderIdOrShortIdV1(
            orderIdOrShortId: "order_id_or_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByShipperOrgIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "order": {
                      "schema_version": 1,
                      "_id": "_id",
                      "short_id": "short_id",
                      "order_created_by_type": "chrt",
                      "order_dispatch_type": "dtc",
                      "transport_type": "ground_only",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "draft_started_at": "2024-01-15T09:30:00Z",
                      "task_group_ids": [
                        "task_group_ids"
                      ],
                      "shipper_org_id": "shipper_org_id",
                      "shipper_user_id": "shipper_user_id",
                      "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                      "order_level_expenses_ids": [
                        "order_level_expenses_ids"
                      ],
                      "order_level_receivables_line_items": [
                        {
                          "schema_version": 1,
                          "item": "base_rate",
                          "quantity": 1.1,
                          "rate": 1.1,
                          "comment": null,
                          "created_at": "2024-01-15T09:30:00Z",
                          "uuid_str": "uuid_str"
                        }
                      ],
                      "status": "not_started",
                      "order_cancelled": true
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
                        "courier_org_id": null,
                        "driver_id": null,
                        "created_at": null,
                        "started_at": null,
                        "completed_at": null
                      }
                    ],
                    "tasks": [
                      {
                        "schema_version": 1,
                        "location": null,
                        "shipper_contact_info_ids": null,
                        "arrive_by": null,
                        "arrive_at": null,
                        "comments": null,
                        "flight_number": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "completed_at": null,
                        "cargo_ids": null,
                        "milestone_ids": null
                      }
                    ],
                    "milestones": [
                      {
                        "schema_version": 1,
                        "type": "image",
                        "requestor_comments": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_id": "task_id",
                        "completed_at_timestamp": null,
                        "completed_at_geojson_feature": null,
                        "completed_by_user_id": null,
                        "completed": true,
                        "requested_by_shipper": true,
                        "completor_comments": null,
                        "chrt_comments": null,
                        "notification_email_ids": null,
                        "notification_sms_ids": null,
                        "notification_push_ids": null,
                        "notification_voice_ids": null
                      }
                    ],
                    "cargos": [
                      {
                        "schema_version": 1,
                        "cargo_type": "spare_parts",
                        "quantity": null,
                        "weight_pounds": null,
                        "length_inches": null,
                        "width_inches": null,
                        "height_inches": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "device_ids": null
                      }
                    ]
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            GetOrderFullRes(
                order: Order1(
                    schemaVersion: 1,
                    id: "_id",
                    shortId: "short_id",
                    orderCreatedByType: .chrt,
                    orderDispatchType: .dtc,
                    transportType: .groundOnly,
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    draftStartedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    taskGroupIds: Optional([
                        "task_group_ids"
                    ]),
                    shipperOrgId: Optional("shipper_org_id"),
                    shipperUserId: Optional("shipper_user_id"),
                    offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                    orderLevelExpensesIds: Optional([
                        "order_level_expenses_ids"
                    ]),
                    orderLevelReceivablesLineItems: Optional([
                        LineItem1(
                            schemaVersion: 1,
                            item: .baseRate,
                            quantity: 1.1,
                            rate: 1.1,
                            comment: Optional(nil),
                            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            uuidStr: "uuid_str"
                        )
                    ]),
                    status: Optional(.notStarted),
                    orderCancelled: Optional(true)
                ),
                taskGroups: [
                    TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskIds: [
                            "task_ids"
                        ],
                        courierOrgId: Optional(nil),
                        driverId: Optional(nil),
                        createdAt: Optional(nil),
                        startedAt: Optional(nil),
                        completedAt: Optional(nil)
                    )
                ],
                tasks: [
                    Task1(
                        schemaVersion: 1,
                        location: Optional(nil),
                        shipperContactInfoIds: Optional(nil),
                        arriveBy: Optional(nil),
                        arriveAt: Optional(nil),
                        comments: Optional(nil),
                        flightNumber: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        completedAt: Optional(nil),
                        cargoIds: Optional(nil),
                        milestoneIds: Optional(nil)
                    )
                ],
                milestones: [
                    Milestone1(
                        schemaVersion: 1,
                        type: .image,
                        requestorComments: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskId: "task_id",
                        completedAtTimestamp: Optional(nil),
                        completedAtGeojsonFeature: Optional(nil),
                        completedByUserId: Optional(nil),
                        completed: true,
                        requestedByShipper: true,
                        completorComments: Optional(nil),
                        chrtComments: Optional(nil),
                        notificationEmailIds: Optional(nil),
                        notificationSmsIds: Optional(nil),
                        notificationPushIds: Optional(nil),
                        notificationVoiceIds: Optional(nil)
                    )
                ],
                cargos: [
                    Cargo1(
                        schemaVersion: 1,
                        cargoType: .spareParts,
                        quantity: Optional(nil),
                        weightPounds: Optional(nil),
                        lengthInches: Optional(nil),
                        widthInches: Optional(nil),
                        heightInches: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        deviceIds: Optional(nil)
                    )
                ]
            )
        ]
        let response = try await client.orders.full.listByShipperOrgIdV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listByCourierOrgIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "order": {
                      "schema_version": 1,
                      "_id": "_id",
                      "short_id": "short_id",
                      "order_created_by_type": "chrt",
                      "order_dispatch_type": "dtc",
                      "transport_type": "ground_only",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "draft_started_at": "2024-01-15T09:30:00Z",
                      "task_group_ids": [
                        "task_group_ids"
                      ],
                      "shipper_org_id": "shipper_org_id",
                      "shipper_user_id": "shipper_user_id",
                      "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                      "order_level_expenses_ids": [
                        "order_level_expenses_ids"
                      ],
                      "order_level_receivables_line_items": [
                        {
                          "schema_version": 1,
                          "item": "base_rate",
                          "quantity": 1.1,
                          "rate": 1.1,
                          "comment": null,
                          "created_at": "2024-01-15T09:30:00Z",
                          "uuid_str": "uuid_str"
                        }
                      ],
                      "status": "not_started",
                      "order_cancelled": true
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
                        "courier_org_id": null,
                        "driver_id": null,
                        "created_at": null,
                        "started_at": null,
                        "completed_at": null
                      }
                    ],
                    "tasks": [
                      {
                        "schema_version": 1,
                        "location": null,
                        "shipper_contact_info_ids": null,
                        "arrive_by": null,
                        "arrive_at": null,
                        "comments": null,
                        "flight_number": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "completed_at": null,
                        "cargo_ids": null,
                        "milestone_ids": null
                      }
                    ],
                    "milestones": [
                      {
                        "schema_version": 1,
                        "type": "image",
                        "requestor_comments": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_id": "task_id",
                        "completed_at_timestamp": null,
                        "completed_at_geojson_feature": null,
                        "completed_by_user_id": null,
                        "completed": true,
                        "requested_by_shipper": true,
                        "completor_comments": null,
                        "chrt_comments": null,
                        "notification_email_ids": null,
                        "notification_sms_ids": null,
                        "notification_push_ids": null,
                        "notification_voice_ids": null
                      }
                    ],
                    "cargos": [
                      {
                        "schema_version": 1,
                        "cargo_type": "spare_parts",
                        "quantity": null,
                        "weight_pounds": null,
                        "length_inches": null,
                        "width_inches": null,
                        "height_inches": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "device_ids": null
                      }
                    ]
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            GetOrderFullRes(
                order: Order1(
                    schemaVersion: 1,
                    id: "_id",
                    shortId: "short_id",
                    orderCreatedByType: .chrt,
                    orderDispatchType: .dtc,
                    transportType: .groundOnly,
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    draftStartedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    taskGroupIds: Optional([
                        "task_group_ids"
                    ]),
                    shipperOrgId: Optional("shipper_org_id"),
                    shipperUserId: Optional("shipper_user_id"),
                    offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                    orderLevelExpensesIds: Optional([
                        "order_level_expenses_ids"
                    ]),
                    orderLevelReceivablesLineItems: Optional([
                        LineItem1(
                            schemaVersion: 1,
                            item: .baseRate,
                            quantity: 1.1,
                            rate: 1.1,
                            comment: Optional(nil),
                            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            uuidStr: "uuid_str"
                        )
                    ]),
                    status: Optional(.notStarted),
                    orderCancelled: Optional(true)
                ),
                taskGroups: [
                    TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskIds: [
                            "task_ids"
                        ],
                        courierOrgId: Optional(nil),
                        driverId: Optional(nil),
                        createdAt: Optional(nil),
                        startedAt: Optional(nil),
                        completedAt: Optional(nil)
                    )
                ],
                tasks: [
                    Task1(
                        schemaVersion: 1,
                        location: Optional(nil),
                        shipperContactInfoIds: Optional(nil),
                        arriveBy: Optional(nil),
                        arriveAt: Optional(nil),
                        comments: Optional(nil),
                        flightNumber: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        completedAt: Optional(nil),
                        cargoIds: Optional(nil),
                        milestoneIds: Optional(nil)
                    )
                ],
                milestones: [
                    Milestone1(
                        schemaVersion: 1,
                        type: .image,
                        requestorComments: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskId: "task_id",
                        completedAtTimestamp: Optional(nil),
                        completedAtGeojsonFeature: Optional(nil),
                        completedByUserId: Optional(nil),
                        completed: true,
                        requestedByShipper: true,
                        completorComments: Optional(nil),
                        chrtComments: Optional(nil),
                        notificationEmailIds: Optional(nil),
                        notificationSmsIds: Optional(nil),
                        notificationPushIds: Optional(nil),
                        notificationVoiceIds: Optional(nil)
                    )
                ],
                cargos: [
                    Cargo1(
                        schemaVersion: 1,
                        cargoType: .spareParts,
                        quantity: Optional(nil),
                        weightPounds: Optional(nil),
                        lengthInches: Optional(nil),
                        widthInches: Optional(nil),
                        heightInches: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        deviceIds: Optional(nil)
                    )
                ]
            )
        ]
        let response = try await client.orders.full.listByCourierOrgIdV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}