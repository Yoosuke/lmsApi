defmodule LmsApi.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :LmsApi,
  module: LmsApi.Guardian,
  error_handler: LmsApi.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
