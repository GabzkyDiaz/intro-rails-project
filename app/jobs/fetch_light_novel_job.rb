class FetchLightNovelJob < ApplicationJob
  queue_as :default

  def perform
    service = AniListService.new
    response = service.fetch_light_novels

    response['data']['Media'].each do |novel_data|
      light_novel = LightNovel.find_or_create_by(title: novel_data['title']['romaji']) do |ln|
        ln.synopsis = novel_data['description']
        ln.volumes = novel_data['volumes']
        ln.rating = novel_data['averageScore']
        ln.image_url = novel_data['coverImage']['large']
      end

      author = Author.find_or_create_by(name: "Unknown Author")
      light_novel.authors << author unless light_novel.authors.include?(author)
    end
  end
end
