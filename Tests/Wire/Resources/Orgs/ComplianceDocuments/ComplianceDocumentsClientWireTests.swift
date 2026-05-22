import Foundation
import Testing
import Chrt

@Suite("ComplianceDocumentsClient Wire Tests") struct ComplianceDocumentsClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "_id": "_id",
                    "org_type": "provider",
                    "org_id": "org_id",
                    "document_type": "security_threat_assessment",
                    "description": "description",
                    "org_compliance_document_s3_object_metadata_ids": [
                      "org_compliance_document_s3_object_metadata_ids"
                    ],
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
                schemaVersion: 1,
                id: "_id",
                orgType: .provider,
                orgId: "org_id",
                documentType: .securityThreatAssessment,
                description: Optional("description"),
                orgComplianceDocumentS3ObjectMetadataIds: Optional([
                    "org_compliance_document_s3_object_metadata_ids"
                ]),
                validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )
        ]
        let response = try await client.orgs.complianceDocuments.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "org_type": "provider",
                  "org_id": "org_id",
                  "document_type": "security_threat_assessment",
                  "description": "description",
                  "org_compliance_document_s3_object_metadata_ids": [
                    "org_compliance_document_s3_object_metadata_ids"
                  ],
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
            schemaVersion: 1,
            id: "_id",
            orgType: .provider,
            orgId: "org_id",
            documentType: .securityThreatAssessment,
            description: Optional("description"),
            orgComplianceDocumentS3ObjectMetadataIds: Optional([
                "org_compliance_document_s3_object_metadata_ids"
            ]),
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.orgs.complianceDocuments.getV1(
            orgComplianceDocumentId: "org_compliance_document_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "org_type": "provider",
                  "org_id": "org_id",
                  "document_type": "security_threat_assessment",
                  "description": "description",
                  "org_compliance_document_s3_object_metadata_ids": [
                    "org_compliance_document_s3_object_metadata_ids"
                  ],
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
            schemaVersion: 1,
            id: "_id",
            orgType: .provider,
            orgId: "org_id",
            documentType: .securityThreatAssessment,
            description: Optional("description"),
            orgComplianceDocumentS3ObjectMetadataIds: Optional([
                "org_compliance_document_s3_object_metadata_ids"
            ]),
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.orgs.complianceDocuments.createV1(
            request: .init(
                schemaVersion: 1,
                documentType: .securityThreatAssessment
            ),
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
                  "schema_version": 1,
                  "_id": "_id",
                  "org_type": "provider",
                  "org_id": "org_id",
                  "document_type": "security_threat_assessment",
                  "description": "description",
                  "org_compliance_document_s3_object_metadata_ids": [
                    "org_compliance_document_s3_object_metadata_ids"
                  ],
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
            schemaVersion: 1,
            id: "_id",
            orgType: .provider,
            orgId: "org_id",
            documentType: .securityThreatAssessment,
            description: Optional("description"),
            orgComplianceDocumentS3ObjectMetadataIds: Optional([
                "org_compliance_document_s3_object_metadata_ids"
            ]),
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
}