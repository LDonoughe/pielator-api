# frozen_string_literal: true

class WordsController < ApplicationController
  def index
    render json: Word.all
  end
end
