import Foundation
import Testing
import Chrt

@Suite("SharingClient Wire Tests") struct SharingClientWireTests {
    @Test func getSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "task_group_id": "task_group_id",
                    "sharing_settings": {
                      "schema_version": 1,
                      "task_group_id": "task_group_id",
                      "driver_id": "driver_id",
                      "public": true,
                      "last_changed_by_user_id": "last_changed_by_user_id",
                      "last_changed_by_org_id": "last_changed_by_org_id",
                      "last_changed_timestamp": "2024-01-15T09:30:00Z",
                      "_id": "_id"
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
            TrackingSharingSettingsRes(
                taskGroupId: "task_group_id",
                sharingSettings: TrackingSharingSettingsResSharingSettings.taskGroupByDriverSharingSettings1(
                    TaskGroupByDriverSharingSettings1(
                        schemaVersion: 1,
                        taskGroupId: "task_group_id",
                        driverId: "driver_id",
                        public: Optional(true),
                        lastChangedByUserId: Optional("last_changed_by_user_id"),
                        lastChangedByOrgId: Optional("last_changed_by_org_id"),
                        lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                        id: "_id"
                    )
                )
            )
        ]
        let response = try await client.tracking.sharing.getSettingsV1(
            orderIdOrShortId: "order_id_or_short_id",
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
                  "schema_version": 1,
                  "task_group_id": "task_group_id",
                  "driver_id": "driver_id",
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
        let expectedResponse = TaskGroupByDriverSharingSettings1(
            schemaVersion: 1,
            taskGroupId: "task_group_id",
            driverId: "driver_id",
            public: Optional(true),
            lastChangedByUserId: Optional("last_changed_by_user_id"),
            lastChangedByOrgId: Optional("last_changed_by_org_id"),
            lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: "_id"
        )
        let response = try await client.tracking.sharing.taskGroupByDriverSharingSettingsV1(
            request: .init(
                taskGroupId: "task_group_id",
                driverId: "driver_id",
                public: true
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
                  "schema_version": 1,
                  "task_group_id": "task_group_id",
                  "cargo_id": "cargo_id",
                  "driver_id": "driver_id",
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
        let expectedResponse = CargoByDriverSharingSettings1(
            schemaVersion: 1,
            taskGroupId: "task_group_id",
            cargoId: "cargo_id",
            driverId: "driver_id",
            public: Optional(true),
            lastChangedByUserId: Optional("last_changed_by_user_id"),
            lastChangedByOrgId: Optional("last_changed_by_org_id"),
            lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            id: "_id"
        )
        let response = try await client.tracking.sharing.cargoByDriverSettingsV1(
            request: .init(
                taskGroupId: "task_group_id",
                cargoId: "cargo_id",
                driverId: "driver_id",
                public: true
            ),
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
        let response = try await client.tracking.sharing.cargoByDeviceSettingsV1(
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