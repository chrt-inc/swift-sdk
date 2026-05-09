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

    @Test func listProvidersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "provider_org_info_for_connections": {
                        "schema_version": 1,
                        "email_address_primary": "email_address_primary",
                        "provider_org_id": "provider_org_id",
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
        let expectedResponse = ProviderConnectionListRes(
            items: [
                ProviderConnectionRes(
                    providerOrgInfoForConnections: ProviderOrgInfoForConnections1(
                        schemaVersion: 1,
                        emailAddressPrimary: "email_address_primary",
                        providerOrgId: "provider_org_id",
                        id: "_id"
                    ),
                    connected: true
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

    @Test func getByHandleV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "department_id": "department_id",
                  "shipper_org_id": "shipper_org_id",
                  "coordinator_org_id": "coordinator_org_id",
                  "connected": true,
                  "shipper_customer_id_for_coordinator_stripe_connect_account": "shipper_customer_id_for_coordinator_stripe_connect_account",
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
        let expectedResponse = Optional(ConnectionsGetByHandleV1Response.shipperProviderConnection1(
            ShipperProviderConnection1(
                schemaVersion: 1,
                departmentId: Optional("department_id"),
                shipperOrgId: "shipper_org_id",
                coordinatorOrgId: "coordinator_org_id",
                connected: Optional(true),
                shipperCustomerIdForCoordinatorStripeConnectAccount: Optional("shipper_customer_id_for_coordinator_stripe_connect_account"),
                id: "_id"
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

    @Test func setDepartmentV11() async throws -> Void {
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
        let response = try await client.orgs.connections.setDepartmentV1(
            connectionId: "connection_id",
            request: .init(),
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
}