import Foundation
import Testing
import Chrt

@Suite("TaskGroupsClient Wire Tests") struct TaskGroupsClientWireTests {
    @Test func getExpandedForCourierOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "courier_org_id": "courier_org_id",
                    "driver_id": "driver_id",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "task_group_type": "chrt_ground_courier",
                    "task_group_mileage": {
                      "tasks_mileage": 1.1,
                      "deadhead_mileage": 1.1
                    },
                    "flight_number": "flight_number",
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ]
                  },
                  "tasks_expanded": [
                    {
                      "task": {
                        "schema_version": 1,
                        "location": null,
                        "order_placer_comments": null,
                        "flight_number": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_group_id": "task_group_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "completed_by_org_id": null,
                        "completed_by_user_id": null,
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "staged_at_timestamp": null,
                        "completed_at_timestamp": null,
                        "exception_at_timestamp": null
                      },
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
                      ],
                      "task_artifacts": [
                        {
                          "schema_version": 1,
                          "type": "image",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "requested_by_org_id": null,
                          "requested_by_user_id": null,
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "shipper_contacts": [
                        {
                          "schema_version": 1,
                          "shipper_org_id": null,
                          "shipper_user_id": null,
                          "off_chrt_shipper_org_id": null,
                          "company_name": null,
                          "industry": null,
                          "street_address": null,
                          "contact_first_name": null,
                          "contact_last_name": null,
                          "phone_number_primary": null,
                          "phone_number_secondary": null,
                          "email_address_primary": null,
                          "email_address_secondary": null,
                          "job_title": null,
                          "notes": null,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
                  ],
                  "driver": {
                    "schema_version": 1,
                    "active": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "status": "not_assigned",
                    "last_seen_at_location": {
                      "type": "Feature",
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
                      "properties": {
                        "address": null,
                        "name": null
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "_id": "_id",
                    "org_id": "org_id",
                    "user_id": "user_id"
                  },
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpanded(
            taskGroup: TaskGroup1(
                schemaVersion: 1,
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                taskIds: Optional([
                    "task_ids"
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                courierOrgId: Optional("courier_org_id"),
                driverId: Optional("driver_id"),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                taskGroupType: .chrtGroundCourier,
                taskGroupMileage: Optional(TaskGroupMileage1(
                    tasksMileage: 1.1,
                    deadheadMileage: 1.1
                )),
                flightNumber: Optional("flight_number"),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ])
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    task: Task1(
                        schemaVersion: 1,
                        location: Optional(nil),
                        orderPlacerComments: Optional(nil),
                        flightNumber: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskGroupId: "task_group_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        completedByOrgId: Optional(nil),
                        completedByUserId: Optional(nil),
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        stagedAtTimestamp: Optional(nil),
                        completedAtTimestamp: Optional(nil),
                        exceptionAtTimestamp: Optional(nil)
                    ),
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
                    ]),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            schemaVersion: 1,
                            type: .image,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            requestedByOrgId: Optional(nil),
                            requestedByUserId: Optional(nil),
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    shipperContacts: Optional([
                        ShipperContact1(
                            schemaVersion: 1,
                            shipperOrgId: Optional(nil),
                            shipperUserId: Optional(nil),
                            offChrtShipperOrgId: Optional(nil),
                            companyName: Optional(nil),
                            industry: Optional(nil),
                            streetAddress: Optional(nil),
                            contactFirstName: Optional(nil),
                            contactLastName: Optional(nil),
                            phoneNumberPrimary: Optional(nil),
                            phoneNumberSecondary: Optional(nil),
                            emailAddressPrimary: Optional(nil),
                            emailAddressSecondary: Optional(nil),
                            jobTitle: Optional(nil),
                            notes: Optional(nil),
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
            ]),
            driver: Optional(Driver1(
                schemaVersion: 1,
                active: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                vehicleTypes: Optional([
                    .sedan
                ]),
                status: Optional(.notAssigned),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                id: "_id",
                orgId: "org_id",
                userId: "user_id"
            )),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.taskGroups.getExpandedForCourierOperatorsV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getExpandedForCourierOperatorsByOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "task_group": {
                      "schema_version": 1,
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "task_ids": [
                        "task_ids"
                      ],
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "courier_org_id": "courier_org_id",
                      "driver_id": "driver_id",
                      "task_group_s3_object_metadata_ids": [
                        "task_group_s3_object_metadata_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_cancelled": true,
                      "task_group_type": "chrt_ground_courier",
                      "task_group_mileage": {
                        "tasks_mileage": 1.1,
                        "deadhead_mileage": 1.1
                      },
                      "flight_number": "flight_number",
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ]
                    },
                    "tasks_expanded": [
                      {
                        "task": {
                          "schema_version": 1,
                          "location": null,
                          "order_placer_comments": null,
                          "flight_number": null,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null
                        },
                        "cargos": null,
                        "task_artifacts": null,
                        "shipper_contacts": null
                      }
                    ],
                    "driver": {
                      "schema_version": 1,
                      "active": true,
                      "email_address_primary": "email_address_primary",
                      "email_address_secondary": "email_address_secondary",
                      "phone_number_primary": "phone_number_primary",
                      "phone_number_secondary": "phone_number_secondary",
                      "first_name": "first_name",
                      "last_name": "last_name",
                      "vehicle_types": [
                        "sedan"
                      ],
                      "status": "not_assigned",
                      "last_seen_at_location": {
                        "type": "Feature",
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
                        "properties": null
                      },
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "_id": "_id",
                      "org_id": "org_id",
                      "user_id": "user_id"
                    },
                    "courier_org_company_name": "courier_org_company_name",
                    "courier_org_handle": "courier_org_handle",
                    "forwarder_org_company_name": "forwarder_org_company_name",
                    "forwarder_org_handle": "forwarder_org_handle",
                    "shipper_org_company_name": "shipper_org_company_name",
                    "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
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
            TaskGroupExpanded(
                taskGroup: TaskGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    taskIds: Optional([
                        "task_ids"
                    ]),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    courierOrgId: Optional("courier_org_id"),
                    driverId: Optional("driver_id"),
                    taskGroupS3ObjectMetadataIds: Optional([
                        "task_group_s3_object_metadata_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderCancelled: Optional(true),
                    taskGroupType: .chrtGroundCourier,
                    taskGroupMileage: Optional(TaskGroupMileage1(
                        tasksMileage: 1.1,
                        deadheadMileage: 1.1
                    )),
                    flightNumber: Optional("flight_number"),
                    messages: Optional([
                        TaskGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ])
                ),
                tasksExpanded: Optional([
                    TaskExpanded(
                        task: Task1(
                            schemaVersion: 1,
                            location: Optional(nil),
                            orderPlacerComments: Optional(nil),
                            flightNumber: Optional(nil),
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        ),
                        cargos: Optional(nil),
                        taskArtifacts: Optional(nil),
                        shipperContacts: Optional(nil)
                    )
                ]),
                driver: Optional(Driver1(
                    schemaVersion: 1,
                    active: Optional(true),
                    emailAddressPrimary: Optional("email_address_primary"),
                    emailAddressSecondary: Optional("email_address_secondary"),
                    phoneNumberPrimary: Optional("phone_number_primary"),
                    phoneNumberSecondary: Optional("phone_number_secondary"),
                    firstName: Optional("first_name"),
                    lastName: Optional("last_name"),
                    vehicleTypes: Optional([
                        .sedan
                    ]),
                    status: Optional(.notAssigned),
                    lastSeenAtLocation: Optional(LocationFeature(
                        type: .feature,
                        geometry: .geometryCollection(
                            .init(
                                geometries: [
                                    .lineString(
                                        .init(
                                            coordinates: [
                                                LineStringCoordinatesItem.position2D(
                                                    []
                                                )
                                            ]
                                        )
                                    )
                                ]
                            )
                        ),
                        properties: Optional(nil)
                    )),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    id: "_id",
                    orgId: "org_id",
                    userId: "user_id"
                )),
                courierOrgCompanyName: Optional("courier_org_company_name"),
                courierOrgHandle: Optional("courier_org_handle"),
                forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                forwarderOrgHandle: Optional("forwarder_org_handle"),
                shipperOrgCompanyName: Optional("shipper_org_company_name"),
                offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
            )
        ]
        let response = try await client.taskGroups.getExpandedForCourierOperatorsByOrderV1(
            orderIdOrShortId: "order_id_or_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getExpandedForCourierDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "courier_org_id": "courier_org_id",
                    "driver_id": "driver_id",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "task_group_type": "chrt_ground_courier",
                    "task_group_mileage": {
                      "tasks_mileage": 1.1,
                      "deadhead_mileage": 1.1
                    },
                    "flight_number": "flight_number",
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ]
                  },
                  "tasks_expanded": [
                    {
                      "task": {
                        "schema_version": 1,
                        "location": null,
                        "order_placer_comments": null,
                        "flight_number": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_group_id": "task_group_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "completed_by_org_id": null,
                        "completed_by_user_id": null,
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "staged_at_timestamp": null,
                        "completed_at_timestamp": null,
                        "exception_at_timestamp": null
                      },
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
                      ],
                      "task_artifacts": [
                        {
                          "schema_version": 1,
                          "type": "image",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "requested_by_org_id": null,
                          "requested_by_user_id": null,
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "shipper_contacts": [
                        {
                          "schema_version": 1,
                          "shipper_org_id": null,
                          "shipper_user_id": null,
                          "off_chrt_shipper_org_id": null,
                          "company_name": null,
                          "industry": null,
                          "street_address": null,
                          "contact_first_name": null,
                          "contact_last_name": null,
                          "phone_number_primary": null,
                          "phone_number_secondary": null,
                          "email_address_primary": null,
                          "email_address_secondary": null,
                          "job_title": null,
                          "notes": null,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
                  ],
                  "driver": {
                    "schema_version": 1,
                    "active": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "status": "not_assigned",
                    "last_seen_at_location": {
                      "type": "Feature",
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
                      "properties": {
                        "address": null,
                        "name": null
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "_id": "_id",
                    "org_id": "org_id",
                    "user_id": "user_id"
                  },
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpanded(
            taskGroup: TaskGroup1(
                schemaVersion: 1,
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                taskIds: Optional([
                    "task_ids"
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                courierOrgId: Optional("courier_org_id"),
                driverId: Optional("driver_id"),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                taskGroupType: .chrtGroundCourier,
                taskGroupMileage: Optional(TaskGroupMileage1(
                    tasksMileage: 1.1,
                    deadheadMileage: 1.1
                )),
                flightNumber: Optional("flight_number"),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ])
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    task: Task1(
                        schemaVersion: 1,
                        location: Optional(nil),
                        orderPlacerComments: Optional(nil),
                        flightNumber: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskGroupId: "task_group_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        completedByOrgId: Optional(nil),
                        completedByUserId: Optional(nil),
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        stagedAtTimestamp: Optional(nil),
                        completedAtTimestamp: Optional(nil),
                        exceptionAtTimestamp: Optional(nil)
                    ),
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
                    ]),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            schemaVersion: 1,
                            type: .image,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            requestedByOrgId: Optional(nil),
                            requestedByUserId: Optional(nil),
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    shipperContacts: Optional([
                        ShipperContact1(
                            schemaVersion: 1,
                            shipperOrgId: Optional(nil),
                            shipperUserId: Optional(nil),
                            offChrtShipperOrgId: Optional(nil),
                            companyName: Optional(nil),
                            industry: Optional(nil),
                            streetAddress: Optional(nil),
                            contactFirstName: Optional(nil),
                            contactLastName: Optional(nil),
                            phoneNumberPrimary: Optional(nil),
                            phoneNumberSecondary: Optional(nil),
                            emailAddressPrimary: Optional(nil),
                            emailAddressSecondary: Optional(nil),
                            jobTitle: Optional(nil),
                            notes: Optional(nil),
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
            ]),
            driver: Optional(Driver1(
                schemaVersion: 1,
                active: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                vehicleTypes: Optional([
                    .sedan
                ]),
                status: Optional(.notAssigned),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                id: "_id",
                orgId: "org_id",
                userId: "user_id"
            )),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.taskGroups.getExpandedForCourierDriverV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getExpandedForCourierDriverByOrderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "task_group": {
                      "schema_version": 1,
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "task_ids": [
                        "task_ids"
                      ],
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "courier_org_id": "courier_org_id",
                      "driver_id": "driver_id",
                      "task_group_s3_object_metadata_ids": [
                        "task_group_s3_object_metadata_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_cancelled": true,
                      "task_group_type": "chrt_ground_courier",
                      "task_group_mileage": {
                        "tasks_mileage": 1.1,
                        "deadhead_mileage": 1.1
                      },
                      "flight_number": "flight_number",
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ]
                    },
                    "tasks_expanded": [
                      {
                        "task": {
                          "schema_version": 1,
                          "location": null,
                          "order_placer_comments": null,
                          "flight_number": null,
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null
                        },
                        "cargos": null,
                        "task_artifacts": null,
                        "shipper_contacts": null
                      }
                    ],
                    "driver": {
                      "schema_version": 1,
                      "active": true,
                      "email_address_primary": "email_address_primary",
                      "email_address_secondary": "email_address_secondary",
                      "phone_number_primary": "phone_number_primary",
                      "phone_number_secondary": "phone_number_secondary",
                      "first_name": "first_name",
                      "last_name": "last_name",
                      "vehicle_types": [
                        "sedan"
                      ],
                      "status": "not_assigned",
                      "last_seen_at_location": {
                        "type": "Feature",
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
                        "properties": null
                      },
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "_id": "_id",
                      "org_id": "org_id",
                      "user_id": "user_id"
                    },
                    "courier_org_company_name": "courier_org_company_name",
                    "courier_org_handle": "courier_org_handle",
                    "forwarder_org_company_name": "forwarder_org_company_name",
                    "forwarder_org_handle": "forwarder_org_handle",
                    "shipper_org_company_name": "shipper_org_company_name",
                    "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
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
            TaskGroupExpanded(
                taskGroup: TaskGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    taskIds: Optional([
                        "task_ids"
                    ]),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    courierOrgId: Optional("courier_org_id"),
                    driverId: Optional("driver_id"),
                    taskGroupS3ObjectMetadataIds: Optional([
                        "task_group_s3_object_metadata_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderCancelled: Optional(true),
                    taskGroupType: .chrtGroundCourier,
                    taskGroupMileage: Optional(TaskGroupMileage1(
                        tasksMileage: 1.1,
                        deadheadMileage: 1.1
                    )),
                    flightNumber: Optional("flight_number"),
                    messages: Optional([
                        TaskGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ])
                ),
                tasksExpanded: Optional([
                    TaskExpanded(
                        task: Task1(
                            schemaVersion: 1,
                            location: Optional(nil),
                            orderPlacerComments: Optional(nil),
                            flightNumber: Optional(nil),
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        ),
                        cargos: Optional(nil),
                        taskArtifacts: Optional(nil),
                        shipperContacts: Optional(nil)
                    )
                ]),
                driver: Optional(Driver1(
                    schemaVersion: 1,
                    active: Optional(true),
                    emailAddressPrimary: Optional("email_address_primary"),
                    emailAddressSecondary: Optional("email_address_secondary"),
                    phoneNumberPrimary: Optional("phone_number_primary"),
                    phoneNumberSecondary: Optional("phone_number_secondary"),
                    firstName: Optional("first_name"),
                    lastName: Optional("last_name"),
                    vehicleTypes: Optional([
                        .sedan
                    ]),
                    status: Optional(.notAssigned),
                    lastSeenAtLocation: Optional(LocationFeature(
                        type: .feature,
                        geometry: .geometryCollection(
                            .init(
                                geometries: [
                                    .lineString(
                                        .init(
                                            coordinates: [
                                                LineStringCoordinatesItem.position2D(
                                                    []
                                                )
                                            ]
                                        )
                                    )
                                ]
                            )
                        ),
                        properties: Optional(nil)
                    )),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    id: "_id",
                    orgId: "org_id",
                    userId: "user_id"
                )),
                courierOrgCompanyName: Optional("courier_org_company_name"),
                courierOrgHandle: Optional("courier_org_handle"),
                forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                forwarderOrgHandle: Optional("forwarder_org_handle"),
                shipperOrgCompanyName: Optional("shipper_org_company_name"),
                offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
            )
        ]
        let response = try await client.taskGroups.getExpandedForCourierDriverByOrderV1(
            orderIdOrShortId: "order_id_or_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getExpandedForShipperOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "courier_org_id": "courier_org_id",
                    "driver_id": "driver_id",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "task_group_type": "chrt_ground_courier",
                    "task_group_mileage": {
                      "tasks_mileage": 1.1,
                      "deadhead_mileage": 1.1
                    },
                    "flight_number": "flight_number",
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ]
                  },
                  "tasks_expanded": [
                    {
                      "task": {
                        "schema_version": 1,
                        "location": null,
                        "order_placer_comments": null,
                        "flight_number": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_group_id": "task_group_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "completed_by_org_id": null,
                        "completed_by_user_id": null,
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "staged_at_timestamp": null,
                        "completed_at_timestamp": null,
                        "exception_at_timestamp": null
                      },
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
                      ],
                      "task_artifacts": [
                        {
                          "schema_version": 1,
                          "type": "image",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "requested_by_org_id": null,
                          "requested_by_user_id": null,
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "shipper_contacts": [
                        {
                          "schema_version": 1,
                          "shipper_org_id": null,
                          "shipper_user_id": null,
                          "off_chrt_shipper_org_id": null,
                          "company_name": null,
                          "industry": null,
                          "street_address": null,
                          "contact_first_name": null,
                          "contact_last_name": null,
                          "phone_number_primary": null,
                          "phone_number_secondary": null,
                          "email_address_primary": null,
                          "email_address_secondary": null,
                          "job_title": null,
                          "notes": null,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
                  ],
                  "driver": {
                    "schema_version": 1,
                    "active": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "status": "not_assigned",
                    "last_seen_at_location": {
                      "type": "Feature",
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
                      "properties": {
                        "address": null,
                        "name": null
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "_id": "_id",
                    "org_id": "org_id",
                    "user_id": "user_id"
                  },
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpanded(
            taskGroup: TaskGroup1(
                schemaVersion: 1,
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                taskIds: Optional([
                    "task_ids"
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                courierOrgId: Optional("courier_org_id"),
                driverId: Optional("driver_id"),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                taskGroupType: .chrtGroundCourier,
                taskGroupMileage: Optional(TaskGroupMileage1(
                    tasksMileage: 1.1,
                    deadheadMileage: 1.1
                )),
                flightNumber: Optional("flight_number"),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ])
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    task: Task1(
                        schemaVersion: 1,
                        location: Optional(nil),
                        orderPlacerComments: Optional(nil),
                        flightNumber: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskGroupId: "task_group_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        completedByOrgId: Optional(nil),
                        completedByUserId: Optional(nil),
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        stagedAtTimestamp: Optional(nil),
                        completedAtTimestamp: Optional(nil),
                        exceptionAtTimestamp: Optional(nil)
                    ),
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
                    ]),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            schemaVersion: 1,
                            type: .image,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            requestedByOrgId: Optional(nil),
                            requestedByUserId: Optional(nil),
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    shipperContacts: Optional([
                        ShipperContact1(
                            schemaVersion: 1,
                            shipperOrgId: Optional(nil),
                            shipperUserId: Optional(nil),
                            offChrtShipperOrgId: Optional(nil),
                            companyName: Optional(nil),
                            industry: Optional(nil),
                            streetAddress: Optional(nil),
                            contactFirstName: Optional(nil),
                            contactLastName: Optional(nil),
                            phoneNumberPrimary: Optional(nil),
                            phoneNumberSecondary: Optional(nil),
                            emailAddressPrimary: Optional(nil),
                            emailAddressSecondary: Optional(nil),
                            jobTitle: Optional(nil),
                            notes: Optional(nil),
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
            ]),
            driver: Optional(Driver1(
                schemaVersion: 1,
                active: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                vehicleTypes: Optional([
                    .sedan
                ]),
                status: Optional(.notAssigned),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                id: "_id",
                orgId: "org_id",
                userId: "user_id"
            )),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.taskGroups.getExpandedForShipperOperatorsV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getExpandedForForwarderOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_group": {
                    "schema_version": 1,
                    "_id": "_id",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "task_ids": [
                      "task_ids"
                    ],
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "courier_org_id": "courier_org_id",
                    "driver_id": "driver_id",
                    "task_group_s3_object_metadata_ids": [
                      "task_group_s3_object_metadata_ids"
                    ],
                    "status": "draft",
                    "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                    "staged_at_timestamp": "2024-01-15T09:30:00Z",
                    "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                    "completed_at_timestamp": "2024-01-15T09:30:00Z",
                    "exception_at_timestamp": "2024-01-15T09:30:00Z",
                    "order_cancelled": true,
                    "task_group_type": "chrt_ground_courier",
                    "task_group_mileage": {
                      "tasks_mileage": 1.1,
                      "deadhead_mileage": 1.1
                    },
                    "flight_number": "flight_number",
                    "messages": [
                      {
                        "message": "message",
                        "user_id": "user_id",
                        "org_id": "org_id",
                        "timestamp": "2024-01-15T09:30:00Z"
                      }
                    ]
                  },
                  "tasks_expanded": [
                    {
                      "task": {
                        "schema_version": 1,
                        "location": null,
                        "order_placer_comments": null,
                        "flight_number": null,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_group_id": "task_group_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "completed_by_org_id": null,
                        "completed_by_user_id": null,
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "staged_at_timestamp": null,
                        "completed_at_timestamp": null,
                        "exception_at_timestamp": null
                      },
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
                      ],
                      "task_artifacts": [
                        {
                          "schema_version": 1,
                          "type": "image",
                          "_id": "_id",
                          "order_id": "order_id",
                          "order_short_id": "order_short_id",
                          "task_group_id": "task_group_id",
                          "task_id": "task_id",
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "requested_by_org_id": null,
                          "requested_by_user_id": null,
                          "completed_by_org_id": null,
                          "completed_by_user_id": null,
                          "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                          "staged_at_timestamp": null,
                          "completed_at_timestamp": null,
                          "exception_at_timestamp": null
                        }
                      ],
                      "shipper_contacts": [
                        {
                          "schema_version": 1,
                          "shipper_org_id": null,
                          "shipper_user_id": null,
                          "off_chrt_shipper_org_id": null,
                          "company_name": null,
                          "industry": null,
                          "street_address": null,
                          "contact_first_name": null,
                          "contact_last_name": null,
                          "phone_number_primary": null,
                          "phone_number_secondary": null,
                          "email_address_primary": null,
                          "email_address_secondary": null,
                          "job_title": null,
                          "notes": null,
                          "created_by_org_id": "created_by_org_id",
                          "created_by_user_id": "created_by_user_id",
                          "_id": "_id"
                        }
                      ]
                    }
                  ],
                  "driver": {
                    "schema_version": 1,
                    "active": true,
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "first_name": "first_name",
                    "last_name": "last_name",
                    "vehicle_types": [
                      "sedan"
                    ],
                    "status": "not_assigned",
                    "last_seen_at_location": {
                      "type": "Feature",
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
                      "properties": {
                        "address": null,
                        "name": null
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "_id": "_id",
                    "org_id": "org_id",
                    "user_id": "user_id"
                  },
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "forwarder_org_company_name": "forwarder_org_company_name",
                  "forwarder_org_handle": "forwarder_org_handle",
                  "shipper_org_company_name": "shipper_org_company_name",
                  "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpanded(
            taskGroup: TaskGroup1(
                schemaVersion: 1,
                id: "_id",
                orderId: "order_id",
                orderShortId: "order_short_id",
                taskIds: Optional([
                    "task_ids"
                ]),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                courierOrgId: Optional("courier_org_id"),
                driverId: Optional("driver_id"),
                taskGroupS3ObjectMetadataIds: Optional([
                    "task_group_s3_object_metadata_ids"
                ]),
                status: Optional(.draft),
                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orderCancelled: Optional(true),
                taskGroupType: .chrtGroundCourier,
                taskGroupMileage: Optional(TaskGroupMileage1(
                    tasksMileage: 1.1,
                    deadheadMileage: 1.1
                )),
                flightNumber: Optional("flight_number"),
                messages: Optional([
                    TaskGroupMessage1(
                        message: "message",
                        userId: "user_id",
                        orgId: "org_id",
                        timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    )
                ])
            ),
            tasksExpanded: Optional([
                TaskExpanded(
                    task: Task1(
                        schemaVersion: 1,
                        location: Optional(nil),
                        orderPlacerComments: Optional(nil),
                        flightNumber: Optional(nil),
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskGroupId: "task_group_id",
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        completedByOrgId: Optional(nil),
                        completedByUserId: Optional(nil),
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        stagedAtTimestamp: Optional(nil),
                        completedAtTimestamp: Optional(nil),
                        exceptionAtTimestamp: Optional(nil)
                    ),
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
                    ]),
                    taskArtifacts: Optional([
                        TaskArtifact1(
                            schemaVersion: 1,
                            type: .image,
                            id: "_id",
                            orderId: "order_id",
                            orderShortId: "order_short_id",
                            taskGroupId: "task_group_id",
                            taskId: "task_id",
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            requestedByOrgId: Optional(nil),
                            requestedByUserId: Optional(nil),
                            completedByOrgId: Optional(nil),
                            completedByUserId: Optional(nil),
                            draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            stagedAtTimestamp: Optional(nil),
                            completedAtTimestamp: Optional(nil),
                            exceptionAtTimestamp: Optional(nil)
                        )
                    ]),
                    shipperContacts: Optional([
                        ShipperContact1(
                            schemaVersion: 1,
                            shipperOrgId: Optional(nil),
                            shipperUserId: Optional(nil),
                            offChrtShipperOrgId: Optional(nil),
                            companyName: Optional(nil),
                            industry: Optional(nil),
                            streetAddress: Optional(nil),
                            contactFirstName: Optional(nil),
                            contactLastName: Optional(nil),
                            phoneNumberPrimary: Optional(nil),
                            phoneNumberSecondary: Optional(nil),
                            emailAddressPrimary: Optional(nil),
                            emailAddressSecondary: Optional(nil),
                            jobTitle: Optional(nil),
                            notes: Optional(nil),
                            createdByOrgId: "created_by_org_id",
                            createdByUserId: "created_by_user_id",
                            id: "_id"
                        )
                    ])
                )
            ]),
            driver: Optional(Driver1(
                schemaVersion: 1,
                active: Optional(true),
                emailAddressPrimary: Optional("email_address_primary"),
                emailAddressSecondary: Optional("email_address_secondary"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                firstName: Optional("first_name"),
                lastName: Optional("last_name"),
                vehicleTypes: Optional([
                    .sedan
                ]),
                status: Optional(.notAssigned),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                id: "_id",
                orgId: "org_id",
                userId: "user_id"
            )),
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
            forwarderOrgHandle: Optional("forwarder_org_handle"),
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
        )
        let response = try await client.taskGroups.getExpandedForForwarderOperatorsV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postExpandedListForCourierOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
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
                      "tasks_expanded": [
                        {
                          "task": {
                            "schema_version": 1,
                            "location": null,
                            "order_placer_comments": null,
                            "flight_number": null,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "task_group_id": "task_group_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "completed_by_org_id": null,
                            "completed_by_user_id": null,
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "staged_at_timestamp": null,
                            "completed_at_timestamp": null,
                            "exception_at_timestamp": null
                          },
                          "cargos": null,
                          "task_artifacts": null,
                          "shipper_contacts": null
                        }
                      ],
                      "driver": {
                        "schema_version": 1,
                        "active": null,
                        "email_address_primary": null,
                        "email_address_secondary": null,
                        "phone_number_primary": null,
                        "phone_number_secondary": null,
                        "first_name": null,
                        "last_name": null,
                        "last_seen_at_location": null,
                        "last_seen_at_timestamp": null,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle",
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
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
        let expectedResponse = TaskGroupExpandedListRes(
            taskGroupsExpanded: [
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
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                location: Optional(nil),
                                orderPlacerComments: Optional(nil),
                                flightNumber: Optional(nil),
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                taskGroupId: "task_group_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                completedByOrgId: Optional(nil),
                                completedByUserId: Optional(nil),
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                stagedAtTimestamp: Optional(nil),
                                completedAtTimestamp: Optional(nil),
                                exceptionAtTimestamp: Optional(nil)
                            ),
                            cargos: Optional(nil),
                            taskArtifacts: Optional(nil),
                            shipperContacts: Optional(nil)
                        )
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        active: Optional(nil),
                        emailAddressPrimary: Optional(nil),
                        emailAddressSecondary: Optional(nil),
                        phoneNumberPrimary: Optional(nil),
                        phoneNumberSecondary: Optional(nil),
                        firstName: Optional(nil),
                        lastName: Optional(nil),
                        lastSeenAtLocation: Optional(nil),
                        lastSeenAtTimestamp: Optional(nil),
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle"),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.taskGroups.postExpandedListForCourierOperatorsV1(
            request: TaskGroupExpandedListReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postExpandedListForCourierDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
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
                      "tasks_expanded": [
                        {
                          "task": {
                            "schema_version": 1,
                            "location": null,
                            "order_placer_comments": null,
                            "flight_number": null,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "task_group_id": "task_group_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "completed_by_org_id": null,
                            "completed_by_user_id": null,
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "staged_at_timestamp": null,
                            "completed_at_timestamp": null,
                            "exception_at_timestamp": null
                          },
                          "cargos": null,
                          "task_artifacts": null,
                          "shipper_contacts": null
                        }
                      ],
                      "driver": {
                        "schema_version": 1,
                        "active": null,
                        "email_address_primary": null,
                        "email_address_secondary": null,
                        "phone_number_primary": null,
                        "phone_number_secondary": null,
                        "first_name": null,
                        "last_name": null,
                        "last_seen_at_location": null,
                        "last_seen_at_timestamp": null,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle",
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
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
        let expectedResponse = TaskGroupExpandedListRes(
            taskGroupsExpanded: [
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
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                location: Optional(nil),
                                orderPlacerComments: Optional(nil),
                                flightNumber: Optional(nil),
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                taskGroupId: "task_group_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                completedByOrgId: Optional(nil),
                                completedByUserId: Optional(nil),
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                stagedAtTimestamp: Optional(nil),
                                completedAtTimestamp: Optional(nil),
                                exceptionAtTimestamp: Optional(nil)
                            ),
                            cargos: Optional(nil),
                            taskArtifacts: Optional(nil),
                            shipperContacts: Optional(nil)
                        )
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        active: Optional(nil),
                        emailAddressPrimary: Optional(nil),
                        emailAddressSecondary: Optional(nil),
                        phoneNumberPrimary: Optional(nil),
                        phoneNumberSecondary: Optional(nil),
                        firstName: Optional(nil),
                        lastName: Optional(nil),
                        lastSeenAtLocation: Optional(nil),
                        lastSeenAtTimestamp: Optional(nil),
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle"),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.taskGroups.postExpandedListForCourierDriverV1(
            request: TaskGroupExpandedListReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postExpandedListForForwarderOperatorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
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
                      "tasks_expanded": [
                        {
                          "task": {
                            "schema_version": 1,
                            "location": null,
                            "order_placer_comments": null,
                            "flight_number": null,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "task_group_id": "task_group_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "completed_by_org_id": null,
                            "completed_by_user_id": null,
                            "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                            "staged_at_timestamp": null,
                            "completed_at_timestamp": null,
                            "exception_at_timestamp": null
                          },
                          "cargos": null,
                          "task_artifacts": null,
                          "shipper_contacts": null
                        }
                      ],
                      "driver": {
                        "schema_version": 1,
                        "active": null,
                        "email_address_primary": null,
                        "email_address_secondary": null,
                        "phone_number_primary": null,
                        "phone_number_secondary": null,
                        "first_name": null,
                        "last_name": null,
                        "last_seen_at_location": null,
                        "last_seen_at_timestamp": null,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "courier_org_company_name": "courier_org_company_name",
                      "courier_org_handle": "courier_org_handle",
                      "forwarder_org_company_name": "forwarder_org_company_name",
                      "forwarder_org_handle": "forwarder_org_handle",
                      "shipper_org_company_name": "shipper_org_company_name",
                      "off_chrt_shipper_org_company_name": "off_chrt_shipper_org_company_name"
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
        let expectedResponse = TaskGroupExpandedListRes(
            taskGroupsExpanded: [
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
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                location: Optional(nil),
                                orderPlacerComments: Optional(nil),
                                flightNumber: Optional(nil),
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                taskGroupId: "task_group_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                completedByOrgId: Optional(nil),
                                completedByUserId: Optional(nil),
                                draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                stagedAtTimestamp: Optional(nil),
                                completedAtTimestamp: Optional(nil),
                                exceptionAtTimestamp: Optional(nil)
                            ),
                            cargos: Optional(nil),
                            taskArtifacts: Optional(nil),
                            shipperContacts: Optional(nil)
                        )
                    ]),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        active: Optional(nil),
                        emailAddressPrimary: Optional(nil),
                        emailAddressSecondary: Optional(nil),
                        phoneNumberPrimary: Optional(nil),
                        phoneNumberSecondary: Optional(nil),
                        firstName: Optional(nil),
                        lastName: Optional(nil),
                        lastSeenAtLocation: Optional(nil),
                        lastSeenAtTimestamp: Optional(nil),
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    courierOrgCompanyName: Optional("courier_org_company_name"),
                    courierOrgHandle: Optional("courier_org_handle"),
                    forwarderOrgCompanyName: Optional("forwarder_org_company_name"),
                    forwarderOrgHandle: Optional("forwarder_org_handle"),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    offChrtShipperOrgCompanyName: Optional("off_chrt_shipper_org_company_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.taskGroups.postExpandedListForForwarderOperatorsV1(
            request: TaskGroupExpandedListReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setTaskOrderingV11() async throws -> Void {
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
        let response = try await client.taskGroups.setTaskOrderingV1(
            taskGroupId: "task_group_id",
            request: .init(taskOrdering: [
                "task_ordering"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setFlightNumberV11() async throws -> Void {
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
        let response = try await client.taskGroups.setFlightNumberV1(
            taskGroupId: "task_group_id",
            request: .init(flightNumber: "flight_number"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateDriverV11() async throws -> Void {
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
        let response = try await client.taskGroups.updateDriverV1(
            taskGroupId: "task_group_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateCourierOrgV11() async throws -> Void {
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
        let response = try await client.taskGroups.updateCourierOrgV1(
            taskGroupId: "task_group_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func startV11() async throws -> Void {
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
        let response = try await client.taskGroups.startV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}