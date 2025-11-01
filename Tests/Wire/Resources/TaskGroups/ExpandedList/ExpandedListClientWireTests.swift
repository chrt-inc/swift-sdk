import Foundation
import Testing
import Chrt

@Suite("ExpandedListClient Wire Tests") struct ExpandedListClientWireTests {
    @Test func forCourierAdministratorV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_groups_expanded": [
                    {
                      "task_group": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_ids": [
                          "task_ids"
                        ],
                        "courier_org_id": null,
                        "driver_id": null,
                        "created_at": null,
                        "started_at": null,
                        "completed_at": null
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "schema_version": 1,
                            "location": null,
                            "shipper_contact_info_ids": null,
                            "arrive_by": null,
                            "arrive_at": null,
                            "comments": null,
                            "flight_number": null,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "completed_at": null,
                            "cargo_ids": null,
                            "milestone_ids": null
                          },
                          "cargos": null,
                          "milestones": null,
                          "shipper_contact_info": null
                        }
                      ],
                      "shipper_org_company_name": "shipper_org_company_name",
                      "shipper_org_handle": "shipper_org_handle",
                      "task_group_mileage": 1.1,
                      "driver": {
                        "schema_version": 1,
                        "active": true,
                        "email_address_primary": null,
                        "email_address_secondary": null,
                        "phone_number_primary": null,
                        "phone_number_secondary": null,
                        "first_name": null,
                        "last_name": null,
                        "last_seen_at_location": null,
                        "last_seen_at_timestamp": null,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "courier_pay_driver_line_item_group": {
                        "schema_version": 1,
                        "driver_id": "driver_id",
                        "task_group_id": "task_group_id",
                        "courier_org_id": "courier_org_id",
                        "line_items": [
                          {
                            "schema_version": 1,
                            "item": "base_rate",
                            "quantity": 1.1,
                            "rate": 1.1,
                            "comment": null,
                            "created_at": "2024-01-15T09:30:00Z",
                            "uuid_str": "uuid_str"
                          }
                        ],
                        "rate_sheet_id": "rate_sheet_id",
                        "_id": "_id"
                      },
                      "courier_pay_driver_rate_sheet": {
                        "schema_version": 1,
                        "name": null,
                        "cargo_types": null,
                        "vehicle_types": null,
                        "route_types": null,
                        "driver_ids": null,
                        "courier_org_id": "courier_org_id",
                        "comments": null,
                        "base_mileage_distance_miles": 1.1,
                        "base_mileage_rate_usd_per_instance": 1.1,
                        "additional_mileage_rate_usd_per_mile": 1.1,
                        "long_distance_surcharge_miles_before_surcharge": 1.1,
                        "long_distance_surcharge_rate_usd_per_mile": 1.1,
                        "fuel_surcharge_rate_usd_per_mile": 1.1,
                        "wait_time_before_charge_minutes": 1.1,
                        "wait_time_rate_usd_per_minute": 1.1,
                        "extra_stop_rate_usd": 1.1,
                        "dangerous_goods_rate_usd_per_instance": 1.1,
                        "after_hours": 1.1,
                        "weekend": 1.1,
                        "holiday": 1.1,
                        "_id": "_id"
                      },
                      "courier_pay_driver_payout": {
                        "schema_version": 1,
                        "courier_pay_driver_line_item_group_ids": [
                          "courier_pay_driver_line_item_group_ids"
                        ],
                        "_id": "_id",
                        "driver_id": "driver_id",
                        "courier_org_id": "courier_org_id",
                        "task_group_ids": [
                          "task_group_ids"
                        ],
                        "payout_amount": 1.1,
                        "payout_completed_at": null,
                        "payout_completed_by_user_id": null,
                        "payout_created_at": "2024-01-15T09:30:00Z",
                        "payout_created_by_user_id": "payout_created_by_user_id"
                      }
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
        let expectedResponse = TaskGroupsExpandedForCourierAdministratorRes(
            taskGroupsExpanded: [
                TaskGroupExpandedForCourierAdministrator(
                    taskGroup: TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskIds: [
                            "task_ids"
                        ],
                        courierOrgId: Optional(nil),
                        driverId: Optional(nil),
                        createdAt: Optional(nil),
                        startedAt: Optional(nil),
                        completedAt: Optional(nil)
                    ),
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                location: Optional(nil),
                                shipperContactInfoIds: Optional(nil),
                                arriveBy: Optional(nil),
                                arriveAt: Optional(nil),
                                comments: Optional(nil),
                                flightNumber: Optional(nil),
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                completedAt: Optional(nil),
                                cargoIds: Optional(nil),
                                milestoneIds: Optional(nil)
                            ),
                            cargos: Optional(nil),
                            milestones: Optional(nil),
                            shipperContactInfo: Optional(nil)
                        )
                    ]),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    shipperOrgHandle: Optional("shipper_org_handle"),
                    taskGroupMileage: Optional(1.1),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        active: true,
                        emailAddressPrimary: Optional(nil),
                        emailAddressSecondary: Optional(nil),
                        phoneNumberPrimary: Optional(nil),
                        phoneNumberSecondary: Optional(nil),
                        firstName: Optional(nil),
                        lastName: Optional(nil),
                        lastSeenAtLocation: Optional(nil),
                        lastSeenAtTimestamp: Optional(nil),
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    courierPayDriverLineItemGroup: Optional(CourierPayDriverLineItemGroup1(
                        schemaVersion: 1,
                        driverId: "driver_id",
                        taskGroupId: "task_group_id",
                        courierOrgId: "courier_org_id",
                        lineItems: [
                            LineItem1(
                                schemaVersion: 1,
                                item: .baseRate,
                                quantity: 1.1,
                                rate: 1.1,
                                comment: Optional(nil),
                                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                uuidStr: "uuid_str"
                            )
                        ],
                        rateSheetId: "rate_sheet_id",
                        id: "_id"
                    )),
                    courierPayDriverRateSheet: Optional(CourierPayDriverRateSheet1(
                        schemaVersion: 1,
                        name: Optional(nil),
                        cargoTypes: Optional(nil),
                        vehicleTypes: Optional(nil),
                        routeTypes: Optional(nil),
                        driverIds: Optional(nil),
                        courierOrgId: "courier_org_id",
                        comments: Optional(nil),
                        baseMileageDistanceMiles: 1.1,
                        baseMileageRateUsdPerInstance: 1.1,
                        additionalMileageRateUsdPerMile: 1.1,
                        longDistanceSurchargeMilesBeforeSurcharge: 1.1,
                        longDistanceSurchargeRateUsdPerMile: 1.1,
                        fuelSurchargeRateUsdPerMile: 1.1,
                        waitTimeBeforeChargeMinutes: 1.1,
                        waitTimeRateUsdPerMinute: 1.1,
                        extraStopRateUsd: 1.1,
                        dangerousGoodsRateUsdPerInstance: 1.1,
                        afterHours: 1.1,
                        weekend: 1.1,
                        holiday: 1.1,
                        id: "_id"
                    )),
                    courierPayDriverPayout: Optional(CourierPayDriverPayout1(
                        schemaVersion: 1,
                        courierPayDriverLineItemGroupIds: [
                            "courier_pay_driver_line_item_group_ids"
                        ],
                        id: "_id",
                        driverId: "driver_id",
                        courierOrgId: "courier_org_id",
                        taskGroupIds: [
                            "task_group_ids"
                        ],
                        payoutAmount: 1.1,
                        payoutCompletedAt: Optional(nil),
                        payoutCompletedByUserId: Optional(nil),
                        payoutCreatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        payoutCreatedByUserId: "payout_created_by_user_id"
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.taskGroups.expandedList.forCourierAdministratorV1(
            page: 1,
            pageSize: 1,
            sortBy: .createdAt,
            sortOrder: .asc,
            filterCreatedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStartedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStartedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOrderCancelled: true,
            filterCompleted: true,
            filterPaused: true,
            request: .init(body: TaskGroupExpandedForCourierAdministratorReq(

            ))
        )
        try #require(response == expectedResponse)
    }

    @Test func forCourierDriverV11() async throws -> Void {
        let stub = WireStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "task_groups_expanded": [
                    {
                      "task_group": {
                        "schema_version": 1,
                        "_id": "_id",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "task_ids": [
                          "task_ids"
                        ],
                        "courier_org_id": null,
                        "driver_id": null,
                        "created_at": null,
                        "started_at": null,
                        "completed_at": null
                      },
                      "tasks_expanded": [
                        {
                          "task": {
                            "schema_version": 1,
                            "location": null,
                            "shipper_contact_info_ids": null,
                            "arrive_by": null,
                            "arrive_at": null,
                            "comments": null,
                            "flight_number": null,
                            "_id": "_id",
                            "order_id": "order_id",
                            "order_short_id": "order_short_id",
                            "created_by_org_id": "created_by_org_id",
                            "created_by_user_id": "created_by_user_id",
                            "completed_at": null,
                            "cargo_ids": null,
                            "milestone_ids": null
                          },
                          "cargos": null,
                          "milestones": null,
                          "shipper_contact_info": null
                        }
                      ],
                      "shipper_org_company_name": "shipper_org_company_name",
                      "shipper_org_handle": "shipper_org_handle",
                      "task_group_mileage": 1.1,
                      "driver": {
                        "schema_version": 1,
                        "active": true,
                        "email_address_primary": null,
                        "email_address_secondary": null,
                        "phone_number_primary": null,
                        "phone_number_secondary": null,
                        "first_name": null,
                        "last_name": null,
                        "last_seen_at_location": null,
                        "last_seen_at_timestamp": null,
                        "_id": "_id",
                        "org_id": "org_id",
                        "user_id": "user_id"
                      },
                      "courier_pay_driver_line_item_group": {
                        "schema_version": 1,
                        "driver_id": "driver_id",
                        "task_group_id": "task_group_id",
                        "courier_org_id": "courier_org_id",
                        "line_items": [
                          {
                            "schema_version": 1,
                            "item": "base_rate",
                            "quantity": 1.1,
                            "rate": 1.1,
                            "comment": null,
                            "created_at": "2024-01-15T09:30:00Z",
                            "uuid_str": "uuid_str"
                          }
                        ],
                        "rate_sheet_id": "rate_sheet_id",
                        "_id": "_id"
                      },
                      "courier_pay_driver_rate_sheet": {
                        "schema_version": 1,
                        "name": null,
                        "cargo_types": null,
                        "vehicle_types": null,
                        "route_types": null,
                        "driver_ids": null,
                        "courier_org_id": "courier_org_id",
                        "comments": null,
                        "base_mileage_distance_miles": 1.1,
                        "base_mileage_rate_usd_per_instance": 1.1,
                        "additional_mileage_rate_usd_per_mile": 1.1,
                        "long_distance_surcharge_miles_before_surcharge": 1.1,
                        "long_distance_surcharge_rate_usd_per_mile": 1.1,
                        "fuel_surcharge_rate_usd_per_mile": 1.1,
                        "wait_time_before_charge_minutes": 1.1,
                        "wait_time_rate_usd_per_minute": 1.1,
                        "extra_stop_rate_usd": 1.1,
                        "dangerous_goods_rate_usd_per_instance": 1.1,
                        "after_hours": 1.1,
                        "weekend": 1.1,
                        "holiday": 1.1,
                        "_id": "_id"
                      },
                      "courier_pay_driver_payout": {
                        "schema_version": 1,
                        "courier_pay_driver_line_item_group_ids": [
                          "courier_pay_driver_line_item_group_ids"
                        ],
                        "_id": "_id",
                        "driver_id": "driver_id",
                        "courier_org_id": "courier_org_id",
                        "task_group_ids": [
                          "task_group_ids"
                        ],
                        "payout_amount": 1.1,
                        "payout_completed_at": null,
                        "payout_completed_by_user_id": null,
                        "payout_created_at": "2024-01-15T09:30:00Z",
                        "payout_created_by_user_id": "payout_created_by_user_id"
                      }
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
        let expectedResponse = TaskGroupsExpandedForCourierDriverRes(
            taskGroupsExpanded: [
                TaskGroupExpandedForCourierDriver(
                    taskGroup: TaskGroup1(
                        schemaVersion: 1,
                        id: "_id",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        taskIds: [
                            "task_ids"
                        ],
                        courierOrgId: Optional(nil),
                        driverId: Optional(nil),
                        createdAt: Optional(nil),
                        startedAt: Optional(nil),
                        completedAt: Optional(nil)
                    ),
                    tasksExpanded: Optional([
                        TaskExpanded(
                            task: Task1(
                                schemaVersion: 1,
                                location: Optional(nil),
                                shipperContactInfoIds: Optional(nil),
                                arriveBy: Optional(nil),
                                arriveAt: Optional(nil),
                                comments: Optional(nil),
                                flightNumber: Optional(nil),
                                id: "_id",
                                orderId: "order_id",
                                orderShortId: "order_short_id",
                                createdByOrgId: "created_by_org_id",
                                createdByUserId: "created_by_user_id",
                                completedAt: Optional(nil),
                                cargoIds: Optional(nil),
                                milestoneIds: Optional(nil)
                            ),
                            cargos: Optional(nil),
                            milestones: Optional(nil),
                            shipperContactInfo: Optional(nil)
                        )
                    ]),
                    shipperOrgCompanyName: Optional("shipper_org_company_name"),
                    shipperOrgHandle: Optional("shipper_org_handle"),
                    taskGroupMileage: Optional(1.1),
                    driver: Optional(Driver1(
                        schemaVersion: 1,
                        active: true,
                        emailAddressPrimary: Optional(nil),
                        emailAddressSecondary: Optional(nil),
                        phoneNumberPrimary: Optional(nil),
                        phoneNumberSecondary: Optional(nil),
                        firstName: Optional(nil),
                        lastName: Optional(nil),
                        lastSeenAtLocation: Optional(nil),
                        lastSeenAtTimestamp: Optional(nil),
                        id: "_id",
                        orgId: "org_id",
                        userId: "user_id"
                    )),
                    courierPayDriverLineItemGroup: Optional(CourierPayDriverLineItemGroup1(
                        schemaVersion: 1,
                        driverId: "driver_id",
                        taskGroupId: "task_group_id",
                        courierOrgId: "courier_org_id",
                        lineItems: [
                            LineItem1(
                                schemaVersion: 1,
                                item: .baseRate,
                                quantity: 1.1,
                                rate: 1.1,
                                comment: Optional(nil),
                                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                                uuidStr: "uuid_str"
                            )
                        ],
                        rateSheetId: "rate_sheet_id",
                        id: "_id"
                    )),
                    courierPayDriverRateSheet: Optional(CourierPayDriverRateSheet1(
                        schemaVersion: 1,
                        name: Optional(nil),
                        cargoTypes: Optional(nil),
                        vehicleTypes: Optional(nil),
                        routeTypes: Optional(nil),
                        driverIds: Optional(nil),
                        courierOrgId: "courier_org_id",
                        comments: Optional(nil),
                        baseMileageDistanceMiles: 1.1,
                        baseMileageRateUsdPerInstance: 1.1,
                        additionalMileageRateUsdPerMile: 1.1,
                        longDistanceSurchargeMilesBeforeSurcharge: 1.1,
                        longDistanceSurchargeRateUsdPerMile: 1.1,
                        fuelSurchargeRateUsdPerMile: 1.1,
                        waitTimeBeforeChargeMinutes: 1.1,
                        waitTimeRateUsdPerMinute: 1.1,
                        extraStopRateUsd: 1.1,
                        dangerousGoodsRateUsdPerInstance: 1.1,
                        afterHours: 1.1,
                        weekend: 1.1,
                        holiday: 1.1,
                        id: "_id"
                    )),
                    courierPayDriverPayout: Optional(CourierPayDriverPayout1(
                        schemaVersion: 1,
                        courierPayDriverLineItemGroupIds: [
                            "courier_pay_driver_line_item_group_ids"
                        ],
                        id: "_id",
                        driverId: "driver_id",
                        courierOrgId: "courier_org_id",
                        taskGroupIds: [
                            "task_group_ids"
                        ],
                        payoutAmount: 1.1,
                        payoutCompletedAt: Optional(nil),
                        payoutCompletedByUserId: Optional(nil),
                        payoutCreatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        payoutCreatedByUserId: "payout_created_by_user_id"
                    ))
                )
            ],
            totalCount: 1
        )
        let response = try await client.taskGroups.expandedList.forCourierDriverV1(
            page: 1,
            pageSize: 1,
            sortBy: .createdAt,
            sortOrder: .asc,
            filterCreatedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStartedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStartedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCompletedAtLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterOrderCancelled: true,
            filterCompleted: true,
            filterPaused: true,
            request: .init(body: TaskGroupExpandedForCourierDriverReq(

            ))
        )
        try #require(response == expectedResponse)
    }
}