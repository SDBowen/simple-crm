# frozen_string_literal: true

module Api
  class OrganizationsController < ApplicationController
    def index
      @organizations = Organization.all
    end

    def show
      @organization = Organization.find(params[:id])
    end
  end
end
