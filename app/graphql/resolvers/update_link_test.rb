require 'test_helper'

class Resolvers::UpdateLinkTest < ActiveSupport::TestCase
  def perform(args = {})
    Resolvers::UpdateLink.new.call(nil, args, {})
  end

  setup do
    @link = Link.create! url: 'http://example.com', description: 'description'
  end

  test 'creating new link' do
    link = perform(
      id: @link[:id],
      url: 'http://updated.com',
      description: 'updated',
    )

    assert link.persisted?
    assert_equal link.description, 'updated'
    assert_equal link.url, 'http://updated.com'
  end
end
