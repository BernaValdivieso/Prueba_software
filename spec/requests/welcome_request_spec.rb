# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcome', type: :request do
  # Quiero testear index
  describe 'index' do
    it 'returns a successful request' do
      get '/welcome/index' # Ruta
      expect(response).to have_http_status(:ok)
    end

    it 'renders index view' do
      get '/welcome/index'
      expect(response).to render_template(:index)
    end
  end
end
