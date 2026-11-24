import Foundation
import Testing
import Chrt

@Suite("PermissionsClient Wire Tests") struct PermissionsClientWireTests {
    @Test func previewV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "missing_custom_role_ids": [
                    "missing_custom_role_ids"
                  ],
                  "missing_group_ids": [
                    "missing_group_ids"
                  ],
                  "permissions": [
                    {
                      "granted": true,
                      "permission": "authz.readAccess",
                      "sources": [
                        {
                          "chrt_managed_role": "viewer",
                          "kind": "chrt_managed_role"
                        }
                      ]
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AuthzPermissionGrantsRes(
            missingCustomRoleIds: [
                "missing_custom_role_ids"
            ],
            missingGroupIds: [
                "missing_group_ids"
            ],
            permissions: [
                AuthzUserPermissionRes(
                    granted: true,
                    permission: PermissionEnum1.authzReadAccess,
                    sources: [
                        SourcesItem.chrtManagedRole(
                            .init(
                                chrtManagedRole: ChrtManagedRoleEnum1.viewer,
                                additionalProperties: [
                                    "kind": JSONValue.string("chrt_managed_role")
                                ]
                            )
                        )
                    ]
                )
            ]
        )
        let response = try await client.authz.permissions.previewV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}