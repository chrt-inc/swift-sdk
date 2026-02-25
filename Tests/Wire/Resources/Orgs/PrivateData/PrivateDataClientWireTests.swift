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
                  "_id": "_id",
                  "default_rate_sheet__on_demand__courier_pay_driver": "default_rate_sheet__on_demand__courier_pay_driver",
                  "default_rate_sheet__on_demand__forwarder_pay_courier": "default_rate_sheet__on_demand__forwarder_pay_courier",
                  "default_rate_sheet__on_demand__shipper_pay_courier": "default_rate_sheet__on_demand__shipper_pay_courier",
                  "default_rate_sheet__on_demand__shipper_pay_forwarder": "default_rate_sheet__on_demand__shipper_pay_forwarder",
                  "default_rate_sheet__routed__courier_pay_driver": "default_rate_sheet__routed__courier_pay_driver",
                  "default_rate_sheet__routed__forwarder_pay_courier": "default_rate_sheet__routed__forwarder_pay_courier",
                  "default_rate_sheet__routed__shipper_pay_courier": "default_rate_sheet__routed__shipper_pay_courier",
                  "default_rate_sheet__routed__shipper_pay_forwarder": "default_rate_sheet__routed__shipper_pay_forwarder",
                  "org_id": "org_id",
                  "org_type": "courier",
                  "schema_version": 1,
                  "stripe_connect_account_id": "stripe_connect_account_id",
                  "svix_app_id": "svix_app_id",
                  "webhook_enabled": true
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
            id: "_id",
            defaultRateSheetOnDemandCourierPayDriver: Optional("default_rate_sheet__on_demand__courier_pay_driver"),
            defaultRateSheetOnDemandForwarderPayCourier: Optional("default_rate_sheet__on_demand__forwarder_pay_courier"),
            defaultRateSheetOnDemandShipperPayCourier: Optional("default_rate_sheet__on_demand__shipper_pay_courier"),
            defaultRateSheetOnDemandShipperPayForwarder: Optional("default_rate_sheet__on_demand__shipper_pay_forwarder"),
            defaultRateSheetRoutedCourierPayDriver: Optional("default_rate_sheet__routed__courier_pay_driver"),
            defaultRateSheetRoutedForwarderPayCourier: Optional("default_rate_sheet__routed__forwarder_pay_courier"),
            defaultRateSheetRoutedShipperPayCourier: Optional("default_rate_sheet__routed__shipper_pay_courier"),
            defaultRateSheetRoutedShipperPayForwarder: Optional("default_rate_sheet__routed__shipper_pay_forwarder"),
            orgId: "org_id",
            orgType: .courier,
            schemaVersion: 1,
            stripeConnectAccountId: Optional("stripe_connect_account_id"),
            svixAppId: Optional("svix_app_id"),
            webhookEnabled: Optional(true)
        )
        let response = try await client.orgs.privateData.getV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}