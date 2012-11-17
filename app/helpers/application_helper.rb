module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "twomatch.cl, tu sitio de reservas online. "
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
