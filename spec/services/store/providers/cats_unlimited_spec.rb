require 'rails_helper'
require Rails.root.join('spec', 'services', 'store', 'providers', 'shared_examples.rb')

describe Store::Providers::CatsUnlimited do
  context 'receive configuration' do
    let(:provider_response) do
      [
        {
          name: title,
          price: price,
          location: location,
          image: image
        }
      ].to_json
    end

    let(:parsed_response) { JSON.parse(provider_response) }

    let(:decorator) { Store::Providers::Decorators::CatsUnlimitedDecorator }

    include_examples :providers_logic
  end
end
