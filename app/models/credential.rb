class Credential < ApplicationRecord
  belongs_to :user

  def create
    user = User.find(params[:user_id])
    credential = user.credentials.create(credential_params)
    if credential.persisted?
      render json: { status: 'ok' }, status: :ok
    else
      render json: { status: 'failed' }, status: :unprocessable_entity
    end
  end

  private

  def credential_params
    params.require(:credential).permit(:name, :public_key, :sign_count)
  end
end
