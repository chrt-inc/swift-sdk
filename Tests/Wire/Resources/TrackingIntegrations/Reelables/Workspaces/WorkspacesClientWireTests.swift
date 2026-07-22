import Foundation
import Testing
import Chrt

@Suite("WorkspacesClient Wire Tests") struct WorkspacesClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "_id": "_id",
                      "assets_synced_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "org_id": "org_id",
                      "schema_version": 1,
                      "workspace_id": "workspace_id"
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
        let expectedResponse = ReelablesWorkspaceListRes(
            items: [
                ReelablesWorkspace1(
                    id: "_id",
                    assetsSyncedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    name: "name",
                    orgId: "org_id",
                    schemaVersion: 1,
                    workspaceId: "workspace_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.trackingIntegrations.reelables.workspaces.listV1(
            sortBy: .name,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "created_count": 1,
                  "items": [
                    {
                      "_id": "_id",
                      "assets_synced_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "org_id": "org_id",
                      "schema_version": 1,
                      "workspace_id": "workspace_id"
                    }
                  ],
                  "updated_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReelablesWorkspaceSyncRes(
            createdCount: 1,
            items: [
                ReelablesWorkspace1(
                    id: "_id",
                    assetsSyncedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    name: "name",
                    orgId: "org_id",
                    schemaVersion: 1,
                    workspaceId: "workspace_id"
                )
            ],
            updatedCount: 1
        )
        let response = try await client.trackingIntegrations.reelables.workspaces.syncV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}