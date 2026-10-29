import Foundation
import Testing
import Chrt

@Suite("S3ObjectsClient Wire Tests") struct S3ObjectsClientWireTests {
    @Test func addV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "ai_generated_description": "ai_generated_description",
                  "blurhash": "blurhash",
                  "content_type": "content_type",
                  "conversation_id": "conversation_id",
                  "filename": "filename",
                  "object_type": "image",
                  "s3_key_prefix": "chrt_gpt/conversation_s3_object_metadata",
                  "schema_version": 1,
                  "size_bytes": 1,
                  "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                  "uploaded_by_org_id": "uploaded_by_org_id",
                  "uploaded_by_user_id": "uploaded_by_user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ChrtGptConversationS3ObjectMetadata1(
            id: "_id",
            aiGeneratedDescription: "ai_generated_description",
            blurhash: Optional("blurhash"),
            contentType: "content_type",
            conversationId: "conversation_id",
            filename: Optional("filename"),
            objectType: ChrtGptConversationS3ObjectTypeEnum1.image,
            s3KeyPrefix: Optional(.chrtGptConversationS3ObjectMetadata),
            schemaVersion: 1,
            sizeBytes: 1,
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByOrgId: "uploaded_by_org_id",
            uploadedByUserId: "uploaded_by_user_id"
        )
        let response = try await client.chrtGpt.conversations.s3Objects.addV1(
            conversationId: "conversation_id",
            request: .init(file: .init(data: Data("".utf8))),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getS3ObjectMetadataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "ai_generated_description": "ai_generated_description",
                  "blurhash": "blurhash",
                  "content_type": "content_type",
                  "conversation_id": "conversation_id",
                  "filename": "filename",
                  "object_type": "image",
                  "s3_key_prefix": "chrt_gpt/conversation_s3_object_metadata",
                  "schema_version": 1,
                  "size_bytes": 1,
                  "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                  "uploaded_by_org_id": "uploaded_by_org_id",
                  "uploaded_by_user_id": "uploaded_by_user_id"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ChrtGptConversationS3ObjectMetadata1(
            id: "_id",
            aiGeneratedDescription: "ai_generated_description",
            blurhash: Optional("blurhash"),
            contentType: "content_type",
            conversationId: "conversation_id",
            filename: Optional("filename"),
            objectType: ChrtGptConversationS3ObjectTypeEnum1.image,
            s3KeyPrefix: Optional(.chrtGptConversationS3ObjectMetadata),
            schemaVersion: 1,
            sizeBytes: 1,
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByOrgId: "uploaded_by_org_id",
            uploadedByUserId: "uploaded_by_user_id"
        )
        let response = try await client.chrtGpt.conversations.s3Objects.getS3ObjectMetadataV1(
            conversationS3ObjectMetadataId: "conversation_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}