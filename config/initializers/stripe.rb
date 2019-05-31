Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_9cnrTVtvFrkLBsPiYjgPSpbH00Pu87GbSp'],
  secret_key:      ENV['sk_test_QVrUHQLWIERICW685aasMqiS00611ndFSS']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
