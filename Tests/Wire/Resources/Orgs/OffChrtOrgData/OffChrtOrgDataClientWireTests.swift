import Foundation
import Testing
import Chrt

@Suite("OffChrtOrgDataClient Wire Tests") struct OffChrtOrgDataClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "connection_id": "connection_id",
                  "off_chrt_org_data_id": "off_chrt_org_data_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateOffChrtOrgRes(
            connectionId: "connection_id",
            offChrtOrgDataId: "off_chrt_org_data_id"
        )
        let response = try await client.orgs.offChrtOrgData.createV1(
            request: .init(offChrtOrgData: OffChrtOrgDataClientCreate1(
                name: "name",
                orgType: .provider,
                schemaVersion: 1
            )),
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
                      "industry": "industry",
                      "name": "name",
                      "org_type": "provider",
                      "owned_by_org_id": "owned_by_org_id",
                      "phone_number": "phone_number",
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
        let expectedResponse = OffChrtOrgDataListRes(
            items: [
                OffChrtOrgData1(
                    id: "_id",
                    createdByUserId: "created_by_user_id",
                    emailAddress: Optional("email_address"),
                    industry: Optional("industry"),
                    name: "name",
                    orgType: .provider,
                    ownedByOrgId: "owned_by_org_id",
                    phoneNumber: Optional("phone_number"),
                    schemaVersion: 1,
                    streetAddress: Optional(LocationFeature(
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
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.offChrtOrgData.listV1(
            search: "search",
            filterOrgType: .provider,
            sortBy: .name,
            sortOrder: .asc,
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
                  "created_by_user_id": "created_by_user_id",
                  "email_address": "email_address",
                  "industry": "industry",
                  "name": "name",
                  "org_type": "provider",
                  "owned_by_org_id": "owned_by_org_id",
                  "phone_number": "phone_number",
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
        let expectedResponse = OffChrtOrgData1(
            id: "_id",
            createdByUserId: "created_by_user_id",
            emailAddress: Optional("email_address"),
            industry: Optional("industry"),
            name: "name",
            orgType: .provider,
            ownedByOrgId: "owned_by_org_id",
            phoneNumber: Optional("phone_number"),
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
            ))
        )
        let response = try await client.orgs.offChrtOrgData.getByIdV1(
            offChrtOrgDataId: "off_chrt_org_data_id",
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
        let response = try await client.orgs.offChrtOrgData.updateByIdV1(
            offChrtOrgDataId: "off_chrt_org_data_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}