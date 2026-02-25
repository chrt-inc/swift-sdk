import Foundation
import Testing
import Chrt

@Suite("UsersPrivateDataClient Wire Tests") struct UsersPrivateDataClientWireTests {
    @Test func upsertFirebaseCloudMessagingTokenV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "firebase_cloud_messaging_token_data": [
                    {
                      "firebase_cloud_messaging_token": "firebase_cloud_messaging_token",
                      "last_used_timestamp": "2024-01-15T09:30:00Z",
                      "platform": "android"
                    }
                  ],
                  "phone_number": "phone_number",
                  "primary_email_address": "primary_email_address",
                  "schema_version": 1,
                  "stripe_customer_id": "stripe_customer_id",
                  "user_id": "user_id"
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
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            firebaseCloudMessagingTokenData: Optional([
                FirebaseCloudMessagingTokenData1(
                    firebaseCloudMessagingToken: "firebase_cloud_messaging_token",
                    lastUsedTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    platform: Optional(.android)
                )
            ]),
            phoneNumber: Optional("phone_number"),
            primaryEmailAddress: Optional("primary_email_address"),
            schemaVersion: 1,
            stripeCustomerId: Optional("stripe_customer_id"),
            userId: "user_id"
        )
        let response = try await client.users.privateData.upsertFirebaseCloudMessagingTokenV1(
            request: .init(firebaseCloudMessagingToken: "firebase_cloud_messaging_token"),
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
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "firebase_cloud_messaging_token_data": [
                    {
                      "firebase_cloud_messaging_token": "firebase_cloud_messaging_token",
                      "last_used_timestamp": "2024-01-15T09:30:00Z",
                      "platform": "android"
                    }
                  ],
                  "phone_number": "phone_number",
                  "primary_email_address": "primary_email_address",
                  "schema_version": 1,
                  "stripe_customer_id": "stripe_customer_id",
                  "user_id": "user_id"
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
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            firebaseCloudMessagingTokenData: Optional([
                FirebaseCloudMessagingTokenData1(
                    firebaseCloudMessagingToken: "firebase_cloud_messaging_token",
                    lastUsedTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    platform: Optional(.android)
                )
            ]),
            phoneNumber: Optional("phone_number"),
            primaryEmailAddress: Optional("primary_email_address"),
            schemaVersion: 1,
            stripeCustomerId: Optional("stripe_customer_id"),
            userId: "user_id"
        )
        let response = try await client.users.privateData.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "firebase_cloud_messaging_token_data": [
                    {
                      "firebase_cloud_messaging_token": "firebase_cloud_messaging_token",
                      "last_used_timestamp": "2024-01-15T09:30:00Z",
                      "platform": "android"
                    }
                  ],
                  "phone_number": "phone_number",
                  "primary_email_address": "primary_email_address",
                  "schema_version": 1,
                  "stripe_customer_id": "stripe_customer_id",
                  "user_id": "user_id"
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
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            firebaseCloudMessagingTokenData: Optional([
                FirebaseCloudMessagingTokenData1(
                    firebaseCloudMessagingToken: "firebase_cloud_messaging_token",
                    lastUsedTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    platform: Optional(.android)
                )
            ]),
            phoneNumber: Optional("phone_number"),
            primaryEmailAddress: Optional("primary_email_address"),
            schemaVersion: 1,
            stripeCustomerId: Optional("stripe_customer_id"),
            userId: "user_id"
        )
        let response = try await client.users.privateData.createV1(
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
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "firebase_cloud_messaging_token_data": [
                    {
                      "firebase_cloud_messaging_token": "firebase_cloud_messaging_token",
                      "last_used_timestamp": "2024-01-15T09:30:00Z",
                      "platform": "android"
                    }
                  ],
                  "phone_number": "phone_number",
                  "primary_email_address": "primary_email_address",
                  "schema_version": 1,
                  "stripe_customer_id": "stripe_customer_id",
                  "user_id": "user_id"
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
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            firebaseCloudMessagingTokenData: Optional([
                FirebaseCloudMessagingTokenData1(
                    firebaseCloudMessagingToken: "firebase_cloud_messaging_token",
                    lastUsedTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    platform: Optional(.android)
                )
            ]),
            phoneNumber: Optional("phone_number"),
            primaryEmailAddress: Optional("primary_email_address"),
            schemaVersion: 1,
            stripeCustomerId: Optional("stripe_customer_id"),
            userId: "user_id"
        )
        let response = try await client.users.privateData.updateV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}