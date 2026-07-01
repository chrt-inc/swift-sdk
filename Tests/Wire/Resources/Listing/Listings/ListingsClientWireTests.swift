import Foundation
import Testing
import Chrt

@Suite("ListingsClient Wire Tests") struct ListingsClientWireTests {
    @Test func addDriverParticipantsV11() async throws -> Void {
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
        let response = try await client.listing.listings.addDriverParticipantsV1(
            listingId: "listing_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addProviderParticipantsV11() async throws -> Void {
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
        let response = try await client.listing.listings.addProviderParticipantsV1(
            listingId: "listing_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func byIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "listing": {
                    "_id": "_id",
                    "accepted_bid_thread_id": "accepted_bid_thread_id",
                    "audience": "providers",
                    "auto_award_first_accept": true,
                    "auto_open_priced_bid_threads": true,
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "driver_bidding_group_ids": [
                      "driver_bidding_group_ids"
                    ],
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "listing_description": "listing_description",
                    "order_id": "order_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "order_short_id": "order_short_id",
                    "org_bidding_group_ids": [
                      "org_bidding_group_ids"
                    ],
                    "participant_driver_ids": [
                      "participant_driver_ids"
                    ],
                    "participant_provider_org_ids": [
                      "participant_provider_org_ids"
                    ],
                    "pro_forma_line_items": [
                      {
                        "item": "base_rate",
                        "provenance": "rate_sheet",
                        "quantity": 1.1,
                        "rate": 1.1
                      }
                    ],
                    "schema_version": 1,
                    "share_pro_forma_line_items": true,
                    "status": "open",
                    "task_group_id": "task_group_id",
                    "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                    "type": "dispatch"
                  },
                  "task_group": {
                    "mileage_estimated": 1.1,
                    "tasks": [
                      {
                        "task_id": "task_id"
                      }
                    ]
                  }
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ListingForBidder1(
            listing: ListingLimitedForBidder1(
                id: "_id",
                acceptedBidThreadId: Optional("accepted_bid_thread_id"),
                audience: .providers,
                autoAwardFirstAccept: Optional(true),
                autoOpenPricedBidThreads: Optional(true),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                driverBiddingGroupIds: Optional([
                    "driver_bidding_group_ids"
                ]),
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                listingDescription: "listing_description",
                orderId: "order_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                orderShortId: "order_short_id",
                orgBiddingGroupIds: Optional([
                    "org_bidding_group_ids"
                ]),
                participantDriverIds: Optional([
                    "participant_driver_ids"
                ]),
                participantProviderOrgIds: Optional([
                    "participant_provider_org_ids"
                ]),
                proFormaLineItems: Optional([
                    ProFormaLineItem1(
                        item: .baseRate,
                        provenance: .rateSheet,
                        quantity: 1.1,
                        rate: 1.1
                    )
                ]),
                schemaVersion: Optional(1),
                shareProFormaLineItems: Optional(true),
                status: .open,
                taskGroupId: "task_group_id",
                taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                type: Optional(.dispatch)
            ),
            taskGroup: ListingTaskGroupForBidder1(
                mileageEstimated: Optional(1.1),
                tasks: Optional([
                    ListingTaskForBidder1(
                        taskId: "task_id"
                    )
                ])
            )
        )
        let response = try await client.listing.listings.byIdV1(
            listingId: "listing_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func byIdForListerV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "_id": "_id",
                  "accepted_bid_thread_id": "accepted_bid_thread_id",
                  "audience": "providers",
                  "auto_award_first_accept": true,
                  "auto_open_priced_bid_threads": true,
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "created_by_org_id": "created_by_org_id",
                  "created_by_user_id": "created_by_user_id",
                  "driver_bidding_group_ids": [
                    "driver_bidding_group_ids"
                  ],
                  "internal_notes": "internal_notes",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "listing_description": "listing_description",
                  "order_id": "order_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "order_short_id": "order_short_id",
                  "org_bidding_group_ids": [
                    "org_bidding_group_ids"
                  ],
                  "participant_driver_ids": [
                    "participant_driver_ids"
                  ],
                  "participant_provider_org_ids": [
                    "participant_provider_org_ids"
                  ],
                  "pro_forma_line_items": [
                    {
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "comments": "comments",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "item": "base_rate",
                      "provenance": "rate_sheet",
                      "quantity": 1.1,
                      "rate": 1.1,
                      "rate_sheet_id": "rate_sheet_id",
                      "schema_version": 1,
                      "units": "usd"
                    }
                  ],
                  "schema_version": 1,
                  "share_pro_forma_line_items": true,
                  "status": "open",
                  "task_group_id": "task_group_id",
                  "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                  "type": "dispatch"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Listing1(
            id: "_id",
            acceptedBidThreadId: Optional("accepted_bid_thread_id"),
            audience: .providers,
            autoAwardFirstAccept: Optional(true),
            autoOpenPricedBidThreads: Optional(true),
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            createdByOrgId: "created_by_org_id",
            createdByUserId: "created_by_user_id",
            driverBiddingGroupIds: Optional([
                "driver_bidding_group_ids"
            ]),
            internalNotes: Optional("internal_notes"),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            listingDescription: "listing_description",
            orderId: "order_id",
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            orderShortId: "order_short_id",
            orgBiddingGroupIds: Optional([
                "org_bidding_group_ids"
            ]),
            participantDriverIds: Optional([
                "participant_driver_ids"
            ]),
            participantProviderOrgIds: Optional([
                "participant_provider_org_ids"
            ]),
            proFormaLineItems: Optional([
                ProFormaLineItem1(
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    comments: Optional("comments"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    item: .baseRate,
                    provenance: .rateSheet,
                    quantity: 1.1,
                    rate: 1.1,
                    rateSheetId: Optional("rate_sheet_id"),
                    schemaVersion: Optional(1),
                    units: Optional(.usd)
                )
            ]),
            schemaVersion: Optional(1),
            shareProFormaLineItems: Optional(true),
            status: .open,
            taskGroupId: "task_group_id",
            taskGroupSummaryForBidders: "task_group_summary_for_bidders",
            type: Optional(.dispatch)
        )
        let response = try await client.listing.listings.byIdForListerV1(
            listingId: "listing_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func byTaskGroupV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                [
                  {
                    "_id": "_id",
                    "accepted_bid_thread_id": "accepted_bid_thread_id",
                    "audience": "providers",
                    "auto_award_first_accept": true,
                    "auto_open_priced_bid_threads": true,
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "created_by_org_id": "created_by_org_id",
                    "created_by_user_id": "created_by_user_id",
                    "driver_bidding_group_ids": [
                      "driver_bidding_group_ids"
                    ],
                    "internal_notes": "internal_notes",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "listing_description": "listing_description",
                    "order_id": "order_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "order_short_id": "order_short_id",
                    "org_bidding_group_ids": [
                      "org_bidding_group_ids"
                    ],
                    "participant_driver_ids": [
                      "participant_driver_ids"
                    ],
                    "participant_provider_org_ids": [
                      "participant_provider_org_ids"
                    ],
                    "pro_forma_line_items": [
                      {
                        "item": "base_rate",
                        "provenance": "rate_sheet",
                        "quantity": 1.1,
                        "rate": 1.1
                      }
                    ],
                    "schema_version": 1,
                    "share_pro_forma_line_items": true,
                    "status": "open",
                    "task_group_id": "task_group_id",
                    "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                    "type": "dispatch"
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
            Listing1(
                id: "_id",
                acceptedBidThreadId: Optional("accepted_bid_thread_id"),
                audience: .providers,
                autoAwardFirstAccept: Optional(true),
                autoOpenPricedBidThreads: Optional(true),
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                createdByOrgId: "created_by_org_id",
                createdByUserId: "created_by_user_id",
                driverBiddingGroupIds: Optional([
                    "driver_bidding_group_ids"
                ]),
                internalNotes: Optional("internal_notes"),
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                listingDescription: "listing_description",
                orderId: "order_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                orderShortId: "order_short_id",
                orgBiddingGroupIds: Optional([
                    "org_bidding_group_ids"
                ]),
                participantDriverIds: Optional([
                    "participant_driver_ids"
                ]),
                participantProviderOrgIds: Optional([
                    "participant_provider_org_ids"
                ]),
                proFormaLineItems: Optional([
                    ProFormaLineItem1(
                        item: .baseRate,
                        provenance: .rateSheet,
                        quantity: 1.1,
                        rate: 1.1
                    )
                ]),
                schemaVersion: Optional(1),
                shareProFormaLineItems: Optional(true),
                status: .open,
                taskGroupId: "task_group_id",
                taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                type: Optional(.dispatch)
            )
        ]
        let response = try await client.listing.listings.byTaskGroupV1(
            taskGroupId: "task_group_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cancelV11() async throws -> Void {
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
        let response = try await client.listing.listings.cancelV1(
            listingId: "listing_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createV11() async throws -> Void {
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
        let response = try await client.listing.listings.createV1(
            request: .init(
                audience: .providers,
                listingDescription: "listing_description",
                taskGroupId: "task_group_id",
                taskGroupSummaryForBidders: "task_group_summary_for_bidders"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listByOrgV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "_id": "_id",
                      "accepted_bid_thread_id": "accepted_bid_thread_id",
                      "audience": "providers",
                      "auto_award_first_accept": true,
                      "auto_open_priced_bid_threads": true,
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "created_by_org_id": "created_by_org_id",
                      "created_by_user_id": "created_by_user_id",
                      "driver_bidding_group_ids": [
                        "driver_bidding_group_ids"
                      ],
                      "internal_notes": "internal_notes",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "listing_description": "listing_description",
                      "order_id": "order_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "order_short_id": "order_short_id",
                      "org_bidding_group_ids": [
                        "org_bidding_group_ids"
                      ],
                      "participant_driver_ids": [
                        "participant_driver_ids"
                      ],
                      "participant_provider_org_ids": [
                        "participant_provider_org_ids"
                      ],
                      "pro_forma_line_items": [
                        {
                          "item": "base_rate",
                          "provenance": "rate_sheet",
                          "quantity": 1.1,
                          "rate": 1.1
                        }
                      ],
                      "schema_version": 1,
                      "share_pro_forma_line_items": true,
                      "status": "open",
                      "task_group_id": "task_group_id",
                      "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                      "type": "dispatch"
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
        let expectedResponse = ListingListRes(
            items: [
                Listing1(
                    id: "_id",
                    acceptedBidThreadId: Optional("accepted_bid_thread_id"),
                    audience: .providers,
                    autoAwardFirstAccept: Optional(true),
                    autoOpenPricedBidThreads: Optional(true),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdByOrgId: "created_by_org_id",
                    createdByUserId: "created_by_user_id",
                    driverBiddingGroupIds: Optional([
                        "driver_bidding_group_ids"
                    ]),
                    internalNotes: Optional("internal_notes"),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    listingDescription: "listing_description",
                    orderId: "order_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    orderShortId: "order_short_id",
                    orgBiddingGroupIds: Optional([
                        "org_bidding_group_ids"
                    ]),
                    participantDriverIds: Optional([
                        "participant_driver_ids"
                    ]),
                    participantProviderOrgIds: Optional([
                        "participant_provider_org_ids"
                    ]),
                    proFormaLineItems: Optional([
                        ProFormaLineItem1(
                            item: .baseRate,
                            provenance: .rateSheet,
                            quantity: 1.1,
                            rate: 1.1
                        )
                    ]),
                    schemaVersion: Optional(1),
                    shareProFormaLineItems: Optional(true),
                    status: .open,
                    taskGroupId: "task_group_id",
                    taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                    type: Optional(.dispatch)
                )
            ],
            totalCount: 1
        )
        let response = try await client.listing.listings.listByOrgV1(
            filterAudience: .providers,
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterTaskGroupId: "filter_task_group_id",
            filterOrderId: "filter_order_id",
            filterCreatedByOrgId: "filter_created_by_org_id",
            filterCreatedByUserId: "filter_created_by_user_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForDriverBidderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "listing": {
                        "_id": "_id",
                        "audience": "providers",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "listing_description": "listing_description",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "status": "open",
                        "task_group_id": "task_group_id",
                        "task_group_summary_for_bidders": "task_group_summary_for_bidders"
                      },
                      "task_group": {}
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
        let expectedResponse = ListingForBidderListRes(
            items: [
                ListingForBidder1(
                    listing: ListingLimitedForBidder1(
                        id: "_id",
                        audience: .providers,
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        listingDescription: "listing_description",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        status: .open,
                        taskGroupId: "task_group_id",
                        taskGroupSummaryForBidders: "task_group_summary_for_bidders"
                    ),
                    taskGroup: ListingTaskGroupForBidder1(

                    )
                )
            ],
            totalCount: 1
        )
        let response = try await client.listing.listings.listForDriverBidderV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterTaskGroupId: "filter_task_group_id",
            filterOrderId: "filter_order_id",
            filterCreatedByOrgId: "filter_created_by_org_id",
            filterCreatedByUserId: "filter_created_by_user_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForProviderBidderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "listing": {
                        "_id": "_id",
                        "audience": "providers",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "created_by_org_id": "created_by_org_id",
                        "created_by_user_id": "created_by_user_id",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "listing_description": "listing_description",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id",
                        "status": "open",
                        "task_group_id": "task_group_id",
                        "task_group_summary_for_bidders": "task_group_summary_for_bidders"
                      },
                      "task_group": {}
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
        let expectedResponse = ListingForBidderListRes(
            items: [
                ListingForBidder1(
                    listing: ListingLimitedForBidder1(
                        id: "_id",
                        audience: .providers,
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        createdByOrgId: "created_by_org_id",
                        createdByUserId: "created_by_user_id",
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        listingDescription: "listing_description",
                        orderId: "order_id",
                        orderShortId: "order_short_id",
                        status: .open,
                        taskGroupId: "task_group_id",
                        taskGroupSummaryForBidders: "task_group_summary_for_bidders"
                    ),
                    taskGroup: ListingTaskGroupForBidder1(

                    )
                )
            ],
            totalCount: 1
        )
        let response = try await client.listing.listings.listForProviderBidderV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterTaskGroupId: "filter_task_group_id",
            filterOrderId: "filter_order_id",
            filterCreatedByOrgId: "filter_created_by_org_id",
            filterCreatedByUserId: "filter_created_by_user_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterLastEditedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeDriverParticipantsV11() async throws -> Void {
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
        let response = try await client.listing.listings.removeDriverParticipantsV1(
            listingId: "listing_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeProviderParticipantsV11() async throws -> Void {
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
        let response = try await client.listing.listings.removeProviderParticipantsV1(
            listingId: "listing_id",
            request: .init(),
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
        let response = try await client.listing.listings.updateV1(
            listingId: "listing_id",
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}