module ApplicationHelper
  def stairway_packages(stairway)
    content_for(:stylesheet) { stylesheet_pack_tag "#{stairway}-application" }
    content_for(:javascript) { javascript_pack_tag "#{stairway}-application" }

  rescue Webpacker::Manifest::MissingEntryError
    injected_content = Rails.env.development? ?
      "alert('Add app/javascript/packs/#{stairway}-application.tsx')" :

    content_for(:javascript) { javascript_tag injected_content }
  end
end
