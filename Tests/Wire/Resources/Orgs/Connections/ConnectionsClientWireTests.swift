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
        let expectedResponse = Optional(ConnectionsGetByHandleV1Response.shipperCoordinatorConnection1(
            ShipperCoordinatorConnection1(
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

    @Test func listCoordinatorsForExecutorV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "coordinator_executor_connection": {
                        "_id": "_id",
                        "coordinator_org_id": "coordinator_org_id",
                        "schema_version": 1
                      },
                      "coordinator_org_public_data": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
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
        let expectedResponse = CoordinatorExecutorConnectionsForExecutorListRes(
            items: [
                CoordinatorExecutorConnectionForExecutorListItem(
                    coordinatorExecutorConnection: CoordinatorExecutorConnection1(
                        id: "_id",
                        coordinatorOrgId: "coordinator_org_id",
                        schemaVersion: 1
                    ),
                    coordinatorOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listCoordinatorsForExecutorV1(
            search: "search",
            page: 1,
            pageSize: 1,
            filterAutoAssignEnabled: true,
            filterConnected: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listCoordinatorsForShipperV11() async throws -> Void {
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
                      "shipper_coordinator_connection": {
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
        let expectedResponse = ShipperCoordinatorConnectionsForShipperListRes(
            items: [
                ShipperCoordinatorConnectionForShipperListItem(
                    coordinatorOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    )),
                    shipperCoordinatorConnection: ShipperCoordinatorConnection1(
                        id: "_id",
                        coordinatorOrgId: "coordinator_org_id",
                        schemaVersion: 1
                    )
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listCoordinatorsForShipperV1(
            search: "search",
            page: 1,
            pageSize: 1,
            filterConnected: true,
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

    @Test func listExecutorsGeoSearchForCoordinatorV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "coordinator_executor_connection": {
                        "_id": "_id",
                        "coordinator_org_id": "coordinator_org_id",
                        "schema_version": 1
                      },
                      "distance_meters": 1.1,
                      "executor_org_public_data": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "off_chrt_executor_org_data": {
                        "_id": "_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "org_type": "provider",
                        "owned_by_org_id": "owned_by_org_id",
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
        let expectedResponse = CoordinatorExecutorConnectionsForCoordinatorGeoSearchListRes(
            items: [
                CoordinatorExecutorConnectionForCoordinatorGeoSearchListItem(
                    coordinatorExecutorConnection: CoordinatorExecutorConnection1(
                        id: "_id",
                        coordinatorOrgId: "coordinator_org_id",
                        schemaVersion: 1
                    ),
                    distanceMeters: Optional(1.1),
                    executorOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    )),
                    offChrtExecutorOrgData: Optional(OffChrtOrgData1(
                        id: "_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        orgType: .provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listExecutorsGeoSearchForCoordinatorV1(
            nearLatitude: 1.1,
            nearLongitude: 1.1,
            page: 1,
            pageSize: 1,
            filterAutoAssignEnabled: true,
            filterConnected: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listExecutorsForCoordinatorV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "coordinator_executor_connection": {
                        "_id": "_id",
                        "coordinator_org_id": "coordinator_org_id",
                        "schema_version": 1
                      },
                      "executor_org_public_data": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "off_chrt_executor_org_data": {
                        "_id": "_id",
                        "created_by_user_id": "created_by_user_id",
                        "name": "name",
                        "org_type": "provider",
                        "owned_by_org_id": "owned_by_org_id",
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
        let expectedResponse = CoordinatorExecutorConnectionsForCoordinatorListRes(
            items: [
                CoordinatorExecutorConnectionForCoordinatorListItem(
                    coordinatorExecutorConnection: CoordinatorExecutorConnection1(
                        id: "_id",
                        coordinatorOrgId: "coordinator_org_id",
                        schemaVersion: 1
                    ),
                    executorOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    )),
                    offChrtExecutorOrgData: Optional(OffChrtOrgData1(
                        id: "_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        orgType: .provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listExecutorsForCoordinatorV1(
            search: "search",
            page: 1,
            pageSize: 1,
            filterAutoAssignEnabled: true,
            filterConnected: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setCoordinatorExecutorAutoAssignV11() async throws -> Void {
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
        let response = try await client.orgs.connections.setCoordinatorExecutorAutoAssignV1(
            connectionId: "connection_id",
            request: .init(autoAssignEnabled: true),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setShipperCoordinatorDefaultDepartmentV11() async throws -> Void {
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
        let response = try await client.orgs.connections.setShipperCoordinatorDefaultDepartmentV1(
            connectionId: "connection_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listShippersForCoordinatorV11() async throws -> Void {
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
                      "shipper_coordinator_connection": {
                        "_id": "_id",
                        "coordinator_org_id": "coordinator_org_id",
                        "schema_version": 1
                      },
                      "shipper_org_public_data": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
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
        let expectedResponse = ShipperCoordinatorConnectionsForCoordinatorListRes(
            items: [
                ShipperCoordinatorConnectionForCoordinatorListItem(
                    offChrtShipperOrgData: Optional(OffChrtOrgData1(
                        id: "_id",
                        createdByUserId: "created_by_user_id",
                        name: "name",
                        orgType: .provider,
                        ownedByOrgId: "owned_by_org_id",
                        schemaVersion: 1
                    )),
                    shipperCoordinatorConnection: ShipperCoordinatorConnection1(
                        id: "_id",
                        coordinatorOrgId: "coordinator_org_id",
                        schemaVersion: 1
                    ),
                    shipperOrgPublicData: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: .provider,
                        schemaVersion: 1
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.connections.listShippersForCoordinatorV1(
            search: "search",
            page: 1,
            pageSize: 1,
            filterConnected: true,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}