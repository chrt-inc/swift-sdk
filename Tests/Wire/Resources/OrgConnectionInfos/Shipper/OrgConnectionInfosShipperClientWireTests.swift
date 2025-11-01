import Foundation
import Testing
import Chrt

@Suite("OrgConnectionInfosShipperClient Wire Tests") struct OrgConnectionInfosShipperClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = WireStub()
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
        let expectedResponse = ShipperOrgConnectionInfo1(
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
            emailAddressPrimary: "email_address_primary",
            emailAddressSecondary: Optional("email_address_secondary"),
            jobTitle: Optional("job_title"),
            notes: Optional("notes"),
            shipperOrgId: "shipper_org_id",
            shipperUserId: Optional("shipper_user_id"),
            id: "_id"
        )
        let response = try await client.orgConnectionInfos.shipper.getV1()
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
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
        let response = try await client.orgConnectionInfos.shipper.createV1(request: .init(
            schemaVersion: 1,
            emailAddressPrimary: "email_address_primary"
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
        let response = try await client.orgConnectionInfos.shipper.updateV1(request: .init())
        try #require(response == expectedResponse)
    }
}