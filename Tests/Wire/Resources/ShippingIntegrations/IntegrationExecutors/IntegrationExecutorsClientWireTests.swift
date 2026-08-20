import Foundation
import Testing
import Chrt

@Suite("IntegrationExecutorsClient Wire Tests") struct IntegrationExecutorsClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "integration_executor_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "integration_executor_org_id": "integration_executor_org_id",
                      "integration_executor_org_name": "integration_executor_org_name",
                      "integrations": [
                        "xcelerator"
                      ]
                    }
                  ],
                  "total_count": 1
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShippingIntegrationIntegrationExecutorListRes(
            items: [
                ShippingIntegrationIntegrationExecutor(
                    integrationExecutorOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    integrationExecutorOrgId: "integration_executor_org_id",
                    integrationExecutorOrgName: Optional("integration_executor_org_name"),
                    integrations: Optional([
                        OrgShippingIntegrationEnum1.xcelerator
                    ])
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.integrationExecutors.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}