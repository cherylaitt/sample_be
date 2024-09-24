Rails.configuration.stripe = {
  publishable_key: 'pk_test_51JlsCAB9IQBNWgjjfqM9f9Zfr8CzfOvwHNkhiFWmbjxJcAm7KF9pXminQJpRjOR4ckluh9QZ6BXeoh4BHWtuhVug00x35ATwQx',
  secret_key: 'sk_test_51JlsCAB9IQBNWgjjcy2qACbBVLTpop7BdnPaVBVfMiWVzVrdZ5ZctbvGhl8rNKCVweuqQKfTfcXxFkLffYTWs7FF00nygEBtmD'
}

Stripe.api_version = '2020-08-27'
Stripe.api_key = Rails.configuration.stripe[:secret_key]
