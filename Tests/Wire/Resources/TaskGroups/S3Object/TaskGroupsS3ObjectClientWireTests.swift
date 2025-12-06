import Foundation
import Testing
import Chrt

@Suite("TaskGroupsS3ObjectClient Wire Tests") struct TaskGroupsS3ObjectClientWireTests {
    @Test func getS3ObjectMetadataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "task_group_id": "task_group_id",
                  "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                  "uploaded_by_user_id": "uploaded_by_user_id",
                  "uploaded_by_org_id": "uploaded_by_org_id",
                  "s3_key_prefix": "oort/task_group_s3_object_metadata",
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
        let expectedResponse = TaskGroupS3ObjectMetadata1(
            schemaVersion: 1,
            id: "_id",
            taskGroupId: "task_group_id",
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByUserId: "uploaded_by_user_id",
            uploadedByOrgId: "uploaded_by_org_id",
            s3KeyPrefix: Optional(.oortTaskGroupS3ObjectMetadata),
            blurhash: Optional("blurhash")
        )
        let response = try await client.taskGroups.s3Object.getS3ObjectMetadataV1(
            taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
        let response = try await client.taskGroups.s3Object.addV1(
            taskGroupId: "task_group_id",
            request: .init(image: .init(data: Data("".utf8))),
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
        let response = try await client.taskGroups.s3Object.deleteV1(
            taskGroupS3ObjectMetadataId: "task_group_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}