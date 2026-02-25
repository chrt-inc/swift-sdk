import Foundation
import Testing
import Chrt

@Suite("SessionsClient Wire Tests") struct SessionsClientWireTests {
    @Test func addFlightV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.addFlightV1(
            request: .init(
                faFlightIds: [
                    "fa_flight_ids"
                ],
                flightNumber: "flight_number",
                sessionId: "session_id"
            ),
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
            deviceId: "device_id",
            noAutoTermination: true,
            request: .init(schemaVersion: 1),
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
                  "_id": "_id",
                  "comments": "comments",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "device_id": "device_id",
                  "device_mac_address": "device_mac_address",
                  "fa_alert_id_by_flight_number": {
                    "key": 1
                  },
                  "fa_alert_ids": [
                    1
                  ],
                  "fa_flight_ids": [
                    "fa_flight_ids"
                  ],
                  "flight_loaded_status_by_fa_flight_id": {
                    "key": "value"
                  },
                  "flight_loaded_statuses": [
                    "flight_loaded_statuses"
                  ],
                  "flight_numbers": [
                    "flight_numbers"
                  ],
                  "flight_status_by_fa_flight_id": {
                    "key": "unknown"
                  },
                  "off_chrt_reference_id": "off_chrt_reference_id",
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "org_id": "org_id",
                  "public": true,
                  "schema_version": 1,
                  "shared_with_org_ids": [
                    "shared_with_org_ids"
                  ],
                  "terminated": true,
                  "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                  "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z"
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
            id: "_id",
            comments: Optional("comments"),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            deviceId: "device_id",
            deviceMacAddress: "device_mac_address",
            faAlertIdByFlightNumber: Optional([
                "key": 1
            ]),
            faAlertIds: Optional([
                1
            ]),
            faFlightIds: Optional([
                "fa_flight_ids"
            ]),
            flightLoadedStatusByFaFlightId: Optional([
                "key": Optional("value")
            ]),
            flightLoadedStatuses: Optional([
                "flight_loaded_statuses"
            ]),
            flightNumbers: Optional([
                "flight_numbers"
            ]),
            flightStatusByFaFlightId: Optional([
                "key": .unknown
            ]),
            offChrtReferenceId: Optional("off_chrt_reference_id"),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            orgId: "org_id",
            public: Optional(true),
            schemaVersion: 1,
            sharedWithOrgIds: Optional([
                "shared_with_org_ids"
            ]),
            terminated: Optional(true),
            terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.tracking.sessions.getV1(
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "sessions": [
                    {
                      "_id": "_id",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "fa_alert_id_by_flight_number": {
                        "key": 1
                      },
                      "fa_alert_ids": [
                        1
                      ],
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "flight_loaded_statuses": [
                        "flight_loaded_statuses"
                      ],
                      "flight_numbers": [
                        "flight_numbers"
                      ],
                      "flight_status_by_fa_flight_id": {
                        "key": "unknown"
                      },
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "org_id": "org_id",
                      "public": true,
                      "schema_version": 1,
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "terminated": true,
                      "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                      "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z"
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
                    id: "_id",
                    comments: Optional("comments"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    faAlertIdByFlightNumber: Optional([
                        "key": 1
                    ]),
                    faAlertIds: Optional([
                        1
                    ]),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    flightLoadedStatuses: Optional([
                        "flight_loaded_statuses"
                    ]),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
                    flightStatusByFaFlightId: Optional([
                        "key": .unknown
                    ]),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    orgId: "org_id",
                    public: Optional(true),
                    schemaVersion: 1,
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    terminated: Optional(true),
                    terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ],
            totalCount: 1
        )
        let response = try await client.tracking.sessions.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            orgScope: .owned,
            filterTerminated: true,
            filterPublic: true,
            filterDeviceId: "filter_device_id",
            filterOffChrtReferenceId: "filter_off_chrt_reference_id",
            filterFlightNumber: "filter_flight_number",
            filterFaFlightId: "filter_fa_flight_id",
            filterFlightLoadedStatus: "filter_flight_loaded_status",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTerminationScheduledForTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTerminationScheduledForTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTerminatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterTerminatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeFlightV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.removeFlightV1(
            request: .init(
                faFlightIds: [
                    "fa_flight_ids"
                ],
                flightNumber: "flight_number",
                sessionId: "session_id"
            ),
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
                      "_id": "_id",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "fa_alert_id_by_flight_number": {
                        "key": 1
                      },
                      "fa_alert_ids": [
                        1
                      ],
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "flight_loaded_statuses": [
                        "flight_loaded_statuses"
                      ],
                      "flight_numbers": [
                        "flight_numbers"
                      ],
                      "flight_status_by_fa_flight_id": {
                        "key": "unknown"
                      },
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "org_id": "org_id",
                      "public": true,
                      "schema_version": 1,
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "terminated": true,
                      "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                      "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z"
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
                    id: "_id",
                    comments: Optional("comments"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    faAlertIdByFlightNumber: Optional([
                        "key": 1
                    ]),
                    faAlertIds: Optional([
                        1
                    ]),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    flightLoadedStatuses: Optional([
                        "flight_loaded_statuses"
                    ]),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
                    flightStatusByFaFlightId: Optional([
                        "key": .unknown
                    ]),
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    orgId: "org_id",
                    public: Optional(true),
                    schemaVersion: 1,
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    terminated: Optional(true),
                    terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ],
            totalCount: 1
        )
        let response = try await client.tracking.sessions.searchV1(
            query: "query",
            page: 1,
            pageSize: 1,
            orgScope: .owned,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncFlightStatusV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.syncFlightStatusV1(
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

    @Test func typeaheadV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "type": "device_mac_address",
                    "values": [
                      "values"
                    ]
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
            TrackingTypeaheadResult(
                type: .deviceMacAddress,
                values: [
                    "values"
                ]
            )
        ]
        let response = try await client.tracking.sessions.typeaheadV1(
            query: "query",
            limit: 1,
            orgScope: .owned,
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
            sessionId: "session_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateSharedOrgsV11() async throws -> Void {
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
        let response = try await client.tracking.sessions.updateSharedOrgsV1(
            request: .init(sessionId: "session_id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}