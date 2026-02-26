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
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "comments": "comments",
                      "public": true,
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z",
                      "flight_numbers": [
                        "flight_numbers"
                      ],
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "org_id": "org_id",
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "terminated": true,
                      "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                      "fa_alert_ids": [
                        1
                      ],
                      "flight_loaded_statuses": [
                        "flight_loaded_statuses"
                      ],
                      "fa_alert_id_by_flight_number": {
                        "key": 1
                      },
                      "flight_status_by_fa_flight_id": {
                        "key": "unknown"
                      },
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
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    comments: Optional("comments"),
                    public: Optional(true),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    orgId: "org_id",
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    terminated: Optional(true),
                    terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    faAlertIds: Optional([
                        1
                    ]),
                    flightLoadedStatuses: Optional([
                        "flight_loaded_statuses"
                    ]),
                    faAlertIdByFlightNumber: Optional([
                        "key": 1
                    ]),
                    flightStatusByFaFlightId: Optional([
                        "key": .unknown
                    ]),
                    id: "_id"
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

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "off_chrt_reference_id": "off_chrt_reference_id",
                  "comments": "comments",
                  "public": true,
                  "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                  "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z",
                  "flight_numbers": [
                    "flight_numbers"
                  ],
                  "fa_flight_ids": [
                    "fa_flight_ids"
                  ],
                  "device_id": "device_id",
                  "device_mac_address": "device_mac_address",
                  "org_id": "org_id",
                  "shared_with_org_ids": [
                    "shared_with_org_ids"
                  ],
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "terminated": true,
                  "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                  "fa_alert_ids": [
                    1
                  ],
                  "flight_loaded_statuses": [
                    "flight_loaded_statuses"
                  ],
                  "fa_alert_id_by_flight_number": {
                    "key": 1
                  },
                  "flight_status_by_fa_flight_id": {
                    "key": "unknown"
                  },
                  "flight_loaded_status_by_fa_flight_id": {
                    "key": "value"
                  },
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
            offChrtReferenceId: Optional("off_chrt_reference_id"),
            comments: Optional("comments"),
            public: Optional(true),
            offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
            terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            flightNumbers: Optional([
                "flight_numbers"
            ]),
            faFlightIds: Optional([
                "fa_flight_ids"
            ]),
            deviceId: "device_id",
            deviceMacAddress: "device_mac_address",
            orgId: "org_id",
            sharedWithOrgIds: Optional([
                "shared_with_org_ids"
            ]),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            terminated: Optional(true),
            terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            faAlertIds: Optional([
                1
            ]),
            flightLoadedStatuses: Optional([
                "flight_loaded_statuses"
            ]),
            faAlertIdByFlightNumber: Optional([
                "key": 1
            ]),
            flightStatusByFaFlightId: Optional([
                "key": .unknown
            ]),
            flightLoadedStatusByFaFlightId: Optional([
                "key": Optional("value")
            ]),
            id: "_id"
        )
        let response = try await client.tracking.sessions.getV1(
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

    @Test func searchV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "sessions": [
                    {
                      "schema_version": 1,
                      "off_chrt_reference_id": "off_chrt_reference_id",
                      "comments": "comments",
                      "public": true,
                      "off_chrt_shipper_org_id": "off_chrt_shipper_org_id",
                      "termination_scheduled_for_timestamp": "2024-01-15T09:30:00Z",
                      "flight_numbers": [
                        "flight_numbers"
                      ],
                      "fa_flight_ids": [
                        "fa_flight_ids"
                      ],
                      "device_id": "device_id",
                      "device_mac_address": "device_mac_address",
                      "org_id": "org_id",
                      "shared_with_org_ids": [
                        "shared_with_org_ids"
                      ],
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "terminated": true,
                      "terminated_at_timestamp": "2024-01-15T09:30:00Z",
                      "fa_alert_ids": [
                        1
                      ],
                      "flight_loaded_statuses": [
                        "flight_loaded_statuses"
                      ],
                      "fa_alert_id_by_flight_number": {
                        "key": 1
                      },
                      "flight_status_by_fa_flight_id": {
                        "key": "unknown"
                      },
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
                    offChrtReferenceId: Optional("off_chrt_reference_id"),
                    comments: Optional("comments"),
                    public: Optional(true),
                    offChrtShipperOrgId: Optional("off_chrt_shipper_org_id"),
                    terminationScheduledForTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    flightNumbers: Optional([
                        "flight_numbers"
                    ]),
                    faFlightIds: Optional([
                        "fa_flight_ids"
                    ]),
                    deviceId: "device_id",
                    deviceMacAddress: "device_mac_address",
                    orgId: "org_id",
                    sharedWithOrgIds: Optional([
                        "shared_with_org_ids"
                    ]),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    terminated: Optional(true),
                    terminatedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    faAlertIds: Optional([
                        1
                    ]),
                    flightLoadedStatuses: Optional([
                        "flight_loaded_statuses"
                    ]),
                    faAlertIdByFlightNumber: Optional([
                        "key": 1
                    ]),
                    flightStatusByFaFlightId: Optional([
                        "key": .unknown
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
            orgScope: .owned,
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
                sessionId: "session_id",
                flightNumber: "flight_number",
                faFlightIds: [
                    "fa_flight_ids"
                ]
            ),
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
                sessionId: "session_id",
                flightNumber: "flight_number",
                faFlightIds: [
                    "fa_flight_ids"
                ]
            ),
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
}