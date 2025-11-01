import Foundation
import Testing
import Chrt

@Suite("ShipperPayCourierLineItemGroupsCourierClient Wire Tests") struct ShipperPayCourierLineItemGroupsCourierClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "task_group_id": "task_group_id",
                    "courier_org_id": "courier_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
                    "order_cancelled": true,
                    "rate_sheet_id": "rate_sheet_id",
                    "line_items": [
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
                    "_id": "_id"
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
            ShipperPayCourierLineItemGroup1(
                schemaVersion: 1,
                taskGroupId: "task_group_id",
                courierOrgId: "courier_org_id",
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                orderCancelled: Optional(true),
                rateSheetId: "rate_sheet_id",
                lineItems: [
                    LineItem1(
                        schemaVersion: 1,
                        item: .baseRate,
                        quantity: 1.1,
                        rate: 1.1,
                        comment: Optional(nil),
                        createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        uuidStr: "uuid_str"
                    )
                ],
                id: "_id"
            )
        ]
        let response = try await client.shipperPayCourierLineItemGroups.courier.listV1()
        try #require(response == expectedResponse)
    }
}