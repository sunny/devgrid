# Insert (or hide) the necessary HTML to overlay your site's columns
$.fn.devGrid = (cols = 12) ->
  grid = @find('.dev-grid')
  if grid.length == 0
    grid = $('<div class="dev-grid" />')
    row = $('<div class="dev-row" />').appendTo(grid)
    for num in [1..cols]
      row.append('<div class="dev-col" />')
    @prepend(grid)
  else
    grid.toggle()

$(window).keydown (e) ->
  if event.ctrlKey && e.keyCode == 71 # "G"
    $('body').devGrid()
