import Foundation
import Testing
import Chrt

@Suite("DevicesClient Wire Tests") struct DevicesClientWireTests {
    @Test func registerToOrgV11() async throws -> Void {
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
        let response = try await client.tracking.devices.registerToOrgV1(
            request: .init(deviceMacAddress: "device_mac_address"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
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
        let response = try await client.tracking.devices.updateV1(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteV11() async throws -> Void {
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
        let response = try await client.tracking.devices.deleteV1(
            deviceId: "device_id",
            deviceMacAddress: "device_mac_address",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func linkToCargoV11() async throws -> Void {
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
        let response = try await client.tracking.devices.linkToCargoV1(
            deviceMacAddress: "device_mac_address",
            cargoId: "cargo_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unlinkFromCargoV11() async throws -> Void {
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
        let response = try await client.tracking.devices.unlinkFromCargoV1(
            deviceMacAddress: "device_mac_address",
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
                  "org_id": "org_id",
                  "device_mac_address": "device_mac_address",
                  "device_token": "device_token",
                  "type": "D15N-tag",
                  "registered_at_timestamp": "2024-01-15T09:30:00Z",
                  "first_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_seen_at_location": {
                    "bbox": [
                      {
                        "key": "value"
                      }
                    ],
                    "type": "Feature",
                    "geometry": {
                      "geometries": [
                        {
                          "coordinates": [
                            []
                          ],
                          "type": "LineString"
                        }
                      ],
                      "type": "GeometryCollection"
                    },
                    "properties": {
                      "address": "address",
                      "name": "name"
                    },
                    "id": 1
                  },
                  "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_seen_battery_level": "last_seen_battery_level",
                  "session_id": "session_id",
                  "cargo_id": "cargo_id",
                  "comments": "comments",
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
        let expectedResponse = Device1(
            schemaVersion: 1,
            orgId: "org_id",
            deviceMacAddress: "device_mac_address",
            deviceToken: Optional("device_token"),
            type: Optional(.d15NTag),
            registeredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenAtLocation: Optional(LocationFeature(
                bbox: Optional([
                    JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )
                ]),
                type: .feature,
                geometry: .geometryCollection(
                    .init(
                        geometries: [
                            .lineString(
                                .init(
                                    coordinates: [
                                        LineStringCoordinatesItem.position2D(
                                            []
                                        )
                                    ]
                                )
                            )
                        ]
                    )
                ),
                properties: Optional(LocationProperties(
                    address: Optional("address"),
                    name: Optional("name")
                )),
                id: Optional(Id.int(
                    1
                ))
            )),
            lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSeenBatteryLevel: Optional("last_seen_battery_level"),
            sessionId: Optional("session_id"),
            cargoId: Optional("cargo_id"),
            comments: Optional("comments"),
            id: "_id"
        )
        let response = try await client.tracking.devices.getV1(
            deviceMacAddress: "device_mac_address",
            deviceId: "device_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "schema_version": 1,
                    "org_id": "org_id",
                    "device_mac_address": "device_mac_address",
                    "device_token": "device_token",
                    "type": "D15N-tag",
                    "registered_at_timestamp": "2024-01-15T09:30:00Z",
                    "first_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_at_location": {
                      "type": "Feature",
                      "geometry": {
                        "geometries": [
                          {
                            "coordinates": [
                              []
                            ],
                            "type": "LineString"
                          }
                        ],
                        "type": "GeometryCollection"
                      },
                      "properties": {
                        "address": null,
                        "name": null
                      },
                      "id": 1
                    },
                    "last_seen_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_seen_battery_level": "last_seen_battery_level",
                    "session_id": "session_id",
                    "cargo_id": "cargo_id",
                    "comments": "comments",
                    "_id": "_id"
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
            Device1(
                schemaVersion: 1,
                orgId: "org_id",
                deviceMacAddress: "device_mac_address",
                deviceToken: Optional("device_token"),
                type: Optional(.d15NTag),
                registeredAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                firstSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenAtLocation: Optional(LocationFeature(
                    type: .feature,
                    geometry: .geometryCollection(
                        .init(
                            geometries: [
                                .lineString(
                                    .init(
                                        coordinates: [
                                            LineStringCoordinatesItem.position2D(
                                                []
                                            )
                                        ]
                                    )
                                )
                            ]
                        )
                    ),
                    properties: Optional(LocationProperties(
                        address: Optional(nil),
                        name: Optional(nil)
                    )),
                    id: Optional(Id.int(
                        1
                    ))
                )),
                lastSeenAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                lastSeenBatteryLevel: Optional("last_seen_battery_level"),
                sessionId: Optional("session_id"),
                cargoId: Optional("cargo_id"),
                comments: Optional("comments"),
                id: "_id"
            )
        ]
        let response = try await client.tracking.devices.listV1(requestOptions: RequestOptions(additionalHeaders: stub.headers))
        try #require(response == expectedResponse)
    }
}