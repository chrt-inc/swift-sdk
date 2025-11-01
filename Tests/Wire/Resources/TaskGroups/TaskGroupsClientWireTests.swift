import Foundation
import Testing
import Chrt

@Suite("TaskGroupsClient Wire Tests") struct TaskGroupsClientWireTests {
    @Test func updateV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "success": true
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UpdateTaskGroupRes(
            success: true
        )
        let response = try await client.taskGroups.updateV1(request: .init(taskGroupId: "task_group_id"))
        try #require(response == expectedResponse)
    }

    @Test func startV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.taskGroups.startV1(id: "id")
        try #require(response == expectedResponse)
    }

    @Test func togglePauseV11() async throws -> Void {
        let stub = WireStub()
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
        let response = try await client.taskGroups.togglePauseV1(
            id: "id",
            request: .init(
                taskGroupId: "task_group_id",
                paused: true
            )
        )
        try #require(response == expectedResponse)
    }
}