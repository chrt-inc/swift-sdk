import Foundation
import Testing
import Chrt

@Suite("AddLineItemsClient Wire Tests") struct AddLineItemsClientWireTests {
    @Test func byIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "driver_id": "driver_id",
                  "task_group_id": "task_group_id",
                  "courier_org_id": "courier_org_id",
                  "order_cancelled": true,
                  "line_items": [
                    {
                      "schema_version": 1,
                      "item": "base_rate",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "comment": "comment",
                      "created_at": "2024-01-15T09:30:00Z",
                      "uuid_str": "uuid_str"
                    }
                  ],
                  "rate_sheet_id": "rate_sheet_id",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CourierPayDriverLineItemGroup1(
            schemaVersion: 1,
            driverId: "driver_id",
            taskGroupId: "task_group_id",
            courierOrgId: "courier_org_id",
            orderCancelled: Optional(true),
            lineItems: [
                LineItem1(
                    schemaVersion: 1,
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1,
                    comment: Optional("comment"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    uuidStr: "uuid_str"
                )
            ],
            rateSheetId: "rate_sheet_id",
            id: "_id"
        )
        let response = try await client.courierPayDriverLineItemGroups.addLineItems.byIdV1(
            id: "id",
            request: .init(lineItems: [
                LineItemClientCreate1(
                    schemaVersion: 1,
                    item: .baseRate,
                    quantity: 1.1,
                    rate: 1.1
                )
            ])
        )
        try #require(response == expectedResponse)
    }
}