import Foundation
import Testing
import Chrt

@Suite("OrderDraftsClient Wire Tests") struct OrderDraftsClientWireTests {
    @Test func newV11() async throws -> Void {
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
        let expectedResponse = OrdersNewDraftRes(
            orderId: "order_id",
            orderShortId: "order_short_id"
        )
        let response = try await client.orderDrafts.newV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "forwarder_org_id": "forwarder_org_id",
                  "shipper_org_id": "shipper_org_id",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersDraftUpdateRes(
            orderId: "order_id",
            orderShortId: "order_short_id",
            forwarderOrgId: Optional("forwarder_org_id"),
            shipperOrgId: Optional("shipper_org_id"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id")
        )
        let response = try await client.orderDrafts.updateV1(
            request: .init(orderId: "order_id"),
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
        let response = try await client.orderDrafts.deleteV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expandedV11() async throws -> Void {
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
                  "task_groups_expanded": [
                    {
                      "task_group": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "courier_org_id": null,
                        "driver_id": null,
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "staged_at_timestamp": null,
                        "in_progress_at_timestamp": null,
                        "completed_at_timestamp": null,
                        "exception_at_timestamp": null,
                        "task_group_type": "chrt_ground_courier",
                        "task_group_mileage": null,
                        "flight_number": null
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "schema_version": 1,
                            "location": null,
                            "order_placer_comments": null,
                            "shipper_contact_info_ids": null,
                            "flight_number": null,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "task_group_id": "task_group_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "completed_by_org_id": null,
                            "completed_by_user_id": null,
                            "cargo_ids": null,
                            "task_artifact_ids": null,
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "staged_at_timestamp": null,
                            "completed_at_timestamp": null,
                            "exception_at_timestamp": null,
                            "task_notification_email_ids": null,
                            "task_notification_sms_ids": null,
                            "task_notification_push_ids": null,
                            "task_notification_voice_ids": null
                          },
                          "cargos": null,
                          "task_artifacts": null,
                          "shipper_contacts": null
                        }
                      ],
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle"
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
                  "shipper_org_handle": "shipper_org_handle",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderDraftExpandedRes(
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
            taskGroupsExpanded: Optional([
                TaskGroupDraftExpanded(
                    taskGroup: TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        courierOrgId: Optional(nil),
                        driverId: Optional(nil),
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        stagedAtTimestamp: Optional(nil),
                        inProgressAtTimestamp: Optional(nil),
                        completedAtTimestamp: Optional(nil),
                        exceptionAtTimestamp: Optional(nil),
                        taskGroupType: .chrtGroundCourier,
                        taskGroupMileage: Optional(nil),
                        flightNumber: Optional(nil)
                    ),
                    tasksExpanded: Optional([
                        TaskDraftExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                location: Optional(nil),
                                orderPlacerComments: Optional(nil),
                                shipperContactInfoIds: Optional(nil),
                                flightNumber: Optional(nil),
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                taskGroupId: "task_group_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                completedByOrgId: Optional(nil),
                                completedByUserId: Optional(nil),
                                cargoIds: Optional(nil),
                                taskArtifactIds: Optional(nil),
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                stagedAtTimestamp: Optional(nil),
                                completedAtTimestamp: Optional(nil),
                                exceptionAtTimestamp: Optional(nil),
                                taskNotificationEmailIds: Optional(nil),
                                taskNotificationSmsIds: Optional(nil),
                                taskNotificationPushIds: Optional(nil),
                                taskNotificationVoiceIds: Optional(nil)
                            ),
                            cargos: Optional(nil),
                            taskArtifacts: Optional(nil),
                            shipperContacts: Optional(nil)
                        )
                    ]),
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle")
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
            shipperOrgHandle: Optional("shipper_org_handle"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle")
        )
        let response = try await client.orderDrafts.expandedV1(
            orderIdOrShortId: "order_id_or_short_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expandedListV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "orders_expanded": [
                    {
                      "order": {
                        "schema_version": 1,
                        "_id": "_id",
                        "short_id": "short_id",
                        "task_group_ids": null,
                        "created_by_org_type": "courier",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "forwarder_org_id": null,
                        "shipper_org_id": null,
                        "off_chrt_shipper_org_id": null,
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "staged_at_timestamp": null,
                        "in_progress_at_timestamp": null,
                        "completed_at_timestamp": null,
                        "exception_at_timestamp": null,
                        "order_cancelled_at_timestamp": null
                      },
                      "task_groups_expanded": [
                        {
                          "task_group": {
                            "schema_version": 1,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "courier_org_id": null,
                            "driver_id": null,
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "staged_at_timestamp": null,
                            "in_progress_at_timestamp": null,
                            "completed_at_timestamp": null,
                            "exception_at_timestamp": null,
                            "task_group_type": "chrt_ground_courier",
                            "task_group_mileage": null,
                            "flight_number": null
                          },
                          "tasks_expanded": null,
                          "courier_org_company_name": null,
                          "courier_org_handle": null
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
                          "turnable": null,
                          "stackable": null,
                          "description": null,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "device_ids": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "in_transit_at_timestamp": null,
                          "delivered_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "shipper_org_company_name": "shipper_org_company_name",
                      "shipper_org_handle": "shipper_org_handle",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name",
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle"
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
            ordersExpanded: [
                OrderDraftExpandedRes(
                    order: Order1(
                        schemaVersion: 1,
                        id: "_id",
                        shortId: "short_id",
                        taskGroupIds: Optional(nil),
                        createdByOrgType: .courier,
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        forwarderOrgId: Optional(nil),
                        shipperOrgId: Optional(nil),
                        offChrtShipperOrgId: Optional(nil),
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        stagedAtTimestamp: Optional(nil),
                        inProgressAtTimestamp: Optional(nil),
                        completedAtTimestamp: Optional(nil),
                        exceptionAtTimestamp: Optional(nil),
                        orderCancelledAtTimestamp: Optional(nil)
                    ),
                    taskGroupsExpanded: Optional([
                        TaskGroupDraftExpanded(
                            taskGroup: TaskGroup1(
                                schemaVersion: 1,
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                courierOrgId: Optional(nil),
                                driverId: Optional(nil),
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                stagedAtTimestamp: Optional(nil),
                                inProgressAtTimestamp: Optional(nil),
                                completedAtTimestamp: Optional(nil),
                                exceptionAtTimestamp: Optional(nil),
                                taskGroupType: .chrtGroundCourier,
                                taskGroupMileage: Optional(nil),
                                flightNumber: Optional(nil)
                            ),
                            tasksExpanded: Optional(nil),
                            courierOrgCompanyName: Optional(nil),
                            courierOrgHandle: Optional(nil)
                        )
                    ]),
                    cargos: Optional([
                        Cargo1(
                            schemaVersion: 1,
                            cargoType: .spareParts,
                            quantity: Optional(nil),
                            weightPounds: Optional(nil),
                            lengthInches: Optional(nil),
                            widthInches: Optional(nil),
                            heightInches: Optional(nil),
                            turnable: Optional(nil),
                            stackable: Optional(nil),
                            description: Optional(nil),
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            deviceIds: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            inTransitAtTimestamp: Optional(nil),
                            deliveredAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    shipperOrgHandle: Optional("shipper_org_handle"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name"),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle")
                )
            ],
            totalCount: 1
        )
        let response = try await client.orderDrafts.expandedListV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func validateV11() async throws -> Void {
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
        let response = try await client.orderDrafts.validateV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}