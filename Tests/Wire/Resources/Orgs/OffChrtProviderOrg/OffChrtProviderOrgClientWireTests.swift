import Foundation
import Testing
import Chrt

@Suite("OffChrtProviderOrgClient Wire Tests") struct OffChrtProviderOrgClientWireTests {
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
        let response = try await client.orgs.offChrtProviderOrg.createV1(
            request: .init(
                emailAddressPrimary: "email_address_primary",
                schemaVersion: 1
            ),
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
                      "_id": "_id",
                      "company_name": "company_name",
                      "contact_first_name": "contact_first_name",
                      "contact_last_name": "contact_last_name",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "email_address_primary": "email_address_primary",
                      "email_address_secondary": "email_address_secondary",
                      "industry": "industry",
                      "job_title": "job_title",
                      "notes": "notes",
                      "phone_number_primary": "phone_number_primary",
                      "phone_number_secondary": "phone_number_secondary",
                      "schema_version": 1,
                      "street_address": {
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
        let expectedResponse = OffChrtProviderOrgListRes(
            items: [
                OffChrtProviderOrg1(
                    id: "_id",
                    companyName: Optional("company_name"),
                    contactFirstName: Optional("contact_first_name"),
                    contactLastName: Optional("contact_last_name"),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    emailAddressPrimary: "email_address_primary",
                    emailAddressSecondary: Optional("email_address_secondary"),
                    industry: Optional("industry"),
                    jobTitle: Optional("job_title"),
                    notes: Optional("notes"),
                    phoneNumberPrimary: Optional("phone_number_primary"),
                    phoneNumberSecondary: Optional("phone_number_secondary"),
                    schemaVersion: 1,
                    streetAddress: Optional(LocationFeature(
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
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.offChrtProviderOrg.listV1(
            page: 1,
            pageSize: 1,
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
                  "_id": "_id",
                  "company_name": "company_name",
                  "contact_first_name": "contact_first_name",
                  "contact_last_name": "contact_last_name",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "email_address_primary": "email_address_primary",
                  "email_address_secondary": "email_address_secondary",
                  "industry": "industry",
                  "job_title": "job_title",
                  "notes": "notes",
                  "phone_number_primary": "phone_number_primary",
                  "phone_number_secondary": "phone_number_secondary",
                  "schema_version": 1,
                  "street_address": {
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
        let expectedResponse = OffChrtProviderOrg1(
            id: "_id",
            companyName: Optional("company_name"),
            contactFirstName: Optional("contact_first_name"),
            contactLastName: Optional("contact_last_name"),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            emailAddressPrimary: "email_address_primary",
            emailAddressSecondary: Optional("email_address_secondary"),
            industry: Optional("industry"),
            jobTitle: Optional("job_title"),
            notes: Optional("notes"),
            phoneNumberPrimary: Optional("phone_number_primary"),
            phoneNumberSecondary: Optional("phone_number_secondary"),
            schemaVersion: 1,
            streetAddress: Optional(LocationFeature(
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
            ))
        )
        let response = try await client.orgs.offChrtProviderOrg.getByIdV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteByIdV11() async throws -> Void {
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
        let response = try await client.orgs.offChrtProviderOrg.deleteByIdV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateByIdV11() async throws -> Void {
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
        let response = try await client.orgs.offChrtProviderOrg.updateByIdV1(
            id: "id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}