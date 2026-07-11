import Foundation
import Testing
import Chrt

@Suite("OrderInternalMessagesS3ObjectsClient Wire Tests") struct OrderInternalMessagesS3ObjectsClientWireTests {
    @Test func addV11() async throws -> Void {
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
        let response = try await client.operations.orderInternalMessages.s3Objects.addV1(
            orderId: "order_id",
            request: .init(file: .init(data: Data("".utf8))),
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
        let response = try await client.operations.orderInternalMessages.s3Objects.deleteV1(
            orderInternalMessageS3ObjectMetadataId: "order_internal_message_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getS3ObjectMetadataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "blurhash": "blurhash",
                  "content_type": "content_type",
                  "filename": "filename",
                  "order_internal_messages_id": "order_internal_messages_id",
                  "s3_key_prefix": "operations/order_internal_message_s3_object_metadata",
                  "schema_version": 1,
                  "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                  "uploaded_by_org_id": "uploaded_by_org_id",
                  "uploaded_by_user_id": "uploaded_by_user_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrderInternalMessageS3ObjectMetadata1(
            id: "_id",
            blurhash: Optional("blurhash"),
            contentType: Optional("content_type"),
            filename: Optional("filename"),
            orderInternalMessagesId: "order_internal_messages_id",
            s3KeyPrefix: Optional(.operationsOrderInternalMessageS3ObjectMetadata),
            schemaVersion: 1,
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByOrgId: "uploaded_by_org_id",
            uploadedByUserId: "uploaded_by_user_id"
        )
        let response = try await client.operations.orderInternalMessages.s3Objects.getS3ObjectMetadataV1(
            orderInternalMessageS3ObjectMetadataId: "order_internal_message_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}