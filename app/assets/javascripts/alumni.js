function sanitize(array) {
  return (array.length == 0) ? [""] : array
}

function combineFilters(course, college, gender, major, year) {
  result = ""
  if (course.length !=0) {
    result += '.course_' + course;
  }
  if (college.length != 0) {
    result += '.college_' + college;
  }
  if (gender.length != 0) {
    result += '.gender_' + gender;
  }
  if (major.length != 0) {
    result += '.major_' + major;
  }
  if (year.length != 0) {
    result += '.year_' + year;
  }
  return result;
}

function filterByAttributes(container) {
  $checkboxes = $("input[type=checkbox]");
  courses = [];
  colleges = [];
  genders = [];
  majors = [];
  years = [];

  $.each($checkboxes, function(index, checkbox) {
    if ($(checkbox).prop('checked')) {
      target = $(checkbox).attr('data-target');
      switch($(checkbox).attr('data-type')) {
        case 'course':
          courses.push(target);
          break;
        case 'college':
          colleges.push(target);
          break;
        case 'gender':
          genders.push(target);
          break;
        case 'major':
          majors.push(target);
          break;
        case 'year':
          years.push(target);
          break;
      }
    }
  }); 
  courses = sanitize(courses);
  colleges = sanitize(colleges);
  genders = sanitize(genders);
  majors = sanitize(majors);
  years = sanitize(years);
  result = "";
  courses.forEach(function(course){
    colleges.forEach(function(college){
      genders.forEach(function(gender){
        majors.forEach(function(major){
          years.forEach(function(year){
          result += combineFilters(course, college, gender, major, year) + ', '; 
        });
      });
    });      
   });
  });
  result = result.substring(0, result.length - 2)  
  container.isotope({ filter: result});
}

$(function() {
  var $container = $('#alumni-grid');

  $container.isotope({
      animationEngine: 'best-available' 
  });

  $("input[type=checkbox]").change(function() {
    filterByAttributes($container);
  });

  $('.clear').click(function(e){
    var filter = $(this).attr('data-type');
    $('input[data-type=' + filter + ']').attr('checked', false);
    e.preventDefault();
    filterByAttributes($container);
  });

  $('#alumni-focus-modal').on('show.bs.modal', function (event) {
    var link = $(event.relatedTarget) // Button that triggered the modal
    var year = link.data('year'),
        email = link.data('email'),
        name = link.data('name'),
        quote = link.data('quote'),
        pictureUrl = link.data('picture-url');
    var modal = $(this)
    modal.find('.alumni-focus-modal-name').text(name);
    modal.find('.alumni-focus-modal-year').text(year);
    modal.find('.alumni-focus-modal-email').text(email);
    modal.find('.alumni-focus-modal-img').attr("src", pictureUrl);
    if (quote != "") {
      quote = "" + quote + "";
    }
    modal.find('.alumni-focus-modal-quote').text(quote);
  });

  $("img.lazy").lazyload({
    effect: "fadeIn"
  });
});