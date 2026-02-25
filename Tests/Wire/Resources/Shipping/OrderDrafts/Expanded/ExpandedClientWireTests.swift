import Foundation
import Testing
import Chrt

@Suite("ExpandedClient Wire Tests") struct ExpandedClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_drafts_expanded": [
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
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "notification_intents_ad_hoc": [
                        {
                          "_id": "_id",
                          "created_at_timestamp": "2024-01-15T09:30:00Z",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "directory_entry_id": "directory_entry_id",
                          "order_id": "order_id",
                          "schema_version": 1
                        }
                      ],
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "order": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_org_type": "courier",
                        "created_by_user_id": "created_by_user_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1,
                        "short_id": "short_id"
                      },
                      "shipper_org_company_name": "shipper_org_company_name",
                      "task_groups_expanded": [
                        {
                          "task_group": {
                            "_id": "_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "schema_version": 1,
                            "task_group_type": "chrt_ground_courier"
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
        let expectedResponse = OrderDraftExpandedListRes(
            orderDraftsExpanded: [
                OrderDraftExpanded(
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
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    notificationIntentsAdHoc: Optional([
                        NotificationIntentAdHoc1(
                            id: "_id",
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            directoryEntryId: "directory_entry_id",
                            orderId: "order_id",
                            schemaVersion: 1
                        )
                    ]),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    order: Order1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByOrgType: .courier,
                        createdByUserId: "created_by_user_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1,
                        shortId: "short_id"
                    ),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    taskGroupsExpanded: Optional([
                        TaskGroupExpanded(
                            taskGroup: TaskGroup1(
                                id: "_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                schemaVersion: 1,
                                taskGroupType: .chrtGroundCourier
                            )
                        )
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orderDrafts.expanded.listV1(
            sortBy: .draftStartedAtTimestamp,
            sortOrder: .ascending,
            page: 1,
            pageSize: 1,
            filterDraftStartedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterDraftStartedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            request: .init(body: OrderAndTaskGroupExpandedReq(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func retrieveV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "cargos": [
                    {
                      "_id": "_id",
                      "cargo_type": "spare_parts",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "delivered_at_timestamp": "2024-01-15T09:30:00Z",
                      "description": "description",
                      "device_ids": [
                        "device_ids"
                      ],
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "height_inches": 1.1,
                      "in_transit_at_timestamp": "2024-01-15T09:30:00Z",
                      "length_inches": 1.1,
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "quantity": 1,
                      "schema_version": 1,
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "stackable": true,
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "draft",
                      "turnable": true,
                      "weight_pounds": 1.1,
                      "width_inches": 1.1
                    }
                  ],
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "notification_intents_ad_hoc": [
                    {
                      "_id": "_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "directory_entry_id": "directory_entry_id",
                      "email_events": [
                        "shipping.order.staged"
                      ],
                      "order_id": "order_id",
                      "push_events": [
                        "shipping.order.staged"
                      ],
                      "schema_version": 1,
                      "sms_events": [
                        "shipping.order.staged"
                      ]
                    }
                  ],
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "order": {
                    "_id": "_id",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_org_type": "courier",
                    "created_by_user_id": "created_by_user_id",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "forwarder_org_id": "forwarder_org_id",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "order_cancelled": true,
                    "order_cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "short_id": "short_id",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "draft",
                    "task_group_ids": [
                      "task_group_ids"
                    ]
                  },
                  "shipper_org_company_name": "shipper_org_company_name",
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
        let expectedResponse = OrderDraftExpanded(
            cargos: Optional([
                Cargo1(
                    id: "_id",
                    cargoType: .spareParts,
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    deliveredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    description: Optional("description"),
                    deviceIds: Optional([
                        "device_ids"
                    ]),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    heightInches: Optional(1.1),
                    inTransitAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lengthInches: Optional(1.1),
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    quantity: Optional(1),
                    schemaVersion: 1,
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    stackable: Optional(true),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    status: Optional(.draft),
                    turnable: Optional(true),
                    weightPounds: Optional(1.1),
                    widthInches: Optional(1.1)
                )
            ]),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            notificationIntentsAdHoc: Optional([
                NotificationIntentAdHoc1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    directoryEntryId: "directory_entry_id",
                    emailEvents: Optional([
                        .shippingOrderStaged
                    ]),
                    orderId: "order_id",
                    pushEvents: Optional([
                        .shippingOrderStaged
                    ]),
                    schemaVersion: 1,
                    smsEvents: Optional([
                        .shippingOrderStaged
                    ])
                )
            ]),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            order: Order1(
                id: "_id",
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                createdByOrgId: "created_by_org_id",
                createdByOrgType: .courier,
                createdByUserId: "created_by_user_id",
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                forwarderOrgId: Optional("forwarder_org_id"),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                orderCancelled: Optional(true),
                orderCancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shortId: "short_id",
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                status: Optional(.draft),
                taskGroupIds: Optional([
                    "task_group_ids"
                ])
            ),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            taskGroupsExpanded: Optional([
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
            ])
        )
        let response = try await client.shipping.orderDrafts.expanded.retrieveV1(
            orderIdOrShortId: "order_id_or_short_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}