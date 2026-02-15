import Foundation
import Testing
import Chrt

@Suite("SessionsClient Wire Tests") struct SessionsClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "sessions": [
                    {
                      "schema_version": 1,
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "org_id": "org_id",
                      "comments": "comments",
                      "recording": true,
                      "terminated": true,
                      "session_created_at_timestamp": "2024-01-15T09:30:00Z",
                      "recording_initiated_at_timestamp": "2024-01-15T09:30:00Z",
                      "public": true,
                      "flight_number": "flight_number",
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "off_chrt_order_id": "off_chrt_order_id",
                      "fa_alert_ids": [
                        1
                      ],
                      "_id": "_id"
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
        let expectedResponse = SessionListRes(
            sessions: [
                Session1(
                    schemaVersion: 1,
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    orgId: "org_id",
                    comments: Optional("comments"),
                    recording: Optional(true),
                    terminated: Optional(true),
                    sessionCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    recordingInitiatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    public: Optional(true),
                    flightNumber: Optional("flight_number"),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    offChrtOrderId: Optional("off_chrt_order_id"),
                    faAlertIds: Optional([
                        1
                    ]),
                    id: "_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.tracking.sessions.listV1(
            sortBy: .sessionCreatedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterRecording: true,
            filterTerminated: true,
            filterPublic: true,
            filterDeviceId: "filter_device_id",
            filterOffChrtOrderId: "filter_off_chrt_order_id",
            filterFlightNumber: "filter_flight_number",
            filterSessionCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterSessionCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterRecordingInitiatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterRecordingInitiatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "device_id": "device_id",
                  "device_mac_address": "device_mac_address",
                  "org_id": "org_id",
                  "comments": "comments",
                  "recording": true,
                  "terminated": true,
                  "session_created_at_timestamp": "2024-01-15T09:30:00Z",
                  "recording_initiated_at_timestamp": "2024-01-15T09:30:00Z",
                  "public": true,
                  "flight_number": "flight_number",
                  "fa_flight_ids": [
                    "fa_flight_ids"
                  ],
                  "off_chrt_order_id": "off_chrt_order_id",
                  "fa_alert_ids": [
                    1
                  ],
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
        let expectedResponse = Session1(
            schemaVersion: 1,
            deviceId: "device_id",
            deviceMacAddress: "device_mac_address",
            orgId: "org_id",
            comments: Optional("comments"),
            recording: Optional(true),
            terminated: Optional(true),
            sessionCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            recordingInitiatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            public: Optional(true),
            flightNumber: Optional("flight_number"),
            faFlightIds: Optional([
                "fa_flight_ids"
            ]),
            offChrtOrderId: Optional("off_chrt_order_id"),
            faAlertIds: Optional([
                1
            ]),
            id: "_id"
        )
        let response = try await client.tracking.sessions.getV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typeaheadOffChrtOrderIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  "string"
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
            "string"
        ]
        let response = try await client.tracking.sessions.typeaheadOffChrtOrderIdV1(
            query: "query",
            limit: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func searchV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "sessions": [
                    {
                      "schema_version": 1,
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "org_id": "org_id",
                      "comments": "comments",
                      "recording": true,
                      "terminated": true,
                      "session_created_at_timestamp": "2024-01-15T09:30:00Z",
                      "recording_initiated_at_timestamp": "2024-01-15T09:30:00Z",
                      "public": true,
                      "flight_number": "flight_number",
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "off_chrt_order_id": "off_chrt_order_id",
                      "fa_alert_ids": [
                        1
                      ],
                      "_id": "_id"
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
        let expectedResponse = SessionSearchRes(
            sessions: [
                Session1(
                    schemaVersion: 1,
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    orgId: "org_id",
                    comments: Optional("comments"),
                    recording: Optional(true),
                    terminated: Optional(true),
                    sessionCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    recordingInitiatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    public: Optional(true),
                    flightNumber: Optional("flight_number"),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    offChrtOrderId: Optional("off_chrt_order_id"),
                    faAlertIds: Optional([
                        1
                    ]),
                    id: "_id"
                )
            ],
            totalCount: 1
        )
        let response = try await client.tracking.sessions.searchV1(
            query: "query",
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createSessionV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.createSessionV1(
            request: .init(deviceMacAddress: "device_mac_address"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.updateV1(
            request: .init(sessionId: "session_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func startV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.startV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pauseRecordingV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.pauseRecordingV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func resumeRecordingV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.resumeRecordingV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func terminateV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.terminateV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "session_deleted": true,
                  "tracking_session_by_device_data_points_deleted": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SessionDeleteResponse1(
            sessionDeleted: true,
            trackingSessionByDeviceDataPointsDeleted: 1
        )
        let response = try await client.tracking.sessions.deleteV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}