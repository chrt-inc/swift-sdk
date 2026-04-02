import Foundation
import Testing
import Chrt

@Suite("ConnectionsClient Wire Tests") struct ConnectionsClientWireTests {
    @Test func listShippersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "shipper_org_info_for_connections": {
                        "schema_version": 1,
                        "email_address_primary": "email_address_primary",
                        "shipper_org_id": "shipper_org_id",
                        "_id": "_id"
                      },
                      "connected": true
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
        let expectedResponse = ShipperConnectionListRes(
            items: [
                ShipperConnectionRes(
                    shipperOrgInfoForConnections: ShipperOrgInfoForConnections1(
                        schemaVersion: 1,
                        emailAddressPrimary: "email_address_primary",
                        shipperOrgId: "shipper_org_id",
                        id: "_id"
                    ),
                    connected: true
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listShippersV1(
            search: "search",
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listCouriersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "courier_org_info_for_connections": {
                        "schema_version": 1,
                        "email_address_primary": "email_address_primary",
                        "courier_org_id": "courier_org_id",
                        "_id": "_id"
                      },
                      "connected": true
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
        let expectedResponse = CourierConnectionListRes(
            items: [
                CourierConnectionRes(
                    courierOrgInfoForConnections: CourierOrgInfoForConnections1(
                        schemaVersion: 1,
                        emailAddressPrimary: "email_address_primary",
                        courierOrgId: "courier_org_id",
                        id: "_id"
                    ),
                    connected: true
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listCouriersV1(
            search: "search",
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForwardersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "forwarder_org_info_for_connections": {
                        "schema_version": 1,
                        "email_address_primary": "email_address_primary",
                        "forwarder_org_id": "forwarder_org_id",
                        "_id": "_id"
                      },
                      "connected": true
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
        let expectedResponse = ForwarderConnectionListRes(
            items: [
                ForwarderConnectionRes(
                    forwarderOrgInfoForConnections: ForwarderOrgInfoForConnections1(
                        schemaVersion: 1,
                        emailAddressPrimary: "email_address_primary",
                        forwarderOrgId: "forwarder_org_id",
                        id: "_id"
                    ),
                    connected: true
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listForwardersV1(
            search: "search",
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
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
        let response = try await client.orgs.connections.getByHandleV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
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
}