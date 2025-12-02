import Foundation
import Testing
import Chrt

@Suite("ShipperContactInfoClient Wire Tests") struct ShipperContactInfoClientWireTests {
    @Test func getCallerV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "shipper_org_id": "shipper_org_id",
                  "shipper_user_id": "shipper_user_id",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "company_name": "company_name",
                  "industry": "industry",
                  "street_address": {
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
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShipperContact1(
            schemaVersion: 1,
            shipperOrgId: Optional("shipper_org_id"),
            shipperUserId: Optional("shipper_user_id"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            companyName: Optional("company_name"),
            industry: Optional("industry"),
            streetAddress: Optional(LocationFeature(
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
        let response = try await client.shipperContactInfo.getCallerV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                    "shipper_org_id": "shipper_org_id",
                    "shipper_user_id": "shipper_user_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
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
                      "properties": {
                        "address": null,
                        "name": null
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
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "_id": "_id"
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
            ShipperContact1(
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shipperUserId: Optional("shipper_user_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
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
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
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
        ]
        let response = try await client.shipperContactInfo.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listCourierContactsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "shipper_user_id": "shipper_user_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
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
                      "properties": {
                        "address": null,
                        "name": null
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
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "_id": "_id"
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
            ShipperContact1(
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shipperUserId: Optional("shipper_user_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
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
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
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
        ]
        let response = try await client.shipperContactInfo.listCourierContactsV1(
            shipperOrgId: "shipper_org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForwarderContactsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "shipper_user_id": "shipper_user_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
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
                      "properties": {
                        "address": null,
                        "name": null
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
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "_id": "_id"
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
            ShipperContact1(
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shipperUserId: Optional("shipper_user_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
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
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
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
        ]
        let response = try await client.shipperContactInfo.listForwarderContactsV1(
            shipperOrgId: "shipper_org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listOffPlatformContactsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "shipper_org_id": "shipper_org_id",
                    "shipper_user_id": "shipper_user_id",
                    "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
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
                      "properties": {
                        "address": null,
                        "name": null
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
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "_id": "_id"
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
            ShipperContact1(
                schemaVersion: 1,
                shipperOrgId: Optional("shipper_org_id"),
                shipperUserId: Optional("shipper_user_id"),
                offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
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
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
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
        ]
        let response = try await client.shipperContactInfo.listOffPlatformContactsV1(
            offChrtShipperOrgId: "off_chrt_shipper_org_id",
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
                  "schema_version": 1,
                  "shipper_org_id": "shipper_org_id",
                  "shipper_user_id": "shipper_user_id",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "company_name": "company_name",
                  "industry": "industry",
                  "street_address": {
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
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShipperContact1(
            schemaVersion: 1,
            shipperOrgId: Optional("shipper_org_id"),
            shipperUserId: Optional("shipper_user_id"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            companyName: Optional("company_name"),
            industry: Optional("industry"),
            streetAddress: Optional(LocationFeature(
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
        let response = try await client.shipperContactInfo.getV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createOnPlatformV11() async throws -> Void {
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
        let response = try await client.shipperContactInfo.createOnPlatformV1(
            request: ShipperContactClientCreate1(
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createOffPlatformV11() async throws -> Void {
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
        let response = try await client.shipperContactInfo.createOffPlatformV1(
            request: ShipperContactClientCreate1(
                schemaVersion: 1
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
        let response = try await client.shipperContactInfo.updateV1(
            shipperContactInfoId: "shipper_contact_info_id",
            request: .init(),
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
        let response = try await client.shipperContactInfo.deleteV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}