class SayController < ApplicationController
  def hello
    @time = Time.now
    @saying="Never giving up!"
  end

  def goodbye
  end
end
