# frozen_string_literal: true

class Union < ApplicationRecord
  belongs_to :post_event
  belongs_to :user
end
