import Foundation
import Testing
import Chrt

@Suite("ShippingIntegrationsConnectionsClient Wire Tests") struct ShippingIntegrationsConnectionsClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "active": true,
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                      "order_count": 1,
                      "owned_by_user_id": "owned_by_user_id",
                      "provider_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "provider_org_id": "provider_org_id",
                      "provider_org_name": "provider_org_name",
                      "shipping_integration": "xcelerator",
                      "updated_at_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ShippingIntegrationConnectionListRes(
            items: [
                ShippingIntegrationConnection(
                    active: true,
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastMirroredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    orderCount: Optional(1),
                    ownedByUserId: "owned_by_user_id",
                    providerOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    providerOrgId: "provider_org_id",
                    providerOrgName: Optional("provider_org_name"),
                    shippingIntegration: OrgShippingIntegrationEnum1.xcelerator,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.connections.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}