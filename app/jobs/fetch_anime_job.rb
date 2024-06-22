class FetchAnimeJob < ApplicationJob
  queue_as :default

  def perform
    service = MyAnimeListService.new
    response = service.fetch_anime

    response['top'].each do |anime_data|
      anime = Anime.find_or_create_by(title: anime_data['title']) do |a|
        a.synopsis = anime_data['synopsis']
        a.episodes = anime_data['episodes']
        a.rating = anime_data['score']
        a.image_url = anime_data['image_url']
      end

      author = Author.find_or_create_by(name: "Unknown Author")
      anime.authors << author unless anime.authors.include?(author)
    end
  end
end
