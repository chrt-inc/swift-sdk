import Foundation
import Testing
import Chrt

@Suite("DirectoryEntriesClient Wire Tests") struct DirectoryEntriesClientWireTests {
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
        let response = try await client.orgs.directoryEntries.createV1(
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
        let response = try await client.orgs.directoryEntries.deleteV1(
            directoryEntryId: "directory_entry_id",
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
                      "created_by_user_id": "created_by_user_id",
                      "email_address": "email_address",
                      "entry_off_chrt_org_data_id": "entry_off_chrt_org_data_id",
                      "entry_org_id": "entry_org_id",
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
                      "owned_by_org_id": "owned_by_org_id",
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
        let expectedResponse = DirectoryEntryListRes(
            items: [
                DirectoryEntry1(
                    id: "_id",
                    createdByUserId: "created_by_user_id",
                    emailAddress: Optional("email_address"),
                    entryOffChrtOrgDataId: Optional("entry_off_chrt_org_data_id"),
                    entryOrgId: Optional("entry_org_id"),
                    jobTitle: Optional("job_title"),
                    location: Optional(LocationFeature(
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
                    name: "name",
                    notes: Optional("notes"),
                    ownedByOrgId: "owned_by_org_id",
                    phoneNumber: Optional("phone_number"),
                    schemaVersion: 1
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.directoryEntries.listV1(
            search: "search",
            filterEntryOrgId: "filter_entry_org_id",
            filterEntryOffChrtOrgDataId: "filter_entry_off_chrt_org_data_id",
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
        let response = try await client.orgs.directoryEntries.updateV1(
            directoryEntryId: "directory_entry_id",
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
                  "created_by_user_id": "created_by_user_id",
                  "email_address": "email_address",
                  "entry_off_chrt_org_data_id": "entry_off_chrt_org_data_id",
                  "entry_org_id": "entry_org_id",
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
                  "owned_by_org_id": "owned_by_org_id",
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
        let expectedResponse = DirectoryEntry1(
            id: "_id",
            createdByUserId: "created_by_user_id",
            emailAddress: Optional("email_address"),
            entryOffChrtOrgDataId: Optional("entry_off_chrt_org_data_id"),
            entryOrgId: Optional("entry_org_id"),
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
            name: "name",
            notes: Optional("notes"),
            ownedByOrgId: "owned_by_org_id",
            phoneNumber: Optional("phone_number"),
            schemaVersion: 1
        )
        let response = try await client.orgs.directoryEntries.getV1(
            directoryEntryId: "directory_entry_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}