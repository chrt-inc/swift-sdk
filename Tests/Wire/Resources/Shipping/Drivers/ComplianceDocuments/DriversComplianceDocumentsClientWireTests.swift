import Foundation
import Testing
import Chrt

@Suite("DriversComplianceDocumentsClient Wire Tests") struct DriversComplianceDocumentsClientWireTests {
    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "description": "description",
                  "document_type": "drivers_license",
                  "driver_compliance_document_s3_object_metadata_ids": [
                    "driver_compliance_document_s3_object_metadata_ids"
                  ],
                  "driver_id": "driver_id",
                  "org_id": "org_id",
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
        let expectedResponse = DriverComplianceDocument1(
            id: "_id",
            description: Optional("description"),
            documentType: .driversLicense,
            driverComplianceDocumentS3ObjectMetadataIds: Optional([
                "driver_compliance_document_s3_object_metadata_ids"
            ]),
            driverId: "driver_id",
            orgId: "org_id",
            schemaVersion: 1,
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.shipping.drivers.complianceDocuments.createV1(
            driverId: "driver_id",
            request: .init(
                documentType: .driversLicense,
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
                    "document_type": "drivers_license",
                    "driver_compliance_document_s3_object_metadata_ids": [
                      "driver_compliance_document_s3_object_metadata_ids"
                    ],
                    "driver_id": "driver_id",
                    "org_id": "org_id",
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
            DriverComplianceDocument1(
                id: "_id",
                description: Optional("description"),
                documentType: .driversLicense,
                driverComplianceDocumentS3ObjectMetadataIds: Optional([
                    "driver_compliance_document_s3_object_metadata_ids"
                ]),
                driverId: "driver_id",
                orgId: "org_id",
                schemaVersion: 1,
                validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )
        ]
        let response = try await client.shipping.drivers.complianceDocuments.listV1(
            driverId: "driver_id",
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
                  "_id": "_id",
                  "description": "description",
                  "document_type": "drivers_license",
                  "driver_compliance_document_s3_object_metadata_ids": [
                    "driver_compliance_document_s3_object_metadata_ids"
                  ],
                  "driver_id": "driver_id",
                  "org_id": "org_id",
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
        let expectedResponse = DriverComplianceDocument1(
            id: "_id",
            description: Optional("description"),
            documentType: .driversLicense,
            driverComplianceDocumentS3ObjectMetadataIds: Optional([
                "driver_compliance_document_s3_object_metadata_ids"
            ]),
            driverId: "driver_id",
            orgId: "org_id",
            schemaVersion: 1,
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.shipping.drivers.complianceDocuments.updateV1(
            driverComplianceDocumentId: "driver_compliance_document_id",
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
                  "document_type": "drivers_license",
                  "driver_compliance_document_s3_object_metadata_ids": [
                    "driver_compliance_document_s3_object_metadata_ids"
                  ],
                  "driver_id": "driver_id",
                  "org_id": "org_id",
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
        let expectedResponse = DriverComplianceDocument1(
            id: "_id",
            description: Optional("description"),
            documentType: .driversLicense,
            driverComplianceDocumentS3ObjectMetadataIds: Optional([
                "driver_compliance_document_s3_object_metadata_ids"
            ]),
            driverId: "driver_id",
            orgId: "org_id",
            schemaVersion: 1,
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.shipping.drivers.complianceDocuments.getV1(
            driverComplianceDocumentId: "driver_compliance_document_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}