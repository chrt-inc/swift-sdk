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