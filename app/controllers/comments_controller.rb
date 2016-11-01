class Forest::CommentsController < ForestLiana::ApplicationController
  def moderate_comment
    # Your business logic to send an email here.
    p params
    render json: { success: 'Hello sandro' }
  end
end
