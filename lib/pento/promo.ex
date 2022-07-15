# This is the context of our Promo
# it deals with the "unknown" or "uncertain"

defmodule Pento.Promo do
  alias Pento.Promo.Recipient

  def change_recipient(%Recipient{} = recipient, attrs \\ %{}) do
    Recipient.changeset(recipient, attrs)
  end

  def send_promo(_recipient, attrs) do
    # send email to promo recipient here
    {:ok, %Recipient{}}
  end
end
