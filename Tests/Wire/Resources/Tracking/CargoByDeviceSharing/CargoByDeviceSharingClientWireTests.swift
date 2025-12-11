import Foundation
import Testing
import Chrt

@Suite("CargoByDeviceSharingClient Wire Tests") struct CargoByDeviceSharingClientWireTests {
    @Test func postSharingSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "task_group_id": "task_group_id",
                  "cargo_id": "cargo_id",
                  "device_id": "device_id",
                  "public": true,
                  "last_changed_by_user_id": "last_changed_by_user_id",
                  "last_changed_by_org_id": "last_changed_by_org_id",
                  "last_changed_timestamp": "2024-01-15T09:30:00Z",
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
        let expectedResponse = CargoByDeviceSharingSettings1(
            schemaVersion: 1,
            taskGroupId: "task_group_id",
            cargoId: "cargo_id",
            deviceId: "device_id",
            public: Optional(true),
            lastChangedByUserId: Optional("last_changed_by_user_id"),
            lastChangedByOrgId: Optional("last_changed_by_org_id"),
            lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: "_id"
        )
        let response = try await client.tracking.cargoByDeviceSharing.postSharingSettingsV1(
            request: .init(
                taskGroupId: "task_group_id",
                cargoId: "cargo_id",
                deviceId: "device_id",
                public: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}