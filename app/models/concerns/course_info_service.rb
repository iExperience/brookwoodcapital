class CourseInfoService
  @@COURSE_INFO = {
    "default" => {
      full_name: "iXperience",
      sessions: [1, 2, 3],
      almost_full_sessions: [],
      full_sessions: [1, 2],
      asterisk_text: "Sessions vary by course"
    },
    "coding" => {
      full_name: "Coding",
      sessions: [1, 2, 3],
      almost_full_sessions: [],
      full_sessions: [1, 2],
      asterisk_text: "Sessions vary by course"
    },
    "product-management" => {
      full_name: "Product Management",
      sessions: [2],
      almost_full_sessions: [2],
      full_sessions: [],
      optin_code: "dtmztp5ahc3fetaz",
      optin_number: "14555.283973"
    },
    "finance" => {
      full_name: "Wall St. Finance",
      sessions: [1, 2],
      almost_full_sessions: [],
      full_sessions: [1, 2],
      optin_code: "opquv6tadhm6szje",
      optin_number: "14555.266752"
    },
    "consulting" => {
      full_name: "Management Consulting",
      sessions: [1, 2],
      almost_full_sessions: [],
      full_sessions: [1, 2],
      optin_code: "g6uepr6incepnmvb",
      optin_number: "14555.266744"
    },
    "ux-design" => {
      full_name: "User Experience Design",
      sessions: [1, 2],
      almost_full_sessions: [],
      full_sessions: [1, 2],
      optin_code: "wrhana4paftbqryl",
      optin_number: "14555.266751"
    },
    "data-science" => {
      full_name: "Data Science",
      sessions: [1, 2, 3],
      almost_full_sessions: [],
      full_sessions: [1, 2],
      optin_code: "mstmvgjvck9bnwtf",
      optin_number: "14555.266749"
    },
    "coding-web-dev" => {
      full_name: "Web Development",
      sessions: [1, 2, 3],
      almost_full_sessions: [],
      full_sessions: [1, 2],
      optin_code: "jeeujvvv2ervrznt",
      optin_number: "14555.266740"
    },
    "coding-ios" => {
      full_name: "iOS Development",
      sessions: [1, 2],
      almost_full_sessions: [],
      full_sessions: [1, 2],
      optin_code: "zcbfoggyuqf3ftia",
      optin_number: "14555.266645"
    }
  }
  class << self
    def get_default_info()
      @@COURSE_INFO["default"]
    end

    def get_info(course)
      @@COURSE_INFO[course]
    end
  end
end