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
                      "order": {
                        "schema_version": 1,
                        "_id": "_id",
                        "short_id": "short_id",
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
                          "tasks_expanded": null,
                          "driver": null,
                          "courier_org_company_name": null,
                          "courier_org_handle": null,
                          "forwarder_org_company_name": null,
                          "forwarder_org_handle": null,
                          "shipper_org_company_name": null,
                          "off_chrt_shipper_org_company_name": null
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
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "in_transit_at_timestamp": null,
                          "delivered_at_timestamp": null,
                          "exception_at_timestamp": null
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
                            tasksExpanded: Optional(nil),
                            driver: Optional(nil),
                            courierOrgCompanyName: Optional(nil),
                            courierOrgHandle: Optional(nil),
                            forwarderOrgCompanyName: Optional(nil),
                            forwarderOrgHandle: Optional(nil),
                            shipperOrgCompanyName: Optional(nil),
                            offChrtShipperOrgCompanyName: Optional(nil)
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
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            inTransitAtTimestamp: Optional(nil),
                            deliveredAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
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