import Foundation
import Testing
import Chrt

@Suite("CasesClient Wire Tests") struct CasesClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "order_id": "order_id",
                      "department_id": "department_id",
                      "assigned_user_ids": [
                        "assigned_user_ids"
                      ],
                      "case_s3_object_metadata_ids": [
                        "case_s3_object_metadata_ids"
                      ],
                      "_id": "_id",
                      "org_id": "org_id",
                      "billing_review_status": "not_started",
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "created_at": "2024-01-15T09:30:00Z"
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
        let expectedResponse = CaseListRes(
            items: [
                Case1(
                    schemaVersion: 1,
                    orderId: "order_id",
                    departmentId: Optional("department_id"),
                    assignedUserIds: Optional([
                        "assigned_user_ids"
                    ]),
                    caseS3ObjectMetadataIds: Optional([
                        "case_s3_object_metadata_ids"
                    ]),
                    id: "_id",
                    orgId: "org_id",
                    billingReviewStatus: Optional(.notStarted),
                    messages: Optional([
                        CaseMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.operations.cases.listV1(
            sortBy: .createdAt,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterAssignedUserId: "filter_assigned_user_id",
            filterUnassigned: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "order_id": "order_id",
                  "department_id": "department_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "billing_review_status": "not_started",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Case1(
            schemaVersion: 1,
            orderId: "order_id",
            departmentId: Optional("department_id"),
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            billingReviewStatus: Optional(.notStarted),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operations.cases.getV1(
            caseId: "case_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
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
        let response = try await client.operations.cases.updateV1(
            caseId: "case_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "order_id": "order_id",
                  "department_id": "department_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "billing_review_status": "not_started",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Case1(
            schemaVersion: 1,
            orderId: "order_id",
            departmentId: Optional("department_id"),
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            billingReviewStatus: Optional(.notStarted),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operations.cases.getByOrderV1(
            orderId: "order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByOrderRefV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "order_id": "order_id",
                  "department_id": "department_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "billing_review_status": "not_started",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Case1(
            schemaVersion: 1,
            orderId: "order_id",
            departmentId: Optional("department_id"),
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            billingReviewStatus: Optional(.notStarted),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operations.cases.getByOrderRefV1(
            orderRef: "order_ref",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByOrderShortIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "order_id": "order_id",
                  "department_id": "department_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "billing_review_status": "not_started",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "created_at": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Case1(
            schemaVersion: 1,
            orderId: "order_id",
            departmentId: Optional("department_id"),
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            billingReviewStatus: Optional(.notStarted),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operations.cases.getByOrderShortIdV1(
            orderShortId: "order_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSuggestedDepartmentV11() async throws -> Void {
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
        let expectedResponse = Optional("string")
        let response = try await client.operations.cases.getSuggestedDepartmentV1(
            caseId: "case_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setBillingReviewStatusV11() async throws -> Void {
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
        let response = try await client.operations.cases.setBillingReviewStatusV1(
            caseId: "case_id",
            request: .init(billingReviewStatus: .notStarted),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assignV11() async throws -> Void {
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
        let response = try await client.operations.cases.assignV1(
            caseId: "case_id",
            request: .init(operatorUserIds: [
                "operator_user_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unassignV11() async throws -> Void {
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
        let response = try await client.operations.cases.unassignV1(
            caseId: "case_id",
            request: .init(operatorUserIds: [
                "operator_user_ids"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addMessageV11() async throws -> Void {
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
        let response = try await client.operations.cases.addMessageV1(
            caseId: "case_id",
            request: .init(message: "message"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteMessageV11() async throws -> Void {
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
        let response = try await client.operations.cases.deleteMessageV1(
            caseId: "case_id",
            messageId: "message_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}