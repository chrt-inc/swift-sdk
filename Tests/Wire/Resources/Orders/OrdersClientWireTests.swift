import Foundation
import Testing
import Chrt

@Suite("OrdersClient Wire Tests") struct OrdersClientWireTests {
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
        let expectedResponse = GetOrderRes(
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
            )
        )
        let response = try await client.orders.getByOrderIdOrShortIdV1(
            orderIdOrShortId: "order_id_or_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cancelByOrderIdOrShortIdV11() async throws -> Void {
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
        let response = try await client.orders.cancelByOrderIdOrShortIdV1(
            orderIdOrShortId: "order_id_or_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_id": "order_id",
                  "order_short_id": "order_short_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateOrderRes(
            orderId: "order_id",
            orderShortId: "order_short_id"
        )
        let response = try await client.orders.createV1(
            request: .init(
                orderClientCreate: OrderClientCreate1(
                    schemaVersion: 1
                ),
                taskClientCreatesBundleGroupings: [
                    [
                        TaskCreateBundle(
                            taskClientCreate: TaskClientCreate1(
                                schemaVersion: 1
                            )
                        )
                    ]
                ],
                cargoClientCreatesMap: [
                    "key": CargoClientCreate1(
                        schemaVersion: 1,
                        cargoType: .spareParts
                    )
                ],
                orderCreatedByType: .chrt,
                orderDispatchType: .dtc,
                transportType: .groundOnly
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postExpandedV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_expanded": {
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
                    "task_groups_expanded": [
                      {
                        "task_group": {
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
                        },
                        "tasks_expanded": null,
                        "courier_org_company_name": null,
                        "courier_org_company_handle": null
                      }
                    ]
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
        let expectedResponse = OrdersExpandedRes(
            orderExpanded: OrderExpanded(
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
                taskGroupsExpanded: Optional([
                    TaskGroupExpanded(
                        taskGroup: TaskGroup1(
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
                        ),
                        tasksExpanded: Optional(nil),
                        courierOrgCompanyName: Optional(nil),
                        courierOrgCompanyHandle: Optional(nil)
                    )
                ])
            )
        )
        let response = try await client.orders.postExpandedV1(
            request: .init(orderIdOrShortId: "order_id_or_short_id"),
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
            Order1(
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
            )
        ]
        let response = try await client.orders.listByShipperOrgIdV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listByCourierOrgIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
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
            Order1(
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
            )
        ]
        let response = try await client.orders.listByCourierOrgIdV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}