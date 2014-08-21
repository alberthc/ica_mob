module ApplicationHelper

  #Returns the full title on a per-page basis
  def full_title(page_title)
    base_title = "In Christ Alone"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def meta_description(description)
    default = "In Christ Alone (ICA) ministry website"
    if description.empty?
      default
    else
      "#{description}"
    end
  end

  def meta_keywords(keywords)
    default = "In Christ Alone, ICA, Christian organization"
    if keywords.empty?
      default
    else
      "#{default}, #{keywords}"
    end
  end

end
