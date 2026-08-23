import Foundation
import Testing
import Chrt

@Suite("OrderEventsClient Wire Tests") struct OrderEventsClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "action": "shipping.order.draft_started",
                      "actor": {},
                      "entities": [
                        {}
                      ],
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "org_public_data": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "schema_version": 1,
                      "timestamp": "2024-01-15T09:30:00Z",
                      "user_public_data": {
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1,
                        "user_id": "user_id"
                      }
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderEventListRes(
            items: [
                OrderEventExpanded1(
                    id: "_id",
                    action: OrderEventActionEnum1.shippingOrderDraftStarted,
                    actor: OrderEventActor1(

                    ),
                    entities: Optional([
                        OrderEventEntity1(

                        )
                    ]),
                    orderId: "order_id",
                    orderShortId: Optional("order_short_id"),
                    orgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    schemaVersion: 1,
                    timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    userPublicData: Optional(UserPublicData1(
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1,
                        userId: "user_id"
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orders.orderEvents.listV1(
            orderId: "order_id",
            sortBy: .timestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterAction: [
                .shippingOrderDraftStarted
            ],
            filterUserId: "filter_user_id",
            filterOrgId: "filter_org_id",
            filterTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "action": "shipping.order.draft_started",
                  "actor": {
                    "org_id": "org_id",
                    "system": "shipping_state_sync",
                    "user_id": "user_id"
                  },
                  "entities": [
                    {
                      "account": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "schema_version": 1
                      },
                      "cargo": {
                        "_id": "_id",
                        "cargo_type": "spare_parts",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1
                      },
                      "contact": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "name": "name",
                        "schema_version": 1
                      },
                      "modification": {
                        "key": "value"
                      },
                      "order": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "schema_version": 1,
                        "short_id": "short_id"
                      },
                      "task": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_id": "task_group_id"
                      },
                      "task_artifact": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_id": "task_group_id",
                        "task_id": "task_id",
                        "type": "image"
                      },
                      "task_artifact_s3_object_metadata": {
                        "_id": "_id",
                        "schema_version": 1,
                        "task_artifact_id": "task_artifact_id",
                        "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                        "uploaded_by_org_id": "uploaded_by_org_id",
                        "uploaded_by_user_id": "uploaded_by_user_id"
                      },
                      "task_group": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_type": "chrt_ground_provider"
                      },
                      "task_group_s3_object_metadata": {
                        "_id": "_id",
                        "schema_version": 1,
                        "task_group_id": "task_group_id",
                        "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                        "uploaded_by_org_id": "uploaded_by_org_id",
                        "uploaded_by_user_id": "uploaded_by_user_id"
                      }
                    }
                  ],
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "org_public_data": {
                    "_id": "_id",
                    "description": "description",
                    "email_address": "email_address",
                    "handle": "handle",
                    "industry": "industry",
                    "name": "name",
                    "org_id": "org_id",
                    "org_type": "provider",
                    "phone_number": "phone_number",
                    "schema_version": 1,
                    "street_address": {
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "id": 1,
                      "type": "Feature"
                    }
                  },
                  "schema_version": 1,
                  "timestamp": "2024-01-15T09:30:00Z",
                  "user_public_data": {
                    "_id": "_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "user_id": "user_id"
                  }
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderEventExpanded1(
            id: "_id",
            action: OrderEventActionEnum1.shippingOrderDraftStarted,
            actor: OrderEventActor1(
                orgId: Optional("org_id"),
                system: Optional(OrderEventSystemActorEnum1.shippingStateSync),
                userId: Optional("user_id")
            ),
            entities: Optional([
                OrderEventEntity1(
                    account: Optional(Account1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        schemaVersion: 1
                    )),
                    cargo: Optional(Cargo1(
                        id: "_id",
                        cargoType: CargoTypeEnum1.spareParts,
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1
                    )),
                    contact: Optional(Contact1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        name: "name",
                        schemaVersion: 1
                    )),
                    modification: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    order: Optional(Order1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        schemaVersion: 1,
                        shortId: "short_id"
                    )),
                    task: Optional(Task1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupId: "task_group_id"
                    )),
                    taskArtifact: Optional(TaskArtifact1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupId: "task_group_id",
                        taskId: "task_id",
                        type: TaskArtifactTypeEnum1.image
                    )),
                    taskArtifactS3ObjectMetadata: Optional(TaskArtifactS3ObjectMetadata1(
                        id: "_id",
                        schemaVersion: 1,
                        taskArtifactId: "task_artifact_id",
                        uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        uploadedByOrgId: "uploaded_by_org_id",
                        uploadedByUserId: "uploaded_by_user_id"
                    )),
                    taskGroup: Optional(TaskGroup1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupType: TaskGroupTypeEnum1.chrtGroundProvider
                    )),
                    taskGroupS3ObjectMetadata: Optional(TaskGroupS3ObjectMetadata1(
                        id: "_id",
                        schemaVersion: 1,
                        taskGroupId: "task_group_id",
                        uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        uploadedByOrgId: "uploaded_by_org_id",
                        uploadedByUserId: "uploaded_by_user_id"
                    ))
                )
            ]),
            orderId: "order_id",
            orderShortId: Optional("order_short_id"),
            orgPublicData: Optional(OrgPublicData1(
                id: "_id",
                description: Optional("description"),
                emailAddress: Optional("email_address"),
                handle: Optional("handle"),
                industry: Optional("industry"),
                name: "name",
                orgId: "org_id",
                orgType: OrgTypeEnum.provider,
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometriesItem.lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
                                                []
                                            )
                                        ],
                                        additionalProperties: [
                                            "type": JSONValue.string("LineString")
                                        ]
                                    )
                                )
                            ],
                            additionalProperties: [
                                "type": JSONValue.string("GeometryCollection")
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    )),
                    type: .feature
                ))
            )),
            schemaVersion: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            userPublicData: Optional(UserPublicData1(
                id: "_id",
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: 1,
                userId: "user_id"
            ))
        )
        let response = try await client.shipping.orders.orderEvents.getV1(
            orderEventId: "order_event_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}