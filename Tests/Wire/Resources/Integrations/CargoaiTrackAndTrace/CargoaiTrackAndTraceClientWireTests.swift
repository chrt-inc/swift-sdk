import Foundation
import Testing
import Chrt

@Suite("CargoaiTrackAndTraceClient Wire Tests") struct CargoaiTrackAndTraceClientWireTests {
    @Test func subscriptionV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "awb": "awb",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "subscribed_emails": [
                    "subscribed_emails"
                  ],
                  "tracking_update_ids": [
                    "tracking_update_ids"
                  ],
                  "subscribed_at": "2024-01-15T09:30:00Z",
                  "active_until": "2024-01-15T09:30:00Z",
                  "last_update_received_at": "2024-01-15T09:30:00Z",
                  "created_at": "2024-01-15T09:30:00Z",
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
            schemaVersion: 1,
            id: "_id",
            awb: "awb",
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            subscribedEmails: Optional([
                "subscribed_emails"
            ]),
            trackingUpdateIds: Optional([
                "tracking_update_ids"
            ]),
            subscribedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            activeUntil: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUpdateReceivedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.integrations.cargoaiTrackAndTrace.subscriptionV1(
            awb: "awb",
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
                    "schemaVersion": 1,
                    "awb": "awb",
                    "origin": "origin",
                    "destination": "destination",
                    "status": "status",
                    "weight": "weight",
                    "pieces": "pieces",
                    "volume": "volume",
                    "carbonEmission": "carbonEmission",
                    "alerts": {
                      "level": "OK",
                      "message": "message"
                    },
                    "oldEvents": [
                      {}
                    ],
                    "newEvents": [
                      {}
                    ],
                    "events": [
                      {}
                    ],
                    "_id": "_id",
                    "receivedAt": "2024-01-15T09:30:00Z",
                    "source": "webhook",
                    "polledByUserId": "polledByUserId",
                    "polledByOrgId": "polledByOrgId"
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
                schemaVersion: Optional(1),
                awb: "awb",
                origin: Optional("origin"),
                destination: Optional("destination"),
                status: Optional("status"),
                weight: Optional("weight"),
                pieces: Optional("pieces"),
                volume: Optional("volume"),
                carbonEmission: Optional("carbonEmission"),
                alerts: Optional(CargoAiTrackAndTraceAlert(
                    level: Optional(.ok),
                    message: Optional("message")
                )),
                oldEvents: Optional([
                    CargoAiTrackAndTraceEvent(

                    )
                ]),
                newEvents: Optional([
                    CargoAiTrackAndTraceEvent(

                    )
                ]),
                events: Optional([
                    CargoAiTrackAndTraceEvent(

                    )
                ]),
                id: "_id",
                receivedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                source: .webhook,
                polledByUserId: Optional("polledByUserId"),
                polledByOrgId: Optional("polledByOrgId")
            )
        ]
        let response = try await client.integrations.cargoaiTrackAndTrace.updatesV1(
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
                    "schema_version": 1,
                    "_id": "_id",
                    "awb": "awb",
                    "created_by_user_id": "created_by_user_id",
                    "created_by_org_id": "created_by_org_id",
                    "subscribed_emails": [
                      "subscribed_emails"
                    ],
                    "tracking_update_ids": [
                      "tracking_update_ids"
                    ],
                    "subscribed_at": "2024-01-15T09:30:00Z",
                    "active_until": "2024-01-15T09:30:00Z",
                    "last_update_received_at": "2024-01-15T09:30:00Z",
                    "created_at": "2024-01-15T09:30:00Z",
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
                schemaVersion: 1,
                id: "_id",
                awb: "awb",
                createdByUserId: "created_by_user_id",
                createdByOrgId: "created_by_org_id",
                subscribedEmails: Optional([
                    "subscribed_emails"
                ]),
                trackingUpdateIds: Optional([
                    "tracking_update_ids"
                ]),
                subscribedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                activeUntil: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastUpdateReceivedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        ]
        let response = try await client.integrations.cargoaiTrackAndTrace.subscriptionsByTaskGroupV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscribeV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "awb": "awb",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "subscribed_emails": [
                    "subscribed_emails"
                  ],
                  "tracking_update_ids": [
                    "tracking_update_ids"
                  ],
                  "subscribed_at": "2024-01-15T09:30:00Z",
                  "active_until": "2024-01-15T09:30:00Z",
                  "last_update_received_at": "2024-01-15T09:30:00Z",
                  "created_at": "2024-01-15T09:30:00Z",
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
            schemaVersion: 1,
            id: "_id",
            awb: "awb",
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            subscribedEmails: Optional([
                "subscribed_emails"
            ]),
            trackingUpdateIds: Optional([
                "tracking_update_ids"
            ]),
            subscribedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            activeUntil: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUpdateReceivedAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.integrations.cargoaiTrackAndTrace.subscribeV1(
            request: .init(awb: "awb"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func refreshV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schemaVersion": 1,
                  "awb": "awb",
                  "origin": "origin",
                  "destination": "destination",
                  "status": "status",
                  "weight": "weight",
                  "pieces": "pieces",
                  "volume": "volume",
                  "carbonEmission": "carbonEmission",
                  "alerts": {
                    "level": "OK",
                    "message": "message"
                  },
                  "oldEvents": [
                    {
                      "code": "code",
                      "description": "description",
                      "eventDate": "eventDate",
                      "eventLocation": "eventLocation",
                      "eventLocationCoord": "eventLocationCoord",
                      "weight": "weight",
                      "volume": "volume",
                      "pieces": "pieces",
                      "eventUlds": [
                        {}
                      ],
                      "isPlanned": true,
                      "distance": "distance",
                      "origin": "origin",
                      "destination": "destination",
                      "time": "time",
                      "flightNumber": "flightNumber",
                      "scheduledDepartureDate": "scheduledDepartureDate",
                      "carbonEmission": "carbonEmission",
                      "originCoord": "originCoord",
                      "destinationCoord": "destinationCoord",
                      "isPredicted": true,
                      "predictedEventDate": "predictedEventDate",
                      "predictedEventDateP90": "predictedEventDateP90"
                    }
                  ],
                  "newEvents": [
                    {
                      "code": "code",
                      "description": "description",
                      "eventDate": "eventDate",
                      "eventLocation": "eventLocation",
                      "eventLocationCoord": "eventLocationCoord",
                      "weight": "weight",
                      "volume": "volume",
                      "pieces": "pieces",
                      "eventUlds": [
                        {}
                      ],
                      "isPlanned": true,
                      "distance": "distance",
                      "origin": "origin",
                      "destination": "destination",
                      "time": "time",
                      "flightNumber": "flightNumber",
                      "scheduledDepartureDate": "scheduledDepartureDate",
                      "carbonEmission": "carbonEmission",
                      "originCoord": "originCoord",
                      "destinationCoord": "destinationCoord",
                      "isPredicted": true,
                      "predictedEventDate": "predictedEventDate",
                      "predictedEventDateP90": "predictedEventDateP90"
                    }
                  ],
                  "events": [
                    {
                      "code": "code",
                      "description": "description",
                      "eventDate": "eventDate",
                      "eventLocation": "eventLocation",
                      "eventLocationCoord": "eventLocationCoord",
                      "weight": "weight",
                      "volume": "volume",
                      "pieces": "pieces",
                      "eventUlds": [
                        {}
                      ],
                      "isPlanned": true,
                      "distance": "distance",
                      "origin": "origin",
                      "destination": "destination",
                      "time": "time",
                      "flightNumber": "flightNumber",
                      "scheduledDepartureDate": "scheduledDepartureDate",
                      "carbonEmission": "carbonEmission",
                      "originCoord": "originCoord",
                      "destinationCoord": "destinationCoord",
                      "isPredicted": true,
                      "predictedEventDate": "predictedEventDate",
                      "predictedEventDateP90": "predictedEventDateP90"
                    }
                  ],
                  "_id": "_id",
                  "receivedAt": "2024-01-15T09:30:00Z",
                  "source": "webhook",
                  "polledByUserId": "polledByUserId",
                  "polledByOrgId": "polledByOrgId"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoAiTrackAndTraceUpdate1(
            schemaVersion: Optional(1),
            awb: "awb",
            origin: Optional("origin"),
            destination: Optional("destination"),
            status: Optional("status"),
            weight: Optional("weight"),
            pieces: Optional("pieces"),
            volume: Optional("volume"),
            carbonEmission: Optional("carbonEmission"),
            alerts: Optional(CargoAiTrackAndTraceAlert(
                level: Optional(.ok),
                message: Optional("message")
            )),
            oldEvents: Optional([
                CargoAiTrackAndTraceEvent(
                    code: Optional("code"),
                    description: Optional("description"),
                    eventDate: Optional("eventDate"),
                    eventLocation: Optional("eventLocation"),
                    eventLocationCoord: Optional("eventLocationCoord"),
                    weight: Optional("weight"),
                    volume: Optional("volume"),
                    pieces: Optional("pieces"),
                    eventUlds: Optional([
                        CargoAiTrackAndTraceUld(

                        )
                    ]),
                    isPlanned: Optional(true),
                    distance: Optional("distance"),
                    origin: Optional("origin"),
                    destination: Optional("destination"),
                    time: Optional("time"),
                    flightNumber: Optional("flightNumber"),
                    scheduledDepartureDate: Optional("scheduledDepartureDate"),
                    carbonEmission: Optional("carbonEmission"),
                    originCoord: Optional("originCoord"),
                    destinationCoord: Optional("destinationCoord"),
                    isPredicted: Optional(true),
                    predictedEventDate: Optional("predictedEventDate"),
                    predictedEventDateP90: Optional("predictedEventDateP90")
                )
            ]),
            newEvents: Optional([
                CargoAiTrackAndTraceEvent(
                    code: Optional("code"),
                    description: Optional("description"),
                    eventDate: Optional("eventDate"),
                    eventLocation: Optional("eventLocation"),
                    eventLocationCoord: Optional("eventLocationCoord"),
                    weight: Optional("weight"),
                    volume: Optional("volume"),
                    pieces: Optional("pieces"),
                    eventUlds: Optional([
                        CargoAiTrackAndTraceUld(

                        )
                    ]),
                    isPlanned: Optional(true),
                    distance: Optional("distance"),
                    origin: Optional("origin"),
                    destination: Optional("destination"),
                    time: Optional("time"),
                    flightNumber: Optional("flightNumber"),
                    scheduledDepartureDate: Optional("scheduledDepartureDate"),
                    carbonEmission: Optional("carbonEmission"),
                    originCoord: Optional("originCoord"),
                    destinationCoord: Optional("destinationCoord"),
                    isPredicted: Optional(true),
                    predictedEventDate: Optional("predictedEventDate"),
                    predictedEventDateP90: Optional("predictedEventDateP90")
                )
            ]),
            events: Optional([
                CargoAiTrackAndTraceEvent(
                    code: Optional("code"),
                    description: Optional("description"),
                    eventDate: Optional("eventDate"),
                    eventLocation: Optional("eventLocation"),
                    eventLocationCoord: Optional("eventLocationCoord"),
                    weight: Optional("weight"),
                    volume: Optional("volume"),
                    pieces: Optional("pieces"),
                    eventUlds: Optional([
                        CargoAiTrackAndTraceUld(

                        )
                    ]),
                    isPlanned: Optional(true),
                    distance: Optional("distance"),
                    origin: Optional("origin"),
                    destination: Optional("destination"),
                    time: Optional("time"),
                    flightNumber: Optional("flightNumber"),
                    scheduledDepartureDate: Optional("scheduledDepartureDate"),
                    carbonEmission: Optional("carbonEmission"),
                    originCoord: Optional("originCoord"),
                    destinationCoord: Optional("destinationCoord"),
                    isPredicted: Optional(true),
                    predictedEventDate: Optional("predictedEventDate"),
                    predictedEventDateP90: Optional("predictedEventDateP90")
                )
            ]),
            id: "_id",
            receivedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            source: .webhook,
            polledByUserId: Optional("polledByUserId"),
            polledByOrgId: Optional("polledByOrgId")
        )
        let response = try await client.integrations.cargoaiTrackAndTrace.refreshV1(
            awb: "awb",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}