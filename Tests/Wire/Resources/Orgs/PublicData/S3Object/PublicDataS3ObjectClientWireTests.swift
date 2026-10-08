import Foundation
import Testing
import Chrt

@Suite("PublicDataS3ObjectClient Wire Tests") struct PublicDataS3ObjectClientWireTests {
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
                  "filename": "filename",
                  "org_public_data_id": "org_public_data_id",
                  "s3_key_prefix": "orgs/org_public_data_s3_object_metadata",
                  "schema_version": 1,
                  "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                  "uploaded_by_org_id": "uploaded_by_org_id",
                  "uploaded_by_user_id": "uploaded_by_user_id",
                  "user_generated_description": "user_generated_description"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgPublicDataS3ObjectMetadata1(
            id: "_id",
            aiGeneratedDescription: Optional("ai_generated_description"),
            blurhash: Optional("blurhash"),
            contentType: Optional("content_type"),
            filename: Optional("filename"),
            orgPublicDataId: "org_public_data_id",
            s3KeyPrefix: Optional(.orgsOrgPublicDataS3ObjectMetadata),
            schemaVersion: 1,
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByOrgId: "uploaded_by_org_id",
            uploadedByUserId: "uploaded_by_user_id",
            userGeneratedDescription: Optional("user_generated_description")
        )
        let response = try await client.orgs.publicData.s3Object.addV1(
            request: .init(file: .init(data: Data("".utf8))),
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
        let response = try await client.orgs.publicData.s3Object.deleteV1(
            orgPublicDataS3ObjectMetadataId: "org_public_data_s3_object_metadata_id",
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
                  "filename": "filename",
                  "org_public_data_id": "org_public_data_id",
                  "s3_key_prefix": "orgs/org_public_data_s3_object_metadata",
                  "schema_version": 1,
                  "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                  "uploaded_by_org_id": "uploaded_by_org_id",
                  "uploaded_by_user_id": "uploaded_by_user_id",
                  "user_generated_description": "user_generated_description"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgPublicDataS3ObjectMetadata1(
            id: "_id",
            aiGeneratedDescription: Optional("ai_generated_description"),
            blurhash: Optional("blurhash"),
            contentType: Optional("content_type"),
            filename: Optional("filename"),
            orgPublicDataId: "org_public_data_id",
            s3KeyPrefix: Optional(.orgsOrgPublicDataS3ObjectMetadata),
            schemaVersion: 1,
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByOrgId: "uploaded_by_org_id",
            uploadedByUserId: "uploaded_by_user_id",
            userGeneratedDescription: Optional("user_generated_description")
        )
        let response = try await client.orgs.publicData.s3Object.getS3ObjectMetadataV1(
            orgPublicDataS3ObjectMetadataId: "org_public_data_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}