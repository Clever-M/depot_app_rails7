module IndexCounter
  def set_counter
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end

  def clear_counter
    return if session[:counter].nil?

    session[:counter] = 0
  end
end
