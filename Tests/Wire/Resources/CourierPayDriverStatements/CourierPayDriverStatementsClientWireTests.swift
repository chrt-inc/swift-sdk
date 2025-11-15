import Foundation
import Testing
import Chrt

@Suite("CourierPayDriverStatementsClient Wire Tests") struct CourierPayDriverStatementsClientWireTests {
    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
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
                  "statement_amount": 1.1,
                  "statement_status": "created",
                  "statement_completed_at_timestamp": "2024-01-15T09:30:00Z",
                  "statement_completed_by_user_id": "statement_completed_by_user_id",
                  "statement_created_at_timestamp": "2024-01-15T09:30:00Z",
                  "statement_created_by_user_id": "statement_created_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CourierPayDriverStatement1(
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
            statementAmount: 1.1,
            statementStatus: Optional(.created),
            statementCompletedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            statementCompletedByUserId: Optional("statement_completed_by_user_id"),
            statementCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            statementCreatedByUserId: "statement_created_by_user_id"
        )
        let response = try await client.courierPayDriverStatements.getByIdV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByDriverIdV11() async throws -> Void {
        let stub = HTTPStub()
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
                    "statement_amount": 1.1,
                    "statement_status": "created",
                    "statement_completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "statement_completed_by_user_id": "statement_completed_by_user_id",
                    "statement_created_at_timestamp": "2024-01-15T09:30:00Z",
                    "statement_created_by_user_id": "statement_created_by_user_id"
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
            CourierPayDriverStatement1(
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
                statementAmount: 1.1,
                statementStatus: Optional(.created),
                statementCompletedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                statementCompletedByUserId: Optional("statement_completed_by_user_id"),
                statementCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                statementCreatedByUserId: "statement_created_by_user_id"
            )
        ]
        let response = try await client.courierPayDriverStatements.listByDriverIdV1(
            driverId: "driver_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
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
        let response = try await client.courierPayDriverStatements.createV1(
            request: CourierPayDriverStatementClientCreate1(
                schemaVersion: 1,
                courierPayDriverLineItemGroupIds: [
                    "courier_pay_driver_line_item_group_ids"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStatusV11() async throws -> Void {
        let stub = HTTPStub()
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
                  "statement_amount": 1.1,
                  "statement_status": "created",
                  "statement_completed_at_timestamp": "2024-01-15T09:30:00Z",
                  "statement_completed_by_user_id": "statement_completed_by_user_id",
                  "statement_created_at_timestamp": "2024-01-15T09:30:00Z",
                  "statement_created_by_user_id": "statement_created_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CourierPayDriverStatement1(
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
            statementAmount: 1.1,
            statementStatus: Optional(.created),
            statementCompletedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            statementCompletedByUserId: Optional("statement_completed_by_user_id"),
            statementCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            statementCreatedByUserId: "statement_created_by_user_id"
        )
        let response = try await client.courierPayDriverStatements.updateStatusV1(
            id: "id",
            request: CourierPayDriverStatementClientUpdate1(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}