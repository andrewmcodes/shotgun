class AlertComponent < ViewComponent::Base
  attr_reader :message, :variant, :dismissable, :variant_color

  def initialize(variant: "alert", message: "alert", dismissable: true)
    @message = message
    @variant = variant
    @dismissable = dismissable
    @variant_color = variant_color_name(variant)
  end

  private

  def variant_color_name(variant)
    @variant_color_name ||= begin
      case variant&.to_sym
      when :success
        "green"
      when :error
        "red"
      when :alert
        "indigo"
      when :notice
        "blue"
      else
        "red"
      end
    end
  end
end
