module GoogleAnalyticsRailsHelper
  def google_analytics_meta_tag
    tag('meta', name: 'google-analytics-id', content: GoogleAnalyticsRails.google_analytics_id)
  end
end
