# frozen_string_literal: true

module UrlHelper
  # Fetch responsive left url's
  def fetch_responsive_left_urls
    [
      { title: t("urls.about"),         url: about_index_path,    controller: "about",        id: 1 },
      { title: t("urls.campus"),        url: campus_path,         controller: "campus",       id: 2 },
      { title: t("urls.quality"),       url: quality_index_path,  controller: "quality",      id: 3 },
      { title: t("urls.partnerships"),  url: partnerships_path,   controller: "partnerships", id: 4 }
    ]
  end

  # Fetch responsive middle url's
  def fetch_responsive_middle_urls
    [
      { title: t("urls.courses"),       url: courses_path,        controller: "courses",      id: 1 },
      { title: t("urls.articles"),      url: articles_path,       controller: "articles",     id: 2 },
      { title: t("urls.contact"),       url: contact_index_path,  controller: "contact",      id: 3 },
      { title: t("urls.newsletter"),    url: newsletter_path,     controller: "newsletter",   id: 4 }
    ]
  end

  # Fetch responsive right url's
  def fetch_responsive_right_urls
    [
      { title: t("urls.students"),      url: students_path,       controller: "students",     id: 1 },
      { title: t("urls.parents"),       url: parents_path,        controller: "parents",      id: 2 },
      { title: t("urls.tutors"),        url: tutors_path,         controller: "tutors",       id: 3 }
    ]
  end

  # Fetch secondary url's
  def fetch_secondary_urls
    [
      { title: t("urls.home"),          url: root_path,           controller: "home",         id: 0 },
      { title: t("urls.about"),         url: about_index_path,    controller: "about",        id: 1 },
      { title: t("urls.campus"),        url: campus_path,         controller: "campus",       id: 2 },
      { title: t("urls.quality"),       url: quality_index_path,  controller: "quality",      id: 3 },
      { title: t("urls.partnerships"),  url: partnerships_path,   controller: "partnerships", id: 4 },
      { title: t("urls.courses"),       url: courses_path,        controller: "courses",      id: 5 },
      { title: t("urls.articles"),      url: articles_path,       controller: "articles",     id: 6 },
      { title: t("urls.contact"),       url: contact_index_path,  controller: "contact",      id: 7 },
      { title: t("urls.newsletter"),    url: newsletter_path,     controller: "newsletter",   id: 8 },
      { title: t("urls.students"),      url: students_path,       controller: "students",     id: 9 },
      { title: t("urls.parents"),       url: parents_path,        controller: "parents",      id: 10 },
      { title: t("urls.tutors"),        url: tutors_path,         controller: "tutors",       id: 11 }
    ]
  end

  # Fetch terms and conditions url's
  def fetch_terms_and_conditions_urls
    [
      { title: t("urls.terms_and_conditions"), url: terms_and_conditions_path, id: 0 }
    ]
  end

  # Active Link
  # def active_class(link_path)
  #   current_page?(link_path) ? "active" : ""
  # end

  # Active Link
  def active_class(options = {})
    name_of_controller = options[:controller] || nil
    name_of_action     = options[:action]     || nil
    request_path       = options[:path]       || nil

    if request_path.nil?
      "active" if (name_of_action.nil? || name_of_action == action_name) && name_of_controller == controller_name
    else
      request_path == request.path ? "active" : ""
    end
  end
end
