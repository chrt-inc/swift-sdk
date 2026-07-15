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
                  "coordinator_default_department_id": "coordinator_default_department_id",
                  "coordinator_org_id": "coordinator_org_id",
                  "off_chrt_shipper_org_data_id": "off_chrt_shipper_org_data_id",
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
                coordinatorDefaultDepartmentId: Optional("coordinator_default_department_id"),
                coordinatorOrgId: "coordinator_org_id",
                offChrtShipperOrgDataId: Optional("off_chrt_shipper_org_data_id"),
                schemaVersion: 1,
                shipperCustomerIdForCoordinatorStripeConnectAccount: Optional("shipper_customer_id_for_coordinator_stripe_connect_account"),
                shipperOrgId: Optional("shipper_org_id")
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

    @Test func listProviderProviderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "caller_connection_role": "coordinator",
                      "counterparty_off_chrt_org_data": {
                        "_id": "_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "org_type": "provider",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1
                      },
                      "counterparty_org_public_data": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "distance_meters": 1.1,
                      "provider_provider_connection": {
                        "_id": "_id",
                        "coordinator_org_id": "coordinator_org_id",
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
        let expectedResponse = ProviderProviderConnectionListRes(
            items: [
                ProviderProviderConnectionListItem(
                    callerConnectionRole: .coordinator,
                    counterpartyOffChrtOrgData: Optional(OffChrtOrgData1(
                        id: "_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        orgType: .provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    )),
                    counterpartyOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    )),
                    distanceMeters: Optional(1.1),
                    providerProviderConnection: ProviderProviderConnection1(
                        id: "_id",
                        coordinatorOrgId: "coordinator_org_id",
                        schemaVersion: 1
                    )
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listProviderProviderV1(
            search: "search",
            page: 1,
            pageSize: 1,
            latitude: 1.1,
            longitude: 1.1,
            filterCallerConnectionRole: .coordinator,
            filterConnected: true,
            filterAutoAssignEnabled: true,
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
                      "coordinator_org_public_data": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "shipper_provider_connection": {
                        "_id": "_id",
                        "coordinator_org_id": "coordinator_org_id",
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
        let expectedResponse = ShipperProviderConnectionsForShipperListRes(
            items: [
                ShipperProviderConnectionForShipperListItem(
                    coordinatorOrgPublicData: OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    ),
                    shipperProviderConnection: ShipperProviderConnection1(
                        id: "_id",
                        coordinatorOrgId: "coordinator_org_id",
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

    @Test func setShipperProviderDefaultDepartmentV11() async throws -> Void {
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
        let response = try await client.orgs.connections.setShipperProviderDefaultDepartmentV1(
            connectionId: "connection_id",
            request: .init(),
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
                      "off_chrt_shipper_org_data": {
                        "_id": "_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "org_type": "provider",
                        "owned_by_org_id": "owned_by_org_id",
                        "schema_version": 1
                      },
                      "shipper_org_public_data": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "shipper_provider_connection": {
                        "_id": "_id",
                        "coordinator_org_id": "coordinator_org_id",
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
        let expectedResponse = ShipperProviderConnectionsForCoordinatorListRes(
            items: [
                ShipperProviderConnectionForCoordinatorListItem(
                    offChrtShipperOrgData: Optional(OffChrtOrgData1(
                        id: "_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        orgType: .provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    )),
                    shipperOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    )),
                    shipperProviderConnection: ShipperProviderConnection1(
                        id: "_id",
                        coordinatorOrgId: "coordinator_org_id",
                        schemaVersion: 1
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