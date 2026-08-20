-- InitClock builds these strings after normal catalog lookup, so translate the
-- composed value before it is measured, wrapped or drawn.
return {
  { "NITE (%d+) o'clock", "NACHT %1 UHR" },
  { "MORN (%d+) o'clock", "VORMITTAG %1 UHR" },
  { "DAY (%d+) o'clock", "TAG %1 UHR" },
  { "NITE (%d+:%d%d)", "NACHT %1" },
  { "MORN (%d+:%d%d)", "VORMITTAG %1" },
  { "DAY (%d+:%d%d)", "TAG %1" },
  { "%f[%a]SUNDAY%f[%A]", "SONNTAG" },
  { "%f[%a]MONDAY%f[%A]", "MONTAG" },
  { "%f[%a]TUESDAY%f[%A]", "DIENSTAG" },
  { "%f[%a]WEDNESDAY%f[%A]", "MITTWOCH" },
  { "%f[%a]THURSDAY%f[%A]", "DONNERSTAG" },
  { "%f[%a]FRIDAY%f[%A]", "FREITAG" },
  { "%f[%a]SATURDAY%f[%A]", "SAMSTAG" },
}
