import Foundation
import Testing
import Chrt

@Suite("XceleratorOrdersClient Wire Tests") struct XceleratorOrdersClientWireTests {
    @Test func detailByIntegrationOrderIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "integration_order_id": "integration_order_id",
                  "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "provider_org": {
                    "_id": "_id",
                    "description": "description",
                    "email_address": "email_address",
                    "handle": "handle",
                    "industry": "industry",
                    "name": "name",
                    "org_id": "org_id",
                    "org_type": "provider",
                    "phone_number": "phone_number",
                    "schema_version": 1,
                    "street_address": {
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
                      "id": 1,
                      "type": "Feature"
                    }
                  },
                  "provider_org_id": "provider_org_id",
                  "provider_payload": {
                    "AccountNo": "AccountNo",
                    "AfterHoursCharge": 1.1,
                    "CODCharge": 1.1,
                    "ClientRefNo": "ClientRefNo",
                    "ClientRefNo2": "ClientRefNo2",
                    "ClientRefNo3": "ClientRefNo3",
                    "ClientRefNo4": "ClientRefNo4",
                    "CreationUTC": "CreationUTC",
                    "DCity": "DCity",
                    "DCoName": "DCoName",
                    "DContact": "DContact",
                    "DLatitude": 1.1,
                    "DLongitude": 1.1,
                    "DState": "DState",
                    "DStreet": "DStreet",
                    "DStreet2": "DStreet2",
                    "DTimeZoneText": "DTimeZoneText",
                    "DZip": "DZip",
                    "DeclaredValueCharge": 1.1,
                    "DeliveryArrival": "DeliveryArrival",
                    "DeliveryDeparture": "DeliveryDeparture",
                    "DeliveryTargetFrom": "DeliveryTargetFrom",
                    "DeliveryTargetTo": "DeliveryTargetTo",
                    "GrandTotal": 1.1,
                    "HasPODsignature": true,
                    "HasPOPsignature": true,
                    "HasVPOD": true,
                    "HasVPOP": true,
                    "HourlyCharge": 1.1,
                    "MileageTotal": 1.1,
                    "MiscCharge": 1.1,
                    "OrderCharge": 1.1,
                    "OrderExtras": [
                      {}
                    ],
                    "OrderPackages": [
                      {}
                    ],
                    "OrderTrackingId": "OrderTrackingId",
                    "OrderType": "OrderType",
                    "PCity": "PCity",
                    "PCoName": "PCoName",
                    "PContact": "PContact",
                    "PLatitude": 1.1,
                    "PLongitude": 1.1,
                    "PODcompletion": "PODcompletion",
                    "PODname": "PODname",
                    "POPname": "POPname",
                    "PState": "PState",
                    "PStreet": "PStreet",
                    "PStreet2": "PStreet2",
                    "PTimeZoneText": "PTimeZoneText",
                    "PZip": "PZip",
                    "PackageCharge": 1.1,
                    "PickupArrival": "PickupArrival",
                    "PickupDeparture": "PickupDeparture",
                    "PickupTargetFrom": "PickupTargetFrom",
                    "PickupTargetTo": "PickupTargetTo",
                    "ServiceName": "ServiceName",
                    "Status": "Status",
                    "StopOffCharge": 1.1,
                    "Subtotal": 1.1,
                    "Tax1Amount": 1.1,
                    "Tax2Amount": 1.1,
                    "TollCharge": 1.1,
                    "TotalCharge": 1.1,
                    "TotalExtras": 1.1,
                    "TotalSurcharges": 1.1,
                    "TrackingKey": "TrackingKey",
                    "VehicleName": "VehicleName",
                    "WaitTimeCharge": 1.1,
                    "WarehousingCharge": 1.1,
                    "WeightCharge": 1.1,
                    "oDate": "oDate",
                    "sWeight": 1.1
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "xcelerator",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = XceleratorOrderExpanded1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrg: Optional(OrgPublicData1(
                id: "_id",
                description: Optional("description"),
                emailAddress: Optional("email_address"),
                handle: Optional("handle"),
                industry: Optional("industry"),
                name: "name",
                orgId: "org_id",
                orgType: OrgTypeEnum.provider,
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometriesItem.lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
                                                []
                                            )
                                        ],
                                        additionalProperties: [
                                            "type": JSONValue.string("LineString")
                                        ]
                                    )
                                )
                            ],
                            additionalProperties: [
                                "type": JSONValue.string("GeometryCollection")
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    )),
                    type: .feature
                ))
            )),
            providerOrgId: "provider_org_id",
            providerPayload: XceleratorOrderResponse1(
                accountNo: Optional("AccountNo"),
                afterHoursCharge: Optional(1.1),
                codCharge: Optional(1.1),
                clientRefNo: Optional("ClientRefNo"),
                clientRefNo2: Optional("ClientRefNo2"),
                clientRefNo3: Optional("ClientRefNo3"),
                clientRefNo4: Optional("ClientRefNo4"),
                creationUtc: Optional("CreationUTC"),
                dCity: Optional("DCity"),
                dCoName: Optional("DCoName"),
                dContact: Optional("DContact"),
                dLatitude: Optional(1.1),
                dLongitude: Optional(1.1),
                dState: Optional("DState"),
                dStreet: Optional("DStreet"),
                dStreet2: Optional("DStreet2"),
                dTimeZoneText: Optional("DTimeZoneText"),
                dZip: Optional("DZip"),
                declaredValueCharge: Optional(1.1),
                deliveryArrival: Optional("DeliveryArrival"),
                deliveryDeparture: Optional("DeliveryDeparture"),
                deliveryTargetFrom: Optional("DeliveryTargetFrom"),
                deliveryTargetTo: Optional("DeliveryTargetTo"),
                grandTotal: Optional(1.1),
                hasPoDsignature: Optional(true),
                hasPoPsignature: Optional(true),
                hasVpod: Optional(true),
                hasVpop: Optional(true),
                hourlyCharge: Optional(1.1),
                mileageTotal: Optional(1.1),
                miscCharge: Optional(1.1),
                orderCharge: Optional(1.1),
                orderExtras: Optional([
                    XceleratorOrderExtraResponse1(

                    )
                ]),
                orderPackages: Optional([
                    XceleratorOrderPackageResponse1(

                    )
                ]),
                orderTrackingId: "OrderTrackingId",
                orderType: Optional("OrderType"),
                pCity: Optional("PCity"),
                pCoName: Optional("PCoName"),
                pContact: Optional("PContact"),
                pLatitude: Optional(1.1),
                pLongitude: Optional(1.1),
                poDcompletion: Optional("PODcompletion"),
                poDname: Optional("PODname"),
                poPname: Optional("POPname"),
                pState: Optional("PState"),
                pStreet: Optional("PStreet"),
                pStreet2: Optional("PStreet2"),
                pTimeZoneText: Optional("PTimeZoneText"),
                pZip: Optional("PZip"),
                packageCharge: Optional(1.1),
                pickupArrival: Optional("PickupArrival"),
                pickupDeparture: Optional("PickupDeparture"),
                pickupTargetFrom: Optional("PickupTargetFrom"),
                pickupTargetTo: Optional("PickupTargetTo"),
                serviceName: Optional("ServiceName"),
                status: Optional("Status"),
                stopOffCharge: Optional(1.1),
                subtotal: Optional(1.1),
                tax1Amount: Optional(1.1),
                tax2Amount: Optional(1.1),
                tollCharge: Optional(1.1),
                totalCharge: Optional(1.1),
                totalExtras: Optional(1.1),
                totalSurcharges: Optional(1.1),
                trackingKey: Optional("TrackingKey"),
                vehicleName: Optional("VehicleName"),
                waitTimeCharge: Optional(1.1),
                warehousingCharge: Optional(1.1),
                weightCharge: Optional(1.1),
                oDate: Optional("oDate"),
                sWeight: Optional(1.1)
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .xcelerator,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.xcelerator.orders.detailByIntegrationOrderIdV1(
            orgId: "org_id",
            integrationOrderId: "integration_order_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func detailV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "integration_order_id": "integration_order_id",
                  "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "provider_org": {
                    "_id": "_id",
                    "description": "description",
                    "email_address": "email_address",
                    "handle": "handle",
                    "industry": "industry",
                    "name": "name",
                    "org_id": "org_id",
                    "org_type": "provider",
                    "phone_number": "phone_number",
                    "schema_version": 1,
                    "street_address": {
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
                      "id": 1,
                      "type": "Feature"
                    }
                  },
                  "provider_org_id": "provider_org_id",
                  "provider_payload": {
                    "AccountNo": "AccountNo",
                    "AfterHoursCharge": 1.1,
                    "CODCharge": 1.1,
                    "ClientRefNo": "ClientRefNo",
                    "ClientRefNo2": "ClientRefNo2",
                    "ClientRefNo3": "ClientRefNo3",
                    "ClientRefNo4": "ClientRefNo4",
                    "CreationUTC": "CreationUTC",
                    "DCity": "DCity",
                    "DCoName": "DCoName",
                    "DContact": "DContact",
                    "DLatitude": 1.1,
                    "DLongitude": 1.1,
                    "DState": "DState",
                    "DStreet": "DStreet",
                    "DStreet2": "DStreet2",
                    "DTimeZoneText": "DTimeZoneText",
                    "DZip": "DZip",
                    "DeclaredValueCharge": 1.1,
                    "DeliveryArrival": "DeliveryArrival",
                    "DeliveryDeparture": "DeliveryDeparture",
                    "DeliveryTargetFrom": "DeliveryTargetFrom",
                    "DeliveryTargetTo": "DeliveryTargetTo",
                    "GrandTotal": 1.1,
                    "HasPODsignature": true,
                    "HasPOPsignature": true,
                    "HasVPOD": true,
                    "HasVPOP": true,
                    "HourlyCharge": 1.1,
                    "MileageTotal": 1.1,
                    "MiscCharge": 1.1,
                    "OrderCharge": 1.1,
                    "OrderExtras": [
                      {}
                    ],
                    "OrderPackages": [
                      {}
                    ],
                    "OrderTrackingId": "OrderTrackingId",
                    "OrderType": "OrderType",
                    "PCity": "PCity",
                    "PCoName": "PCoName",
                    "PContact": "PContact",
                    "PLatitude": 1.1,
                    "PLongitude": 1.1,
                    "PODcompletion": "PODcompletion",
                    "PODname": "PODname",
                    "POPname": "POPname",
                    "PState": "PState",
                    "PStreet": "PStreet",
                    "PStreet2": "PStreet2",
                    "PTimeZoneText": "PTimeZoneText",
                    "PZip": "PZip",
                    "PackageCharge": 1.1,
                    "PickupArrival": "PickupArrival",
                    "PickupDeparture": "PickupDeparture",
                    "PickupTargetFrom": "PickupTargetFrom",
                    "PickupTargetTo": "PickupTargetTo",
                    "ServiceName": "ServiceName",
                    "Status": "Status",
                    "StopOffCharge": 1.1,
                    "Subtotal": 1.1,
                    "Tax1Amount": 1.1,
                    "Tax2Amount": 1.1,
                    "TollCharge": 1.1,
                    "TotalCharge": 1.1,
                    "TotalExtras": 1.1,
                    "TotalSurcharges": 1.1,
                    "TrackingKey": "TrackingKey",
                    "VehicleName": "VehicleName",
                    "WaitTimeCharge": 1.1,
                    "WarehousingCharge": 1.1,
                    "WeightCharge": 1.1,
                    "oDate": "oDate",
                    "sWeight": 1.1
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "xcelerator",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = XceleratorOrderExpanded1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrg: Optional(OrgPublicData1(
                id: "_id",
                description: Optional("description"),
                emailAddress: Optional("email_address"),
                handle: Optional("handle"),
                industry: Optional("industry"),
                name: "name",
                orgId: "org_id",
                orgType: OrgTypeEnum.provider,
                phoneNumber: Optional("phone_number"),
                schemaVersion: 1,
                streetAddress: Optional(LocationFeature(
                    geometry: Geometry.geometryCollection(
                        .init(
                            geometries: [
                                GeometriesItem.lineString(
                                    .init(
                                        coordinates: [
                                            CoordinatesItem.position2D(
                                                []
                                            )
                                        ],
                                        additionalProperties: [
                                            "type": JSONValue.string("LineString")
                                        ]
                                    )
                                )
                            ],
                            additionalProperties: [
                                "type": JSONValue.string("GeometryCollection")
                            ]
                        )
                    ),
                    id: Optional(Id.int(
                        1
                    )),
                    type: .feature
                ))
            )),
            providerOrgId: "provider_org_id",
            providerPayload: XceleratorOrderResponse1(
                accountNo: Optional("AccountNo"),
                afterHoursCharge: Optional(1.1),
                codCharge: Optional(1.1),
                clientRefNo: Optional("ClientRefNo"),
                clientRefNo2: Optional("ClientRefNo2"),
                clientRefNo3: Optional("ClientRefNo3"),
                clientRefNo4: Optional("ClientRefNo4"),
                creationUtc: Optional("CreationUTC"),
                dCity: Optional("DCity"),
                dCoName: Optional("DCoName"),
                dContact: Optional("DContact"),
                dLatitude: Optional(1.1),
                dLongitude: Optional(1.1),
                dState: Optional("DState"),
                dStreet: Optional("DStreet"),
                dStreet2: Optional("DStreet2"),
                dTimeZoneText: Optional("DTimeZoneText"),
                dZip: Optional("DZip"),
                declaredValueCharge: Optional(1.1),
                deliveryArrival: Optional("DeliveryArrival"),
                deliveryDeparture: Optional("DeliveryDeparture"),
                deliveryTargetFrom: Optional("DeliveryTargetFrom"),
                deliveryTargetTo: Optional("DeliveryTargetTo"),
                grandTotal: Optional(1.1),
                hasPoDsignature: Optional(true),
                hasPoPsignature: Optional(true),
                hasVpod: Optional(true),
                hasVpop: Optional(true),
                hourlyCharge: Optional(1.1),
                mileageTotal: Optional(1.1),
                miscCharge: Optional(1.1),
                orderCharge: Optional(1.1),
                orderExtras: Optional([
                    XceleratorOrderExtraResponse1(

                    )
                ]),
                orderPackages: Optional([
                    XceleratorOrderPackageResponse1(

                    )
                ]),
                orderTrackingId: "OrderTrackingId",
                orderType: Optional("OrderType"),
                pCity: Optional("PCity"),
                pCoName: Optional("PCoName"),
                pContact: Optional("PContact"),
                pLatitude: Optional(1.1),
                pLongitude: Optional(1.1),
                poDcompletion: Optional("PODcompletion"),
                poDname: Optional("PODname"),
                poPname: Optional("POPname"),
                pState: Optional("PState"),
                pStreet: Optional("PStreet"),
                pStreet2: Optional("PStreet2"),
                pTimeZoneText: Optional("PTimeZoneText"),
                pZip: Optional("PZip"),
                packageCharge: Optional(1.1),
                pickupArrival: Optional("PickupArrival"),
                pickupDeparture: Optional("PickupDeparture"),
                pickupTargetFrom: Optional("PickupTargetFrom"),
                pickupTargetTo: Optional("PickupTargetTo"),
                serviceName: Optional("ServiceName"),
                status: Optional("Status"),
                stopOffCharge: Optional(1.1),
                subtotal: Optional(1.1),
                tax1Amount: Optional(1.1),
                tax2Amount: Optional(1.1),
                tollCharge: Optional(1.1),
                totalCharge: Optional(1.1),
                totalExtras: Optional(1.1),
                totalSurcharges: Optional(1.1),
                trackingKey: Optional("TrackingKey"),
                vehicleName: Optional("VehicleName"),
                waitTimeCharge: Optional(1.1),
                warehousingCharge: Optional(1.1),
                weightCharge: Optional(1.1),
                oDate: Optional("oDate"),
                sWeight: Optional(1.1)
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .xcelerator,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.xcelerator.orders.detailV1(
            id: "id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "_id": "_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "integration_order_id": "integration_order_id",
                      "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                      "org_id": "org_id",
                      "provider_org": {
                        "_id": "_id",
                        "name": "name",
                        "org_id": "org_id",
                        "org_type": "provider",
                        "schema_version": 1
                      },
                      "provider_org_id": "provider_org_id",
                      "provider_payload": {
                        "OrderTrackingId": "OrderTrackingId"
                      },
                      "provider_payload_hash": "provider_payload_hash",
                      "schema_version": 1,
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
        let expectedResponse = XceleratorOrderListRes(
            items: [
                XceleratorOrderExpanded1(
                    id: "_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    integrationOrderId: "integration_order_id",
                    mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    orgId: "org_id",
                    providerOrg: Optional(OrgPublicData1(
                        id: "_id",
                        name: "name",
                        orgId: "org_id",
                        orgType: OrgTypeEnum.provider,
                        schemaVersion: 1
                    )),
                    providerOrgId: "provider_org_id",
                    providerPayload: XceleratorOrderResponse1(
                        orderTrackingId: "OrderTrackingId"
                    ),
                    providerPayloadHash: "provider_payload_hash",
                    schemaVersion: 1,
                    shippingIntegration: .xcelerator,
                    updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.shippingIntegrations.xcelerator.orders.listV1(
            sortBy: .mirroredAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            search: "search",
            filterProviderOrgId: [
                "filter_provider_org_id"
            ],
            filterIntegrationOrderId: "filter_integration_order_id",
            filterProviderStatusRaw: "filter_provider_status_raw",
            filterMirroredAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterMirroredAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterUpdatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterUpdatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func syncOneV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "_id": "_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "integration_order_id": "integration_order_id",
                  "mirrored_at_timestamp": "2024-01-15T09:30:00Z",
                  "org_id": "org_id",
                  "provider_org_id": "provider_org_id",
                  "provider_payload": {
                    "AccountNo": "AccountNo",
                    "AfterHoursCharge": 1.1,
                    "CODCharge": 1.1,
                    "ClientRefNo": "ClientRefNo",
                    "ClientRefNo2": "ClientRefNo2",
                    "ClientRefNo3": "ClientRefNo3",
                    "ClientRefNo4": "ClientRefNo4",
                    "CreationUTC": "CreationUTC",
                    "DCity": "DCity",
                    "DCoName": "DCoName",
                    "DContact": "DContact",
                    "DLatitude": 1.1,
                    "DLongitude": 1.1,
                    "DState": "DState",
                    "DStreet": "DStreet",
                    "DStreet2": "DStreet2",
                    "DTimeZoneText": "DTimeZoneText",
                    "DZip": "DZip",
                    "DeclaredValueCharge": 1.1,
                    "DeliveryArrival": "DeliveryArrival",
                    "DeliveryDeparture": "DeliveryDeparture",
                    "DeliveryTargetFrom": "DeliveryTargetFrom",
                    "DeliveryTargetTo": "DeliveryTargetTo",
                    "GrandTotal": 1.1,
                    "HasPODsignature": true,
                    "HasPOPsignature": true,
                    "HasVPOD": true,
                    "HasVPOP": true,
                    "HourlyCharge": 1.1,
                    "MileageTotal": 1.1,
                    "MiscCharge": 1.1,
                    "OrderCharge": 1.1,
                    "OrderExtras": [
                      {}
                    ],
                    "OrderPackages": [
                      {}
                    ],
                    "OrderTrackingId": "OrderTrackingId",
                    "OrderType": "OrderType",
                    "PCity": "PCity",
                    "PCoName": "PCoName",
                    "PContact": "PContact",
                    "PLatitude": 1.1,
                    "PLongitude": 1.1,
                    "PODcompletion": "PODcompletion",
                    "PODname": "PODname",
                    "POPname": "POPname",
                    "PState": "PState",
                    "PStreet": "PStreet",
                    "PStreet2": "PStreet2",
                    "PTimeZoneText": "PTimeZoneText",
                    "PZip": "PZip",
                    "PackageCharge": 1.1,
                    "PickupArrival": "PickupArrival",
                    "PickupDeparture": "PickupDeparture",
                    "PickupTargetFrom": "PickupTargetFrom",
                    "PickupTargetTo": "PickupTargetTo",
                    "ServiceName": "ServiceName",
                    "Status": "Status",
                    "StopOffCharge": 1.1,
                    "Subtotal": 1.1,
                    "Tax1Amount": 1.1,
                    "Tax2Amount": 1.1,
                    "TollCharge": 1.1,
                    "TotalCharge": 1.1,
                    "TotalExtras": 1.1,
                    "TotalSurcharges": 1.1,
                    "TrackingKey": "TrackingKey",
                    "VehicleName": "VehicleName",
                    "WaitTimeCharge": 1.1,
                    "WarehousingCharge": 1.1,
                    "WeightCharge": 1.1,
                    "oDate": "oDate",
                    "sWeight": 1.1
                  },
                  "provider_payload_hash": "provider_payload_hash",
                  "schema_version": 1,
                  "shipping_integration": "xcelerator",
                  "updated_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = XceleratorOrder1(
            id: "_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            integrationOrderId: "integration_order_id",
            mirroredAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            orgId: "org_id",
            providerOrgId: "provider_org_id",
            providerPayload: XceleratorOrderResponse1(
                accountNo: Optional("AccountNo"),
                afterHoursCharge: Optional(1.1),
                codCharge: Optional(1.1),
                clientRefNo: Optional("ClientRefNo"),
                clientRefNo2: Optional("ClientRefNo2"),
                clientRefNo3: Optional("ClientRefNo3"),
                clientRefNo4: Optional("ClientRefNo4"),
                creationUtc: Optional("CreationUTC"),
                dCity: Optional("DCity"),
                dCoName: Optional("DCoName"),
                dContact: Optional("DContact"),
                dLatitude: Optional(1.1),
                dLongitude: Optional(1.1),
                dState: Optional("DState"),
                dStreet: Optional("DStreet"),
                dStreet2: Optional("DStreet2"),
                dTimeZoneText: Optional("DTimeZoneText"),
                dZip: Optional("DZip"),
                declaredValueCharge: Optional(1.1),
                deliveryArrival: Optional("DeliveryArrival"),
                deliveryDeparture: Optional("DeliveryDeparture"),
                deliveryTargetFrom: Optional("DeliveryTargetFrom"),
                deliveryTargetTo: Optional("DeliveryTargetTo"),
                grandTotal: Optional(1.1),
                hasPoDsignature: Optional(true),
                hasPoPsignature: Optional(true),
                hasVpod: Optional(true),
                hasVpop: Optional(true),
                hourlyCharge: Optional(1.1),
                mileageTotal: Optional(1.1),
                miscCharge: Optional(1.1),
                orderCharge: Optional(1.1),
                orderExtras: Optional([
                    XceleratorOrderExtraResponse1(

                    )
                ]),
                orderPackages: Optional([
                    XceleratorOrderPackageResponse1(

                    )
                ]),
                orderTrackingId: "OrderTrackingId",
                orderType: Optional("OrderType"),
                pCity: Optional("PCity"),
                pCoName: Optional("PCoName"),
                pContact: Optional("PContact"),
                pLatitude: Optional(1.1),
                pLongitude: Optional(1.1),
                poDcompletion: Optional("PODcompletion"),
                poDname: Optional("PODname"),
                poPname: Optional("POPname"),
                pState: Optional("PState"),
                pStreet: Optional("PStreet"),
                pStreet2: Optional("PStreet2"),
                pTimeZoneText: Optional("PTimeZoneText"),
                pZip: Optional("PZip"),
                packageCharge: Optional(1.1),
                pickupArrival: Optional("PickupArrival"),
                pickupDeparture: Optional("PickupDeparture"),
                pickupTargetFrom: Optional("PickupTargetFrom"),
                pickupTargetTo: Optional("PickupTargetTo"),
                serviceName: Optional("ServiceName"),
                status: Optional("Status"),
                stopOffCharge: Optional(1.1),
                subtotal: Optional(1.1),
                tax1Amount: Optional(1.1),
                tax2Amount: Optional(1.1),
                tollCharge: Optional(1.1),
                totalCharge: Optional(1.1),
                totalExtras: Optional(1.1),
                totalSurcharges: Optional(1.1),
                trackingKey: Optional("TrackingKey"),
                vehicleName: Optional("VehicleName"),
                waitTimeCharge: Optional(1.1),
                warehousingCharge: Optional(1.1),
                weightCharge: Optional(1.1),
                oDate: Optional("oDate"),
                sWeight: Optional(1.1)
            ),
            providerPayloadHash: "provider_payload_hash",
            schemaVersion: 1,
            shippingIntegration: .xcelerator,
            updatedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.shippingIntegrations.xcelerator.orders.syncOneV1(
            request: .init(
                integrationOrderId: "integration_order_id",
                providerOrgId: "provider_org_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}