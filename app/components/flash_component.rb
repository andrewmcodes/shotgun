class FlashComponent < ViewComponent::Base
  attr_reader :flash

  def initialize(flash: nil)
    @flash = flash
  end

  def render?
    !flash.empty?
  end
end
