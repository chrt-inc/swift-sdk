import Foundation
import Testing
import Chrt

@Suite("TaskGroupsExpandedClient Wire Tests") struct TaskGroupsExpandedClientWireTests {
    @Test func forCourierAdministratorByIdV11() async throws -> Void {
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
                      "shipper_contact_info": [
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
                  "shipper_org_company_name": "shipper_org_company_name",
                  "shipper_org_handle": "shipper_org_handle",
                  "task_group_mileage": 1.1,
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
                  "courier_pay_driver_line_item_group": {
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
                        "comment": null,
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "uuid_str": "uuid_str"
                      }
                    ],
                    "rate_sheet_id": "rate_sheet_id",
                    "_id": "_id"
                  },
                  "courier_pay_driver_rate_sheet": {
                    "schema_version": 1,
                    "name": "name",
                    "cargo_types": [
                      "spare_parts"
                    ],
                    "vehicle_types": [
                      "sedan"
                    ],
                    "route_types": [
                      "routed"
                    ],
                    "driver_ids": [
                      "driver_ids"
                    ],
                    "courier_org_id": "courier_org_id",
                    "comments": "comments",
                    "base_mileage_distance_miles": 1.1,
                    "base_mileage_rate_usd_per_instance": 1.1,
                    "additional_mileage_rate_usd_per_mile": 1.1,
                    "long_distance_surcharge_miles_before_surcharge": 1.1,
                    "long_distance_surcharge_rate_usd_per_mile": 1.1,
                    "fuel_surcharge_rate_usd_per_mile": 1.1,
                    "wait_time_before_charge_minutes": 1.1,
                    "wait_time_rate_usd_per_minute": 1.1,
                    "extra_stop_rate_usd": 1.1,
                    "dangerous_goods_rate_usd_per_instance": 1.1,
                    "after_hours": 1.1,
                    "weekend": 1.1,
                    "holiday": 1.1,
                    "_id": "_id"
                  },
                  "courier_pay_driver_payout": {
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpandedForCourierAdministrator(
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
                    shipperContactInfo: Optional([
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
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            shipperOrgHandle: Optional("shipper_org_handle"),
            taskGroupMileage: Optional(1.1),
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
            courierPayDriverLineItemGroup: Optional(CourierPayDriverLineItemGroup1(
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
                        comment: Optional(nil),
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        uuidStr: "uuid_str"
                    )
                ],
                rateSheetId: "rate_sheet_id",
                id: "_id"
            )),
            courierPayDriverRateSheet: Optional(CourierPayDriverRateSheet1(
                schemaVersion: 1,
                name: Optional("name"),
                cargoTypes: Optional([
                    .spareParts
                ]),
                vehicleTypes: Optional([
                    .sedan
                ]),
                routeTypes: Optional([
                    .routed
                ]),
                driverIds: Optional([
                    "driver_ids"
                ]),
                courierOrgId: "courier_org_id",
                comments: Optional("comments"),
                baseMileageDistanceMiles: 1.1,
                baseMileageRateUsdPerInstance: 1.1,
                additionalMileageRateUsdPerMile: 1.1,
                longDistanceSurchargeMilesBeforeSurcharge: 1.1,
                longDistanceSurchargeRateUsdPerMile: 1.1,
                fuelSurchargeRateUsdPerMile: 1.1,
                waitTimeBeforeChargeMinutes: 1.1,
                waitTimeRateUsdPerMinute: 1.1,
                extraStopRateUsd: 1.1,
                dangerousGoodsRateUsdPerInstance: 1.1,
                afterHours: 1.1,
                weekend: 1.1,
                holiday: 1.1,
                id: "_id"
            )),
            courierPayDriverPayout: Optional(CourierPayDriverStatement1(
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
            ))
        )
        let response = try await client.taskGroups.expanded.forCourierAdministratorByIdV1(
            id: "id",
            request: TaskGroupExpandedForCourierAdministratorReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forCourierDriverByIdV11() async throws -> Void {
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
                      "shipper_contact_info": [
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
                  "shipper_org_company_name": "shipper_org_company_name",
                  "shipper_org_handle": "shipper_org_handle",
                  "task_group_mileage": 1.1,
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
                  "courier_pay_driver_line_item_group": {
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
                        "comment": null,
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "uuid_str": "uuid_str"
                      }
                    ],
                    "rate_sheet_id": "rate_sheet_id",
                    "_id": "_id"
                  },
                  "courier_pay_driver_rate_sheet": {
                    "schema_version": 1,
                    "name": "name",
                    "cargo_types": [
                      "spare_parts"
                    ],
                    "vehicle_types": [
                      "sedan"
                    ],
                    "route_types": [
                      "routed"
                    ],
                    "driver_ids": [
                      "driver_ids"
                    ],
                    "courier_org_id": "courier_org_id",
                    "comments": "comments",
                    "base_mileage_distance_miles": 1.1,
                    "base_mileage_rate_usd_per_instance": 1.1,
                    "additional_mileage_rate_usd_per_mile": 1.1,
                    "long_distance_surcharge_miles_before_surcharge": 1.1,
                    "long_distance_surcharge_rate_usd_per_mile": 1.1,
                    "fuel_surcharge_rate_usd_per_mile": 1.1,
                    "wait_time_before_charge_minutes": 1.1,
                    "wait_time_rate_usd_per_minute": 1.1,
                    "extra_stop_rate_usd": 1.1,
                    "dangerous_goods_rate_usd_per_instance": 1.1,
                    "after_hours": 1.1,
                    "weekend": 1.1,
                    "holiday": 1.1,
                    "_id": "_id"
                  },
                  "courier_pay_driver_payout": {
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
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpandedForCourierDriver(
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
                    shipperContactInfo: Optional([
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
            shipperOrgCompanyName: Optional("shipper_org_company_name"),
            shipperOrgHandle: Optional("shipper_org_handle"),
            taskGroupMileage: Optional(1.1),
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
            courierPayDriverLineItemGroup: Optional(CourierPayDriverLineItemGroup1(
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
                        comment: Optional(nil),
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        uuidStr: "uuid_str"
                    )
                ],
                rateSheetId: "rate_sheet_id",
                id: "_id"
            )),
            courierPayDriverRateSheet: Optional(CourierPayDriverRateSheet1(
                schemaVersion: 1,
                name: Optional("name"),
                cargoTypes: Optional([
                    .spareParts
                ]),
                vehicleTypes: Optional([
                    .sedan
                ]),
                routeTypes: Optional([
                    .routed
                ]),
                driverIds: Optional([
                    "driver_ids"
                ]),
                courierOrgId: "courier_org_id",
                comments: Optional("comments"),
                baseMileageDistanceMiles: 1.1,
                baseMileageRateUsdPerInstance: 1.1,
                additionalMileageRateUsdPerMile: 1.1,
                longDistanceSurchargeMilesBeforeSurcharge: 1.1,
                longDistanceSurchargeRateUsdPerMile: 1.1,
                fuelSurchargeRateUsdPerMile: 1.1,
                waitTimeBeforeChargeMinutes: 1.1,
                waitTimeRateUsdPerMinute: 1.1,
                extraStopRateUsd: 1.1,
                dangerousGoodsRateUsdPerInstance: 1.1,
                afterHours: 1.1,
                weekend: 1.1,
                holiday: 1.1,
                id: "_id"
            )),
            courierPayDriverPayout: Optional(CourierPayDriverStatement1(
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
            ))
        )
        let response = try await client.taskGroups.expanded.forCourierDriverByIdV1(
            id: "id",
            request: TaskGroupExpandedForCourierDriverReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func forShipperByIdV11() async throws -> Void {
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
                      "shipper_contact_info": [
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
                  "courier_org_company_name": "courier_org_company_name",
                  "courier_org_handle": "courier_org_handle",
                  "task_group_mileage": 1.1,
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
                  "shipper_pay_courier_line_item_groups": [
                    {
                      "schema_version": 1,
                      "task_group_id": "task_group_id",
                      "courier_org_id": "courier_org_id",
                      "shipper_org_id": "shipper_org_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "order_cancelled": true,
                      "rate_sheet_id": "rate_sheet_id",
                      "line_items": [
                        {
                          "schema_version": 1,
                          "item": "base_rate",
                          "quantity": 1.1,
                          "rate": 1.1,
                          "comment": null,
                          "created_at_timestamp": "2024-01-15T09:30:00Z",
                          "uuid_str": "uuid_str"
                        }
                      ],
                      "_id": "_id"
                    }
                  ],
                  "shipper_pay_courier_rate_sheet": {
                    "schema_version": 1,
                    "name": "name",
                    "cargo_types": [
                      "spare_parts"
                    ],
                    "vehicle_types": [
                      "sedan"
                    ],
                    "route_types": [
                      "routed"
                    ],
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "comments": "comments",
                    "base_mileage_distance_miles": 1.1,
                    "base_mileage_rate_usd_per_instance": 1.1,
                    "additional_mileage_rate_usd_per_mile": 1.1,
                    "long_distance_surcharge_miles_before_surcharge": 1.1,
                    "long_distance_surcharge_rate_usd_per_mile": 1.1,
                    "fuel_surcharge_rate_usd_per_mile": 1.1,
                    "wait_time_before_charge_minutes": 1.1,
                    "wait_time_rate_usd_per_minute": 1.1,
                    "extra_stop_rate_usd": 1.1,
                    "dangerous_goods_rate_usd_per_instance": 1.1,
                    "after_hours": 1.1,
                    "weekend": 1.1,
                    "holiday": 1.1,
                    "courier_org_id": "courier_org_id",
                    "_id": "_id"
                  },
                  "shipper_pay_courier_payment": {
                    "schema_version": 1,
                    "shipper_pay_courier_line_item_group_ids": [
                      "shipper_pay_courier_line_item_group_ids"
                    ],
                    "task_group_ids": [
                      "task_group_ids"
                    ],
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "shipper_org_id": "shipper_org_id",
                    "courier_org_id": "courier_org_id",
                    "shipper_customer_id_for_courier_stripe_connect_account": "shipper_customer_id_for_courier_stripe_connect_account",
                    "stripe_invoice_id": "stripe_invoice_id",
                    "stripe_invoice_url": "stripe_invoice_url",
                    "stripe_invoice_created_timestamp": "2024-01-15T09:30:00Z",
                    "stripe_invoice_created_by_user_id": "stripe_invoice_created_by_user_id",
                    "statement_amount": 1.1,
                    "stripe_invoice_status": "invoice_not_yet_created",
                    "stripe_invoice_completed_timestamp": "2024-01-15T09:30:00Z",
                    "_id": "_id"
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupExpandedForShipper(
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
                    shipperContactInfo: Optional([
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
            courierOrgCompanyName: Optional("courier_org_company_name"),
            courierOrgHandle: Optional("courier_org_handle"),
            taskGroupMileage: Optional(1.1),
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
            shipperPayCourierLineItemGroups: Optional([
                ShipperPayCourierLineItemGroup1(
                    schemaVersion: 1,
                    taskGroupId: "task_group_id",
                    courierOrgId: "courier_org_id",
                    shipperOrgId: Optional("shipper_org_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    orderCancelled: Optional(true),
                    rateSheetId: "rate_sheet_id",
                    lineItems: [
                        LineItem1(
                            schemaVersion: 1,
                            item: .baseRate,
                            quantity: 1.1,
                            rate: 1.1,
                            comment: Optional(nil),
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            uuidStr: "uuid_str"
                        )
                    ],
                    id: "_id"
                )
            ]),
            shipperPayCourierRateSheet: Optional(ShipperPayCourierRateSheet1(
                schemaVersion: 1,
                name: Optional("name"),
                cargoTypes: Optional([
                    .spareParts
                ]),
                vehicleTypes: Optional([
                    .sedan
                ]),
                routeTypes: Optional([
                    .routed
                ]),
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                comments: Optional("comments"),
                baseMileageDistanceMiles: 1.1,
                baseMileageRateUsdPerInstance: 1.1,
                additionalMileageRateUsdPerMile: 1.1,
                longDistanceSurchargeMilesBeforeSurcharge: 1.1,
                longDistanceSurchargeRateUsdPerMile: 1.1,
                fuelSurchargeRateUsdPerMile: 1.1,
                waitTimeBeforeChargeMinutes: 1.1,
                waitTimeRateUsdPerMinute: 1.1,
                extraStopRateUsd: 1.1,
                dangerousGoodsRateUsdPerInstance: 1.1,
                afterHours: 1.1,
                weekend: 1.1,
                holiday: 1.1,
                courierOrgId: "courier_org_id",
                id: "_id"
            )),
            shipperPayCourierPayment: Optional(ShipperPayCourierStatement1(
                schemaVersion: 1,
                shipperPayCourierLineItemGroupIds: [
                    "shipper_pay_courier_line_item_group_ids"
                ],
                taskGroupIds: [
                    "task_group_ids"
                ],
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                shipperOrgId: Optional("shipper_org_id"),
                courierOrgId: "courier_org_id",
                shipperCustomerIdForCourierStripeConnectAccount: Optional("shipper_customer_id_for_courier_stripe_connect_account"),
                stripeInvoiceId: Optional("stripe_invoice_id"),
                stripeInvoiceUrl: Optional("stripe_invoice_url"),
                stripeInvoiceCreatedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                stripeInvoiceCreatedByUserId: Optional("stripe_invoice_created_by_user_id"),
                statementAmount: 1.1,
                stripeInvoiceStatus: Optional(.invoiceNotYetCreated),
                stripeInvoiceCompletedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                id: "_id"
            ))
        )
        let response = try await client.taskGroups.expanded.forShipperByIdV1(
            id: "id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}