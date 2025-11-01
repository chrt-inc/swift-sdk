import Foundation
import Testing
import Chrt

@Suite("ShipperContactInfoClient Wire Tests") struct ShipperContactInfoClientWireTests {
    @Test func getByJwtUserIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
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
                      "name": "name",
                      "mapbox_id": "mapbox_id"
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
                  "shipper_org_id": "shipper_org_id",
                  "shipper_user_id": "shipper_user_id",
                  "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
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
        let expectedResponse = ShipperContactInfo1(
            schemaVersion: 1,
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
                    name: Optional("name"),
                    mapboxId: Optional("mapbox_id")
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
            shipperOrgId: Optional("shipper_org_id"),
            shipperUserId: Optional("shipper_user_id"),
            offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            id: "_id"
        )
        let response = try await client.shipperContactInfo.getByJwtUserIdV1()
        try #require(response == expectedResponse)
    }

    @Test func listByJwtOrgIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
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
                      "properties": {
                        "address": null,
                        "name": null,
                        "mapbox_id": null
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
                    "shipper_org_id": "shipper_org_id",
                    "shipper_user_id": "shipper_user_id",
                    "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
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
            ShipperContactInfo1(
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
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil),
                        mapboxId: Optional(nil)
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
                shipperOrgId: Optional("shipper_org_id"),
                shipperUserId: Optional("shipper_user_id"),
                offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                id: "_id"
            )
        ]
        let response = try await client.shipperContactInfo.listByJwtOrgIdV1()
        try #require(response == expectedResponse)
    }

    @Test func listCourierContactsByShipperOrgIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
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
                      "properties": {
                        "address": null,
                        "name": null,
                        "mapbox_id": null
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
                    "shipper_org_id": "shipper_org_id",
                    "shipper_user_id": "shipper_user_id",
                    "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
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
            ShipperContactInfo1(
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
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil),
                        mapboxId: Optional(nil)
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
                shipperOrgId: Optional("shipper_org_id"),
                shipperUserId: Optional("shipper_user_id"),
                offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                id: "_id"
            )
        ]
        let response = try await client.shipperContactInfo.listCourierContactsByShipperOrgIdV1(shipperOrgId: "shipper_org_id")
        try #require(response == expectedResponse)
    }

    @Test func listByOffChrtShipperOrgInfoIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
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
                      "properties": {
                        "address": null,
                        "name": null,
                        "mapbox_id": null
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
                    "shipper_org_id": "shipper_org_id",
                    "shipper_user_id": "shipper_user_id",
                    "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
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
            ShipperContactInfo1(
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
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil),
                        mapboxId: Optional(nil)
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
                shipperOrgId: Optional("shipper_org_id"),
                shipperUserId: Optional("shipper_user_id"),
                offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                id: "_id"
            )
        ]
        let response = try await client.shipperContactInfo.listByOffChrtShipperOrgInfoIdV1(offChrtShipperOrgInfoId: "off_chrt_shipper_org_info_id")
        try #require(response == expectedResponse)
    }

    @Test func getByIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
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
                      "name": "name",
                      "mapbox_id": "mapbox_id"
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
                  "shipper_org_id": "shipper_org_id",
                  "shipper_user_id": "shipper_user_id",
                  "off_chrt_shipper_org_info_id": "off_chrt_shipper_org_info_id",
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
        let expectedResponse = ShipperContactInfo1(
            schemaVersion: 1,
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
                    name: Optional("name"),
                    mapboxId: Optional("mapbox_id")
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
            shipperOrgId: Optional("shipper_org_id"),
            shipperUserId: Optional("shipper_user_id"),
            offChrtShipperOrgInfoId: Optional("off_chrt_shipper_org_info_id"),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            id: "_id"
        )
        let response = try await client.shipperContactInfo.getByIdV1(id: "id")
        try #require(response == expectedResponse)
    }

    @Test func createOnPlatformV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.shipperContactInfo.createOnPlatformV1(request: ShipperContactInfoClientCreate1(
            schemaVersion: 1
        ))
        try #require(response == expectedResponse)
    }

    @Test func createOffPlatformV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.shipperContactInfo.createOffPlatformV1(request: ShipperContactInfoClientCreate1(
            schemaVersion: 1
        ))
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = WireStub()
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
            request: .init()
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteByIdV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.shipperContactInfo.deleteByIdV1(id: "id")
        try #require(response == expectedResponse)
    }
}