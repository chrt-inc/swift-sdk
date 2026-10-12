import Foundation
import Testing
import Chrt

@Suite("AirWaybillStockNumbersClient Wire Tests") struct AirWaybillStockNumbersClientWireTests {
    @Test func addV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "added": [
                    {
                      "_id": "_id",
                      "awb_number": "awb_number",
                      "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "schema_version": 1,
                      "status": "available",
                      "status_changed_at_timestamp": "2024-01-15T09:30:00Z",
                      "status_changed_by_user_id": "status_changed_by_user_id",
                      "status_note": "status_note"
                    }
                  ],
                  "already_in_stock_awb_numbers": [
                    "already_in_stock_awb_numbers"
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AirWaybillStockNumbersAddRes(
            added: [
                AirWaybillStockNumber1(
                    id: "_id",
                    awbNumber: "awb_number",
                    cargoOnFlightBookingId: Optional("cargo_on_flight_booking_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    ownedByOrgId: "owned_by_org_id",
                    schemaVersion: 1,
                    status: AirWaybillStockNumberStatusEnum1.available,
                    statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    statusChangedByUserId: Optional("status_changed_by_user_id"),
                    statusNote: Optional("status_note")
                )
            ],
            alreadyInStockAwbNumbers: [
                "already_in_stock_awb_numbers"
            ]
        )
        let response = try await client.orgs.airWaybillStockNumbers.addV1(
            request: .init(awbNumbers: [
                "awb_numbers"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                true
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = true
        let response = try await client.orgs.airWaybillStockNumbers.deleteV1(
            airWaybillStockNumberId: "air_waybill_stock_number_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "awb_number": "awb_number",
                      "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_user_id": "created_by_user_id",
                      "owned_by_org_id": "owned_by_org_id",
                      "schema_version": 1,
                      "status": "available",
                      "status_changed_at_timestamp": "2024-01-15T09:30:00Z",
                      "status_changed_by_user_id": "status_changed_by_user_id",
                      "status_note": "status_note"
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AirWaybillStockNumberListRes(
            items: [
                AirWaybillStockNumber1(
                    id: "_id",
                    awbNumber: "awb_number",
                    cargoOnFlightBookingId: Optional("cargo_on_flight_booking_id"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByUserId: "created_by_user_id",
                    ownedByOrgId: "owned_by_org_id",
                    schemaVersion: 1,
                    status: AirWaybillStockNumberStatusEnum1.available,
                    statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    statusChangedByUserId: Optional("status_changed_by_user_id"),
                    statusNote: Optional("status_note")
                )
            ],
            totalCount: 1
        )
        let response = try await client.orgs.airWaybillStockNumbers.listV1(
            filterAwbPrefix: "filter_awb_prefix",
            filterStatus: [
                .available
            ],
            sortBy: .awbNumber,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func markAvailableV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "_id": "_id",
                    "awb_number": "awb_number",
                    "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "schema_version": 1,
                    "status": "available",
                    "status_changed_at_timestamp": "2024-01-15T09:30:00Z",
                    "status_changed_by_user_id": "status_changed_by_user_id",
                    "status_note": "status_note"
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
            AirWaybillStockNumber1(
                id: "_id",
                awbNumber: "awb_number",
                cargoOnFlightBookingId: Optional("cargo_on_flight_booking_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                ownedByOrgId: "owned_by_org_id",
                schemaVersion: 1,
                status: AirWaybillStockNumberStatusEnum1.available,
                statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                statusChangedByUserId: Optional("status_changed_by_user_id"),
                statusNote: Optional("status_note")
            )
        ]
        let response = try await client.orgs.airWaybillStockNumbers.markAvailableV1(
            request: .init(awbNumbers: [
                "awb_numbers"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func markUsedV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "_id": "_id",
                    "awb_number": "awb_number",
                    "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "schema_version": 1,
                    "status": "available",
                    "status_changed_at_timestamp": "2024-01-15T09:30:00Z",
                    "status_changed_by_user_id": "status_changed_by_user_id",
                    "status_note": "status_note"
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
            AirWaybillStockNumber1(
                id: "_id",
                awbNumber: "awb_number",
                cargoOnFlightBookingId: Optional("cargo_on_flight_booking_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                ownedByOrgId: "owned_by_org_id",
                schemaVersion: 1,
                status: AirWaybillStockNumberStatusEnum1.available,
                statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                statusChangedByUserId: Optional("status_changed_by_user_id"),
                statusNote: Optional("status_note")
            )
        ]
        let response = try await client.orgs.airWaybillStockNumbers.markUsedV1(
            request: .init(awbNumbers: [
                "awb_numbers"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func summaryV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "available_count": 1,
                    "awb_prefix": "awb_prefix",
                    "reserved_count": 1,
                    "used_count": 1,
                    "void_count": 1
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
            AirWaybillStockNumbersSummaryRes(
                availableCount: 1,
                awbPrefix: "awb_prefix",
                reservedCount: 1,
                usedCount: 1,
                voidCount: 1
            )
        ]
        let response = try await client.orgs.airWaybillStockNumbers.summaryV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func voidV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "_id": "_id",
                    "awb_number": "awb_number",
                    "cargo_on_flight_booking_id": "cargo_on_flight_booking_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_user_id": "created_by_user_id",
                    "owned_by_org_id": "owned_by_org_id",
                    "schema_version": 1,
                    "status": "available",
                    "status_changed_at_timestamp": "2024-01-15T09:30:00Z",
                    "status_changed_by_user_id": "status_changed_by_user_id",
                    "status_note": "status_note"
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
            AirWaybillStockNumber1(
                id: "_id",
                awbNumber: "awb_number",
                cargoOnFlightBookingId: Optional("cargo_on_flight_booking_id"),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByUserId: "created_by_user_id",
                ownedByOrgId: "owned_by_org_id",
                schemaVersion: 1,
                status: AirWaybillStockNumberStatusEnum1.available,
                statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                statusChangedByUserId: Optional("status_changed_by_user_id"),
                statusNote: Optional("status_note")
            )
        ]
        let response = try await client.orgs.airWaybillStockNumbers.voidV1(
            request: .init(awbNumbers: [
                "awb_numbers"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}