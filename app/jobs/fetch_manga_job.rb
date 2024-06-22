class FetchMangaJob < ApplicationJob
  queue_as :default

  def perform
    service = MangaDexService.new
    response = service.fetch_manga

    response['data'].each do |manga_data|
      manga = Manga.find_or_create_by(title: manga_data['attributes']['title']['en']) do |m|
        m.synopsis = manga_data['attributes']['description']['en']
        m.chapters = manga_data['attributes']['chapter_count']
        m.rating = manga_data['attributes']['rating']
        m.image_url = manga_data['attributes']['cover_art']['url']
      end

      author = Author.find_or_create_by(name: "Unknown Author")
      manga.authors << author unless manga.authors.include?(author)
    end
  end
end
