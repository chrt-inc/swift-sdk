import Foundation
import Testing
import Chrt

@Suite("ShipmentsClient Wire Tests") struct ShipmentsClientWireTests {
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
                      "tive_device_object_id": "tive_device_object_id",
                      "tive_shipment_id": "tive_shipment_id",
                      "tive_public_shipment_id": "tive_public_shipment_id",
                      "tive_shipment_status": {
                        "key": "value"
                      },
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
        let expectedResponse = TiveShipmentListRes(
            items: [
                TiveShipment1(
                    schemaVersion: 1,
                    id: "_id",
                    orgId: "org_id",
                    tiveDeviceObjectId: "tive_device_object_id",
                    tiveShipmentId: "tive_shipment_id",
                    tivePublicShipmentId: Optional("tive_public_shipment_id"),
                    tiveShipmentStatus: Optional([
                        "key": JSONValue.string("value")
                    ]),
                    chrtCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    chrtUpdatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.trackingIntegrations.tive.shipments.listV1(
            sortBy: .chrtCreatedAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterTiveDeviceObjectId: "filter_tive_device_object_id",
            filterTiveShipmentId: "filter_tive_shipment_id",
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
                  "tive_device_object_id": "tive_device_object_id",
                  "tive_shipment_id": "tive_shipment_id",
                  "tive_public_shipment_id": "tive_public_shipment_id",
                  "tive_shipment_status": {
                    "key": "value"
                  },
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
        let expectedResponse = TiveShipment1(
            schemaVersion: 1,
            id: "_id",
            orgId: "org_id",
            tiveDeviceObjectId: "tive_device_object_id",
            tiveShipmentId: "tive_shipment_id",
            tivePublicShipmentId: Optional("tive_public_shipment_id"),
            tiveShipmentStatus: Optional([
                "key": JSONValue.string("value")
            ]),
            chrtCreatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            chrtUpdatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.trackingIntegrations.tive.shipments.getV1(
            tiveShipmentId: "tive_shipment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}