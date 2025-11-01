import Foundation
import Testing
import Chrt

@Suite("CourierClient Wire Tests") struct CourierClientWireTests {
    @Test func getPreferencesV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "email_addresses": [
                    "email_addresses"
                  ],
                  "sms_phone_numbers": [
                    "sms_phone_numbers"
                  ],
                  "voice_phone_numbers": [
                    "voice_phone_numbers"
                  ],
                  "preferences": {
                    "key": [
                      "email"
                    ]
                  },
                  "org_id": "org_id",
                  "created_by_user_id": "created_by_user_id",
                  "created_at": "2024-01-15T09:30:00Z",
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
        let expectedResponse = CourierNotificationPreferences1(
            schemaVersion: 1,
            emailAddresses: Optional([
                "email_addresses"
            ]),
            smsPhoneNumbers: Optional([
                "sms_phone_numbers"
            ]),
            voicePhoneNumbers: Optional([
                "voice_phone_numbers"
            ]),
            preferences: Optional([
                "key": [
                    .email
                ]
            ]),
            orgId: "org_id",
            createdByUserId: "created_by_user_id",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            id: "_id"
        )
        let response = try await client.notifications.courier.getPreferencesV1()
        try #require(response == expectedResponse)
    }

    @Test func upsertPreferencesV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.notifications.courier.upsertPreferencesV1(request: .init(schemaVersion: 1))
        try #require(response == expectedResponse)
    }
}