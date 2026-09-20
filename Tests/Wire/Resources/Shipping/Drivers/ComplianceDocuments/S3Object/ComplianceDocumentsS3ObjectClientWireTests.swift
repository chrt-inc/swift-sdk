import Foundation
import Testing
import Chrt

@Suite("ComplianceDocumentsS3ObjectClient Wire Tests") struct ComplianceDocumentsS3ObjectClientWireTests {
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
                  "driver_compliance_document_id": "driver_compliance_document_id",
                  "filename": "filename",
                  "s3_key_prefix": "shipping/driver_compliance_document_s3_object_metadata",
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
        let expectedResponse = DriverComplianceDocumentS3ObjectMetadata1(
            id: "_id",
            aiGeneratedDescription: Optional("ai_generated_description"),
            blurhash: Optional("blurhash"),
            contentType: Optional("content_type"),
            driverComplianceDocumentId: "driver_compliance_document_id",
            filename: Optional("filename"),
            s3KeyPrefix: Optional(.shippingDriverComplianceDocumentS3ObjectMetadata),
            schemaVersion: 1,
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByOrgId: "uploaded_by_org_id",
            uploadedByUserId: "uploaded_by_user_id",
            userGeneratedDescription: Optional("user_generated_description")
        )
        let response = try await client.shipping.drivers.complianceDocuments.s3Object.addV1(
            driverComplianceDocumentId: "driver_compliance_document_id",
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
        let response = try await client.shipping.drivers.complianceDocuments.s3Object.deleteV1(
            driverComplianceDocumentS3ObjectMetadataId: "driver_compliance_document_s3_object_metadata_id",
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
                  "driver_compliance_document_id": "driver_compliance_document_id",
                  "filename": "filename",
                  "s3_key_prefix": "shipping/driver_compliance_document_s3_object_metadata",
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
        let expectedResponse = DriverComplianceDocumentS3ObjectMetadata1(
            id: "_id",
            aiGeneratedDescription: Optional("ai_generated_description"),
            blurhash: Optional("blurhash"),
            contentType: Optional("content_type"),
            driverComplianceDocumentId: "driver_compliance_document_id",
            filename: Optional("filename"),
            s3KeyPrefix: Optional(.shippingDriverComplianceDocumentS3ObjectMetadata),
            schemaVersion: 1,
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByOrgId: "uploaded_by_org_id",
            uploadedByUserId: "uploaded_by_user_id",
            userGeneratedDescription: Optional("user_generated_description")
        )
        let response = try await client.shipping.drivers.complianceDocuments.s3Object.getS3ObjectMetadataV1(
            driverComplianceDocumentS3ObjectMetadataId: "driver_compliance_document_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}