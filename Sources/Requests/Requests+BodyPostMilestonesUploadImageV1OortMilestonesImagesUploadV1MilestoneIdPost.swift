import Foundation

extension Requests {
    public struct BodyPostMilestonesUploadImageV1OortMilestonesImagesUploadV1MilestoneIdPost {
        public let image: FormFile

        public init(
            image: FormFile
        ) {
            self.image = image
        }
    }
}

extension Requests.BodyPostMilestonesUploadImageV1OortMilestonesImagesUploadV1MilestoneIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(image, fieldName: "image")
        ]
    }
}