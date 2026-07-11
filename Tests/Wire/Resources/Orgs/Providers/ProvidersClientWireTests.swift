import Foundation
import Testing
import Chrt

@Suite("ProvidersClient Wire Tests") struct ProvidersClientWireTests {
    @Test func listOnAndOffChrtExecutorsV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "off_chrt_executors": {
                    "items": [
                      {
                        "executor_source": "on_chrt_executor"
                      }
                    ],
                    "total_count": 1
                  },
                  "on_chrt_executors": {
                    "items": [
                      {
                        "executor_source": "on_chrt_executor"
                      }
                    ],
                    "total_count": 1
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ProviderOnAndOffChrtExecutorListRes(
            offChrtExecutors: ProviderOnAndOffChrtExecutorListPage(
                items: [
                    ProviderOnAndOffChrtExecutorListItem(
                        executorSource: .onChrtExecutor
                    )
                ],
                totalCount: 1
            ),
            onChrtExecutors: ProviderOnAndOffChrtExecutorListPage(
                items: [
                    ProviderOnAndOffChrtExecutorListItem(
                        executorSource: .onChrtExecutor
                    )
                ],
                totalCount: 1
            )
        )
        let response = try await client.orgs.providers.listOnAndOffChrtExecutorsV1(
            search: "search",
            filterAutoAssignEnabled: true,
            page: 1,
            pageSize: 1,
            latitude: 1.1,
            longitude: 1.1,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}