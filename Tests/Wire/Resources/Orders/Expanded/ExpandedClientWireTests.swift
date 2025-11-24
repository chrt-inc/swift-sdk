import Foundation
import Testing
import Chrt

@Suite("ExpandedClient Wire Tests") struct ExpandedClientWireTests {
    @Test func forShipperOperatorsV11() async throws -> Void {
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
                            "flight_number": null,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "task_group_id": "task_group_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "completed_by_org_id": null,
                            "completed_by_user_id": null,
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "staged_at_timestamp": null,
                            "completed_at_timestamp": null,
                            "exception_at_timestamp": null
                          },
                          "cargos": null,
                          "task_artifacts": null,
                          "shipper_contacts": null
                        }
                      ],
                      "driver": {
                        "schema_version": 1,
                        "active": null,
                        "email_address_primary": null,
                        "email_address_secondary": null,
                        "phone_number_primary": null,
                        "phone_number_secondary": null,
                        "first_name": null,
                        "last_name": null,
                        "last_seen_at_location": null,
                        "last_seen_at_timestamp": null,
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
        let expectedResponse = OrderExpanded(
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
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                location: Optional(nil),
                                orderPlacerComments: Optional(nil),
                                flightNumber: Optional(nil),
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                taskGroupId: "task_group_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                completedByOrgId: Optional(nil),
                                completedByUserId: Optional(nil),
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                stagedAtTimestamp: Optional(nil),
                                completedAtTimestamp: Optional(nil),
                                exceptionAtTimestamp: Optional(nil)
                            ),
                            cargos: Optional(nil),
                            taskArtifacts: Optional(nil),
                            shipperContacts: Optional(nil)
                        )
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        active: Optional(nil),
                        emailAddressPrimary: Optional(nil),
                        emailAddressSecondary: Optional(nil),
                        phoneNumberPrimary: Optional(nil),
                        phoneNumberSecondary: Optional(nil),
                        firstName: Optional(nil),
                        lastName: Optional(nil),
                        lastSeenAtLocation: Optional(nil),
                        lastSeenAtTimestamp: Optional(nil),
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
            ])
        )
        let response = try await client.orders.expanded.forShipperOperatorsV1(
            orderIdOrShortId: "order_id_or_short_id",
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
                            "flight_number": null,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "task_group_id": "task_group_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "completed_by_org_id": null,
                            "completed_by_user_id": null,
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "staged_at_timestamp": null,
                            "completed_at_timestamp": null,
                            "exception_at_timestamp": null
                          },
                          "cargos": null,
                          "task_artifacts": null,
                          "shipper_contacts": null
                        }
                      ],
                      "driver": {
                        "schema_version": 1,
                        "active": null,
                        "email_address_primary": null,
                        "email_address_secondary": null,
                        "phone_number_primary": null,
                        "phone_number_secondary": null,
                        "first_name": null,
                        "last_name": null,
                        "last_seen_at_location": null,
                        "last_seen_at_timestamp": null,
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
        let expectedResponse = OrderExpanded(
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
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                location: Optional(nil),
                                orderPlacerComments: Optional(nil),
                                flightNumber: Optional(nil),
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                taskGroupId: "task_group_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                completedByOrgId: Optional(nil),
                                completedByUserId: Optional(nil),
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                stagedAtTimestamp: Optional(nil),
                                completedAtTimestamp: Optional(nil),
                                exceptionAtTimestamp: Optional(nil)
                            ),
                            cargos: Optional(nil),
                            taskArtifacts: Optional(nil),
                            shipperContacts: Optional(nil)
                        )
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        active: Optional(nil),
                        emailAddressPrimary: Optional(nil),
                        emailAddressSecondary: Optional(nil),
                        phoneNumberPrimary: Optional(nil),
                        phoneNumberSecondary: Optional(nil),
                        firstName: Optional(nil),
                        lastName: Optional(nil),
                        lastSeenAtLocation: Optional(nil),
                        lastSeenAtTimestamp: Optional(nil),
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
            ])
        )
        let response = try await client.orders.expanded.forForwarderOperatorsV1(
            orderIdOrShortId: "order_id_or_short_id",
            request: OrderAndTaskGroupExpandedReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}