import Foundation
import Testing
import Chrt

@Suite("CargoOnFlightRateSheetsClient Wire Tests") struct CargoOnFlightRateSheetsClientWireTests {
    @Test func archiveV11() async throws -> Void {
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
        let response = try await client.billing.cargoOnFlightRateSheets.archiveV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "airline_name": "airline_name",
                  "archived": true,
                  "comments": "comments",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "quantity": 1.1,
                  "rate": 1.1,
                  "schema_version": 1,
                  "service_type_name": "service_type_name"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CargoOnFlightRateSheet1(
            id: "_id",
            airlineName: Optional("airline_name"),
            archived: Optional(true),
            comments: Optional("comments"),
            name: Optional("name"),
            ownedByOrgId: "owned_by_org_id",
            quantity: Optional(1.1),
            rate: Optional(1.1),
            schemaVersion: 1,
            serviceTypeName: Optional("service_type_name")
        )
        let response = try await client.billing.cargoOnFlightRateSheets.getByIdV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
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
        let response = try await client.billing.cargoOnFlightRateSheets.createV1(
            request: .init(schemaVersion: 1),
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
        let response = try await client.billing.cargoOnFlightRateSheets.deleteV1(
            id: "id",
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
                  "items": [
                    {
                      "_id": "_id",
                      "airline_name": "airline_name",
                      "archived": true,
                      "comments": "comments",
                      "name": "name",
                      "owned_by_org_id": "owned_by_org_id",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "schema_version": 1,
                      "service_type_name": "service_type_name"
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
        let expectedResponse = CargoOnFlightRateSheetListRes(
            items: [
                CargoOnFlightRateSheet1(
                    id: "_id",
                    airlineName: Optional("airline_name"),
                    archived: Optional(true),
                    comments: Optional("comments"),
                    name: Optional("name"),
                    ownedByOrgId: "owned_by_org_id",
                    quantity: Optional(1.1),
                    rate: Optional(1.1),
                    schemaVersion: 1,
                    serviceTypeName: Optional("service_type_name")
                )
            ],
            totalCount: 1
        )
        let response = try await client.billing.cargoOnFlightRateSheets.listV1(
            includeArchived: true,
            page: 1,
            pageSize: 1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unarchiveV11() async throws -> Void {
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
        let response = try await client.billing.cargoOnFlightRateSheets.unarchiveV1(
            id: "id",
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
        let response = try await client.billing.cargoOnFlightRateSheets.updateV1(
            id: "id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}