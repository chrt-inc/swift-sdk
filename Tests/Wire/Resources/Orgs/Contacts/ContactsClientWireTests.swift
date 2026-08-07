import Foundation
import Testing
import Chrt

@Suite("ContactsClient Wire Tests") struct ContactsClientWireTests {
    @Test func accountAddV11() async throws -> Void {
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
        let response = try await client.orgs.contacts.accountAddV1(
            contactId: "contact_id",
            request: .init(accountId: "account_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountRemoveV11() async throws -> Void {
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
        let response = try await client.orgs.contacts.accountRemoveV1(
            contactId: "contact_id",
            accountId: "account_id",
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
        let response = try await client.orgs.contacts.createV1(
            request: .init(
                name: "name",
                schemaVersion: 1
            ),
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
        let response = try await client.orgs.contacts.deleteV1(
            contactId: "contact_id",
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
                      "account_ids": [
                        "account_ids"
                      ],
                      "created_by_org_id": "created_by_org_id",
                      "email_address": "email_address",
                      "job_title": "job_title",
                      "location": {
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
                      "name": "name",
                      "notes": "notes",
                      "off_chrt_org_data_id": "off_chrt_org_data_id",
                      "org_id": "org_id",
                      "phone_number": "phone_number",
                      "schema_version": 1
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
        let expectedResponse = ContactListRes(
            items: [
                Contact1(
                    id: "_id",
                    accountIds: Optional([
                        "account_ids"
                    ]),
                    createdByOrgId: "created_by_org_id",
                    emailAddress: Optional("email_address"),
                    jobTitle: Optional("job_title"),
                    location: Optional(LocationFeature(
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
                    name: "name",
                    notes: Optional("notes"),
                    offChrtOrgDataId: Optional("off_chrt_org_data_id"),
                    orgId: Optional("org_id"),
                    phoneNumber: Optional("phone_number"),
                    schemaVersion: 1
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.contacts.listV1(
            search: "search",
            filterOrgId: "filter_org_id",
            filterOffChrtOrgDataId: "filter_off_chrt_org_data_id",
            filterAccountId: "filter_account_id",
            sortBy: .name,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
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
        let response = try await client.orgs.contacts.updateV1(
            contactId: "contact_id",
            request: .init(),
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
                  "_id": "_id",
                  "account_ids": [
                    "account_ids"
                  ],
                  "created_by_org_id": "created_by_org_id",
                  "email_address": "email_address",
                  "job_title": "job_title",
                  "location": {
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
                  "name": "name",
                  "notes": "notes",
                  "off_chrt_org_data_id": "off_chrt_org_data_id",
                  "org_id": "org_id",
                  "phone_number": "phone_number",
                  "schema_version": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Contact1(
            id: "_id",
            accountIds: Optional([
                "account_ids"
            ]),
            createdByOrgId: "created_by_org_id",
            emailAddress: Optional("email_address"),
            jobTitle: Optional("job_title"),
            location: Optional(LocationFeature(
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
            name: "name",
            notes: Optional("notes"),
            offChrtOrgDataId: Optional("off_chrt_org_data_id"),
            orgId: Optional("org_id"),
            phoneNumber: Optional("phone_number"),
            schemaVersion: 1
        )
        let response = try await client.orgs.contacts.getV1(
            contactId: "contact_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}