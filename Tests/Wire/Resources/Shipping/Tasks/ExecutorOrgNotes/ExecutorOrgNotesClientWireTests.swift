import Foundation
import Testing
import Chrt

@Suite("ExecutorOrgNotesClient Wire Tests") struct ExecutorOrgNotesClientWireTests {
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
        let response = try await client.shipping.tasks.executorOrgNotes.addV1(
            taskId: "task_id",
            request: .init(note: "note"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}