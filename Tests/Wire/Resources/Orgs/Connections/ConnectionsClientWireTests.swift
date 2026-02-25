import Foundation
import Testing
import Chrt

@Suite("ConnectionsClient Wire Tests") struct ConnectionsClientWireTests {
    @Test func getByHandleV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "connected": true,
                  "courier_org_id": "courier_org_id",
                  "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
                  "default_rate_sheet__routed": "default_rate_sheet__routed",
                  "schema_version": 1,
                  "shipper_customer_id_for_courier_stripe_connect_account": "shipper_customer_id_for_courier_stripe_connect_account",
                  "shipper_org_id": "shipper_org_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Optional(ConnectionsGetByHandleV1Response.shipperCourierConnection1(
            ShipperCourierConnection1(
                id: "_id",
                connected: Optional(true),
                courierOrgId: "courier_org_id",
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
                schemaVersion: 1,
                shipperCustomerIdForCourierStripeConnectAccount: Optional("shipper_customer_id_for_courier_stripe_connect_account"),
                shipperOrgId: "shipper_org_id"
            )
        ))
        let response = try await client.orgs.connections.getByHandleV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listCouriersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "connected": true,
                    "courier_org_info_for_connections": {
                      "_id": "_id",
                      "contact_first_name": "contact_first_name",
                      "contact_last_name": "contact_last_name",
                      "courier_org_id": "courier_org_id",
                      "courier_user_id": "courier_user_id",
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
            CourierConnectionRes(
                connected: true,
                courierOrgInfoForConnections: CourierOrgInfoForConnections1(
                    id: "_id",
                    contactFirstName: Optional("contact_first_name"),
                    contactLastName: Optional("contact_last_name"),
                    courierOrgId: "courier_org_id",
                    courierUserId: Optional("courier_user_id"),
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
            )
        ]
        let response = try await client.orgs.connections.listCouriersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createConnectionToCourierV11() async throws -> Void {
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
        let response = try await client.orgs.connections.createConnectionToCourierV1(
            request: CreateConnectionReq(
                handle: "handle"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createConnectionToForwarderV11() async throws -> Void {
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
        let response = try await client.orgs.connections.createConnectionToForwarderV1(
            request: CreateConnectionReq(
                handle: "handle"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createConnectionToShipperV11() async throws -> Void {
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
        let response = try await client.orgs.connections.createConnectionToShipperV1(
            request: CreateConnectionReq(
                handle: "handle"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForwardersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "connected": true,
                    "forwarder_org_info_for_connections": {
                      "_id": "_id",
                      "contact_first_name": "contact_first_name",
                      "contact_last_name": "contact_last_name",
                      "email_address_primary": "email_address_primary",
                      "email_address_secondary": "email_address_secondary",
                      "forwarder_org_id": "forwarder_org_id",
                      "forwarder_user_id": "forwarder_user_id",
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
            ForwarderConnectionRes(
                connected: true,
                forwarderOrgInfoForConnections: ForwarderOrgInfoForConnections1(
                    id: "_id",
                    contactFirstName: Optional("contact_first_name"),
                    contactLastName: Optional("contact_last_name"),
                    emailAddressPrimary: "email_address_primary",
                    emailAddressSecondary: Optional("email_address_secondary"),
                    forwarderOrgId: "forwarder_org_id",
                    forwarderUserId: Optional("forwarder_user_id"),
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
            )
        ]
        let response = try await client.orgs.connections.listForwardersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listShippersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "connected": true,
                    "shipper_org_info_for_connections": {
                      "_id": "_id",
                      "contact_first_name": "contact_first_name",
                      "contact_last_name": "contact_last_name",
                      "email_address_primary": "email_address_primary",
                      "email_address_secondary": "email_address_secondary",
                      "industry": "industry",
                      "job_title": "job_title",
                      "notes": "notes",
                      "phone_number_primary": "phone_number_primary",
                      "phone_number_secondary": "phone_number_secondary",
                      "schema_version": 1,
                      "shipper_org_id": "shipper_org_id",
                      "shipper_user_id": "shipper_user_id",
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
            ShipperConnectionRes(
                connected: true,
                shipperOrgInfoForConnections: ShipperOrgInfoForConnections1(
                    id: "_id",
                    contactFirstName: Optional("contact_first_name"),
                    contactLastName: Optional("contact_last_name"),
                    emailAddressPrimary: "email_address_primary",
                    emailAddressSecondary: Optional("email_address_secondary"),
                    industry: Optional("industry"),
                    jobTitle: Optional("job_title"),
                    notes: Optional("notes"),
                    phoneNumberPrimary: Optional("phone_number_primary"),
                    phoneNumberSecondary: Optional("phone_number_secondary"),
                    schemaVersion: 1,
                    shipperOrgId: "shipper_org_id",
                    shipperUserId: Optional("shipper_user_id"),
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
            )
        ]
        let response = try await client.orgs.connections.listShippersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}