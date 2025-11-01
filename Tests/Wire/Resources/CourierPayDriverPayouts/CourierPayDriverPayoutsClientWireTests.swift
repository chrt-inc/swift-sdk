import Foundation
import Testing
import Chrt

@Suite("CourierPayDriverPayoutsClient Wire Tests") struct CourierPayDriverPayoutsClientWireTests {
    @Test func getByIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "courier_pay_driver_line_item_group_ids": [
                    "courier_pay_driver_line_item_group_ids"
                  ],
                  "_id": "_id",
                  "driver_id": "driver_id",
                  "courier_org_id": "courier_org_id",
                  "task_group_ids": [
                    "task_group_ids"
                  ],
                  "payout_amount": 1.1,
                  "payout_status": "created",
                  "payout_completed_at": "2024-01-15T09:30:00Z",
                  "payout_completed_by_user_id": "payout_completed_by_user_id",
                  "payout_created_at": "2024-01-15T09:30:00Z",
                  "payout_created_by_user_id": "payout_created_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CourierPayDriverPayout1(
            schemaVersion: 1,
            courierPayDriverLineItemGroupIds: [
                "courier_pay_driver_line_item_group_ids"
            ],
            id: "_id",
            driverId: "driver_id",
            courierOrgId: "courier_org_id",
            taskGroupIds: [
                "task_group_ids"
            ],
            payoutAmount: 1.1,
            payoutStatus: Optional(.created),
            payoutCompletedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            payoutCompletedByUserId: Optional("payout_completed_by_user_id"),
            payoutCreatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            payoutCreatedByUserId: "payout_created_by_user_id"
        )
        let response = try await client.courierPayDriverPayouts.getByIdV1(id: "id")
        try #require(response == expectedResponse)
    }

    @Test func listByDriverIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "courier_pay_driver_line_item_group_ids": [
                      "courier_pay_driver_line_item_group_ids"
                    ],
                    "_id": "_id",
                    "driver_id": "driver_id",
                    "courier_org_id": "courier_org_id",
                    "task_group_ids": [
                      "task_group_ids"
                    ],
                    "payout_amount": 1.1,
                    "payout_status": "created",
                    "payout_completed_at": "2024-01-15T09:30:00Z",
                    "payout_completed_by_user_id": "payout_completed_by_user_id",
                    "payout_created_at": "2024-01-15T09:30:00Z",
                    "payout_created_by_user_id": "payout_created_by_user_id"
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
            CourierPayDriverPayout1(
                schemaVersion: 1,
                courierPayDriverLineItemGroupIds: [
                    "courier_pay_driver_line_item_group_ids"
                ],
                id: "_id",
                driverId: "driver_id",
                courierOrgId: "courier_org_id",
                taskGroupIds: [
                    "task_group_ids"
                ],
                payoutAmount: 1.1,
                payoutStatus: Optional(.created),
                payoutCompletedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                payoutCompletedByUserId: Optional("payout_completed_by_user_id"),
                payoutCreatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                payoutCreatedByUserId: "payout_created_by_user_id"
            )
        ]
        let response = try await client.courierPayDriverPayouts.listByDriverIdV1(driverId: "driver_id")
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.courierPayDriverPayouts.createV1(request: .init(
            schemaVersion: 1,
            courierPayDriverLineItemGroupIds: [
                "courier_pay_driver_line_item_group_ids"
            ]
        ))
        try #require(response == expectedResponse)
    }

    @Test func updateStatusV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "courier_pay_driver_line_item_group_ids": [
                    "courier_pay_driver_line_item_group_ids"
                  ],
                  "_id": "_id",
                  "driver_id": "driver_id",
                  "courier_org_id": "courier_org_id",
                  "task_group_ids": [
                    "task_group_ids"
                  ],
                  "payout_amount": 1.1,
                  "payout_status": "created",
                  "payout_completed_at": "2024-01-15T09:30:00Z",
                  "payout_completed_by_user_id": "payout_completed_by_user_id",
                  "payout_created_at": "2024-01-15T09:30:00Z",
                  "payout_created_by_user_id": "payout_created_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CourierPayDriverPayout1(
            schemaVersion: 1,
            courierPayDriverLineItemGroupIds: [
                "courier_pay_driver_line_item_group_ids"
            ],
            id: "_id",
            driverId: "driver_id",
            courierOrgId: "courier_org_id",
            taskGroupIds: [
                "task_group_ids"
            ],
            payoutAmount: 1.1,
            payoutStatus: Optional(.created),
            payoutCompletedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            payoutCompletedByUserId: Optional("payout_completed_by_user_id"),
            payoutCreatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            payoutCreatedByUserId: "payout_created_by_user_id"
        )
        let response = try await client.courierPayDriverPayouts.updateStatusV1(
            id: "id",
            request: .init()
        )
        try #require(response == expectedResponse)
    }
}