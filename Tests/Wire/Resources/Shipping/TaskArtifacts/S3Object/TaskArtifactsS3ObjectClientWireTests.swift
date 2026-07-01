import Foundation
import Testing
import Chrt

@Suite("TaskArtifactsS3ObjectClient Wire Tests") struct TaskArtifactsS3ObjectClientWireTests {
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
                cargoIdentityAssessment: "cargo_identity_assessment",
                completionEvidence: "completion_evidence",
                disputeDefensibility: "dispute_defensibility",
                locationDescription: "location_description",
                locationIdentifiers: [
                    "location_identifiers"
                ],
                model: .gpt55,
                packageAppearance: "package_appearance",
                packageTypes: [
                    "package_types"
                ],
                proofNotes: [
                    "proof_notes"
                ],
                readablePackageText: [
                    "readable_package_text"
                ],
                summary: "summary"
            ),
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

    @Test func getS3ObjectMetadataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "ai_image_description": {
                    "cargo_identity_assessment": "cargo_identity_assessment",
                    "completion_evidence": "completion_evidence",
                    "dispute_defensibility": "dispute_defensibility",
                    "location_description": "location_description",
                    "location_identifiers": [
                      "location_identifiers"
                    ],
                    "model": "gpt-5.5",
                    "package_appearance": "package_appearance",
                    "package_count": 1,
                    "package_types": [
                      "package_types"
                    ],
                    "proof_notes": [
                      "proof_notes"
                    ],
                    "readable_package_text": [
                      "readable_package_text"
                    ],
                    "schema_version": 1,
                    "searchable_facts": [
                      "searchable_facts"
                    ],
                    "summary": "summary",
                    "unresolved_questions": [
                      "unresolved_questions"
                    ]
                  },
                  "blurhash": "blurhash",
                  "content_type": "content_type",
                  "filename": "filename",
                  "s3_key_prefix": "shipping/task_artifact_s3_object_metadata",
                  "schema_version": 1,
                  "task_artifact_id": "task_artifact_id",
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
        let expectedResponse = TaskArtifactS3ObjectMetadata1(
            id: "_id",
            aiImageDescription: Optional(AiImageDescription(
                cargoIdentityAssessment: "cargo_identity_assessment",
                completionEvidence: "completion_evidence",
                disputeDefensibility: "dispute_defensibility",
                locationDescription: "location_description",
                locationIdentifiers: [
                    "location_identifiers"
                ],
                model: .gpt55,
                packageAppearance: "package_appearance",
                packageCount: Optional(1),
                packageTypes: [
                    "package_types"
                ],
                proofNotes: [
                    "proof_notes"
                ],
                readablePackageText: [
                    "readable_package_text"
                ],
                schemaVersion: Optional(1),
                searchableFacts: Optional([
                    "searchable_facts"
                ]),
                summary: "summary",
                unresolvedQuestions: Optional([
                    "unresolved_questions"
                ])
            )),
            blurhash: Optional("blurhash"),
            contentType: Optional("content_type"),
            filename: Optional("filename"),
            s3KeyPrefix: Optional(.shippingTaskArtifactS3ObjectMetadata),
            schemaVersion: 1,
            taskArtifactId: "task_artifact_id",
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByOrgId: "uploaded_by_org_id",
            uploadedByUserId: "uploaded_by_user_id"
        )
        let response = try await client.shipping.taskArtifacts.s3Object.getS3ObjectMetadataV1(
            taskArtifactS3ObjectMetadataId: "task_artifact_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}