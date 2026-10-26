import Foundation
import Testing
import Chrt

@Suite("PreviewsClient Wire Tests") struct PreviewsClientWireTests {
    @Test func getV11() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "email": {
                    "html": "html",
                    "preview_text": "preview_text",
                    "subject": "subject",
                    "text": "text"
                  },
                  "previewable": true,
                  "push": {
                    "body": "body",
                    "title": "title"
                  },
                  "sms": {
                    "body": "body"
                  }
                }
                """#.utf8
            )
        )
        let client = ChrtClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = NotificationPreviewRes(
            email: Optional(NotificationPreviewEmailRes(
                html: "html",
                previewText: "preview_text",
                subject: "subject",
                text: "text"
            )),
            previewable: true,
            push: Optional(NotificationPreviewPushRes(
                body: "body",
                title: "title"
            )),
            sms: Optional(NotificationPreviewSmsRes(
                body: "body"
            ))
        )
        let response = try await client.notifications.previews.getV1(
            event: .shippingOrderStaged,
            audience: .wholeOrder,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}