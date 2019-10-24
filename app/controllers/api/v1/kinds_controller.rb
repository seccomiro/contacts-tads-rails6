class Api::V1::KindsController < ApplicationController
  before_action :set_kind, only: [:show]

  def index
    @kinds = Kind.all
  end

  def show
    @fail = { id: "Não foi encontrado Tipo com ID #{params[:id]}." } unless @kind
  end

  private

  def set_kind
    @kind = Kind.find_by_id(params[:id])
  end
end
