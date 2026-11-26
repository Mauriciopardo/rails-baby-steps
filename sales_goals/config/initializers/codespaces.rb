# Codespaces fix.
# The Codespaces proxy rewrites the browser's "Origin" header to localhost,
# so Rails thinks our forms come from another site and blocks them (422).
# This turns off only that Origin check, only in development, only on Codespaces.
# The main security token check still runs.
if Rails.env.development? && ENV["CODESPACES"] == "true"
  Rails.application.config.action_controller.forgery_protection_origin_check = false
end