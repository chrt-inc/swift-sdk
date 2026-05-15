import Foundation
import Testing
import Chrt

@Suite("DevClient Wire Tests") struct DevClientWireTests {
    @Test func postAgentPingScheduleV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schedule_id": "schedule_id",
                  "ping_id": "ping_id",
                  "message": "message",
                  "workflow_name": "workflow_name",
                  "workflow_id": "workflow_id",
                  "task_queue": "task_queue",
                  "schedule_spec": {
                    "calendars": [
                      {}
                    ],
                    "intervals": [
                      {
                        "every": "every"
                      }
                    ],
                    "cron_expressions": [
                      "cron_expressions"
                    ],
                    "skip": [
                      {}
                    ],
                    "start_at": "2024-01-15T09:30:00Z",
                    "end_at": "2024-01-15T09:30:00Z",
                    "jitter": "jitter",
                    "time_zone_name": "time_zone_name"
                  },
                  "catchup_window_seconds": 1,
                  "created": true,
                  "next_action_times": [
                    "2024-01-15T09:30:00Z"
                  ]
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ScheduledPingRes(
            scheduleId: "schedule_id",
            pingId: "ping_id",
            message: "message",
            workflowName: "workflow_name",
            workflowId: "workflow_id",
            taskQueue: "task_queue",
            scheduleSpec: ScheduleSpec(
                calendars: Optional([
                    ScheduleCalendarSpec(

                    )
                ]),
                intervals: Optional([
                    ScheduleIntervalSpec(
                        every: "every"
                    )
                ]),
                cronExpressions: Optional([
                    "cron_expressions"
                ]),
                skip: Optional([
                    ScheduleCalendarSpec(

                    )
                ]),
                startAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                endAt: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                jitter: Optional("jitter"),
                timeZoneName: Optional("time_zone_name")
            ),
            catchupWindowSeconds: 1,
            created: true,
            nextActionTimes: [
                try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ]
        )
        let response = try await client.utils.dev.postAgentPingScheduleV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postAgentOpenaiPingV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "response": "response"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PingOpenAiRes(
            response: "response"
        )
        let response = try await client.utils.dev.postAgentOpenaiPingV1(
            request: .init(prompt: "prompt"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postAgentPingV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "response": "response",
                  "nonce": "nonce",
                  "workflow_timestamp": "workflow_timestamp",
                  "activity_timestamp": "activity_timestamp"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PingRes(
            response: "response",
            nonce: "nonce",
            workflowTimestamp: "workflow_timestamp",
            activityTimestamp: "activity_timestamp"
        )
        let response = try await client.utils.dev.postAgentPingV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getUserIdV11() async throws -> Void {
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
        let response = try await client.utils.dev.getUserIdV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getUserIdV21() async throws -> Void {
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
        let response = try await client.utils.dev.getUserIdV2(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getCredentialInfoV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "credential_type": "session_jwt",
                  "caller": {
                    "credential_type": "session_jwt",
                    "credential": "credential",
                    "user_id": "user_id",
                    "org_id": "org_id",
                    "org_role": "owner",
                    "org_type": "provider",
                    "org_subscription": true,
                    "user_email": "user_email"
                  },
                  "raw_claims": {
                    "key": "value"
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CredentialInfoRes(
            credentialType: .sessionJwt,
            caller: Caller(
                credentialType: .sessionJwt,
                credential: Optional("credential"),
                userId: "user_id",
                orgId: "org_id",
                orgRole: Optional(.owner),
                orgType: Optional(.provider),
                orgSubscription: Optional(true),
                userEmail: Optional("user_email")
            ),
            rawClaims: [
                "key": JSONValue.string("value")
            ]
        )
        let response = try await client.utils.dev.getCredentialInfoV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getEmailV11() async throws -> Void {
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
        let response = try await client.utils.dev.getEmailV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getTemplateV11() async throws -> Void {
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
        let response = try await client.utils.dev.getTemplateV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createTemplateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "message": "message",
                  "number": 1,
                  "timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TemplateRes(
            message: "message",
            number: 1,
            timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.utils.dev.createTemplateV1(
            request: .init(
                message: "message",
                number: 1,
                timestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getGitInfoV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "key": "value"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": Optional("value")
        ]
        let response = try await client.utils.dev.getGitInfoV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}