import Foundation
import Testing
import Chrt

@Suite("ProviderClient Wire Tests") struct ProviderClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
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
                  "provider_org_id": "provider_org_id",
                  "provider_user_id": "provider_user_id",
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
        let expectedResponse = ProviderOrgInfoForConnections1(
            schemaVersion: 1,
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
            contactFirstName: Optional("contact_first_name"),
            contactLastName: Optional("contact_last_name"),
            phoneNumberPrimary: Optional("phone_number_primary"),
            phoneNumberSecondary: Optional("phone_number_secondary"),
            emailAddressPrimary: "email_address_primary",
            emailAddressSecondary: Optional("email_address_secondary"),
            jobTitle: Optional("job_title"),
            notes: Optional("notes"),
            providerOrgId: "provider_org_id",
            providerUserId: Optional("provider_user_id"),
            id: "_id"
        )
        let response = try await client.orgs.orgInfoForConnections.provider.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
                    "provider_org_id": "provider_org_id",
                    "provider_user_id": "provider_user_id",
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
            ProviderOrgInfoForConnections1(
                schemaVersion: 1,
                industry: Optional("industry"),
                streetAddress: Optional(LocationFeature(
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
                providerOrgId: "provider_org_id",
                providerUserId: Optional("provider_user_id"),
                id: "_id"
            )
        ]
        let response = try await client.orgs.orgInfoForConnections.provider.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
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
        let response = try await client.orgs.orgInfoForConnections.provider.createV1(
            request: .init(
                schemaVersion: 1,
                emailAddressPrimary: "email_address_primary"
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
        let response = try await client.orgs.orgInfoForConnections.provider.updateV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}