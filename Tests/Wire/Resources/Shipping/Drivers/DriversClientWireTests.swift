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
                  "driver_analytics_days": [
                    {
                      "day": "day",
                      "observed_mileage_order_in_progress_deduped": 1.1,
                      "observed_mileage_order_not_in_progress": 1.1,
                      "observed_mileage_total": 1.1,
                      "self_reported_hours_and_mileage": {
                        "schema_version": 1,
                        "driver_id": "driver_id",
                        "date": "date",
                        "org_id": "org_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "updated_at": "2024-01-15T09:30:00Z",
                        "_id": "_id"
                      }
                    }
                  ],
                  "driver_analytics_task_groups": [
                    {
                      "task_group": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "task_group_type": "chrt_ground_provider"
                      },
                      "observed_mileage_order_in_progress": 1.1
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
        let expectedResponse = DriverStatsRes(
            driverAnalyticsDays: Optional([
                DriverAnalyticsDay(
                    day: "day",
                    observedMileageOrderInProgressDeduped: 1.1,
                    observedMileageOrderNotInProgress: 1.1,
                    observedMileageTotal: 1.1,
                    selfReportedHoursAndMileage: Optional(DriverSelfReportedHoursAndMileage1(
                        schemaVersion: 1,
                        driverId: "driver_id",
                        date: "date",
                        orgId: "org_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        id: "_id"
                    ))
                )
            ]),
            driverAnalyticsTaskGroups: Optional([
                DriverAnalyticsTaskGroup(
                    taskGroup: TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        taskGroupType: .chrtGroundProvider
                    ),
                    observedMileageOrderInProgress: 1.1
                )
            ])
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

    @Test func getSelfReportedHoursAndMileageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "driver_id": "driver_id",
                  "date": "date",
                  "hours_worked": 1.1,
                  "miles_driven": 1.1,
                  "org_id": "org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "updated_at": "2024-01-15T09:30:00Z",
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
        let expectedResponse = DriverSelfReportedHoursAndMileage1(
            schemaVersion: 1,
            driverId: "driver_id",
            date: "date",
            hoursWorked: Optional(1.1),
            milesDriven: Optional(1.1),
            orgId: "org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            id: "_id"
        )
        let response = try await client.shipping.drivers.getSelfReportedHoursAndMileageV1(
            driverId: "driver_id",
            reportDate: "report_date",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSelfReportedHoursAndMileageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "driver_id": "driver_id",
                      "date": "date",
                      "hours_worked": 1.1,
                      "miles_driven": 1.1,
                      "org_id": "org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "updated_at": "2024-01-15T09:30:00Z",
                      "_id": "_id"
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
        let expectedResponse = DriverSelfReportedHoursAndMileageListRes(
            items: [
                DriverSelfReportedHoursAndMileage1(
                    schemaVersion: 1,
                    driverId: "driver_id",
                    date: "date",
                    hoursWorked: Optional(1.1),
                    milesDriven: Optional(1.1),
                    orgId: "org_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    id: "_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.drivers.listSelfReportedHoursAndMileageV1(
            driverId: "driver_id",
            filterStartDate: "filter_start_date",
            filterEndDate: "filter_end_date",
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func orgListSelfReportedHoursAndMileageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "driver_id": "driver_id",
                      "date": "date",
                      "hours_worked": 1.1,
                      "miles_driven": 1.1,
                      "org_id": "org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "updated_at": "2024-01-15T09:30:00Z",
                      "_id": "_id"
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
        let expectedResponse = DriverSelfReportedHoursAndMileageListRes(
            items: [
                DriverSelfReportedHoursAndMileage1(
                    schemaVersion: 1,
                    driverId: "driver_id",
                    date: "date",
                    hoursWorked: Optional(1.1),
                    milesDriven: Optional(1.1),
                    orgId: "org_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    id: "_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.drivers.orgListSelfReportedHoursAndMileageV1(
            filterDriverId: "filter_driver_id",
            filterStartDate: "filter_start_date",
            filterEndDate: "filter_end_date",
            sortBy: .date,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createSelfReportedHoursAndMileageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "driver_id": "driver_id",
                  "date": "date",
                  "hours_worked": 1.1,
                  "miles_driven": 1.1,
                  "org_id": "org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "updated_at": "2024-01-15T09:30:00Z",
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
        let expectedResponse = DriverSelfReportedHoursAndMileage1(
            schemaVersion: 1,
            driverId: "driver_id",
            date: "date",
            hoursWorked: Optional(1.1),
            milesDriven: Optional(1.1),
            orgId: "org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            id: "_id"
        )
        let response = try await client.shipping.drivers.createSelfReportedHoursAndMileageV1(
            request: .init(
                schemaVersion: 1,
                driverId: "driver_id",
                date: "date"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateSelfReportedHoursAndMileageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "driver_id": "driver_id",
                  "date": "date",
                  "hours_worked": 1.1,
                  "miles_driven": 1.1,
                  "org_id": "org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "updated_at": "2024-01-15T09:30:00Z",
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
        let expectedResponse = DriverSelfReportedHoursAndMileage1(
            schemaVersion: 1,
            driverId: "driver_id",
            date: "date",
            hoursWorked: Optional(1.1),
            milesDriven: Optional(1.1),
            orgId: "org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            id: "_id"
        )
        let response = try await client.shipping.drivers.updateSelfReportedHoursAndMileageV1(
            driverId: "driver_id",
            reportDate: "report_date",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteSelfReportedHoursAndMileageV11() async throws -> Void {
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
        let response = try await client.shipping.drivers.deleteSelfReportedHoursAndMileageV1(
            driverId: "driver_id",
            reportDate: "report_date",
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
                  "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                  "active_task_group_ids": [
                    "active_task_group_ids"
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
        let expectedResponse = DriverWithActiveTaskGroupIds1(
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
                                        CoordinatesItem.position2D(
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
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            activeTaskGroupIds: Optional([
                "active_task_group_ids"
            ])
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
                  "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                  "active_task_group_ids": [
                    "active_task_group_ids"
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
        let expectedResponse = DriverWithActiveTaskGroupIds1(
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
                                        CoordinatesItem.position2D(
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
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            activeTaskGroupIds: Optional([
                "active_task_group_ids"
            ])
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
                    driver: Optional(DriverWithActiveTaskGroupIds1(
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
                      "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                      "active_task_group_ids": [
                        "active_task_group_ids"
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
        let expectedResponse = DriverListRes(
            items: [
                DriverWithActiveTaskGroupIds1(
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
                    lastSeenAtLocation: Optional(LocationFeature(
                        type: .feature,
                        geometry: .geometryCollection(
                            .init(
                                geometries: [
                                    .lineString(
                                        .init(
                                            coordinates: [
                                                CoordinatesItem.position2D(
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
                    lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                    activeTaskGroupIds: Optional([
                        "active_task_group_ids"
                    ])
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
            filterStatus: [
                .unassigned
            ],
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