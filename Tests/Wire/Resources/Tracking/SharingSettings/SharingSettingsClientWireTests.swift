import Foundation
import Testing
import Chrt

@Suite("SharingSettingsClient Wire Tests") struct SharingSettingsClientWireTests {
    @Test func getSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "sharing_settings": {
                      "_id": "_id",
                      "driver_id": "driver_id",
                      "last_changed_by_org_id": "last_changed_by_org_id",
                      "last_changed_by_user_id": "last_changed_by_user_id",
                      "last_changed_timestamp": "2024-01-15T09:30:00Z",
                      "public": true,
                      "schema_version": 1,
                      "task_group_id": "task_group_id"
                    },
                    "task_group_id": "task_group_id"
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
            TrackingSharingSettingsRes(
                sharingSettings: TrackingSharingSettingsResSharingSettings.taskGroupByDriverSharingSettings1(
                    TaskGroupByDriverSharingSettings1(
                        id: "_id",
                        driverId: "driver_id",
                        lastChangedByOrgId: Optional("last_changed_by_org_id"),
                        lastChangedByUserId: Optional("last_changed_by_user_id"),
                        lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                        public: Optional(true),
                        schemaVersion: 1,
                        taskGroupId: "task_group_id"
                    )
                ),
                taskGroupId: "task_group_id"
            )
        ]
        let response = try await client.tracking.sharingSettings.getSettingsV1(
            orderIdOrShortId: "order_id_or_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cargoByDeviceSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "cargo_id": "cargo_id",
                  "device_id": "device_id",
                  "last_changed_by_org_id": "last_changed_by_org_id",
                  "last_changed_by_user_id": "last_changed_by_user_id",
                  "last_changed_timestamp": "2024-01-15T09:30:00Z",
                  "public": true,
                  "schema_version": 1,
                  "task_group_id": "task_group_id"
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
            id: "_id",
            cargoId: "cargo_id",
            deviceId: "device_id",
            lastChangedByOrgId: Optional("last_changed_by_org_id"),
            lastChangedByUserId: Optional("last_changed_by_user_id"),
            lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            public: Optional(true),
            schemaVersion: 1,
            taskGroupId: "task_group_id"
        )
        let response = try await client.tracking.sharingSettings.cargoByDeviceSettingsV1(
            request: .init(
                cargoId: "cargo_id",
                deviceId: "device_id",
                public: true,
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cargoByDriverSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "cargo_id": "cargo_id",
                  "driver_id": "driver_id",
                  "last_changed_by_org_id": "last_changed_by_org_id",
                  "last_changed_by_user_id": "last_changed_by_user_id",
                  "last_changed_timestamp": "2024-01-15T09:30:00Z",
                  "public": true,
                  "schema_version": 1,
                  "task_group_id": "task_group_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoByDriverSharingSettings1(
            id: "_id",
            cargoId: "cargo_id",
            driverId: "driver_id",
            lastChangedByOrgId: Optional("last_changed_by_org_id"),
            lastChangedByUserId: Optional("last_changed_by_user_id"),
            lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            public: Optional(true),
            schemaVersion: 1,
            taskGroupId: "task_group_id"
        )
        let response = try await client.tracking.sharingSettings.cargoByDriverSettingsV1(
            request: .init(
                cargoId: "cargo_id",
                driverId: "driver_id",
                public: true,
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taskGroupByDriverSharingSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "driver_id": "driver_id",
                  "last_changed_by_org_id": "last_changed_by_org_id",
                  "last_changed_by_user_id": "last_changed_by_user_id",
                  "last_changed_timestamp": "2024-01-15T09:30:00Z",
                  "public": true,
                  "schema_version": 1,
                  "task_group_id": "task_group_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupByDriverSharingSettings1(
            id: "_id",
            driverId: "driver_id",
            lastChangedByOrgId: Optional("last_changed_by_org_id"),
            lastChangedByUserId: Optional("last_changed_by_user_id"),
            lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            public: Optional(true),
            schemaVersion: 1,
            taskGroupId: "task_group_id"
        )
        let response = try await client.tracking.sharingSettings.taskGroupByDriverSharingSettingsV1(
            request: .init(
                driverId: "driver_id",
                public: true,
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}