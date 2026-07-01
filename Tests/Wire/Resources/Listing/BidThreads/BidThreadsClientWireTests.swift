import Foundation
import Testing
import Chrt

@Suite("BidThreadsClient Wire Tests") struct BidThreadsClientWireTests {
    @Test func acceptV11() async throws -> Void {
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
        let response = try await client.listing.bidThreads.acceptV1(
            bidThreadId: "bid_thread_id",
            request: BidAppendReq(

            ),
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
                  "_id": "_id",
                  "accepted_pro_forma_line_items": [
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
                  "bidder_driver_id": "bidder_driver_id",
                  "bidder_provider_org_id": "bidder_provider_org_id",
                  "bids": [
                    {
                      "acted_by_user_id": "acted_by_user_id",
                      "action": "submit",
                      "comment": "comment",
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "from_lister": true,
                      "pro_forma_line_items": [
                        {
                          "item": "base_rate",
                          "provenance": "rate_sheet",
                          "quantity": 1.1,
                          "rate": 1.1
                        }
                      ]
                    }
                  ],
                  "created_at_timestamp": "2024-01-15T09:30:00Z",
                  "listing_id": "listing_id",
                  "schema_version": 1,
                  "status": "open",
                  "status_changed_at_timestamp": "2024-01-15T09:30:00Z"
                }
                """.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BidThread1(
            id: "_id",
            acceptedProFormaLineItems: Optional([
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
            bidderDriverId: Optional("bidder_driver_id"),
            bidderProviderOrgId: Optional("bidder_provider_org_id"),
            bids: [
                Bid(
                    actedByUserId: "acted_by_user_id",
                    action: .submit,
                    comment: Optional("comment"),
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    fromLister: true,
                    proFormaLineItems: Optional([
                        ProFormaLineItem1(
                            item: .baseRate,
                            provenance: .rateSheet,
                            quantity: 1.1,
                            rate: 1.1
                        )
                    ])
                )
            ],
            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            listingId: "listing_id",
            schemaVersion: Optional(1),
            status: .open,
            statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.listing.bidThreads.byIdV1(
            bidThreadId: "bid_thread_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func confirmAcceptV11() async throws -> Void {
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
        let response = try await client.listing.bidThreads.confirmAcceptV1(
            bidThreadId: "bid_thread_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func counterV11() async throws -> Void {
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
        let response = try await client.listing.bidThreads.counterV1(
            bidThreadId: "bid_thread_id",
            request: BidAppendReq(

            ),
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
        let response = try await client.listing.bidThreads.createV1(
            request: .init(
                action: .submit,
                listingId: "listing_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func denyV11() async throws -> Void {
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
        let response = try await client.listing.bidThreads.denyV1(
            bidThreadId: "bid_thread_id",
            request: BidAppendReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForBidderV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "_id": "_id",
                      "accepted_pro_forma_line_items": [
                        {
                          "item": "base_rate",
                          "provenance": "rate_sheet",
                          "quantity": 1.1,
                          "rate": 1.1
                        }
                      ],
                      "bidder_driver_id": "bidder_driver_id",
                      "bidder_provider_org_id": "bidder_provider_org_id",
                      "bids": [
                        {
                          "acted_by_user_id": "acted_by_user_id",
                          "action": "submit",
                          "created_at_timestamp": "2024-01-15T09:30:00Z",
                          "from_lister": true
                        }
                      ],
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "listing_id": "listing_id",
                      "schema_version": 1,
                      "status": "open",
                      "status_changed_at_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = BidThreadListRes(
            items: [
                BidThread1(
                    id: "_id",
                    acceptedProFormaLineItems: Optional([
                        ProFormaLineItem1(
                            item: .baseRate,
                            provenance: .rateSheet,
                            quantity: 1.1,
                            rate: 1.1
                        )
                    ]),
                    bidderDriverId: Optional("bidder_driver_id"),
                    bidderProviderOrgId: Optional("bidder_provider_org_id"),
                    bids: [
                        Bid(
                            actedByUserId: "acted_by_user_id",
                            action: .submit,
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            fromLister: true
                        )
                    ],
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    listingId: "listing_id",
                    schemaVersion: Optional(1),
                    status: .open,
                    statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.listing.bidThreads.listForBidderV1(
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterListingId: "filter_listing_id",
            filterBidderProviderOrgId: "filter_bidder_provider_org_id",
            filterBidderDriverId: "filter_bidder_driver_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStatusChangedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStatusChangedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listForListingV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Data(
                """
                {
                  "items": [
                    {
                      "_id": "_id",
                      "accepted_pro_forma_line_items": [
                        {
                          "item": "base_rate",
                          "provenance": "rate_sheet",
                          "quantity": 1.1,
                          "rate": 1.1
                        }
                      ],
                      "bidder_driver_id": "bidder_driver_id",
                      "bidder_provider_org_id": "bidder_provider_org_id",
                      "bids": [
                        {
                          "acted_by_user_id": "acted_by_user_id",
                          "action": "submit",
                          "created_at_timestamp": "2024-01-15T09:30:00Z",
                          "from_lister": true
                        }
                      ],
                      "created_at_timestamp": "2024-01-15T09:30:00Z",
                      "listing_id": "listing_id",
                      "schema_version": 1,
                      "status": "open",
                      "status_changed_at_timestamp": "2024-01-15T09:30:00Z"
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
        let expectedResponse = BidThreadListRes(
            items: [
                BidThread1(
                    id: "_id",
                    acceptedProFormaLineItems: Optional([
                        ProFormaLineItem1(
                            item: .baseRate,
                            provenance: .rateSheet,
                            quantity: 1.1,
                            rate: 1.1
                        )
                    ]),
                    bidderDriverId: Optional("bidder_driver_id"),
                    bidderProviderOrgId: Optional("bidder_provider_org_id"),
                    bids: [
                        Bid(
                            actedByUserId: "acted_by_user_id",
                            action: .submit,
                            createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                            fromLister: true
                        )
                    ],
                    createdAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    listingId: "listing_id",
                    schemaVersion: Optional(1),
                    status: .open,
                    statusChangedAtTimestamp: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            totalCount: 1
        )
        let response = try await client.listing.bidThreads.listForListingV1(
            listingId: "listing_id",
            sortBy: .createdAtTimestamp,
            sortOrder: .asc,
            page: 1,
            pageSize: 1,
            filterListingId: "filter_listing_id",
            filterBidderProviderOrgId: "filter_bidder_provider_org_id",
            filterBidderDriverId: "filter_bidder_driver_id",
            filterCreatedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterCreatedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStatusChangedAtTimestampGte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            filterStatusChangedAtTimestampLte: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func withdrawV11() async throws -> Void {
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
        let response = try await client.listing.bidThreads.withdrawV1(
            bidThreadId: "bid_thread_id",
            request: BidAppendReq(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}