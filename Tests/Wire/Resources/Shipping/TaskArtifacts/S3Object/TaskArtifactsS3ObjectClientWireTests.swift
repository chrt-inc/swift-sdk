import Foundation
import Testing
import Chrt

@Suite("TaskArtifactsS3ObjectClient Wire Tests") struct TaskArtifactsS3ObjectClientWireTests {
    @Test func getS3ObjectMetadataV11() async throws -> Void {
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
                  "s3_key_prefix": "shipping/task_artifact_s3_object_metadata",
                  "blurhash": "blurhash",
                  "content_type": "content_type",
                  "filename": "filename",
                  "ai_image_description": {
                    "schema_version": 1,
                    "model": "gpt-5.5",
                    "summary": "summary",
                    "package_count": 1,
                    "package_types": [
                      "package_types"
                    ],
                    "package_appearance": "package_appearance",
                    "readable_package_text": [
                      "readable_package_text"
                    ],
                    "cargo_identity_assessment": "cargo_identity_assessment",
                    "location_description": "location_description",
                    "location_identifiers": [
                      "location_identifiers"
                    ],
                    "completion_evidence": "completion_evidence",
                    "proof_notes": [
                      "proof_notes"
                    ],
                    "dispute_defensibility": "dispute_defensibility",
                    "searchable_facts": [
                      "searchable_facts"
                    ],
                    "unresolved_questions": [
                      "unresolved_questions"
                    ]
                  }
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
            s3KeyPrefix: Optional(.shippingTaskArtifactS3ObjectMetadata),
            blurhash: Optional("blurhash"),
            contentType: Optional("content_type"),
            filename: Optional("filename"),
            aiImageDescription: Optional(AiImageDescription(
                schemaVersion: Optional(1),
                model: .gpt55,
                summary: "summary",
                packageCount: Optional(1),
                packageTypes: [
                    "package_types"
                ],
                packageAppearance: "package_appearance",
                readablePackageText: [
                    "readable_package_text"
                ],
                cargoIdentityAssessment: "cargo_identity_assessment",
                locationDescription: "location_description",
                locationIdentifiers: [
                    "location_identifiers"
                ],
                completionEvidence: "completion_evidence",
                proofNotes: [
                    "proof_notes"
                ],
                disputeDefensibility: "dispute_defensibility",
                searchableFacts: Optional([
                    "searchable_facts"
                ]),
                unresolvedQuestions: Optional([
                    "unresolved_questions"
                ])
            ))
        )
        let response = try await client.shipping.taskArtifacts.s3Object.getS3ObjectMetadataV1(
            taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id",
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
        let response = try await client.shipping.taskArtifacts.s3Object.addV1(
            taskArtifactId: "task_artifact_id",
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
        let response = try await client.shipping.taskArtifacts.s3Object.deleteV1(
            taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func writeAiImageDescriptionV11() async throws -> Void {
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
        let response = try await client.shipping.taskArtifacts.s3Object.writeAiImageDescriptionV1(
            taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id",
            request: AiImageDescription(
                model: .gpt55,
                summary: "summary",
                packageTypes: [
                    "package_types"
                ],
                packageAppearance: "package_appearance",
                readablePackageText: [
                    "readable_package_text"
                ],
                cargoIdentityAssessment: "cargo_identity_assessment",
                locationDescription: "location_description",
                locationIdentifiers: [
                    "location_identifiers"
                ],
                completionEvidence: "completion_evidence",
                proofNotes: [
                    "proof_notes"
                ],
                disputeDefensibility: "dispute_defensibility"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}