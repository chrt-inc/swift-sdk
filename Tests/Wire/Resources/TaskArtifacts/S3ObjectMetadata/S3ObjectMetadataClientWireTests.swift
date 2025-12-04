import Foundation
import Testing
import Chrt

@Suite("S3ObjectMetadataClient Wire Tests") struct S3ObjectMetadataClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_artifact_id": "task_artifact_id",
                  "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                  "uploaded_by_user_id": "uploaded_by_user_id",
                  "uploaded_by_org_id": "uploaded_by_org_id",
                  "s3_key_prefix": "oort/task_artifact_s3_object_metadata",
                  "blurhash": "blurhash"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaskArtifactS3ObjectMetadata1(
            schemaVersion: 1,
            id: "_id",
            taskArtifactId: "task_artifact_id",
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByUserId: "uploaded_by_user_id",
            uploadedByOrgId: "uploaded_by_org_id",
            s3KeyPrefix: Optional(.oortTaskArtifactS3ObjectMetadata),
            blurhash: Optional("blurhash")
        )
        let response = try await client.taskArtifacts.s3ObjectMetadata.getV1(
            taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}