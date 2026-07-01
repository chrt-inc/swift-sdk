import Foundation
import Testing
import Chrt

@Suite("CargoaiTrackAndTraceClient Wire Tests") struct CargoaiTrackAndTraceClientWireTests {
    @Test func subscribeV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "active_until": "2024-01-15T09:30:00Z",
                  "awb": "awb",
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "last_update_received_at": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "subscribed_at": "2024-01-15T09:30:00Z",
                  "subscribed_emails": [
                    "subscribed_emails"
                  ],
                  "tracking_update_ids": [
                    "tracking_update_ids"
                  ],
                  "updated_at": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoAiTrackAndTraceSubscription1(
            id: "_id",
            activeUntil: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            awb: "awb",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            lastUpdateReceivedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            schemaVersion: 1,
            subscribedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            subscribedEmails: Optional([
                "subscribed_emails"
            ]),
            trackingUpdateIds: Optional([
                "tracking_update_ids"
            ]),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.integrations.cargoaiTrackAndTrace.subscribeV1(
            request: .init(awb: "awb"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "active_until": "2024-01-15T09:30:00Z",
                  "awb": "awb",
                  "created_at": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "last_update_received_at": "2024-01-15T09:30:00Z",
                  "schema_version": 1,
                  "subscribed_at": "2024-01-15T09:30:00Z",
                  "subscribed_emails": [
                    "subscribed_emails"
                  ],
                  "tracking_update_ids": [
                    "tracking_update_ids"
                  ],
                  "updated_at": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoAiTrackAndTraceSubscription1(
            id: "_id",
            activeUntil: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            awb: "awb",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            lastUpdateReceivedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            schemaVersion: 1,
            subscribedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            subscribedEmails: Optional([
                "subscribed_emails"
            ]),
            trackingUpdateIds: Optional([
                "tracking_update_ids"
            ]),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.integrations.cargoaiTrackAndTrace.subscriptionV1(
            awb: "awb",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionsByTaskGroupV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "active_until": "2024-01-15T09:30:00Z",
                    "awb": "awb",
                    "created_at": "2024-01-15T09:30:00Z",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "last_update_received_at": "2024-01-15T09:30:00Z",
                    "schema_version": 1,
                    "subscribed_at": "2024-01-15T09:30:00Z",
                    "subscribed_emails": [
                      "subscribed_emails"
                    ],
                    "tracking_update_ids": [
                      "tracking_update_ids"
                    ],
                    "updated_at": "2024-01-15T09:30:00Z"
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
            CargoAiTrackAndTraceSubscription1(
                id: "_id",
                activeUntil: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                awb: "awb",
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                lastUpdateReceivedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                schemaVersion: 1,
                subscribedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                subscribedEmails: Optional([
                    "subscribed_emails"
                ]),
                trackingUpdateIds: Optional([
                    "tracking_update_ids"
                ]),
                updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.integrations.cargoaiTrackAndTrace.subscriptionsByTaskGroupV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updatesV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "alerts": {
                      "level": "OK",
                      "message": "message"
                    },
                    "awb": "awb",
                    "carbonEmission": "carbonEmission",
                    "destination": "destination",
                    "events": [
                      {}
                    ],
                    "newEvents": [
                      {}
                    ],
                    "oldEvents": [
                      {}
                    ],
                    "origin": "origin",
                    "pieces": "pieces",
                    "receivedAt": "2024-01-15T09:30:00Z",
                    "schemaVersion": 1,
                    "source": "webhook",
                    "status": "status",
                    "volume": "volume",
                    "weight": "weight"
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
            CargoAiTrackAndTraceUpdate1(
                id: "_id",
                alerts: Optional(CargoAiTrackAndTraceAlert(
                    level: Optional(.ok),
                    message: Optional("message")
                )),
                awb: "awb",
                carbonEmission: Optional("carbonEmission"),
                destination: Optional("destination"),
                events: Optional([
                    CargoAiTrackAndTraceEvent(

                    )
                ]),
                newEvents: Optional([
                    CargoAiTrackAndTraceEvent(

                    )
                ]),
                oldEvents: Optional([
                    CargoAiTrackAndTraceEvent(

                    )
                ]),
                origin: Optional("origin"),
                pieces: Optional("pieces"),
                receivedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                schemaVersion: Optional(1),
                source: .webhook,
                status: Optional("status"),
                volume: Optional("volume"),
                weight: Optional("weight")
            )
        ]
        let response = try await client.integrations.cargoaiTrackAndTrace.updatesV1(
            awb: "awb",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}