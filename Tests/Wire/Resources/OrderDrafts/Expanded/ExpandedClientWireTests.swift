import Foundation
import Testing
import Chrt

@Suite("ExpandedClient Wire Tests") struct ExpandedClientWireTests {
    @Test func retrieveV11() async throws -> Void {
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
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
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
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z"
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
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            taskGroupsExpanded: Optional([
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
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ])
        )
        let response = try await client.orderDrafts.expanded.retrieveV1(
            orderIdOrShortId: "order_id_or_short_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
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
                  "order_drafts_expanded": [
                    {
                      "order": {
                        "schema_version": 1,
                        "_id": "_id",
                        "short_id": "short_id",
                        "created_by_org_type": "courier",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z"
                      },
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
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
                          }
                        }
                      ],
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
                    order: Order1(
                        schemaVersion: 1,
                        id: "_id",
                        shortId: "short_id",
                        createdByOrgType: .courier,
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    taskGroupsExpanded: Optional([
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
                            )
                        )
                    ]),
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
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.orderDrafts.expanded.listV1(
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
}