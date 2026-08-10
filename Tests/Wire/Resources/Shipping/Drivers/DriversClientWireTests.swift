import Foundation
import Testing
import Chrt

@Suite("DriversClient Wire Tests") struct DriversClientWireTests {
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

    @Test func getForCallerV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "active_task_group_ids": [
                    "active_task_group_ids"
                  ],
                  "auto_assign_enabled": true,
                  "available_according_to_driver": true,
                  "available_according_to_operators": true,
                  "email_address_primary": "email_address_primary",
                  "email_address_secondary": "email_address_secondary",
                  "first_name": "first_name",
                  "last_name": "last_name",
                  "last_seen_at_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
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
                    "properties": {
                      "address": "address",
                      "name": "name"
                    },
                    "type": "Feature"
                  },
                  "last_seen_at_location_city": "last_seen_at_location_city",
                  "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "phone_number_primary": "phone_number_primary",
                  "phone_number_secondary": "phone_number_secondary",
                  "schema_version": 1,
                  "status": "unassigned",
                  "user_id": "user_id",
                  "vehicle_types": [
                    "sedan"
                  ],
                  "waiting": true
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
            id: "_id",
            activeTaskGroupIds: Optional([
                "active_task_group_ids"
            ]),
            autoAssignEnabled: Optional(true),
            availableAccordingToDriver: Optional(true),
            availableAccordingToOperators: Optional(true),
            emailAddressPrimary: Optional("email_address_primary"),
            emailAddressSecondary: Optional("email_address_secondary"),
            firstName: Optional("first_name"),
            lastName: Optional("last_name"),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                id: Optional(Id.int(
                    1
                )),
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orgId: "org_id",
            phoneNumberPrimary: Optional("phone_number_primary"),
            phoneNumberSecondary: Optional("phone_number_secondary"),
            schemaVersion: 1,
            status: Optional(.unassigned),
            userId: "user_id",
            vehicleTypes: Optional([
                .sedan
            ]),
            waiting: Optional(true)
        )
        let response = try await client.shipping.drivers.getForCallerV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "_id": "_id",
                      "active_task_group_ids": [
                        "active_task_group_ids"
                      ],
                      "auto_assign_enabled": true,
                      "available_according_to_driver": true,
                      "available_according_to_operators": true,
                      "email_address_primary": "email_address_primary",
                      "email_address_secondary": "email_address_secondary",
                      "first_name": "first_name",
                      "last_name": "last_name",
                      "last_seen_at_location": {
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
                        "type": "Feature"
                      },
                      "last_seen_at_location_city": "last_seen_at_location_city",
                      "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "phone_number_primary": "phone_number_primary",
                      "phone_number_secondary": "phone_number_secondary",
                      "schema_version": 1,
                      "status": "unassigned",
                      "user_id": "user_id",
                      "vehicle_types": [
                        "sedan"
                      ],
                      "waiting": true
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
                    id: "_id",
                    activeTaskGroupIds: Optional([
                        "active_task_group_ids"
                    ]),
                    autoAssignEnabled: Optional(true),
                    availableAccordingToDriver: Optional(true),
                    availableAccordingToOperators: Optional(true),
                    emailAddressPrimary: Optional("email_address_primary"),
                    emailAddressSecondary: Optional("email_address_secondary"),
                    firstName: Optional("first_name"),
                    lastName: Optional("last_name"),
                    lastSeenAtLocation: Optional(LocationFeature(
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
                        type: .feature
                    )),
                    lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
                    lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orgId: "org_id",
                    phoneNumberPrimary: Optional("phone_number_primary"),
                    phoneNumberSecondary: Optional("phone_number_secondary"),
                    schemaVersion: 1,
                    status: Optional(.unassigned),
                    userId: "user_id",
                    vehicleTypes: Optional([
                        .sedan
                    ]),
                    waiting: Optional(true)
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

    @Test func listOrgMembersAndDriversV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "driver": {
                        "_id": "_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "user_id": "user_id"
                      },
                      "org_member": {
                        "first_name": null,
                        "last_name": null,
                        "role": "owner",
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
                    driver: Optional(DriverWithActiveTaskGroupIds1(
                        id: "_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        userId: "user_id"
                    )),
                    orgMember: OrgMemberDetails(
                        firstName: Optional(nil),
                        lastName: Optional(nil),
                        role: .owner,
                        userId: "user_id"
                    )
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

    @Test func createSelfReportedHoursAndMileageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "date": "date",
                  "driver_id": "driver_id",
                  "hours_worked": 1.1,
                  "miles_driven": 1.1,
                  "org_id": "org_id",
                  "schema_version": 1,
                  "updated_at": "2024-01-15T09:30:00Z"
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
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            date: "date",
            driverId: "driver_id",
            hoursWorked: Optional(1.1),
            milesDriven: Optional(1.1),
            orgId: "org_id",
            schemaVersion: 1,
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.drivers.createSelfReportedHoursAndMileageV1(
            request: .init(
                date: "date",
                driverId: "driver_id",
                schemaVersion: 1
            ),
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

    @Test func getSelfReportedHoursAndMileageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "date": "date",
                  "driver_id": "driver_id",
                  "hours_worked": 1.1,
                  "miles_driven": 1.1,
                  "org_id": "org_id",
                  "schema_version": 1,
                  "updated_at": "2024-01-15T09:30:00Z"
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
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            date: "date",
            driverId: "driver_id",
            hoursWorked: Optional(1.1),
            milesDriven: Optional(1.1),
            orgId: "org_id",
            schemaVersion: 1,
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
                      "_id": "_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "date": "date",
                      "driver_id": "driver_id",
                      "hours_worked": 1.1,
                      "miles_driven": 1.1,
                      "org_id": "org_id",
                      "schema_version": 1,
                      "updated_at": "2024-01-15T09:30:00Z"
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
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    date: "date",
                    driverId: "driver_id",
                    hoursWorked: Optional(1.1),
                    milesDriven: Optional(1.1),
                    orgId: "org_id",
                    schemaVersion: 1,
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
                      "_id": "_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "date": "date",
                      "driver_id": "driver_id",
                      "hours_worked": 1.1,
                      "miles_driven": 1.1,
                      "org_id": "org_id",
                      "schema_version": 1,
                      "updated_at": "2024-01-15T09:30:00Z"
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
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    date: "date",
                    driverId: "driver_id",
                    hoursWorked: Optional(1.1),
                    milesDriven: Optional(1.1),
                    orgId: "org_id",
                    schemaVersion: 1,
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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

    @Test func updateSelfReportedHoursAndMileageV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_user_id": "created_by_user_id",
                  "date": "date",
                  "driver_id": "driver_id",
                  "hours_worked": 1.1,
                  "miles_driven": 1.1,
                  "org_id": "org_id",
                  "schema_version": 1,
                  "updated_at": "2024-01-15T09:30:00Z"
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
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByUserId: "created_by_user_id",
            date: "date",
            driverId: "driver_id",
            hoursWorked: Optional(1.1),
            milesDriven: Optional(1.1),
            orgId: "org_id",
            schemaVersion: 1,
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shipping.drivers.updateSelfReportedHoursAndMileageV1(
            driverId: "driver_id",
            reportDate: "report_date",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
                        "_id": "_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_user_id": "created_by_user_id",
                        "date": "date",
                        "driver_id": "driver_id",
                        "org_id": "org_id",
                        "schema_version": 1,
                        "updated_at": "2024-01-15T09:30:00Z"
                      }
                    }
                  ],
                  "driver_analytics_task_groups": [
                    {
                      "observed_mileage_order_in_progress": 1.1,
                      "task_group": {
                        "_id": "_id",
                        "created_by_org_id": "created_by_org_id",
                        "draft_started_at_timestamp": "2024-01-15T09:30:00Z",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "schema_version": 1,
                        "task_group_type": "chrt_ground_provider"
                      }
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
                        id: "_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByUserId: "created_by_user_id",
                        date: "date",
                        driverId: "driver_id",
                        orgId: "org_id",
                        schemaVersion: 1,
                        updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                    ))
                )
            ]),
            driverAnalyticsTaskGroups: Optional([
                DriverAnalyticsTaskGroup(
                    observedMileageOrderInProgress: 1.1,
                    taskGroup: TaskGroup1(
                        id: "_id",
                        createdByOrgId: "created_by_org_id",
                        draftStartedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        schemaVersion: 1,
                        taskGroupType: .chrtGroundProvider
                    )
                )
            ])
        )
        let response = try await client.shipping.drivers.getStatsV1(
            driverId: "driver_id",
            request: .init(
                endTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                startTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
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

    @Test func getByDriverIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "active_task_group_ids": [
                    "active_task_group_ids"
                  ],
                  "auto_assign_enabled": true,
                  "available_according_to_driver": true,
                  "available_according_to_operators": true,
                  "email_address_primary": "email_address_primary",
                  "email_address_secondary": "email_address_secondary",
                  "first_name": "first_name",
                  "last_name": "last_name",
                  "last_seen_at_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
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
                    "properties": {
                      "address": "address",
                      "name": "name"
                    },
                    "type": "Feature"
                  },
                  "last_seen_at_location_city": "last_seen_at_location_city",
                  "last_seen_at_location_large_city": "last_seen_at_location_large_city",
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "phone_number_primary": "phone_number_primary",
                  "phone_number_secondary": "phone_number_secondary",
                  "schema_version": 1,
                  "status": "unassigned",
                  "user_id": "user_id",
                  "vehicle_types": [
                    "sedan"
                  ],
                  "waiting": true
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
            id: "_id",
            activeTaskGroupIds: Optional([
                "active_task_group_ids"
            ]),
            autoAssignEnabled: Optional(true),
            availableAccordingToDriver: Optional(true),
            availableAccordingToOperators: Optional(true),
            emailAddressPrimary: Optional("email_address_primary"),
            emailAddressSecondary: Optional("email_address_secondary"),
            firstName: Optional("first_name"),
            lastName: Optional("last_name"),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
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
                id: Optional(Id.int(
                    1
                )),
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                type: .feature
            )),
            lastSeenAtLocationCity: Optional("last_seen_at_location_city"),
            lastSeenAtLocationLargeCity: Optional("last_seen_at_location_large_city"),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orgId: "org_id",
            phoneNumberPrimary: Optional("phone_number_primary"),
            phoneNumberSecondary: Optional("phone_number_secondary"),
            schemaVersion: 1,
            status: Optional(.unassigned),
            userId: "user_id",
            vehicleTypes: Optional([
                .sedan
            ]),
            waiting: Optional(true)
        )
        let response = try await client.shipping.drivers.getByDriverIdV1(
            driverId: "driver_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}