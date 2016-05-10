require 'coursegen'

# bucket for AWS Deployment of the course
AWS_BUCKET = "csfp"

# Copyright string
COPYRIGHT_STRING = "Copyright (2013-2016) R. Pito Salas, pitosalas@brandeis.edu"

# Course short name
COURSE_SHORT_NAME = "CSFP"
COURSE_LONG_NAME = "Brandeis University CS Field Project"
COURSE_ABBREV = "CSFP"

LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "aug-11-2015",
  weekdays: [:tuesday, :friday],
  number: 26,
  skips: [],
  start_time: "15:00",
  end_time: "16:20")


# Sections in the right hand margin of the page
SECTION_CONFIG = [
  SectionDef.new("Notes", "notes", type: :section),
  SectionDef.new("Handbook", "handbook", type: :section),
  SectionDef.new("Lectures", "lectures",
                 hidden: true, type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG),
  SectionDef.new("Extras", "extras", hidden: true, type: :section)
]
# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = { bullet_style: "\"font-size: 60%; width: 10px; color: grey\"" }
