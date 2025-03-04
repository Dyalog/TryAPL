document.addEventListener('DOMContentLoaded', function() {
  const tooltips = document.querySelectorAll('.ngn_lb b');
  tooltips.forEach(function(tooltip) {
    tooltip.addEventListener('mouseover', function(event) {
      const symbol = event.target.textContent;
      const url = 'https://help.dyalog.com/latest/#Language/Primitive%20Functions%20and%20Operators/' + encodeURIComponent(symbol) + '.htm';
      const tooltipContent = event.target.getAttribute('title') + '\nDocumentation: ' + url;
      event.target.setAttribute('title', tooltipContent);
    });
  });
});
