# Compass settings

# Set this to the root of your project when deployed:
http_path = "/project/blocss/"
css_dir = "public/css"
sass_dir = "public/sass"
images_dir = "public/gfx"
javascripts_dir = "public/js"

# You can select your preferred output style here (can be overridden via the command line):
#output_style = :expanded or :nested or :compact or :compressed
output_style = :compressed

# Increase default decimal precision to prevent chrome round bug
Sass::Script::Number.precision = 15
