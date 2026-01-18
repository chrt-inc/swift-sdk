import Foundation
import Testing
import Chrt

@Suite("OrgsClient Wire Tests") struct OrgsClientWireTests {
    @Test func getInfoV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "key": "value"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": JSONValue.string("value")
        ]
        let response = try await client.orgs.getInfoV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func listMembersV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "role": "owner",
                    "user_id": "user_id",
                    "first_name": "first_name",
                    "last_name": "last_name"
                  }
                ]
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            OrgMemberDetails(
                role: .owner,
                userId: "user_id",
                firstName: Optional("first_name"),
                lastName: Optional("last_name")
            )
        ]
        let response = try await client.orgs.listMembersV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getOrgPrivateDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "org_type": "courier",
                  "org_id": "org_id",
                  "stripe_connect_account_id": "stripe_connect_account_id",
                  "default_rate_sheet__routed__shipper_pay_courier": "default_rate_sheet__routed__shipper_pay_courier",
                  "default_rate_sheet__on_demand__shipper_pay_courier": "default_rate_sheet__on_demand__shipper_pay_courier",
                  "default_rate_sheet__routed__courier_pay_driver": "default_rate_sheet__routed__courier_pay_driver",
                  "default_rate_sheet__on_demand__courier_pay_driver": "default_rate_sheet__on_demand__courier_pay_driver",
                  "default_rate_sheet__routed__shipper_pay_forwarder": "default_rate_sheet__routed__shipper_pay_forwarder",
                  "default_rate_sheet__on_demand__shipper_pay_forwarder": "default_rate_sheet__on_demand__shipper_pay_forwarder",
                  "default_rate_sheet__routed__forwarder_pay_courier": "default_rate_sheet__routed__forwarder_pay_courier",
                  "default_rate_sheet__on_demand__forwarder_pay_courier": "default_rate_sheet__on_demand__forwarder_pay_courier",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgPrivateData1(
            schemaVersion: 1,
            orgType: .courier,
            orgId: "org_id",
            stripeConnectAccountId: Optional("stripe_connect_account_id"),
            defaultRateSheetRoutedShipperPayCourier: Optional("default_rate_sheet__routed__shipper_pay_courier"),
            defaultRateSheetOnDemandShipperPayCourier: Optional("default_rate_sheet__on_demand__shipper_pay_courier"),
            defaultRateSheetRoutedCourierPayDriver: Optional("default_rate_sheet__routed__courier_pay_driver"),
            defaultRateSheetOnDemandCourierPayDriver: Optional("default_rate_sheet__on_demand__courier_pay_driver"),
            defaultRateSheetRoutedShipperPayForwarder: Optional("default_rate_sheet__routed__shipper_pay_forwarder"),
            defaultRateSheetOnDemandShipperPayForwarder: Optional("default_rate_sheet__on_demand__shipper_pay_forwarder"),
            defaultRateSheetRoutedForwarderPayCourier: Optional("default_rate_sheet__routed__forwarder_pay_courier"),
            defaultRateSheetOnDemandForwarderPayCourier: Optional("default_rate_sheet__on_demand__forwarder_pay_courier"),
            id: "_id"
        )
        let response = try await client.orgs.getOrgPrivateDataV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func getOrgPublicDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "org_type": "courier",
                  "org_id": "org_id",
                  "company_name": "company_name",
                  "handle": "handle",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgPublicData1(
            schemaVersion: 1,
            orgType: .courier,
            orgId: "org_id",
            companyName: Optional("company_name"),
            handle: Optional("handle"),
            id: "_id"
        )
        let response = try await client.orgs.getOrgPublicDataV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }

    @Test func createOrgPublicDataV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "org_public_data_inserted_id": "org_public_data_inserted_id",
                  "org_private_data_inserted_id": "org_private_data_inserted_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateOrgPublicDataRes(
            orgPublicDataInsertedId: "org_public_data_inserted_id",
            orgPrivateDataInsertedId: Optional("org_private_data_inserted_id")
        )
        let response = try await client.orgs.createOrgPublicDataV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateOrgPublicDataV11() async throws -> Void {
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
        let response = try await client.orgs.updateOrgPublicDataV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getOrgPublicDataByOrgIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "org_type": "courier",
                  "org_id": "org_id",
                  "company_name": "company_name",
                  "handle": "handle",
                  "_id": "_id"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrgPublicData1(
            schemaVersion: 1,
            orgType: .courier,
            orgId: "org_id",
            companyName: Optional("company_name"),
            handle: Optional("handle"),
            id: "_id"
        )
        let response = try await client.orgs.getOrgPublicDataByOrgIdV1(
            orgId: "org_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getOrgPublicDataHandleAvailabilityV11() async throws -> Void {
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
        let response = try await client.orgs.getOrgPublicDataHandleAvailabilityV1(
            handle: "handle",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setOrgTypeV11() async throws -> Void {
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
        let response = try await client.orgs.setOrgTypeV1(
            request: .init(orgType: .courier),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getStripeConnectAccountIdV11() async throws -> Void {
        let stub = HTTPStub()
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
        let response = try await client.orgs.getStripeConnectAccountIdV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}