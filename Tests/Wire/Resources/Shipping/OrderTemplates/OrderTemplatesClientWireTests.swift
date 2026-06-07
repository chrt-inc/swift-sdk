import Foundation
import Testing
import Chrt

@Suite("OrderTemplatesClient Wire Tests") struct OrderTemplatesClientWireTests {
    @Test func getExpandedByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "order_template": {
                    "schema_version": 1,
                    "name": "name",
                    "description": "description",
                    "order_input": "order_input",
                    "off_chrt_reference_id_str": "off_chrt_reference_id_str",
                    "shipper_org_id": "shipper_org_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                    "executor_org_ids": [
                      "executor_org_ids"
                    ],
                    "driver_ids": [
                      "driver_ids"
                    ],
                    "directory_entry_ids": [
                      "directory_entry_ids"
                    ],
                    "_id": "_id",
                    "owned_by_user_id": "owned_by_user_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "archived_at_timestamp": "2024-01-15T09:30:00Z"
                  },
                  "shipper_org": {
                    "org_id": "org_id",
                    "company_name": "company_name",
                    "handle": "handle"
                  },
                  "off_chrt_shipper_org": {
                    "schema_version": 1,
                    "company_name": "company_name",
                    "industry": "industry",
                    "street_address": {
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
                      "id": 1
                    },
                    "contact_first_name": "contact_first_name",
                    "contact_last_name": "contact_last_name",
                    "phone_number_primary": "phone_number_primary",
                    "phone_number_secondary": "phone_number_secondary",
                    "email_address_primary": "email_address_primary",
                    "email_address_secondary": "email_address_secondary",
                    "job_title": "job_title",
                    "notes": "notes",
                    "shipper_customer_id_for_stripe_connect_account": "shipper_customer_id_for_stripe_connect_account",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "_id": "_id"
                  },
                  "executor_orgs": [
                    {
                      "org_id": "org_id",
                      "company_name": "company_name",
                      "handle": "handle"
                    }
                  ],
                  "drivers": [
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
                  "directory_entries": [
                    {
                      "schema_version": 1,
                      "entry_org_id": "entry_org_id",
                      "entry_off_chrt_shipper_org_id": "entry_off_chrt_shipper_org_id",
                      "company_name": "company_name",
                      "industry": "industry",
                      "location": {
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
                      "contact_first_name": "contact_first_name",
                      "contact_last_name": "contact_last_name",
                      "phone_number_primary": "phone_number_primary",
                      "phone_number_secondary": "phone_number_secondary",
                      "email_address_primary": "email_address_primary",
                      "email_address_secondary": "email_address_secondary",
                      "job_title": "job_title",
                      "notes": "notes",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "_id": "_id"
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
        let expectedResponse = OrderTemplateExpanded(
            orderTemplate: OrderTemplate1(
                schemaVersion: 1,
                name: "name",
                description: Optional("description"),
                orderInput: Optional("order_input"),
                offChrtReferenceIdStr: Optional("off_chrt_reference_id_str"),
                shipperOrgId: Optional("shipper_org_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                executorOrgIds: Optional([
                    "executor_org_ids"
                ]),
                driverIds: Optional([
                    "driver_ids"
                ]),
                directoryEntryIds: Optional([
                    "directory_entry_ids"
                ]),
                id: "_id",
                ownedByUserId: "owned_by_user_id",
                ownedByOrgId: "owned_by_org_id",
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            ),
            shipperOrg: Optional(OrderTemplateOrgRef1(
                orgId: "org_id",
                companyName: Optional("company_name"),
                handle: Optional("handle")
            )),
            offChrtShipperOrg: Optional(OffChrtShipperOrg1(
                schemaVersion: 1,
                companyName: Optional("company_name"),
                industry: Optional("industry"),
                streetAddress: Optional(LocationFeature(
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
                    id: Optional(Id.int(
                        1
                    ))
                )),
                contactFirstName: Optional("contact_first_name"),
                contactLastName: Optional("contact_last_name"),
                phoneNumberPrimary: Optional("phone_number_primary"),
                phoneNumberSecondary: Optional("phone_number_secondary"),
                emailAddressPrimary: "email_address_primary",
                emailAddressSecondary: Optional("email_address_secondary"),
                jobTitle: Optional("job_title"),
                notes: Optional("notes"),
                shipperCustomerIdForStripeConnectAccount: Optional("shipper_customer_id_for_stripe_connect_account"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                id: "_id"
            )),
            executorOrgs: Optional([
                OrderTemplateOrgRef1(
                    orgId: "org_id",
                    companyName: Optional("company_name"),
                    handle: Optional("handle")
                )
            ]),
            drivers: Optional([
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
            ]),
            directoryEntries: Optional([
                DirectoryEntry1(
                    schemaVersion: 1,
                    entryOrgId: Optional("entry_org_id"),
                    entryOffChrtShipperOrgId: Optional("entry_off_chrt_shipper_org_id"),
                    companyName: Optional("company_name"),
                    industry: Optional("industry"),
                    location: Optional(LocationFeature(
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
                    contactFirstName: Optional("contact_first_name"),
                    contactLastName: Optional("contact_last_name"),
                    phoneNumberPrimary: Optional("phone_number_primary"),
                    phoneNumberSecondary: Optional("phone_number_secondary"),
                    emailAddressPrimary: Optional("email_address_primary"),
                    emailAddressSecondary: Optional("email_address_secondary"),
                    jobTitle: Optional("job_title"),
                    notes: Optional("notes"),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    id: "_id"
                )
            ])
        )
        let response = try await client.shipping.orderTemplates.getExpandedByIdV1(
            orderTemplateId: "order_template_id",
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
                      "name": "name",
                      "description": "description",
                      "order_input": "order_input",
                      "off_chrt_reference_id_str": "off_chrt_reference_id_str",
                      "shipper_org_id": "shipper_org_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "executor_org_ids": [
                        "executor_org_ids"
                      ],
                      "driver_ids": [
                        "driver_ids"
                      ],
                      "directory_entry_ids": [
                        "directory_entry_ids"
                      ],
                      "_id": "_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "archived_at_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = OrderTemplateListRes(
            items: [
                OrderTemplate1(
                    schemaVersion: 1,
                    name: "name",
                    description: Optional("description"),
                    orderInput: Optional("order_input"),
                    offChrtReferenceIdStr: Optional("off_chrt_reference_id_str"),
                    shipperOrgId: Optional("shipper_org_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    executorOrgIds: Optional([
                        "executor_org_ids"
                    ]),
                    driverIds: Optional([
                        "driver_ids"
                    ]),
                    directoryEntryIds: Optional([
                        "directory_entry_ids"
                    ]),
                    id: "_id",
                    ownedByUserId: "owned_by_user_id",
                    ownedByOrgId: "owned_by_org_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ],
            totalCount: 1
        )
        let response = try await client.shipping.orderTemplates.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterArchived: true,
            filterOwnedByUserId: "filter_owned_by_user_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "name": "name",
                  "description": "description",
                  "order_input": "order_input",
                  "off_chrt_reference_id_str": "off_chrt_reference_id_str",
                  "shipper_org_id": "shipper_org_id",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "executor_org_ids": [
                    "executor_org_ids"
                  ],
                  "driver_ids": [
                    "driver_ids"
                  ],
                  "directory_entry_ids": [
                    "directory_entry_ids"
                  ],
                  "_id": "_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "owned_by_org_id": "owned_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderTemplate1(
            schemaVersion: 1,
            name: "name",
            description: Optional("description"),
            orderInput: Optional("order_input"),
            offChrtReferenceIdStr: Optional("off_chrt_reference_id_str"),
            shipperOrgId: Optional("shipper_org_id"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            executorOrgIds: Optional([
                "executor_org_ids"
            ]),
            driverIds: Optional([
                "driver_ids"
            ]),
            directoryEntryIds: Optional([
                "directory_entry_ids"
            ]),
            id: "_id",
            ownedByUserId: "owned_by_user_id",
            ownedByOrgId: "owned_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.shipping.orderTemplates.getByIdV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
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
        let response = try await client.shipping.orderTemplates.deleteV1(
            orderTemplateId: "order_template_id",
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
        let response = try await client.shipping.orderTemplates.createV1(
            request: .init(
                schemaVersion: 1,
                name: "name"
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
        let response = try await client.shipping.orderTemplates.updateV1(
            orderTemplateId: "order_template_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func archiveV11() async throws -> Void {
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
        let response = try await client.shipping.orderTemplates.archiveV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unarchiveV11() async throws -> Void {
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
        let response = try await client.shipping.orderTemplates.unarchiveV1(
            orderTemplateId: "order_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func referencesRemoveV11() async throws -> Void {
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
        let response = try await client.shipping.orderTemplates.referencesRemoveV1(
            orderTemplateId: "order_template_id",
            request: .init(column: .shipperOrgId),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}