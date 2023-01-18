require 'rails_helper'

RSpec.describe YoutubeFacade do
  describe "Youtube Facade", :vcr do
  it 'creates a video object for videos based on a country', :vcr do
    video = YoutubeFacade.get_videos("mexico")
    expect(video.first.title).to eq("A Super Quick History of Mexico")
    expect(video.first.youtube_video_id).to eq("ZgrdcffPDDA")
  end
  it 'returns an empty hash', :vcr do
    video = YoutubeFacade.get_videos("WAAAAHHHHHHHH")

    expect(video).to eq([])
  end
  end
end

