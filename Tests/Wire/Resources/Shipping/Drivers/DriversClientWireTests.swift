import Foundation
import Testing
import Chrt

@Suite("DriversClient Wire Tests") struct DriversClientWireTests {
    @Test func getStatsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_groups": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "task_ids": [
                        "task_ids"
                      ],
                      "order_schedule_template_path_idempotency_key": "order_schedule_template_path_idempotency_key",
                      "created_by_user_id": "created_by_user_id",
                      "created_by_org_id": "created_by_org_id",
                      "shipper_org_id": "shipper_org_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "coordinator_org_id": "coordinator_org_id",
                      "executor_org_id": "executor_org_id",
                      "off_chrt_executor_org_id": "off_chrt_executor_org_id",
                      "driver_id": "driver_id",
                      "task_group_s3_object_metadata_ids": [
                        "task_group_s3_object_metadata_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "task_group_type": "chrt_ground_provider",
                      "vehicle_type": "sedan",
                      "mileage_estimated": 1.1,
                      "mileage_observed": 1.1,
                      "wait_time_total_minutes": 1.1,
                      "mileage_asserted": true,
                      "flight_number": "flight_number",
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                      "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                      "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                      "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                      "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                      "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                      "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                      "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                      "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id"
                    }
                  ],
                  "excluded_task_groups": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "task_ids": [
                        "task_ids"
                      ],
                      "order_schedule_template_path_idempotency_key": "order_schedule_template_path_idempotency_key",
                      "created_by_user_id": "created_by_user_id",
                      "created_by_org_id": "created_by_org_id",
                      "shipper_org_id": "shipper_org_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "coordinator_org_id": "coordinator_org_id",
                      "executor_org_id": "executor_org_id",
                      "off_chrt_executor_org_id": "off_chrt_executor_org_id",
                      "driver_id": "driver_id",
                      "task_group_s3_object_metadata_ids": [
                        "task_group_s3_object_metadata_ids"
                      ],
                      "status": "draft",
                      "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                      "staged_at_timestamp": "2024-01-15T09:30:00Z",
                      "in_progress_at_timestamp": "2024-01-15T09:30:00Z",
                      "completed_at_timestamp": "2024-01-15T09:30:00Z",
                      "skipped_at_timestamp": "2024-01-15T09:30:00Z",
                      "cancelled_at_timestamp": "2024-01-15T09:30:00Z",
                      "exception_at_timestamp": "2024-01-15T09:30:00Z",
                      "task_group_type": "chrt_ground_provider",
                      "vehicle_type": "sedan",
                      "mileage_estimated": 1.1,
                      "mileage_observed": 1.1,
                      "wait_time_total_minutes": 1.1,
                      "mileage_asserted": true,
                      "flight_number": "flight_number",
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "messages": [
                        {
                          "message": "message",
                          "user_id": "user_id",
                          "org_id": "org_id",
                          "timestamp": "2024-01-15T09:30:00Z"
                        }
                      ],
                      "shipper_pay_provider_rate_sheet_id": "shipper_pay_provider_rate_sheet_id",
                      "shipper_pay_provider_line_item_group_id": "shipper_pay_provider_line_item_group_id",
                      "shipper_pay_provider_billing_ledger_period_id": "shipper_pay_provider_billing_ledger_period_id",
                      "provider_pay_provider_rate_sheet_id": "provider_pay_provider_rate_sheet_id",
                      "provider_pay_provider_line_item_group_id": "provider_pay_provider_line_item_group_id",
                      "provider_pay_provider_billing_ledger_period_id": "provider_pay_provider_billing_ledger_period_id",
                      "provider_pay_driver_rate_sheet_id": "provider_pay_driver_rate_sheet_id",
                      "provider_pay_driver_line_item_group_id": "provider_pay_driver_line_item_group_id",
                      "provider_pay_driver_billing_ledger_period_id": "provider_pay_driver_billing_ledger_period_id"
                    }
                  ],
                  "cleaned_task_group_duration_hours": 1.1,
                  "overlap_detected": true,
                  "total_mileage_observed": 1.1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DriverStatsRes(
            taskGroups: [
                TaskGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    taskIds: Optional([
                        "task_ids"
                    ]),
                    orderScheduleTemplatePathIdempotencyKey: Optional("order_schedule_template_path_idempotency_key"),
                    createdByUserId: Optional("created_by_user_id"),
                    createdByOrgId: "created_by_org_id",
                    shipperOrgId: Optional("shipper_org_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    executorOrgId: Optional("executor_org_id"),
                    offChrtExecutorOrgId: Optional("off_chrt_executor_org_id"),
                    driverId: Optional("driver_id"),
                    taskGroupS3ObjectMetadataIds: Optional([
                        "task_group_s3_object_metadata_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskGroupType: .chrtGroundProvider,
                    vehicleType: Optional(.sedan),
                    mileageEstimated: Optional(1.1),
                    mileageObserved: Optional(1.1),
                    waitTimeTotalMinutes: Optional(1.1),
                    mileageAsserted: Optional(true),
                    flightNumber: Optional("flight_number"),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    messages: Optional([
                        TaskGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                    shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                    shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                    providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                    providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                    providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                    providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                    providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                    providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id")
                )
            ],
            excludedTaskGroups: [
                TaskGroup1(
                    schemaVersion: 1,
                    id: "_id",
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    taskIds: Optional([
                        "task_ids"
                    ]),
                    orderScheduleTemplatePathIdempotencyKey: Optional("order_schedule_template_path_idempotency_key"),
                    createdByUserId: Optional("created_by_user_id"),
                    createdByOrgId: "created_by_org_id",
                    shipperOrgId: Optional("shipper_org_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    coordinatorOrgId: Optional("coordinator_org_id"),
                    executorOrgId: Optional("executor_org_id"),
                    offChrtExecutorOrgId: Optional("off_chrt_executor_org_id"),
                    driverId: Optional("driver_id"),
                    taskGroupS3ObjectMetadataIds: Optional([
                        "task_group_s3_object_metadata_ids"
                    ]),
                    status: Optional(.draft),
                    draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    stagedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    inProgressAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    completedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    skippedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    cancelledAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    exceptionAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    taskGroupType: .chrtGroundProvider,
                    vehicleType: Optional(.sedan),
                    mileageEstimated: Optional(1.1),
                    mileageObserved: Optional(1.1),
                    waitTimeTotalMinutes: Optional(1.1),
                    mileageAsserted: Optional(true),
                    flightNumber: Optional("flight_number"),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    messages: Optional([
                        TaskGroupMessage1(
                            message: "message",
                            userId: "user_id",
                            orgId: "org_id",
                            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                        )
                    ]),
                    shipperPayProviderRateSheetId: Optional("shipper_pay_provider_rate_sheet_id"),
                    shipperPayProviderLineItemGroupId: Optional("shipper_pay_provider_line_item_group_id"),
                    shipperPayProviderBillingLedgerPeriodId: Optional("shipper_pay_provider_billing_ledger_period_id"),
                    providerPayProviderRateSheetId: Optional("provider_pay_provider_rate_sheet_id"),
                    providerPayProviderLineItemGroupId: Optional("provider_pay_provider_line_item_group_id"),
                    providerPayProviderBillingLedgerPeriodId: Optional("provider_pay_provider_billing_ledger_period_id"),
                    providerPayDriverRateSheetId: Optional("provider_pay_driver_rate_sheet_id"),
                    providerPayDriverLineItemGroupId: Optional("provider_pay_driver_line_item_group_id"),
                    providerPayDriverBillingLedgerPeriodId: Optional("provider_pay_driver_billing_ledger_period_id")
                )
            ],
            cleanedTaskGroupDurationHours: 1.1,
            overlapDetected: true,
            totalMileageObserved: Optional(1.1)
        )
        let response = try await client.shipping.drivers.getStatsV1(
            driverId: "driver_id",
            request: .init(
                startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getForCallerV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "email_address_primary": "email_address_primary",
                  "email_address_secondary": "email_address_secondary",
                  "phone_number_primary": "phone_number_primary",
                  "phone_number_secondary": "phone_number_secondary",
                  "first_name": "first_name",
                  "last_name": "last_name",
                  "vehicle_types": [
                    "sedan"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "user_id": "user_id",
                  "status": "unassigned",
                  "available_according_to_driver": true,
                  "available_according_to_operators": true,
                  "waiting": true,
                  "auto_assign_enabled": true,
                  "active_task_group_ids": [
                    "active_task_group_ids"
                  ],
                  "last_seen_at_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
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
                      "address": "address",
                      "name": "name"
                    },
                    "id": 1
                  },
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_seen_at_location_city": "last_seen_at_location_city",
                  "last_seen_at_location_large_city": "last_seen_at_location_large_city"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Driver1(
            schemaVersion: 1,
            emailAddressPrimary: Optional("email_address_primary"),
            emailAddressSecondary: Optional("email_address_secondary"),
            phoneNumberPrimary: Optional("phone_number_primary"),
            phoneNumberSecondary: Optional("phone_number_secondary"),
            firstName: Optional("first_name"),
            lastName: Optional("last_name"),
            vehicleTypes: Optional([
                .sedan
            ]),
            id: "_id",
            orgId: "org_id",
            userId: "user_id",
            status: Optional(.unassigned),
            availableAccordingToDriver: Optional(true),
            availableAccordingToOperators: Optional(true),
            waiting: Optional(true),
            autoAssignEnabled: Optional(true),
            activeTaskGroupIds: Optional([
                "active_task_group_ids"
            ]),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                    address: Optional("address"),
                    name: Optional("name")
                )),
                id: Optional(Id.int(
                    1
                ))
            )),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city")
        )
        let response = try await client.shipping.drivers.getForCallerV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getByDriverIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "email_address_primary": "email_address_primary",
                  "email_address_secondary": "email_address_secondary",
                  "phone_number_primary": "phone_number_primary",
                  "phone_number_secondary": "phone_number_secondary",
                  "first_name": "first_name",
                  "last_name": "last_name",
                  "vehicle_types": [
                    "sedan"
                  ],
                  "_id": "_id",
                  "org_id": "org_id",
                  "user_id": "user_id",
                  "status": "unassigned",
                  "available_according_to_driver": true,
                  "available_according_to_operators": true,
                  "waiting": true,
                  "auto_assign_enabled": true,
                  "active_task_group_ids": [
                    "active_task_group_ids"
                  ],
                  "last_seen_at_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
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
                      "address": "address",
                      "name": "name"
                    },
                    "id": 1
                  },
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_seen_at_location_city": "last_seen_at_location_city",
                  "last_seen_at_location_large_city": "last_seen_at_location_large_city"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Driver1(
            schemaVersion: 1,
            emailAddressPrimary: Optional("email_address_primary"),
            emailAddressSecondary: Optional("email_address_secondary"),
            phoneNumberPrimary: Optional("phone_number_primary"),
            phoneNumberSecondary: Optional("phone_number_secondary"),
            firstName: Optional("first_name"),
            lastName: Optional("last_name"),
            vehicleTypes: Optional([
                .sedan
            ]),
            id: "_id",
            orgId: "org_id",
            userId: "user_id",
            status: Optional(.unassigned),
            availableAccordingToDriver: Optional(true),
            availableAccordingToOperators: Optional(true),
            waiting: Optional(true),
            autoAssignEnabled: Optional(true),
            activeTaskGroupIds: Optional([
                "active_task_group_ids"
            ]),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                    address: Optional("address"),
                    name: Optional("name")
                )),
                id: Optional(Id.int(
                    1
                ))
            )),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city")
        )
        let response = try await client.shipping.drivers.getByDriverIdV1(
            driverId: "driver_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listOrgMembersAndDriversV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "org_member": {
                        "role": "owner",
                        "user_id": "user_id",
                        "first_name": null,
                        "last_name": null
                      },
                      "driver": {
                        "schema_version": 1,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      }
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
        let expectedResponse = OrgMembersAndDriversListRes(
            items: [
                OrgMembersAndDrivers(
                    orgMember: OrgMemberDetails(
                        role: .owner,
                        userId: "user_id",
                        firstName: Optional(nil),
                        lastName: Optional(nil)
                    ),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.drivers.listOrgMembersAndDriversV1(
            search: "search",
            filterRole: [
                .owner
            ],
            filterAvailableAccordingToDriver: true,
            filterAvailableAccordingToOperators: true,
            sortBy: .firstName,
            sortOrder: .asc,
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
                      "schema_version": 1,
                      "email_address_primary": "email_address_primary",
                      "email_address_secondary": "email_address_secondary",
                      "phone_number_primary": "phone_number_primary",
                      "phone_number_secondary": "phone_number_secondary",
                      "first_name": "first_name",
                      "last_name": "last_name",
                      "vehicle_types": [
                        "sedan"
                      ],
                      "_id": "_id",
                      "org_id": "org_id",
                      "user_id": "user_id",
                      "status": "unassigned",
                      "available_according_to_driver": true,
                      "available_according_to_operators": true,
                      "waiting": true,
                      "auto_assign_enabled": true,
                      "active_task_group_ids": [
                        "active_task_group_ids"
                      ],
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
                        }
                      },
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_seen_at_location_city": "last_seen_at_location_city",
                      "last_seen_at_location_large_city": "last_seen_at_location_large_city"
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
        let expectedResponse = DriverListRes(
            items: [
                Driver1(
                    schemaVersion: 1,
                    emailAddressPrimary: Optional("email_address_primary"),
                    emailAddressSecondary: Optional("email_address_secondary"),
                    phoneNumberPrimary: Optional("phone_number_primary"),
                    phoneNumberSecondary: Optional("phone_number_secondary"),
                    firstName: Optional("first_name"),
                    lastName: Optional("last_name"),
                    vehicleTypes: Optional([
                        .sedan
                    ]),
                    id: "_id",
                    orgId: "org_id",
                    userId: "user_id",
                    status: Optional(.unassigned),
                    availableAccordingToDriver: Optional(true),
                    availableAccordingToOperators: Optional(true),
                    waiting: Optional(true),
                    autoAssignEnabled: Optional(true),
                    activeTaskGroupIds: Optional([
                        "active_task_group_ids"
                    ]),
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
                        )
                    )),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                    lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city")
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.drivers.listV1(
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterAvailableAccordingToDriver: true,
            filterAvailableAccordingToOperators: true,
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
        let response = try await client.shipping.drivers.createV1(
            targetUserId: "target_user_id",
            request: .init(schemaVersion: 1),
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
        let response = try await client.shipping.drivers.updateV1(
            driverId: "driver_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func clearLastSeenV11() async throws -> Void {
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
        let response = try await client.shipping.drivers.clearLastSeenV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func updateAvailabilityAccordingToDriverV11() async throws -> Void {
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
        let response = try await client.shipping.drivers.updateAvailabilityAccordingToDriverV1(
            request: DriverUpdateAvailabilityReq(
                available: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateAvailabilityAccordingToOperatorsV11() async throws -> Void {
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
        let response = try await client.shipping.drivers.updateAvailabilityAccordingToOperatorsV1(
            driverId: "driver_id",
            request: DriverUpdateAvailabilityReq(
                available: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateAutoAssignV11() async throws -> Void {
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
        let response = try await client.shipping.drivers.updateAutoAssignV1(
            driverId: "driver_id",
            request: .init(autoAssignEnabled: true),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}