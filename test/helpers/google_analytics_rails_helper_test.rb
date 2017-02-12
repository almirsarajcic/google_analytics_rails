require 'test_helper'

class GoogleAnalyticsRailsHelperTest < ActionView::TestCase
  test 'should return application Google Analytics ID' do
    GoogleAnalyticsRails.google_analytics_id = "TESTING"
    assert_dom_equal %{<meta name="google-analytics-id" content="TESTING" />}, google_analytics_meta_tag
  end
end
