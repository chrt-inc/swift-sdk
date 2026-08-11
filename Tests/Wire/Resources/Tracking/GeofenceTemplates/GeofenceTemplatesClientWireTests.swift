import Foundation
import Testing
import Chrt

@Suite("GeofenceTemplatesClient Wire Tests") struct GeofenceTemplatesClientWireTests {
    @Test func archiveV11() async throws -> Void {
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
        let response = try await client.tracking.geofenceTemplates.archiveV1(
            geofenceTemplateId: "geofence_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "_id": "_id",
                      "archived_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "description": "description",
                      "geofences": [
                        {
                          "display_name": "display_name",
                          "location": {
                            "geometry": {
                              "coordinates": [],
                              "type": "Point"
                            },
                            "type": "Feature"
                          },
                          "radius_miles": 1.1
                        }
                      ],
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                      "name": "name",
                      "owned_by_org_id": "owned_by_org_id",
                      "owned_by_user_id": "owned_by_user_id",
                      "schema_version": 1
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
        let expectedResponse = GeofenceTemplateListRes(
            items: [
                SessionGeofenceTemplate1(
                    id: "_id",
                    archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    description: Optional("description"),
                    geofences: [
                        SessionGeofenceBase1(
                            displayName: "display_name",
                            location: GeofencePointLocationFeature1(
                                geometry: Point(
                                    coordinates: Coordinates.position2D(
                                        []
                                    ),
                                    type: .point
                                ),
                                type: .feature
                            ),
                            radiusMiles: 1.1
                        )
                    ],
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    name: "name",
                    ownedByOrgId: "owned_by_org_id",
                    ownedByUserId: "owned_by_user_id",
                    schemaVersion: 1
                )
            ],
            totalCount: 1
        )
        let response = try await client.tracking.geofenceTemplates.listV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterArchived: true,
            filterOwnedByUserId: "filter_owned_by_user_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastUsedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastUsedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unarchiveV11() async throws -> Void {
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
        let response = try await client.tracking.geofenceTemplates.unarchiveV1(
            geofenceTemplateId: "geofence_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func updateV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "geofences": [
                    {
                      "display_name": "display_name",
                      "location": {
                        "geometry": {
                          "coordinates": [],
                          "type": "Point"
                        },
                        "type": "Feature"
                      },
                      "radius_miles": 1.1
                    }
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SessionGeofenceTemplate1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            geofences: [
                SessionGeofenceBase1(
                    displayName: "display_name",
                    location: GeofencePointLocationFeature1(
                        geometry: Point(
                            coordinates: Coordinates.position2D(
                                []
                            ),
                            type: .point
                        ),
                        type: .feature
                    ),
                    radiusMiles: 1.1
                )
            ],
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1
        )
        let response = try await client.tracking.geofenceTemplates.updateV1(
            geofenceTemplateId: "geofence_template_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "geofences": [
                    {
                      "display_name": "display_name",
                      "location": {
                        "geometry": {
                          "coordinates": [],
                          "type": "Point"
                        },
                        "type": "Feature"
                      },
                      "radius_miles": 1.1
                    }
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SessionGeofenceTemplate1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            geofences: [
                SessionGeofenceBase1(
                    displayName: "display_name",
                    location: GeofencePointLocationFeature1(
                        geometry: Point(
                            coordinates: Coordinates.position2D(
                                []
                            ),
                            type: .point
                        ),
                        type: .feature
                    ),
                    radiusMiles: 1.1
                )
            ],
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1
        )
        let response = try await client.tracking.geofenceTemplates.createV1(
            request: .init(
                geofences: [
                    SessionGeofenceBase1(
                        displayName: "display_name",
                        location: GeofencePointLocationFeature1(
                            geometry: Point(
                                coordinates: Coordinates.position2D(
                                    []
                                ),
                                type: .point
                            ),
                            type: .feature
                        ),
                        radiusMiles: 1.1
                    )
                ],
                name: "name",
                schemaVersion: 1
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getByIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "archived_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "description": "description",
                  "geofences": [
                    {
                      "display_name": "display_name",
                      "location": {
                        "geometry": {
                          "coordinates": [],
                          "type": "Point"
                        },
                        "type": "Feature"
                      },
                      "radius_miles": 1.1
                    }
                  ],
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_used_at_timestamp": "2024-01-15T09:30:00Z",
                  "name": "name",
                  "owned_by_org_id": "owned_by_org_id",
                  "owned_by_user_id": "owned_by_user_id",
                  "schema_version": 1
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SessionGeofenceTemplate1(
            id: "_id",
            archivedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            description: Optional("description"),
            geofences: [
                SessionGeofenceBase1(
                    displayName: "display_name",
                    location: GeofencePointLocationFeature1(
                        geometry: Point(
                            coordinates: Coordinates.position2D(
                                []
                            ),
                            type: .point
                        ),
                        type: .feature
                    ),
                    radiusMiles: 1.1
                )
            ],
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastUsedAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            name: "name",
            ownedByOrgId: "owned_by_org_id",
            ownedByUserId: "owned_by_user_id",
            schemaVersion: 1
        )
        let response = try await client.tracking.geofenceTemplates.getByIdV1(
            geofenceTemplateId: "geofence_template_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}