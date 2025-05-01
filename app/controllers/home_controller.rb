class HomeController < ApplicationController
  def index
  end

  def stress_cpu
    duration = 60 # seconds
    end_time = Time.now + duration

    while Time.now < end_time
      # Burn CPU - do some expensive calculations
      Math.sqrt(rand) ** rand
    end

    redirect_to home_index_path, notice: "CPU stressed for #{duration} seconds"
  end
end
