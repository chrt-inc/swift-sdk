import Foundation
import Testing
import Chrt

@Suite("PrivateDataClient Wire Tests") struct PrivateDataClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "org_type": "courier",
                  "org_id": "org_id",
                  "stripe_connect_account_id": "stripe_connect_account_id",
                  "webhook_enabled": true,
                  "svix_app_id": "svix_app_id",
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
            webhookEnabled: Optional(true),
            svixAppId: Optional("svix_app_id"),
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
        let response = try await client.orgs.privateData.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}