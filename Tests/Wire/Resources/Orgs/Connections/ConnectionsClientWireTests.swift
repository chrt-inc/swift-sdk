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
                  "coordinator_org_id": "coordinator_org_id",
                  "schema_version": 1,
                  "shipper_customer_id_for_coordinator_stripe_connect_account": "shipper_customer_id_for_coordinator_stripe_connect_account",
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
        let expectedResponse = Optional(ConnectionsGetByHandleV1Response.shipperProviderConnection1(
            ShipperProviderConnection1(
                id: "_id",
                connected: Optional(true),
                coordinatorOrgId: "coordinator_org_id",
                schemaVersion: 1,
                shipperCustomerIdForCoordinatorStripeConnectAccount: Optional("shipper_customer_id_for_coordinator_stripe_connect_account"),
                shipperOrgId: "shipper_org_id"
            )
        ))
        let response = try await client.orgs.connections.getByHandleV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createConnectionToProviderV11() async throws -> Void {
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
        let response = try await client.orgs.connections.createConnectionToProviderV1(
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

    @Test func listProvidersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "connected": true,
                      "provider_org_info_for_connections": {
                        "_id": "_id",
                        "email_address_primary": "email_address_primary",
                        "provider_org_id": "provider_org_id",
                        "schema_version": 1
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
        let expectedResponse = ProviderConnectionListRes(
            items: [
                ProviderConnectionRes(
                    connected: true,
                    providerOrgInfoForConnections: ProviderOrgInfoForConnections1(
                        id: "_id",
                        emailAddressPrimary: "email_address_primary",
                        providerOrgId: "provider_org_id",
                        schemaVersion: 1
                    )
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listProvidersV1(
            search: "search",
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setProviderProviderAutoAssignV11() async throws -> Void {
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
        let response = try await client.orgs.connections.setProviderProviderAutoAssignV1(
            connectionId: "connection_id",
            request: .init(autoAssignEnabled: true),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listShippersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "connected": true,
                      "shipper_org_info_for_connections": {
                        "_id": "_id",
                        "email_address_primary": "email_address_primary",
                        "schema_version": 1,
                        "shipper_org_id": "shipper_org_id"
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
        let expectedResponse = ShipperConnectionListRes(
            items: [
                ShipperConnectionRes(
                    connected: true,
                    shipperOrgInfoForConnections: ShipperOrgInfoForConnections1(
                        id: "_id",
                        emailAddressPrimary: "email_address_primary",
                        schemaVersion: 1,
                        shipperOrgId: "shipper_org_id"
                    )
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
}