import Foundation
import Testing
import Chrt

@Suite("CasesClient Wire Tests") struct CasesClientWireTests {
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

    @Test func getByOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "billing_review_status": "not_started",
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "case_tag": "case_tag",
                  "created_at": "2024-01-15T09:30:00Z",
                  "department_id": "department_id",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_id": "order_id",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = Case1(
            id: "_id",
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            billingReviewStatus: Optional(.notStarted),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            caseTag: Optional("case_tag"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            departmentId: Optional("department_id"),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderId: "order_id",
            orgId: "org_id",
            schemaVersion: 1,
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToCase1(
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
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
                  "_id": "_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "billing_review_status": "not_started",
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "case_tag": "case_tag",
                  "created_at": "2024-01-15T09:30:00Z",
                  "department_id": "department_id",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_id": "order_id",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = Case1(
            id: "_id",
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            billingReviewStatus: Optional(.notStarted),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            caseTag: Optional("case_tag"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            departmentId: Optional("department_id"),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderId: "order_id",
            orgId: "org_id",
            schemaVersion: 1,
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToCase1(
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
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
                  "_id": "_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "billing_review_status": "not_started",
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "case_tag": "case_tag",
                  "created_at": "2024-01-15T09:30:00Z",
                  "department_id": "department_id",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_id": "order_id",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = Case1(
            id: "_id",
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            billingReviewStatus: Optional(.notStarted),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            caseTag: Optional("case_tag"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            departmentId: Optional("department_id"),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderId: "order_id",
            orgId: "org_id",
            schemaVersion: 1,
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToCase1(
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
        )
        let response = try await client.operations.cases.getByOrderShortIdV1(
            orderShortId: "order_short_id",
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

    @Test func expandedListV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "case": {
                        "_id": "_id",
                        "created_at": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "org_id": "org_id",
                        "schema_version": 1
                      },
                      "coordinator_org_public_data": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "executor_org_public_data": [
                        {
                          "_id": "_id",
                          "org_id": "org_id",
                          "org_type": "provider",
                          "schema_version": 1
                        }
                      ],
                      "off_chrt_executor_orgs": [
                        {
                          "_id": "_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "email_address_primary": "email_address_primary",
                          "schema_version": 1
                        }
                      ],
                      "off_chrt_shipper_org": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "email_address_primary": "email_address_primary",
                        "schema_version": 1
                      },
                      "operations_tasks": [
                        {
                          "_id": "_id",
                          "description": "description",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "org_id": "org_id",
                          "schema_version": 1,
                          "task_type": "review_order_details",
                          "title": "title"
                        }
                      ],
                      "order": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1,
                        "short_id": "short_id"
                      },
                      "shipper_org_public_data": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "shipping_task_groups": [
                        {
                          "task_group": {
                            "_id": "_id",
                            "created_by_org_id": "created_by_org_id",
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "schema_version": 1,
                            "task_group_type": "chrt_ground_provider"
                          },
                          "tasks": [
                            {
                              "_id": "_id",
                              "created_by_org_id": "created_by_org_id",
                              "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                              "order_id": "order_id",
                              "order_short_id": "order_short_id",
                              "schema_version": 1,
                              "task_group_id": "task_group_id"
                            }
                          ]
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
        let expectedResponse = CasesExpandedListRes(
            items: [
                CasesExpandedListItem(
                    case: Case1(
                        id: "_id",
                        createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orgId: "org_id",
                        schemaVersion: 1
                    ),
                    coordinatorOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    )),
                    executorOrgPublicData: [
                        OrgPublicData1(
                            id: "_id",
                            orgId: "org_id",
                            orgType: .provider,
                            schemaVersion: 1
                        )
                    ],
                    offChrtExecutorOrgs: [
                        OffChrtProviderOrg1(
                            id: "_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            emailAddressPrimary: "email_address_primary",
                            schemaVersion: 1
                        )
                    ],
                    offChrtShipperOrg: Optional(OffChrtShipperOrg1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        emailAddressPrimary: "email_address_primary",
                        schemaVersion: 1
                    )),
                    operationsTasks: [
                        OperationsTask1(
                            id: "_id",
                            description: "description",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            orgId: "org_id",
                            schemaVersion: 1,
                            taskType: .reviewOrderDetails,
                            title: "title"
                        )
                    ],
                    order: Order1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1,
                        shortId: "short_id"
                    ),
                    shipperOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    )),
                    shippingTaskGroups: [
                        CasesExpandedListShippingTaskGroup(
                            taskGroup: TaskGroup1(
                                id: "_id",
                                createdByOrgId: "created_by_org_id",
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                schemaVersion: 1,
                                taskGroupType: .chrtGroundProvider
                            ),
                            tasks: [
                                Task1(
                                    id: "_id",
                                    createdByOrgId: "created_by_org_id",
                                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                    orderId: "order_id",
                                    orderShortId: "order_short_id",
                                    schemaVersion: 1,
                                    taskGroupId: "task_group_id"
                                )
                            ]
                        )
                    ]
                )
            ],
            totalCount: 1
        )
        let response = try await client.operations.cases.expandedListV1(
            filterCaseTag: "filter_case_tag",
            page: 1,
            pageSize: 1,
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
                      "_id": "_id",
                      "assigned_user_ids": [
                        "assigned_user_ids"
                      ],
                      "billing_review_status": "not_started",
                      "case_s3_object_metadata_ids": [
                        "case_s3_object_metadata_ids"
                      ],
                      "case_tag": "case_tag",
                      "created_at": "2024-01-15T09:30:00Z",
                      "department_id": "department_id",
                      "messages": [
                        {
                          "message": "message",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z",
                          "user_id": "user_id"
                        }
                      ],
                      "order_id": "order_id",
                      "org_id": "org_id",
                      "schema_version": 1,
                      "task_lists_to_apply_at_order_staging": [
                        {
                          "task_list_id": "task_list_id"
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
        let expectedResponse = CaseListRes(
            items: [
                Case1(
                    id: "_id",
                    assignedUserIds: Optional([
                        "assigned_user_ids"
                    ]),
                    billingReviewStatus: Optional(.notStarted),
                    caseS3ObjectMetadataIds: Optional([
                        "case_s3_object_metadata_ids"
                    ]),
                    caseTag: Optional("case_tag"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    departmentId: Optional("department_id"),
                    messages: Optional([
                        CaseMessage1(
                            message: "message",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            userId: "user_id"
                        )
                    ]),
                    orderId: "order_id",
                    orgId: "org_id",
                    schemaVersion: 1,
                    taskListsToApplyAtOrderStaging: Optional([
                        TaskListToApplyToCase1(
                            taskListId: "task_list_id"
                        )
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.operations.cases.listV1(
            sortBy: .createdAt,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterDepartmentId: [
                "filter_department_id"
            ],
            filterCaseTag: [
                "filter_case_tag"
            ],
            filterAssignedUserId: "filter_assigned_user_id",
            filterUnassigned: true,
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

    @Test func addTaskListToApplyAtOrderStagingV11() async throws -> Void {
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
        let response = try await client.operations.cases.addTaskListToApplyAtOrderStagingV1(
            caseId: "case_id",
            taskListId: "task_list_id",
            request: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeTaskListToApplyAtOrderStagingV11() async throws -> Void {
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
        let response = try await client.operations.cases.removeTaskListToApplyAtOrderStagingV1(
            caseId: "case_id",
            taskListId: "task_list_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "type": "case_tag",
                    "values": [
                      "values"
                    ]
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
            CaseTypeaheadResult(
                type: .caseTag,
                values: [
                    "values"
                ]
            )
        ]
        let response = try await client.operations.cases.typeaheadV1(
            query: "query",
            limit: 1,
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

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "assigned_user_ids": [
                    "assigned_user_ids"
                  ],
                  "billing_review_status": "not_started",
                  "case_s3_object_metadata_ids": [
                    "case_s3_object_metadata_ids"
                  ],
                  "case_tag": "case_tag",
                  "created_at": "2024-01-15T09:30:00Z",
                  "department_id": "department_id",
                  "messages": [
                    {
                      "id": "id",
                      "message": "message",
                      "org_id": "org_id",
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_id": "user_id"
                    }
                  ],
                  "order_id": "order_id",
                  "org_id": "org_id",
                  "schema_version": 1,
                  "task_lists_to_apply_at_order_staging": [
                    {
                      "initial_deadline_timestamp": "2024-01-15T09:30:00Z",
                      "task_list_id": "task_list_id"
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
        let expectedResponse = Case1(
            id: "_id",
            assignedUserIds: Optional([
                "assigned_user_ids"
            ]),
            billingReviewStatus: Optional(.notStarted),
            caseS3ObjectMetadataIds: Optional([
                "case_s3_object_metadata_ids"
            ]),
            caseTag: Optional("case_tag"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            departmentId: Optional("department_id"),
            messages: Optional([
                CaseMessage1(
                    id: Optional("id"),
                    message: "message",
                    orgId: "org_id",
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userId: "user_id"
                )
            ]),
            orderId: "order_id",
            orgId: "org_id",
            schemaVersion: 1,
            taskListsToApplyAtOrderStaging: Optional([
                TaskListToApplyToCase1(
                    initialDeadlineTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskListId: "task_list_id"
                )
            ])
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
}