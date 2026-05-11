import Foundation
import Testing
import Chrt

@Suite("OrderSchedulesClient Wire Tests") struct OrderSchedulesClientWireTests {
    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "id": "id",
                  "name": "name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderScheduleStub(
            id: "id",
            name: "name"
        )
        let response = try await client.shipping.orderSchedules.getByIdV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "id": "id",
                    "name": "name"
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
            OrderScheduleStub(
                id: "id",
                name: "name"
            )
        ]
        let response = try await client.shipping.orderSchedules.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.createV1(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func roundTripModelTestV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schedule_calendar_spec": {
                    "second": [
                      {
                        "start": 1
                      }
                    ],
                    "minute": [
                      {
                        "start": 1
                      }
                    ],
                    "hour": [
                      {
                        "start": 1
                      }
                    ],
                    "day_of_month": [
                      {
                        "start": 1
                      }
                    ],
                    "month": [
                      {
                        "start": 1
                      }
                    ],
                    "year": [
                      {
                        "start": 1
                      }
                    ],
                    "day_of_week": [
                      {
                        "start": 1
                      }
                    ],
                    "comment": "comment"
                  },
                  "schedule_interval_spec": {
                    "every": "every",
                    "offset": "offset"
                  },
                  "executed_at_timestamp": "2024-01-15T09:30:00Z",
                  "caller_user_id": "caller_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderScheduleRoundTripModelTestRes(
            scheduleCalendarSpec: Optional(ScheduleCalendarSpec(
                second: Optional([
                    ScheduleRange(
                        start: 1
                    )
                ]),
                minute: Optional([
                    ScheduleRange(
                        start: 1
                    )
                ]),
                hour: Optional([
                    ScheduleRange(
                        start: 1
                    )
                ]),
                dayOfMonth: Optional([
                    ScheduleRange(
                        start: 1
                    )
                ]),
                month: Optional([
                    ScheduleRange(
                        start: 1
                    )
                ]),
                year: Optional([
                    ScheduleRange(
                        start: 1
                    )
                ]),
                dayOfWeek: Optional([
                    ScheduleRange(
                        start: 1
                    )
                ]),
                comment: Optional("comment")
            )),
            scheduleIntervalSpec: Optional(ScheduleIntervalSpec(
                every: "every",
                offset: Optional("offset")
            )),
            executedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            callerUserId: "caller_user_id"
        )
        let response = try await client.shipping.orderSchedules.roundTripModelTestV1(
            request: .init(),
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
        let response = try await client.shipping.orderSchedules.updateV1(
            orderScheduleId: "order_schedule_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
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
        let response = try await client.shipping.orderSchedules.deleteV1(
            orderScheduleId: "order_schedule_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}