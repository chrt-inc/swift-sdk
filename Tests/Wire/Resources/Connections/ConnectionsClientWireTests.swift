import Foundation
import Testing
import Chrt

@Suite("ConnectionsClient Wire Tests") struct ConnectionsClientWireTests {
    @Test func listShippersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "shipper_org_info_for_connections": {
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
                      "shipper_org_id": "shipper_org_id",
                      "shipper_user_id": "shipper_user_id",
                      "_id": "_id"
                    },
                    "connected": true
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
                shipperOrgInfoForConnections: ShipperOrgInfoForConnections1(
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
                    emailAddressPrimary: "email_address_primary",
                    emailAddressSecondary: Optional("email_address_secondary"),
                    jobTitle: Optional("job_title"),
                    notes: Optional("notes"),
                    shipperOrgId: "shipper_org_id",
                    shipperUserId: Optional("shipper_user_id"),
                    id: "_id"
                ),
                connected: true
            )
        ]
        let response = try await client.connections.listShippersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listCouriersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "courier_org_info_for_connections": {
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
                      "courier_org_id": "courier_org_id",
                      "courier_user_id": "courier_user_id",
                      "_id": "_id"
                    },
                    "connected": true
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
                courierOrgInfoForConnections: CourierOrgInfoForConnections1(
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
                    emailAddressPrimary: "email_address_primary",
                    emailAddressSecondary: Optional("email_address_secondary"),
                    jobTitle: Optional("job_title"),
                    notes: Optional("notes"),
                    courierOrgId: "courier_org_id",
                    courierUserId: Optional("courier_user_id"),
                    id: "_id"
                ),
                connected: true
            )
        ]
        let response = try await client.connections.listCouriersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listForwardersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "forwarder_org_info_for_connections": {
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
                      "forwarder_org_id": "forwarder_org_id",
                      "forwarder_user_id": "forwarder_user_id",
                      "_id": "_id"
                    },
                    "connected": true
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
                forwarderOrgInfoForConnections: ForwarderOrgInfoForConnections1(
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
                    emailAddressPrimary: "email_address_primary",
                    emailAddressSecondary: Optional("email_address_secondary"),
                    jobTitle: Optional("job_title"),
                    notes: Optional("notes"),
                    forwarderOrgId: "forwarder_org_id",
                    forwarderUserId: Optional("forwarder_user_id"),
                    id: "_id"
                ),
                connected: true
            )
        ]
        let response = try await client.connections.listForwardersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getByHandleV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "shipper_org_id": "shipper_org_id",
                  "courier_org_id": "courier_org_id",
                  "connected": true,
                  "shipper_customer_id_for_courier_stripe_connect_account": "shipper_customer_id_for_courier_stripe_connect_account",
                  "default_rate_sheet__routed": "default_rate_sheet__routed",
                  "default_rate_sheet__on_demand": "default_rate_sheet__on_demand",
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
        let expectedResponse = Optional(ConnectionsGetByHandleV1Response.shipperCourierConnection1(
            ShipperCourierConnection1(
                schemaVersion: 1,
                shipperOrgId: "shipper_org_id",
                courierOrgId: "courier_org_id",
                connected: Optional(true),
                shipperCustomerIdForCourierStripeConnectAccount: Optional("shipper_customer_id_for_courier_stripe_connect_account"),
                defaultRateSheetRouted: Optional("default_rate_sheet__routed"),
                defaultRateSheetOnDemand: Optional("default_rate_sheet__on_demand"),
                id: "_id"
            )
        ))
        let response = try await client.connections.getByHandleV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}