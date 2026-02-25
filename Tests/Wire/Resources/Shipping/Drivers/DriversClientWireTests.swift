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
                  "available_according_to_driver": true,
                  "available_according_to_operators": true,
                  "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                  "default_rate_sheet__routed": "default_rate_sheet__routed",
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
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "phone_number_primary": "phone_number_primary",
                  "phone_number_secondary": "phone_number_secondary",
                  "schema_version": 1,
                  "status": "unassigned",
                  "user_id": "user_id",
                  "vehicle_types": [
                    "sedan"
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
        let expectedResponse = Driver1(
            id: "_id",
            activeTaskGroupIds: Optional([
                "active_task_group_ids"
            ]),
            availableAccordingToDriver: Optional(true),
            availableAccordingToOperators: Optional(true),
            defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
            defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
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
                                        LineStringCoordinatesItem.position2D(
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
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orgId: "org_id",
            phoneNumberPrimary: Optional("phone_number_primary"),
            phoneNumberSecondary: Optional("phone_number_secondary"),
            schemaVersion: 1,
            status: Optional(.unassigned),
            userId: "user_id",
            vehicleTypes: Optional([
                .sedan
            ])
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
                [
                  {
                    "_id": "_id",
                    "active_task_group_ids": [
                      "active_task_group_ids"
                    ],
                    "available_according_to_driver": true,
                    "available_according_to_operators": true,
                    "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                    "default_rate_sheet__routed": "default_rate_sheet__routed",
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
                      "id": 1,
                      "type": "Feature"
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "org_id": "org_id",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "schema_version": 1,
                    "status": "unassigned",
                    "user_id": "user_id",
                    "vehicle_types": [
                      "sedan"
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
            Driver1(
                id: "_id",
                activeTaskGroupIds: Optional([
                    "active_task_group_ids"
                ]),
                availableAccordingToDriver: Optional(true),
                availableAccordingToOperators: Optional(true),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
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
                                            LineStringCoordinatesItem.position2D(
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
                    type: .feature
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                orgId: "org_id",
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                schemaVersion: 1,
                status: Optional(.unassigned),
                userId: "user_id",
                vehicleTypes: Optional([
                    .sedan
                ])
            )
        ]
        let response = try await client.shipping.drivers.listV1(
            availableAccordingToDriver: true,
            availableAccordingToOperators: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listOrgMembersAndDriversV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "driver": {
                      "_id": "_id",
                      "active_task_group_ids": [
                        "active_task_group_ids"
                      ],
                      "available_according_to_driver": true,
                      "available_according_to_operators": true,
                      "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                      "default_rate_sheet__routed": "default_rate_sheet__routed",
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
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "phone_number_primary": "phone_number_primary",
                      "phone_number_secondary": "phone_number_secondary",
                      "schema_version": 1,
                      "status": "unassigned",
                      "user_id": "user_id",
                      "vehicle_types": [
                        "sedan"
                      ]
                    },
                    "org_member": {
                      "first_name": "first_name",
                      "last_name": "last_name",
                      "role": "owner",
                      "user_id": "user_id"
                    }
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
            OrgMembersAndDrivers(
                driver: Optional(Driver1(
                    id: "_id",
                    activeTaskGroupIds: Optional([
                        "active_task_group_ids"
                    ]),
                    availableAccordingToDriver: Optional(true),
                    availableAccordingToOperators: Optional(true),
                    defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
                    defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
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
                                                LineStringCoordinatesItem.position2D(
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
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orgId: "org_id",
                    phoneNumberPrimary: Optional("phone_number_primary"),
                    phoneNumberSecondary: Optional("phone_number_secondary"),
                    schemaVersion: 1,
                    status: Optional(.unassigned),
                    userId: "user_id",
                    vehicleTypes: Optional([
                        .sedan
                    ])
                )),
                orgMember: OrgMemberDetails(
                    firstName: Optional("first_name"),
                    lastName: Optional("last_name"),
                    role: .owner,
                    userId: "user_id"
                )
            )
        ]
        let response = try await client.shipping.drivers.listOrgMembersAndDriversV1(
            availableAccordingToDriver: true,
            availableAccordingToOperators: true,
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
                  "available_according_to_driver": true,
                  "available_according_to_operators": true,
                  "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                  "default_rate_sheet__routed": "default_rate_sheet__routed",
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
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "phone_number_primary": "phone_number_primary",
                  "phone_number_secondary": "phone_number_secondary",
                  "schema_version": 1,
                  "status": "unassigned",
                  "user_id": "user_id",
                  "vehicle_types": [
                    "sedan"
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
        let expectedResponse = Driver1(
            id: "_id",
            activeTaskGroupIds: Optional([
                "active_task_group_ids"
            ]),
            availableAccordingToDriver: Optional(true),
            availableAccordingToOperators: Optional(true),
            defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
            defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
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
                                        LineStringCoordinatesItem.position2D(
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
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            orgId: "org_id",
            phoneNumberPrimary: Optional("phone_number_primary"),
            phoneNumberSecondary: Optional("phone_number_secondary"),
            schemaVersion: 1,
            status: Optional(.unassigned),
            userId: "user_id",
            vehicleTypes: Optional([
                .sedan
            ])
        )
        let response = try await client.shipping.drivers.getByDriverIdV1(
            driverId: "driver_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}