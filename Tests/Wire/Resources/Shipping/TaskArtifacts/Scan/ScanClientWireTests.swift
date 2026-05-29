import Foundation
import Testing
import Chrt

@Suite("ScanClient Wire Tests") struct ScanClientWireTests {
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
        let response = try await client.shipping.taskArtifacts.scan.addV1(
            taskArtifactId: "task_artifact_id",
            request: .init(
                kind: .expected,
                payload: "payload"
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
        let response = try await client.shipping.taskArtifacts.scan.deleteV1(
            taskArtifactId: "task_artifact_id",
            kind: .expected,
            payload: "payload",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}