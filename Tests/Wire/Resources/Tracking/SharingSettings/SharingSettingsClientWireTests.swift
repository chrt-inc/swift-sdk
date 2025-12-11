import Foundation
import Testing
import Chrt

@Suite("SharingSettingsClient Wire Tests") struct SharingSettingsClientWireTests {
    @Test func byOrderV11() async throws -> Void {
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
        let response = try await client.tracking.sharingSettings.byOrderV1(
            orderIdOrShortId: "order_id_or_short_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}