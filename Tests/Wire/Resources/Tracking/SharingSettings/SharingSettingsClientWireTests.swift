import Foundation
import Testing
import Chrt

@Suite("SharingSettingsClient Wire Tests") struct SharingSettingsClientWireTests {
    @Test func getSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "sharing_settings": {
                      "_id": "_id",
                      "last_changed_by_org_id": "last_changed_by_org_id",
                      "last_changed_by_user_id": "last_changed_by_user_id",
                      "last_changed_timestamp": "2024-01-15T09:30:00Z",
                      "public": true,
                      "public_link_token": "public_link_token",
                      "schema_version": 1,
                      "task_group_id": "task_group_id"
                    },
                    "task_group_id": "task_group_id"
                  }
                ]
                """#.utf8
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
                        lastChangedByOrgId: Optional("last_changed_by_org_id"),
                        lastChangedByUserId: Optional("last_changed_by_user_id"),
                        lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                        public: Optional(true),
                        publicLinkToken: Optional("public_link_token"),
                        schemaVersion: 1,
                        taskGroupId: "task_group_id"
                    )
                ),
                taskGroupId: "task_group_id"
            )
        ]
        let response = try await client.tracking.sharingSettings.getSettingsV1(
            orderRef: "order_ref",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cargoByDeviceSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
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
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "cargo_id": "cargo_id",
                  "last_changed_by_org_id": "last_changed_by_org_id",
                  "last_changed_by_user_id": "last_changed_by_user_id",
                  "last_changed_timestamp": "2024-01-15T09:30:00Z",
                  "public": true,
                  "public_link_token": "public_link_token",
                  "schema_version": 1,
                  "task_group_id": "task_group_id"
                }
                """#.utf8
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
            lastChangedByOrgId: Optional("last_changed_by_org_id"),
            lastChangedByUserId: Optional("last_changed_by_user_id"),
            lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            public: Optional(true),
            publicLinkToken: Optional("public_link_token"),
            schemaVersion: 1,
            taskGroupId: "task_group_id"
        )
        let response = try await client.tracking.sharingSettings.cargoByDriverSettingsV1(
            request: .init(
                cargoId: "cargo_id",
                public: true,
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getCargoByDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "public_link_expires_at_timestamp": "2024-01-15T09:30:00Z",
                  "sharing_settings": {
                    "_id": "_id",
                    "cargo_id": "cargo_id",
                    "last_changed_by_org_id": "last_changed_by_org_id",
                    "last_changed_by_user_id": "last_changed_by_user_id",
                    "last_changed_timestamp": "2024-01-15T09:30:00Z",
                    "public": true,
                    "public_link_token": "public_link_token",
                    "schema_version": 1,
                    "task_group_id": "task_group_id"
                  }
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoByDriverSharingSettingsRes(
            publicLinkExpiresAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            sharingSettings: Optional(CargoByDriverSharingSettings1(
                id: "_id",
                cargoId: "cargo_id",
                lastChangedByOrgId: Optional("last_changed_by_org_id"),
                lastChangedByUserId: Optional("last_changed_by_user_id"),
                lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                public: Optional(true),
                publicLinkToken: Optional("public_link_token"),
                schemaVersion: 1,
                taskGroupId: "task_group_id"
            ))
        )
        let response = try await client.tracking.sharingSettings.getCargoByDriverV1(
            taskGroupId: "task_group_id",
            cargoId: "cargo_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taskGroupByDriverSharingSettingsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "last_changed_by_org_id": "last_changed_by_org_id",
                  "last_changed_by_user_id": "last_changed_by_user_id",
                  "last_changed_timestamp": "2024-01-15T09:30:00Z",
                  "public": true,
                  "public_link_token": "public_link_token",
                  "schema_version": 1,
                  "task_group_id": "task_group_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupByDriverSharingSettings1(
            id: "_id",
            lastChangedByOrgId: Optional("last_changed_by_org_id"),
            lastChangedByUserId: Optional("last_changed_by_user_id"),
            lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            public: Optional(true),
            publicLinkToken: Optional("public_link_token"),
            schemaVersion: 1,
            taskGroupId: "task_group_id"
        )
        let response = try await client.tracking.sharingSettings.taskGroupByDriverSharingSettingsV1(
            request: .init(
                public: true,
                taskGroupId: "task_group_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getTaskGroupByDriverV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "public_link_expires_at_timestamp": "2024-01-15T09:30:00Z",
                  "sharing_settings": {
                    "_id": "_id",
                    "last_changed_by_org_id": "last_changed_by_org_id",
                    "last_changed_by_user_id": "last_changed_by_user_id",
                    "last_changed_timestamp": "2024-01-15T09:30:00Z",
                    "public": true,
                    "public_link_token": "public_link_token",
                    "schema_version": 1,
                    "task_group_id": "task_group_id"
                  }
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskGroupByDriverSharingSettingsRes(
            publicLinkExpiresAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            sharingSettings: Optional(TaskGroupByDriverSharingSettings1(
                id: "_id",
                lastChangedByOrgId: Optional("last_changed_by_org_id"),
                lastChangedByUserId: Optional("last_changed_by_user_id"),
                lastChangedTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                public: Optional(true),
                publicLinkToken: Optional("public_link_token"),
                schemaVersion: 1,
                taskGroupId: "task_group_id"
            ))
        )
        let response = try await client.tracking.sharingSettings.getTaskGroupByDriverV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}