import Foundation
import Testing
import Chrt

@Suite("DriversClient Wire Tests") struct DriversClientWireTests {
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
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z"
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
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.drivers.getForCallerV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z"
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
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.drivers.getByDriverIdV1(
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
                [
                  {
                    "org_member": {
                      "role": "owner",
                      "user_id": "user_id",
                      "first_name": "first_name",
                      "last_name": "last_name"
                    },
                    "driver": {
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
                        },
                        "properties": null
                      },
                      "last_seen_at_timestamp": "2024-01-15T09:30:00Z"
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
                orgMember: OrgMemberDetails(
                    role: .owner,
                    userId: "user_id",
                    firstName: Optional("first_name"),
                    lastName: Optional("last_name")
                ),
                driver: Optional(Driver1(
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
                        ),
                        properties: Optional(nil)
                    )),
                    lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ))
            )
        ]
        let response = try await client.drivers.listOrgMembersAndDriversV1(
            availableAccordingToDriver: true,
            availableAccordingToOperators: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
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
                      },
                      "properties": {
                        "address": null,
                        "name": null
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z"
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
                    ),
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )
        ]
        let response = try await client.drivers.listV1(
            availableAccordingToDriver: true,
            availableAccordingToOperators: true,
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
        let response = try await client.drivers.createV1(
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
        let response = try await client.drivers.updateV1(
            driverId: "driver_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateLastSeenV11() async throws -> Void {
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
        let response = try await client.drivers.updateLastSeenV1(
            request: .init(location: LocationFeature(
                type: .feature,
                geometry: Geometry.geometryCollection(
                    .init(
                        geometries: [
                            GeometryCollectionOutputGeometriesItem.lineString(
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
        let response = try await client.drivers.clearLastSeenV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
        let response = try await client.drivers.updateAvailabilityAccordingToDriverV1(
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
        let response = try await client.drivers.updateAvailabilityAccordingToOperatorsV1(
            driverId: "driver_id",
            request: DriverUpdateAvailabilityReq(
                available: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}