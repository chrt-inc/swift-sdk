import Foundation
import Testing
import Chrt

@Suite("CasesClient Wire Tests") struct CasesClientWireTests {
    @Test func recordImageAnalysisResultsV11() async throws -> Void {
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
        let response = try await client.operations.cases.recordImageAnalysisResultsV1(
            taskArtifactId: "task_artifact_id",
            request: .init(results: [
                "key": .notStarted
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func applyChecklistV11() async throws -> Void {
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
        let response = try await client.operations.cases.applyChecklistV1(
            caseId: "case_id",
            request: .init(checklistId: "checklist_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func disableCheckV11() async throws -> Void {
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
        let response = try await client.operations.cases.disableCheckV1(
            caseId: "case_id",
            request: CaseChecksDisableReq(
                check: .shippingOrderPlacedOrderDetailsReviewed
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func enableCheckV11() async throws -> Void {
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
        let response = try await client.operations.cases.enableCheckV1(
            caseId: "case_id",
            request: CaseChecksDisableReq(
                check: .shippingOrderPlacedOrderDetailsReviewed
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func dismissCheckV11() async throws -> Void {
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
        let response = try await client.operations.cases.dismissCheckV1(
            caseId: "case_id",
            request: CaseChecksDismissReq(
                check: .shippingOrderPlacedOrderDetailsReviewed,
                entityId: "entity_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func undismissCheckV11() async throws -> Void {
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
        let response = try await client.operations.cases.undismissCheckV1(
            caseId: "case_id",
            request: CaseChecksDismissReq(
                check: .shippingOrderPlacedOrderDetailsReviewed,
                entityId: "entity_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
                      "order_ref": "order_ref",
                      "order_short_id": "order_short_id",
                      "department_id": "department_id",
                      "assigned_operator_user_ids": [
                        "assigned_operator_user_ids"
                      ],
                      "case_s3_object_metadata_ids": [
                        "case_s3_object_metadata_ids"
                      ],
                      "_id": "_id",
                      "org_id": "org_id",
                      "status": "open",
                      "needs_action": true,
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "enabled_check_keys": [
                        "shipping.order.placed.order_details_reviewed"
                      ],
                      "disabled_check_keys": [
                        "shipping.order.placed.order_details_reviewed"
                      ],
                      "checks": [
                        {
                          "schema_version": 1,
                          "check": "shipping.order.placed.order_details_reviewed",
                          "entity_id": "entity_id"
                        }
                      ],
                      "checks_summary": {
                        "schema_version": 1
                      },
                      "created_by_user_id": "created_by_user_id",
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
                    orderRef: Optional("order_ref"),
                    orderShortId: Optional("order_short_id"),
                    departmentId: Optional("department_id"),
                    assignedOperatorUserIds: Optional([
                        "assigned_operator_user_ids"
                    ]),
                    caseS3ObjectMetadataIds: Optional([
                        "case_s3_object_metadata_ids"
                    ]),
                    id: "_id",
                    orgId: "org_id",
                    status: Optional(.open),
                    needsAction: Optional(true),
                    messages: Optional([
                        CaseMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    enabledCheckKeys: Optional([
                        .shippingOrderPlacedOrderDetailsReviewed
                    ]),
                    disabledCheckKeys: Optional([
                        .shippingOrderPlacedOrderDetailsReviewed
                    ]),
                    checks: Optional([
                        Check1(
                            schemaVersion: 1,
                            check: .shippingOrderPlacedOrderDetailsReviewed,
                            entityId: "entity_id"
                        )
                    ]),
                    checksSummary: Optional(CaseChecksSummary1(
                        schemaVersion: 1
                    )),
                    createdByUserId: "created_by_user_id",
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
            filterAssignedOperatorUserId: "filter_assigned_operator_user_id",
            filterNeedsAction: true,
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
                  "order_ref": "order_ref",
                  "order_short_id": "order_short_id",
                  "department_id": "department_id",
                  "assigned_operator_user_ids": [
                    "assigned_operator_user_ids"
                  ],
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "status": "open",
                  "needs_action": true,
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "enabled_check_keys": [
                    "shipping.order.placed.order_details_reviewed"
                  ],
                  "disabled_check_keys": [
                    "shipping.order.placed.order_details_reviewed"
                  ],
                  "checks": [
                    {
                      "schema_version": 1,
                      "check": "shipping.order.placed.order_details_reviewed",
                      "entity_id": "entity_id",
                      "status": "not_started",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "checks_summary": {
                    "schema_version": 1,
                    "applied_checklist_ids": [
                      "applied_checklist_ids"
                    ],
                    "success_count": 1,
                    "failure_count": 1,
                    "unsure_count": 1,
                    "error_count": 1,
                    "failure_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ],
                    "unsure_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ],
                    "error_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ]
                  },
                  "created_by_user_id": "created_by_user_id",
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
            orderRef: Optional("order_ref"),
            orderShortId: Optional("order_short_id"),
            departmentId: Optional("department_id"),
            assignedOperatorUserIds: Optional([
                "assigned_operator_user_ids"
            ]),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            status: Optional(.open),
            needsAction: Optional(true),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            enabledCheckKeys: Optional([
                .shippingOrderPlacedOrderDetailsReviewed
            ]),
            disabledCheckKeys: Optional([
                .shippingOrderPlacedOrderDetailsReviewed
            ]),
            checks: Optional([
                Check1(
                    schemaVersion: 1,
                    check: .shippingOrderPlacedOrderDetailsReviewed,
                    entityId: "entity_id",
                    status: Optional(.notStarted),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            checksSummary: Optional(CaseChecksSummary1(
                schemaVersion: 1,
                appliedChecklistIds: Optional([
                    "applied_checklist_ids"
                ]),
                successCount: Optional(1),
                failureCount: Optional(1),
                unsureCount: Optional(1),
                errorCount: Optional(1),
                failureCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ]),
                unsureCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ]),
                errorCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ])
            )),
            createdByUserId: "created_by_user_id",
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
                  "order_ref": "order_ref",
                  "order_short_id": "order_short_id",
                  "department_id": "department_id",
                  "assigned_operator_user_ids": [
                    "assigned_operator_user_ids"
                  ],
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "status": "open",
                  "needs_action": true,
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "enabled_check_keys": [
                    "shipping.order.placed.order_details_reviewed"
                  ],
                  "disabled_check_keys": [
                    "shipping.order.placed.order_details_reviewed"
                  ],
                  "checks": [
                    {
                      "schema_version": 1,
                      "check": "shipping.order.placed.order_details_reviewed",
                      "entity_id": "entity_id",
                      "status": "not_started",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "checks_summary": {
                    "schema_version": 1,
                    "applied_checklist_ids": [
                      "applied_checklist_ids"
                    ],
                    "success_count": 1,
                    "failure_count": 1,
                    "unsure_count": 1,
                    "error_count": 1,
                    "failure_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ],
                    "unsure_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ],
                    "error_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ]
                  },
                  "created_by_user_id": "created_by_user_id",
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
            orderRef: Optional("order_ref"),
            orderShortId: Optional("order_short_id"),
            departmentId: Optional("department_id"),
            assignedOperatorUserIds: Optional([
                "assigned_operator_user_ids"
            ]),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            status: Optional(.open),
            needsAction: Optional(true),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            enabledCheckKeys: Optional([
                .shippingOrderPlacedOrderDetailsReviewed
            ]),
            disabledCheckKeys: Optional([
                .shippingOrderPlacedOrderDetailsReviewed
            ]),
            checks: Optional([
                Check1(
                    schemaVersion: 1,
                    check: .shippingOrderPlacedOrderDetailsReviewed,
                    entityId: "entity_id",
                    status: Optional(.notStarted),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            checksSummary: Optional(CaseChecksSummary1(
                schemaVersion: 1,
                appliedChecklistIds: Optional([
                    "applied_checklist_ids"
                ]),
                successCount: Optional(1),
                failureCount: Optional(1),
                unsureCount: Optional(1),
                errorCount: Optional(1),
                failureCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ]),
                unsureCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ]),
                errorCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ])
            )),
            createdByUserId: "created_by_user_id",
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
                  "order_ref": "order_ref",
                  "order_short_id": "order_short_id",
                  "department_id": "department_id",
                  "assigned_operator_user_ids": [
                    "assigned_operator_user_ids"
                  ],
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "status": "open",
                  "needs_action": true,
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "enabled_check_keys": [
                    "shipping.order.placed.order_details_reviewed"
                  ],
                  "disabled_check_keys": [
                    "shipping.order.placed.order_details_reviewed"
                  ],
                  "checks": [
                    {
                      "schema_version": 1,
                      "check": "shipping.order.placed.order_details_reviewed",
                      "entity_id": "entity_id",
                      "status": "not_started",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "checks_summary": {
                    "schema_version": 1,
                    "applied_checklist_ids": [
                      "applied_checklist_ids"
                    ],
                    "success_count": 1,
                    "failure_count": 1,
                    "unsure_count": 1,
                    "error_count": 1,
                    "failure_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ],
                    "unsure_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ],
                    "error_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ]
                  },
                  "created_by_user_id": "created_by_user_id",
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
            orderRef: Optional("order_ref"),
            orderShortId: Optional("order_short_id"),
            departmentId: Optional("department_id"),
            assignedOperatorUserIds: Optional([
                "assigned_operator_user_ids"
            ]),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            status: Optional(.open),
            needsAction: Optional(true),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            enabledCheckKeys: Optional([
                .shippingOrderPlacedOrderDetailsReviewed
            ]),
            disabledCheckKeys: Optional([
                .shippingOrderPlacedOrderDetailsReviewed
            ]),
            checks: Optional([
                Check1(
                    schemaVersion: 1,
                    check: .shippingOrderPlacedOrderDetailsReviewed,
                    entityId: "entity_id",
                    status: Optional(.notStarted),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            checksSummary: Optional(CaseChecksSummary1(
                schemaVersion: 1,
                appliedChecklistIds: Optional([
                    "applied_checklist_ids"
                ]),
                successCount: Optional(1),
                failureCount: Optional(1),
                unsureCount: Optional(1),
                errorCount: Optional(1),
                failureCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ]),
                unsureCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ]),
                errorCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ])
            )),
            createdByUserId: "created_by_user_id",
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
                  "order_ref": "order_ref",
                  "order_short_id": "order_short_id",
                  "department_id": "department_id",
                  "assigned_operator_user_ids": [
                    "assigned_operator_user_ids"
                  ],
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "status": "open",
                  "needs_action": true,
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "user_id": "user_id",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "enabled_check_keys": [
                    "shipping.order.placed.order_details_reviewed"
                  ],
                  "disabled_check_keys": [
                    "shipping.order.placed.order_details_reviewed"
                  ],
                  "checks": [
                    {
                      "schema_version": 1,
                      "check": "shipping.order.placed.order_details_reviewed",
                      "entity_id": "entity_id",
                      "status": "not_started",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "checks_summary": {
                    "schema_version": 1,
                    "applied_checklist_ids": [
                      "applied_checklist_ids"
                    ],
                    "success_count": 1,
                    "failure_count": 1,
                    "unsure_count": 1,
                    "error_count": 1,
                    "failure_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ],
                    "unsure_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ],
                    "error_check_keys": [
                      "shipping.order.placed.order_details_reviewed"
                    ]
                  },
                  "created_by_user_id": "created_by_user_id",
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
            orderRef: Optional("order_ref"),
            orderShortId: Optional("order_short_id"),
            departmentId: Optional("department_id"),
            assignedOperatorUserIds: Optional([
                "assigned_operator_user_ids"
            ]),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            id: "_id",
            orgId: "org_id",
            status: Optional(.open),
            needsAction: Optional(true),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    userId: "user_id",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]),
            enabledCheckKeys: Optional([
                .shippingOrderPlacedOrderDetailsReviewed
            ]),
            disabledCheckKeys: Optional([
                .shippingOrderPlacedOrderDetailsReviewed
            ]),
            checks: Optional([
                Check1(
                    schemaVersion: 1,
                    check: .shippingOrderPlacedOrderDetailsReviewed,
                    entityId: "entity_id",
                    status: Optional(.notStarted),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            checksSummary: Optional(CaseChecksSummary1(
                schemaVersion: 1,
                appliedChecklistIds: Optional([
                    "applied_checklist_ids"
                ]),
                successCount: Optional(1),
                failureCount: Optional(1),
                unsureCount: Optional(1),
                errorCount: Optional(1),
                failureCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ]),
                unsureCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ]),
                errorCheckKeys: Optional([
                    .shippingOrderPlacedOrderDetailsReviewed
                ])
            )),
            createdByUserId: "created_by_user_id",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operations.cases.getByOrderShortIdV1(
            orderShortId: "order_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateNeedsActionV11() async throws -> Void {
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
        let response = try await client.operations.cases.updateNeedsActionV1(
            caseId: "case_id",
            request: .init(needsAction: true),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateStatusV11() async throws -> Void {
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
        let response = try await client.operations.cases.updateStatusV1(
            caseId: "case_id",
            request: .init(status: .open),
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