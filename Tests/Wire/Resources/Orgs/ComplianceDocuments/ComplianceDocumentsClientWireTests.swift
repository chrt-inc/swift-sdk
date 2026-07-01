import Foundation
import Testing
import Chrt

@Suite("ComplianceDocumentsClient Wire Tests") struct ComplianceDocumentsClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "description": "description",
                  "document_type": "security_threat_assessment",
                  "org_compliance_document_s3_object_metadata_ids": [
                    "org_compliance_document_s3_object_metadata_ids"
                  ],
                  "org_id": "org_id",
                  "org_type": "provider",
                  "schema_version": 1,
                  "valid_from": "2024-01-15T09:30:00Z",
                  "valid_until": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgComplianceDocument1(
            id: "_id",
            description: Optional("description"),
            documentType: .securityThreatAssessment,
            orgComplianceDocumentS3ObjectMetadataIds: Optional([
                "org_compliance_document_s3_object_metadata_ids"
            ]),
            orgId: "org_id",
            orgType: .provider,
            schemaVersion: 1,
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.orgs.complianceDocuments.createV1(
            request: .init(
                documentType: .securityThreatAssessment,
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "description": "description",
                    "document_type": "security_threat_assessment",
                    "org_compliance_document_s3_object_metadata_ids": [
                      "org_compliance_document_s3_object_metadata_ids"
                    ],
                    "org_id": "org_id",
                    "org_type": "provider",
                    "schema_version": 1,
                    "valid_from": "2024-01-15T09:30:00Z",
                    "valid_until": "2024-01-15T09:30:00Z"
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            OrgComplianceDocument1(
                id: "_id",
                description: Optional("description"),
                documentType: .securityThreatAssessment,
                orgComplianceDocumentS3ObjectMetadataIds: Optional([
                    "org_compliance_document_s3_object_metadata_ids"
                ]),
                orgId: "org_id",
                orgType: .provider,
                schemaVersion: 1,
                validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )
        ]
        let response = try await client.orgs.complianceDocuments.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "description": "description",
                  "document_type": "security_threat_assessment",
                  "org_compliance_document_s3_object_metadata_ids": [
                    "org_compliance_document_s3_object_metadata_ids"
                  ],
                  "org_id": "org_id",
                  "org_type": "provider",
                  "schema_version": 1,
                  "valid_from": "2024-01-15T09:30:00Z",
                  "valid_until": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgComplianceDocument1(
            id: "_id",
            description: Optional("description"),
            documentType: .securityThreatAssessment,
            orgComplianceDocumentS3ObjectMetadataIds: Optional([
                "org_compliance_document_s3_object_metadata_ids"
            ]),
            orgId: "org_id",
            orgType: .provider,
            schemaVersion: 1,
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.orgs.complianceDocuments.updateV1(
            orgComplianceDocumentId: "org_compliance_document_id",
            request: .init(),
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
                  "description": "description",
                  "document_type": "security_threat_assessment",
                  "org_compliance_document_s3_object_metadata_ids": [
                    "org_compliance_document_s3_object_metadata_ids"
                  ],
                  "org_id": "org_id",
                  "org_type": "provider",
                  "schema_version": 1,
                  "valid_from": "2024-01-15T09:30:00Z",
                  "valid_until": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgComplianceDocument1(
            id: "_id",
            description: Optional("description"),
            documentType: .securityThreatAssessment,
            orgComplianceDocumentS3ObjectMetadataIds: Optional([
                "org_compliance_document_s3_object_metadata_ids"
            ]),
            orgId: "org_id",
            orgType: .provider,
            schemaVersion: 1,
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.orgs.complianceDocuments.getV1(
            orgComplianceDocumentId: "org_compliance_document_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}