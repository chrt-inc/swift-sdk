import Foundation
import Testing
import Chrt

@Suite("LineItemsS3ObjectsClient Wire Tests") struct LineItemsS3ObjectsClientWireTests {
    @Test func getS3ObjectMetadataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "line_item_id": "line_item_id",
                  "uploaded_at_timestamp": "2024-01-15T09:30:00Z",
                  "uploaded_by_user_id": "uploaded_by_user_id",
                  "uploaded_by_org_id": "uploaded_by_org_id",
                  "s3_key_prefix": "billing/line_item_s3_object_metadata",
                  "blurhash": "blurhash",
                  "content_type": "content_type",
                  "filename": "filename"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = LineItemS3ObjectMetadata1(
            schemaVersion: 1,
            id: "_id",
            lineItemId: "line_item_id",
            uploadedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            uploadedByUserId: "uploaded_by_user_id",
            uploadedByOrgId: "uploaded_by_org_id",
            s3KeyPrefix: Optional(.billingLineItemS3ObjectMetadata),
            blurhash: Optional("blurhash"),
            contentType: Optional("content_type"),
            filename: Optional("filename")
        )
        let response = try await client.billing.lineItems.s3Objects.getS3ObjectMetadataV1(
            lineItemS3ObjectMetadataId: "line_item_s3_object_metadata_id",
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
        let response = try await client.billing.lineItems.s3Objects.addV1(
            lineItemId: "line_item_id",
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
        let response = try await client.billing.lineItems.s3Objects.deleteV1(
            lineItemS3ObjectMetadataId: "line_item_s3_object_metadata_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}