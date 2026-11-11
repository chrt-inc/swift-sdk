import Foundation
import Testing
import Chrt

@Suite("CatalogClient Wire Tests") struct CatalogClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "permissions": [
                    "authz.readAccess"
                  ],
                  "roles": [
                    {
                      "permissions": [
                        "authz.readAccess"
                      ],
                      "role": "superUser"
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
        let expectedResponse = AuthzCatalogRes(
            permissions: [
                PermissionEnum1.authzReadAccess
            ],
            roles: [
                AuthzCatalogRoleRes(
                    permissions: [
                        PermissionEnum1.authzReadAccess
                    ],
                    role: ChrtManagedRoleEnum1.superUser
                )
            ]
        )
        let response = try await client.authz.catalog.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}