require 'rails_helper'

RSpec.describe Youtube, type: :poros do
  describe 'it returns video objects' do
    it 'response has defined attributes',:vcr do
      video = YoutubeFacade.get_videos("mexico")
      expect(video.first.title).to be_a String
      expect(video.first.youtube_video_id).to be_a String

    end
  end
end