class ProseComponent < ViewComponent::Base
  attr_reader :responsive

  def initialize(responsive: true)
    @responsive = responsive
  end

  def responsive_classes
    return unless responsive

    "lg:prose-xl"
  end
end
