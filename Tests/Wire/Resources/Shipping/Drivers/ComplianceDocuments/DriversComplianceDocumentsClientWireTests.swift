import Foundation
import Testing
import Chrt

@Suite("DriversComplianceDocumentsClient Wire Tests") struct DriversComplianceDocumentsClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "_id": "_id",
                    "org_id": "org_id",
                    "driver_id": "driver_id",
                    "document_type": "drivers_license",
                    "description": "description",
                    "driver_compliance_document_s3_object_metadata_ids": [
                      "driver_compliance_document_s3_object_metadata_ids"
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
            DriverComplianceDocument1(
                schemaVersion: 1,
                id: "_id",
                orgId: "org_id",
                driverId: "driver_id",
                documentType: .driversLicense,
                description: Optional("description"),
                driverComplianceDocumentS3ObjectMetadataIds: Optional([
                    "driver_compliance_document_s3_object_metadata_ids"
                ]),
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

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "org_id": "org_id",
                  "driver_id": "driver_id",
                  "document_type": "drivers_license",
                  "description": "description",
                  "driver_compliance_document_s3_object_metadata_ids": [
                    "driver_compliance_document_s3_object_metadata_ids"
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
        let expectedResponse = DriverComplianceDocument1(
            schemaVersion: 1,
            id: "_id",
            orgId: "org_id",
            driverId: "driver_id",
            documentType: .driversLicense,
            description: Optional("description"),
            driverComplianceDocumentS3ObjectMetadataIds: Optional([
                "driver_compliance_document_s3_object_metadata_ids"
            ]),
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.shipping.drivers.complianceDocuments.getV1(
            driverComplianceDocumentId: "driver_compliance_document_id",
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
                  "org_id": "org_id",
                  "driver_id": "driver_id",
                  "document_type": "drivers_license",
                  "description": "description",
                  "driver_compliance_document_s3_object_metadata_ids": [
                    "driver_compliance_document_s3_object_metadata_ids"
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
        let expectedResponse = DriverComplianceDocument1(
            schemaVersion: 1,
            id: "_id",
            orgId: "org_id",
            driverId: "driver_id",
            documentType: .driversLicense,
            description: Optional("description"),
            driverComplianceDocumentS3ObjectMetadataIds: Optional([
                "driver_compliance_document_s3_object_metadata_ids"
            ]),
            validFrom: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.shipping.drivers.complianceDocuments.createV1(
            driverId: "driver_id",
            request: .init(
                schemaVersion: 1,
                documentType: .driversLicense
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
                  "org_id": "org_id",
                  "driver_id": "driver_id",
                  "document_type": "drivers_license",
                  "description": "description",
                  "driver_compliance_document_s3_object_metadata_ids": [
                    "driver_compliance_document_s3_object_metadata_ids"
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
        let expectedResponse = DriverComplianceDocument1(
            schemaVersion: 1,
            id: "_id",
            orgId: "org_id",
            driverId: "driver_id",
            documentType: .driversLicense,
            description: Optional("description"),
            driverComplianceDocumentS3ObjectMetadataIds: Optional([
                "driver_compliance_document_s3_object_metadata_ids"
            ]),
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
}