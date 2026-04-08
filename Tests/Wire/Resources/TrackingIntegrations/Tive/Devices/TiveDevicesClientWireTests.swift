import Foundation
import Testing
import Chrt

@Suite("TiveDevicesClient Wire Tests") struct TiveDevicesClientWireTests {
    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "schema_version": 1,
                      "_id": "_id",
                      "org_id": "org_id",
                      "tive_account_id": 1,
                      "tive_account_name": "tive_account_name",
                      "tive_device_id": "tive_device_id",
                      "tive_device_name": "tive_device_name",
                      "tive_current_shipment_id": "tive_current_shipment_id",
                      "tive_current_public_shipment_id": "tive_current_public_shipment_id",
                      "chrt_created_at_timestamp": "2024-01-15T09:30:00Z",
                      "chrt_updated_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "total_count": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TiveDeviceListRes(
            items: [
                TiveDevice1(
                    schemaVersion: 1,
                    id: "_id",
                    orgId: "org_id",
                    tiveAccountId: 1,
                    tiveAccountName: "tive_account_name",
                    tiveDeviceId: "tive_device_id",
                    tiveDeviceName: "tive_device_name",
                    tiveCurrentShipmentId: Optional("tive_current_shipment_id"),
                    tiveCurrentPublicShipmentId: Optional("tive_current_public_shipment_id"),
                    chrtCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    chrtUpdatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.trackingIntegrations.tive.devices.listV1(
            sortBy: .chrtCreatedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterTiveAccountId: 1,
            filterTiveDeviceId: "filter_tive_device_id",
            filterChrtCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterChrtCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "schema_version": 1,
                  "_id": "_id",
                  "org_id": "org_id",
                  "tive_account_id": 1,
                  "tive_account_name": "tive_account_name",
                  "tive_device_id": "tive_device_id",
                  "tive_device_name": "tive_device_name",
                  "tive_current_shipment_id": "tive_current_shipment_id",
                  "tive_current_public_shipment_id": "tive_current_public_shipment_id",
                  "chrt_created_at_timestamp": "2024-01-15T09:30:00Z",
                  "chrt_updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TiveDevice1(
            schemaVersion: 1,
            id: "_id",
            orgId: "org_id",
            tiveAccountId: 1,
            tiveAccountName: "tive_account_name",
            tiveDeviceId: "tive_device_id",
            tiveDeviceName: "tive_device_name",
            tiveCurrentShipmentId: Optional("tive_current_shipment_id"),
            tiveCurrentPublicShipmentId: Optional("tive_current_public_shipment_id"),
            chrtCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            chrtUpdatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.trackingIntegrations.tive.devices.getV1(
            tiveDeviceId: "tive_device_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}