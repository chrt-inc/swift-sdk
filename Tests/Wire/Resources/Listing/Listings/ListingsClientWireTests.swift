import Foundation
import Testing
import Chrt

@Suite("ListingsClient Wire Tests") struct ListingsClientWireTests {
    @Test func byIdV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "listing": {
                    "_id": "_id",
                    "schema_version": 1,
                    "listing_description": "listing_description",
                    "task_group_id": "task_group_id",
                    "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                    "pro_forma_line_items": [
                      {
                        "item": "base_rate",
                        "rate": 1.1,
                        "quantity": 1.1,
                        "provenance": "rate_sheet"
                      }
                    ],
                    "share_pro_forma_line_items": true,
                    "audience": "providers",
                    "participant_provider_org_ids": [
                      "participant_provider_org_ids"
                    ],
                    "org_bidding_group_ids": [
                      "org_bidding_group_ids"
                    ],
                    "participant_driver_ids": [
                      "participant_driver_ids"
                    ],
                    "driver_bidding_group_ids": [
                      "driver_bidding_group_ids"
                    ],
                    "type": "dispatch",
                    "auto_award_first_accept": true,
                    "auto_open_priced_bid_threads": true,
                    "created_by_user_id": "created_by_user_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "open",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "accepted_bid_thread_id": "accepted_bid_thread_id"
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
                schemaVersion: Optional(1),
                listingDescription: "listing_description",
                taskGroupId: "task_group_id",
                taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                proFormaLineItems: Optional([
                    ProFormaLineItem1(
                        item: .baseRate,
                        rate: 1.1,
                        quantity: 1.1,
                        provenance: .rateSheet
                    )
                ]),
                shareProFormaLineItems: Optional(true),
                audience: .providers,
                participantProviderOrgIds: Optional([
                    "participant_provider_org_ids"
                ]),
                orgBiddingGroupIds: Optional([
                    "org_bidding_group_ids"
                ]),
                participantDriverIds: Optional([
                    "participant_driver_ids"
                ]),
                driverBiddingGroupIds: Optional([
                    "driver_bidding_group_ids"
                ]),
                type: Optional(.dispatch),
                autoAwardFirstAccept: Optional(true),
                autoOpenPricedBidThreads: Optional(true),
                createdByUserId: "created_by_user_id",
                createdByOrgId: "created_by_org_id",
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                status: .open,
                orderId: "order_id",
                orderShortId: "order_short_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                acceptedBidThreadId: Optional("accepted_bid_thread_id")
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
                  "schema_version": 1,
                  "listing_description": "listing_description",
                  "task_group_id": "task_group_id",
                  "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                  "pro_forma_line_items": [
                    {
                      "schema_version": 1,
                      "comments": "comments",
                      "item": "base_rate",
                      "units": "usd",
                      "rate": 1.1,
                      "quantity": 1.1,
                      "adjustment": 1.1,
                      "adjustment_comments": "adjustment_comments",
                      "provenance": "rate_sheet",
                      "rate_sheet_id": "rate_sheet_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "share_pro_forma_line_items": true,
                  "audience": "providers",
                  "participant_provider_org_ids": [
                    "participant_provider_org_ids"
                  ],
                  "org_bidding_group_ids": [
                    "org_bidding_group_ids"
                  ],
                  "participant_driver_ids": [
                    "participant_driver_ids"
                  ],
                  "driver_bidding_group_ids": [
                    "driver_bidding_group_ids"
                  ],
                  "type": "dispatch",
                  "auto_award_first_accept": true,
                  "auto_open_priced_bid_threads": true,
                  "internal_notes": "internal_notes",
                  "created_by_user_id": "created_by_user_id",
                  "created_by_org_id": "created_by_org_id",
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                  "status": "open",
                  "order_id": "order_id",
                  "order_short_id": "order_short_id",
                  "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                  "accepted_bid_thread_id": "accepted_bid_thread_id",
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
        let expectedResponse = Listing1(
            schemaVersion: Optional(1),
            listingDescription: "listing_description",
            taskGroupId: "task_group_id",
            taskGroupSummaryForBidders: "task_group_summary_for_bidders",
            proFormaLineItems: Optional([
                ProFormaLineItem1(
                    schemaVersion: Optional(1),
                    comments: Optional("comments"),
                    item: .baseRate,
                    units: Optional(.usd),
                    rate: 1.1,
                    quantity: 1.1,
                    adjustment: Optional(1.1),
                    adjustmentComments: Optional("adjustment_comments"),
                    provenance: .rateSheet,
                    rateSheetId: Optional("rate_sheet_id"),
                    createdAtTimestamp: Optional(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]),
            shareProFormaLineItems: Optional(true),
            audience: .providers,
            participantProviderOrgIds: Optional([
                "participant_provider_org_ids"
            ]),
            orgBiddingGroupIds: Optional([
                "org_bidding_group_ids"
            ]),
            participantDriverIds: Optional([
                "participant_driver_ids"
            ]),
            driverBiddingGroupIds: Optional([
                "driver_bidding_group_ids"
            ]),
            type: Optional(.dispatch),
            autoAwardFirstAccept: Optional(true),
            autoOpenPricedBidThreads: Optional(true),
            internalNotes: Optional("internal_notes"),
            createdByUserId: "created_by_user_id",
            createdByOrgId: "created_by_org_id",
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            status: .open,
            orderId: "order_id",
            orderShortId: "order_short_id",
            orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
            acceptedBidThreadId: Optional("accepted_bid_thread_id"),
            id: "_id"
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
                    "schema_version": 1,
                    "listing_description": "listing_description",
                    "task_group_id": "task_group_id",
                    "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                    "pro_forma_line_items": [
                      {
                        "item": "base_rate",
                        "rate": 1.1,
                        "quantity": 1.1,
                        "provenance": "rate_sheet"
                      }
                    ],
                    "share_pro_forma_line_items": true,
                    "audience": "providers",
                    "participant_provider_org_ids": [
                      "participant_provider_org_ids"
                    ],
                    "org_bidding_group_ids": [
                      "org_bidding_group_ids"
                    ],
                    "participant_driver_ids": [
                      "participant_driver_ids"
                    ],
                    "driver_bidding_group_ids": [
                      "driver_bidding_group_ids"
                    ],
                    "type": "dispatch",
                    "auto_award_first_accept": true,
                    "auto_open_priced_bid_threads": true,
                    "internal_notes": "internal_notes",
                    "created_by_user_id": "created_by_user_id",
                    "created_by_org_id": "created_by_org_id",
                    "created_at_timestamp": "2024-01-15T09:30:00Z",
                    "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                    "status": "open",
                    "order_id": "order_id",
                    "order_short_id": "order_short_id",
                    "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                    "accepted_bid_thread_id": "accepted_bid_thread_id",
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
            Listing1(
                schemaVersion: Optional(1),
                listingDescription: "listing_description",
                taskGroupId: "task_group_id",
                taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                proFormaLineItems: Optional([
                    ProFormaLineItem1(
                        item: .baseRate,
                        rate: 1.1,
                        quantity: 1.1,
                        provenance: .rateSheet
                    )
                ]),
                shareProFormaLineItems: Optional(true),
                audience: .providers,
                participantProviderOrgIds: Optional([
                    "participant_provider_org_ids"
                ]),
                orgBiddingGroupIds: Optional([
                    "org_bidding_group_ids"
                ]),
                participantDriverIds: Optional([
                    "participant_driver_ids"
                ]),
                driverBiddingGroupIds: Optional([
                    "driver_bidding_group_ids"
                ]),
                type: Optional(.dispatch),
                autoAwardFirstAccept: Optional(true),
                autoOpenPricedBidThreads: Optional(true),
                internalNotes: Optional("internal_notes"),
                createdByUserId: "created_by_user_id",
                createdByOrgId: "created_by_org_id",
                createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                status: .open,
                orderId: "order_id",
                orderShortId: "order_short_id",
                orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                acceptedBidThreadId: Optional("accepted_bid_thread_id"),
                id: "_id"
            )
        ]
        let response = try await client.listing.listings.byTaskGroupV1(
            taskGroupId: "task_group_id",
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
                      "schema_version": 1,
                      "listing_description": "listing_description",
                      "task_group_id": "task_group_id",
                      "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                      "pro_forma_line_items": [
                        {
                          "item": "base_rate",
                          "rate": 1.1,
                          "quantity": 1.1,
                          "provenance": "rate_sheet"
                        }
                      ],
                      "share_pro_forma_line_items": true,
                      "audience": "providers",
                      "participant_provider_org_ids": [
                        "participant_provider_org_ids"
                      ],
                      "org_bidding_group_ids": [
                        "org_bidding_group_ids"
                      ],
                      "participant_driver_ids": [
                        "participant_driver_ids"
                      ],
                      "driver_bidding_group_ids": [
                        "driver_bidding_group_ids"
                      ],
                      "type": "dispatch",
                      "auto_award_first_accept": true,
                      "auto_open_priced_bid_threads": true,
                      "internal_notes": "internal_notes",
                      "created_by_user_id": "created_by_user_id",
                      "created_by_org_id": "created_by_org_id",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                      "status": "open",
                      "order_id": "order_id",
                      "order_short_id": "order_short_id",
                      "order_off_chrt_reference_id": "order_off_chrt_reference_id",
                      "accepted_bid_thread_id": "accepted_bid_thread_id",
                      "_id": "_id"
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
                    schemaVersion: Optional(1),
                    listingDescription: "listing_description",
                    taskGroupId: "task_group_id",
                    taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                    proFormaLineItems: Optional([
                        ProFormaLineItem1(
                            item: .baseRate,
                            rate: 1.1,
                            quantity: 1.1,
                            provenance: .rateSheet
                        )
                    ]),
                    shareProFormaLineItems: Optional(true),
                    audience: .providers,
                    participantProviderOrgIds: Optional([
                        "participant_provider_org_ids"
                    ]),
                    orgBiddingGroupIds: Optional([
                        "org_bidding_group_ids"
                    ]),
                    participantDriverIds: Optional([
                        "participant_driver_ids"
                    ]),
                    driverBiddingGroupIds: Optional([
                        "driver_bidding_group_ids"
                    ]),
                    type: Optional(.dispatch),
                    autoAwardFirstAccept: Optional(true),
                    autoOpenPricedBidThreads: Optional(true),
                    internalNotes: Optional("internal_notes"),
                    createdByUserId: "created_by_user_id",
                    createdByOrgId: "created_by_org_id",
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    status: .open,
                    orderId: "order_id",
                    orderShortId: "order_short_id",
                    orderOffChrtReferenceId: Optional("order_off_chrt_reference_id"),
                    acceptedBidThreadId: Optional("accepted_bid_thread_id"),
                    id: "_id"
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
                        "listing_description": "listing_description",
                        "task_group_id": "task_group_id",
                        "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                        "audience": "providers",
                        "created_by_user_id": "created_by_user_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "status": "open",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id"
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
                        listingDescription: "listing_description",
                        taskGroupId: "task_group_id",
                        taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                        audience: .providers,
                        createdByUserId: "created_by_user_id",
                        createdByOrgId: "created_by_org_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        status: .open,
                        orderId: "order_id",
                        orderShortId: "order_short_id"
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
                        "listing_description": "listing_description",
                        "task_group_id": "task_group_id",
                        "task_group_summary_for_bidders": "task_group_summary_for_bidders",
                        "audience": "providers",
                        "created_by_user_id": "created_by_user_id",
                        "created_by_org_id": "created_by_org_id",
                        "created_at_timestamp": "2024-01-15T09:30:00Z",
                        "last_edited_at_timestamp": "2024-01-15T09:30:00Z",
                        "status": "open",
                        "order_id": "order_id",
                        "order_short_id": "order_short_id"
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
                        listingDescription: "listing_description",
                        taskGroupId: "task_group_id",
                        taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                        audience: .providers,
                        createdByUserId: "created_by_user_id",
                        createdByOrgId: "created_by_org_id",
                        createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        lastEditedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                        status: .open,
                        orderId: "order_id",
                        orderShortId: "order_short_id"
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
                listingDescription: "listing_description",
                taskGroupId: "task_group_id",
                taskGroupSummaryForBidders: "task_group_summary_for_bidders",
                audience: .providers
            ),
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
}