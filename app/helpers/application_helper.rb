module ApplicationHelper
  def img_file_from_name(name)
    "people/#{name.downcase.gsub(' ', '-')}"
  end

  def testimonial_data
    [
      {
        name: "Liza McPherson",
        school: "Harvard",
        grad_year: "18",
        ix_year: "14",
        quote_html: "After two months of learning and adventuring in the most magical place I could imagine, I am returning to school <b>confident in my decision to major in Computer Science</b> and am relatively certain that I want to be a software engineer after I graduate.",
      },
      {
        name: "Alex Tenn",
        school: "Yale",
        grad_year: "14",
        ix_year: "14",
        quote_html: "<b>This was the best summer / intern / study abroad ever</b>. iX is an incredible opportunity to learn how to make amazing stuff, better than half the nonsense you see on the web, as well as see beautiful Cape Town that you've heard so much about.",
      },
      {
        name: "Jessie Osterman",
        school: "NYU",
        grad_year: "18",
        ix_year: "15",
        quote_html: "<b>Being able to build a functional app in a matter of weeks seemed impossible at the start, but iX made it happen for every student</b>. Cape Town is a city that stole my heart and I only wish I could've had more time to be immersed in it longer.",
      },
      {
        name: "Phoebe Brown",
        school: "Princeton",
        grad_year: "16",
        ix_year: "15",
        quote_html: "For me, iX presented a world of opportunities I hadn't yet considered. Learning about a new industry, exploring an incredible country, embarking on exhilarating adventures, and <b>getting hands-on experience in an internship with an international company</b> made for an unbelievable summer.",
      },
      {
        name: "Yiming Lin",
        school: "UVA",
        grad_year: "17",
        ix_year: "15",
        quote_html: "iX is a program that combines cultural immersion and self-exploration, in addition, to a set of business acumen that <b>allows you to jump start your career</b>. Over the course of 8 weeks, I've learned what it means to become a consultant, dined in some of the tastiest restaurants in the world, explored and experienced South Africa to its fullest.",
      },
      {
        name: "Celia Aidinoff",
        school: "UVA",
        grad_year: "17",
        ix_year: "15",
        quote_html: "iXperience provided me with a truly incredible summer.  Not only did I learn concrete skills which I immediately applied in my internship, but I also forged meaningful friendships while exploring an exciting new place. <b>iXperience pushed me to grow as a student and as a person</b>.",
      },
      {
        name: "Braden Casady",
        school: "UVA",
        grad_year: "17",
        ix_year: "15",
        quote_html: "iX was the best summer of my life. From the people and the classes to all of the crazy weekend activities and the internship, <b>I've never learned so much in such a short amount of time</b>. IX also has prepared me for the upcoming interview process and I feel confident and ready to succeed.",
      },
      {
        name: "Oliver Jenkins",
        school: "Cambridge",
        grad_year: "17",
        ix_year: "15",
        quote_html: "iX was a truly awesome experience, meshing invaluable finance related experience with adventure, friendship, and new perspectives. <b>I would recommend this to anyone who is not only interested in gaining a deep insight into the world of finance</b>, but also interested in discovering a new city and culture!",
      },
      {
        name: "Cindy Wei",
        school: "NYU",
        grad_year: "18",
        ix_year: "15",
        quote_html: "<b>iXperience was a magical summer that could never be replicated</b>. I was able to sky dive (twice!), bungee jump (twice!), shark cage dive, and sand board for the first time! I also learned practical financial modeling skills, which I used during my internship, with one of the best lecturers I've ever had.",
      },
      {
        name: "Charlotte Searle",
        school: "UVA",
        grad_year: "17",
        ix_year: "15",
        quote_html: "I learned more than I ever imagined, explored one of the most beautiful cities in the world. <b>iX gave me a chance to escape the familiar</b> - I never imagined I would jump off the tallest bungee jumping bridge in the world or get face-to-face with Great Whites. Similarly, I never imagined I'd create a ridesharing app in the first month.",
      },
      # {
      #   name: "Alex Schwartz",
      #   school: "UMich",
      #   grad_year: "17",
      #   ix_year: "15",
      #   quote_html: "It is the only place in the world where I was able to immerse myself in one community and focus on one subject. <b>I have never achieved so much in such a short span of time</b>.",
      # },
      {
        name: "Susana Yepes",
        school: "Boston University",
        grad_year: "17",
        ix_year: "15",
        quote_html: "iX goes above and beyond to not only teach the students a whole language, but to make sure that <b>every student has the summer of their lifetime</b>. I couldn't imagine a better city to move to for two months. My only warning is you'll never want to go home!",
      },
      {
        name: "Stanley Zuo",
        school: "NYU",
        grad_year: "17",
        ix_year: "15",
        quote_html: "iX meant developing a new skill with a new group of people. It meant <b>broadening my horizons and taking a risk to step out of my comfort zone</b>. Mostly importantly, iX meant challenging myself both mentally and physically to push my boundaries.",
      },
      {
        name: "Mark Steinbrick",
        school: "Harvard",
        grad_year: "17",
        ix_year: "15",
        quote_html: "iX is a world of opportunity. <b>I couldn't imagine there is a better summer program out there</b> in terms of how much you will learn and what there is to do around you. I will be remembering my days in Cape Town for a long time to come. ",
      },
      {
        name: "Max Martin",
        school: "Yale",
        grad_year: "18",
        ix_year: "15",
        quote_html: "iXperience was a one of a kind learning and cultural immersion. I gained experience and knowledge both inside and outside of the classroom in ways I never had before. I can now say that I have incredible new skills and have used what I learned to <b>make an impact at a start up company in Cape Town</b>.",
      },
      {
        name: "Alexander Ortiz",
        school: "Stanford",
        grad_year: "16",
        ix_year: "15",
        quote_html: "IX was an opportunity to grow and discover. To explore a dynamic and captivating country, develop practical technical skills, and leave behind the comfort of the familiar to <b>join a diverse assembly of scholars, artists, and adventurers at the edge of the world.</b>",
      },
    ]
  end
end