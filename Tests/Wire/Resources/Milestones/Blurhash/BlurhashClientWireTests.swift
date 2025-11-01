import Foundation
import Testing
import Chrt

@Suite("BlurhashClient Wire Tests") struct BlurhashClientWireTests {
    @Test func getByMetadataIdV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                string
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = "string"
        let response = try await client.milestones.blurhash.getByMetadataIdV1(milestoneS3ObjectMetadataId: "milestone_s3_object_metadata_id")
        try #require(response == expectedResponse)
    }
}