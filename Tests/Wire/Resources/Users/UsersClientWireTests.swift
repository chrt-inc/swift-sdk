import Foundation
import Testing
import Chrt

@Suite("UsersClient Wire Tests") struct UsersClientWireTests {
    @Test func getUserPublicDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "user_id": "user_id",
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
        let expectedResponse = UserPublicData1(
            schemaVersion: 1,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            userId: "user_id",
            id: "_id"
        )
        let response = try await client.users.getUserPublicDataV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getUserPrivateDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "user_id": "user_id",
                  "stripe_customer_id": "stripe_customer_id",
                  "primary_email_address": "primary_email_address",
                  "phone_number": "phone_number",
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
        let expectedResponse = UserPrivateData1(
            schemaVersion: 1,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            userId: "user_id",
            stripeCustomerId: Optional("stripe_customer_id"),
            primaryEmailAddress: Optional("primary_email_address"),
            phoneNumber: Optional("phone_number"),
            id: "_id"
        )
        let response = try await client.users.getUserPrivateDataV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createUserPrivateDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "user_id": "user_id",
                  "stripe_customer_id": "stripe_customer_id",
                  "primary_email_address": "primary_email_address",
                  "phone_number": "phone_number",
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
        let expectedResponse = UserPrivateData1(
            schemaVersion: 1,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            userId: "user_id",
            stripeCustomerId: Optional("stripe_customer_id"),
            primaryEmailAddress: Optional("primary_email_address"),
            phoneNumber: Optional("phone_number"),
            id: "_id"
        )
        let response = try await client.users.createUserPrivateDataV1(
            request: .init(schemaVersion: 1),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateUserPrivateDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "user_id": "user_id",
                  "stripe_customer_id": "stripe_customer_id",
                  "primary_email_address": "primary_email_address",
                  "phone_number": "phone_number",
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
        let expectedResponse = UserPrivateData1(
            schemaVersion: 1,
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            userId: "user_id",
            stripeCustomerId: Optional("stripe_customer_id"),
            primaryEmailAddress: Optional("primary_email_address"),
            phoneNumber: Optional("phone_number"),
            id: "_id"
        )
        let response = try await client.users.updateUserPrivateDataV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}