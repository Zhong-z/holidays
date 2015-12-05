# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/at.yaml, data/be.yaml, data/ch.yaml, data/cz.yaml, data/dk.yaml, data/de.yaml, data/el.yaml, data/es.yaml, data/fr.yaml, data/gb.yaml, data/hr.yaml, data/hu.yaml, data/ie.yaml, data/is.yaml, data/it.yaml, data/li.yaml, data/lt.yaml, data/nl.yaml, data/no.yaml, data/pl.yaml, data/pt.yaml, data/ro.yaml, data/sk.yaml, data/si.yaml
class EuropeDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_europe
{Date.civil(2009,1,1) => 'Neujahrstag', 
 Date.civil(2009,4,13) => 'Ostermontag',
 Date.civil(2009,5,1) => 'Staatsfeiertag',
 Date.civil(2009,5,21) => 'Christi Himmelfahrt',
 Date.civil(2009,6,1) => 'Pfingstmontag',
 Date.civil(2009,10,26) => 'Nationalfeiertag',
 Date.civil(2009,12,25) => '1. Weihnachtstag',
 Date.civil(2009,12,26) => '2. Weihnachtstag'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :at, :informal)[0] || {})[:name]
end

assert !Date.civil(2010,5,8).holiday?(:at), '2010-05-08 is not a holiday in Austria'


{Date.civil(2007,1,1) => 'Jour de l\'an',
 Date.civil(2007,4,8) => 'Pâques',
 Date.civil(2007,4,9) => 'Lundi de Pâques',
 Date.civil(2007,5,1) => 'Fête du travail',
 Date.civil(2007,5,17) => 'Ascension',
 Date.civil(2007,5,27) => 'Pentecôte',
 Date.civil(2007,5,28) => 'Lundi de Pentecôte',
 Date.civil(2007,7,21) => 'Fête nationale',
 Date.civil(2007,8,15) => 'Assomption',
 Date.civil(2007,11,1) => 'Toussaint',
 Date.civil(2007,11,11) => 'Armistice 1918',
 Date.civil(2007,12,25) => 'Noël'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :be, :informal)[0] || {})[:name]
end

{ Date.civil(2012,8,1) => 'Bundesfeiertag',
  Date.civil(2012,12,25) => 'Weihnachten',
  Date.civil(2012,05,17) => 'Auffahrt'
}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ch)[0] || {})[:name]
end

{ Date.civil(2012,8,1) => 'Bundesfeiertag',
  Date.civil(2012,12,25) => 'Weihnachten',
  Date.civil(2012,05,17) => 'Auffahrt',
  Date.civil(2012,5,1) => 'Tag der Arbeit',
  Date.civil(2012,12,26) => 'Stefanstag'
}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ch_zh)[0] || {})[:name]
end

[Date.civil(2012,9,17), Date.civil(2013,9,16), Date.civil(2014,9,22)].each do |date|
  assert_equal 'Lundi du Jeûne fédéral', (Holidays.on(date, :ch_vd)[0] || {})[:name]
end

[Date.civil(2012,9,6), Date.civil(2013,9,5), Date.civil(2014,9,11)].each do |date|
  assert_equal 'Jeûne genevois', (Holidays.on(date, :ch_ge)[0] || {})[:name]
end

[Date.civil(2012,4,12), Date.civil(2013,4,4), Date.civil(2014,4,3)].each do |date|
  assert_equal 'Näfelser Fahrt', (Holidays.on(date, :ch_gl)[0] || {})[:name]
end


{Date.civil(2010,1,1) => 'Den obnovy samostatného českého státu',
 Date.civil(2010,4,5) => 'Velikonoční pondělí',
 Date.civil(2010,5,1) => 'Svátek práce',
 Date.civil(2010,5,8) => 'Den vítězství',
 Date.civil(2010,7,5) => 'Den slovanských věrozvěstů Cyrila a Metoděje',
 Date.civil(2010,7,6) => 'Den upálení mistra Jana Husa',
 Date.civil(2010,9,28) => 'Den české státnosti',
 Date.civil(2010,10,28) => 'Den vzniku samostatného československého státu',
 Date.civil(2010,11,17) => 'Den boje za svobodu a demokracii',
 Date.civil(2010,12,24) => 'Štědrý den',
 Date.civil(2010,12,25) => '1. svátek vánoční',
 Date.civil(2010,12,26) => '2. svátek vánoční'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :cz, :informal)[0] || {})[:name]
end


{Date.civil(2007,1,1) => 'Nytårsdag', 
 Date.civil(2007,2,18) => 'Fastelavn', 
 Date.civil(2007,4,9) => 'Danmarks besættelse',
 Date.civil(2007,4,16) => 'Dronningens fødselsdag',
 Date.civil(2007,4,5) => 'Skærtorsdag',
 Date.civil(2007,4,6) => 'Langfredag',
 Date.civil(2007,4,8) => 'Påskedag',
 Date.civil(2007,4,9) => '2. påskedag',
 Date.civil(2007,5,1) => 'Arbejdernes kampdag',
 Date.civil(2007,5,4) => 'Store Bededag',
 Date.civil(2007,5,17) => 'Kristi Himmelfartsdag',
 Date.civil(2007,5,27) => 'Pinsedag',
 Date.civil(2007,5,28) => '2. Pinsedag',
 Date.civil(2007,6,5) => 'Grundlovsdag',
 Date.civil(2007,12,24) => 'Juleaftensdag',
 Date.civil(2007,12,25) => '1. juledag',
 Date.civil(2007,12,26) => '2. juledag'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :dk, :informal)[0] || {})[:name]
end


{Date.civil(2009,1,1) => 'Neujahrstag', 
 Date.civil(2009,4,10) => 'Karfreitag',
 Date.civil(2009,4,13) => 'Ostermontag',
 Date.civil(2009,5,1) => 'Tag der Arbeit',
 Date.civil(2009,5,21) => 'Christi Himmelfahrt',
 Date.civil(2009,6,1) => 'Pfingstmontag',
 Date.civil(2009,10,3) => 'Tag der Deutschen Einheit',
 Date.civil(2009,12,25) => '1. Weihnachtstag',
 Date.civil(2009,12,26) => '2. Weihnachtstag'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :de, :informal)[0] || {})[:name]
end

[:de_bw, :de_by, :de_st, :de_].each do |r|
  assert_equal 'Heilige Drei Könige', Date.civil(2009,1,6).holidays(r)[0][:name]
end

[:de_bw, :de_by, :de_he, :de_nw, :de_rp, :de_sl, :de_].each do |r|
  assert_equal 'Fronleichnam', Date.civil(2009,6,11).holidays(r)[0][:name]
end

[:de_by, :de_sl, :de_].each do |r|
  assert_equal 'Mariä Himmelfahrt', Date.civil(2009,8,15).holidays(r)[0][:name]
end

[:de_bb, :de_mv, :de_sn, :de_st, :de_th, :de_].each do |r|
  assert_equal 'Reformationstag', Date.civil(2009,10,31).holidays(r)[0][:name]
end

[:de_bw, :de_by, :de_nw, :de_rp, :de_sl, :de_].each do |r|
  assert_equal 'Allerheiligen', Date.civil(2009,11,1).holidays(r)[0][:name]
end

[:de_be, :de_hb, :de_hh, :de_ni, :de_sh].each do |r|
  assert_equal 'Tag der Deutschen Einheit', Date.civil(2009,10,3).holidays(r)[0][:name]
end

[:de_be, :de_hb, :de_hh, :de_ni, :de_sh].each do |r|
  assert !Date.civil(2009,1,6).holiday?(r), "Heilige Drei Könige is not a holiday in #{r}"
end

[:de_be, :de_hb, :de_hh, :de_ni, :de_sh].each do |r|
  assert !Date.civil(2009,6,11).holiday?(r), "Fronleichnam is not a holiday in #{r}"
end

[:de_be, :de_hb, :de_hh, :de_ni, :de_sh].each do |r|
  assert !Date.civil(2009,8,15).holiday?(r), "Mariä Himmelfahrt is not a holiday in #{r}"
end

[:de_be, :de_hb, :de_hh, :de_ni, :de_sh].each do |r|
  assert !Date.civil(2009,10,31).holiday?(r), 'Reformationstag is not a holiday in #{r}'
end

[:de_be, :de_hb, :de_hh, :de_ni, :de_sh].each do |r|
  assert !Date.civil(2009,11,1).holiday?(r), "Allerheiligen is not a holiday in #{r}"
end

assert !Date.civil(2010,5,8).holiday?(:de), '2010-05-08 is not a holiday in Germany'

# Repentance Day
assert_equal 'Buß- und Bettag', Date.civil(2004,11,17).holidays(:de_sn)[0][:name]
assert_equal 'Buß- und Bettag', Date.civil(2005,11,16).holidays(:de_sn)[0][:name]
assert_equal 'Buß- und Bettag', Date.civil(2006,11,22).holidays(:de_sn)[0][:name]
assert_equal 'Buß- und Bettag', Date.civil(2009,11,18).holidays(:de_sn)[0][:name]


{Date.civil(2011,1,1) => 'Πρωτοχρονιά', 
 Date.civil(2011,1,6) => 'Θεοφάνεια',
 Date.civil(2011,4,22) => 'Μεγάλη Παρασκευή', 
 Date.civil(1970,4,25) => 'Μεγάλο Σάββατο', 
 Date.civil(1985,4,14) => 'Κυριακή του Πάσχα', 
 Date.civil(2011,4,24) => 'Κυριακή του Πάσχα', 
 Date.civil(2027,5,2) => 'Κυριακή του Πάσχα', 
 Date.civil(2046,4,30) => 'Δευτέρα του Πάσχα',
 Date.civil(2011,5,1) => 'Πρωτομαγιά',
 Date.civil(2011,6,13) => 'Αγίου Πνεύματος',
 Date.civil(2012,6,4) => 'Αγίου Πνεύματος',
 Date.civil(2011,3,7) => 'Καθαρά Δευτέρα',
 Date.civil(2012,2,27) => 'Καθαρά Δευτέρα',
 Date.civil(2011,12,25) => 'Χριστούγεννα',
 Date.civil(2011,12,26) => 'Δεύτερη ημέρα των Χριστουγέννων'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :el, :informal)[0] || {})[:name]
end

{Date.civil(2009,1,1) => 'Año Nuevo',
 Date.civil(2009,1,6) => 'Día de Reyes',
 Date.civil(2009,4,10) => 'Viernes Santo',
 Date.civil(2009,5,1) => 'Día del Trabajador',
 Date.civil(2009,8,15) => 'Asunción',
 Date.civil(2009,10,12) => 'Día de la Hispanidad',
 Date.civil(2009,11,1) => 'Todos los Santos',
 Date.civil(2009,12,6) => 'Día de la Constitución',
 Date.civil(2009,12,8) => 'Inmaculada Concepción',
 Date.civil(2009,12,25) => 'Navidad del Señor'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :es, :informal)[0] || {})[:name]
end

[:es_pv, :es_na, :es_an, :es_ib, :es_cm, :es_mu, :es_m, :es_ar, :es_cl, :es_cn, :es_lo, :es_ga, :es_ce, :es_o, :es_ex, :es_].each do |r|
  assert_equal 'Jueves Santo', Date.civil(2009,4,9).holidays(r)[0][:name]
end
[:es_pv, :es_ct, :es_na, :es_v, :es_vc, :es_].each do |r|
  assert_equal 'Lunes de Pascua', Date.civil(2009,4,13).holidays(r)[0][:name]
end

assert_equal 'Jueves Santo', Date.civil(2009,4,9).holidays(:es_an)[0][:name]

[:es_v, :es_vc, :es_cm, :es_mu, :es_m, :es_].each do |r|
  assert_equal 'San José', Date.civil(2009,3,19).holidays(r)[0][:name]
end

[:es_cl].each do |r|
  assert_equal 'Día de Castilla y León', Date.civil(2009,4,23).holidays(r)[0][:name]
end

[:es_ar].each do |r|
  assert_equal 'San Jorge, Día de Aragón', Date.civil(2009,4,23).holidays(r)[0][:name]
end

[:es_].each do |r|
  assert_equal 'Día de Castilla y León', Date.civil(2009,4,23).holidays(r)[0][:name]
  assert_equal 'San Jorge, Día de Aragón', Date.civil(2009,4,23).holidays(r)[1][:name]
end

[:es_vc, :es_v, :es_].each do |r|
  assert_equal 'Día de Valencia', Date.civil(2009,10,9).holidays(r)[0][:name]
end

[:es_ib, :es_ct, :es_].each do |r|
  assert_equal 'San Esteban', Date.civil(2009,12,26).holidays(r)[0][:name]
end

assert_equal 'Año Nuevo', Date.civil(2012,1,1).holidays(:es)[0][:name]
assert_equal 'Año Nuevo', Date.civil(2012,1,2).holidays(:es, :observed)[0][:name]
assert_equal 'Día de Andalucía', Date.civil(2009,2,28).holidays(:es_an)[0][:name]
assert_equal 'Día de las Islas Baleares', Date.civil(2009,3,1).holidays(:es_ib)[0][:name]
assert_equal 'Fiesta de la Comunidad', Date.civil(2006,5,2).holidays(:es_m)[0][:name]
assert_equal 'Día de las Canarias', Date.civil(2006,5,30).holidays(:es_cn)[0][:name]
assert_equal 'Día de la Región Castilla-La Mancha', Date.civil(2009,5,31).holidays(:es_cm)[0][:name]
assert_equal 'Día de la Región de Murcia', Date.civil(2009,6,9).holidays(:es_mu)[0][:name]
assert_equal 'Día de La Rioja', Date.civil(2009,6,9).holidays(:es_lo)[0][:name]
assert_equal 'Santiago Apostol', Date.civil(2009,7,23).holidays(:es_ga)[0][:name]
assert_equal 'Día de Ceuta', Date.civil(2009,9,2).holidays(:es_ce)[0][:name]
assert_equal 'Día de Asturias', Date.civil(2009,9,8).holidays(:es_o)[0][:name]
assert_equal 'Día de Extremadura', Date.civil(2009,9,8).holidays(:es_ex)[0][:name]
assert_equal 'Fiesta Nacional de Cataluña', Date.civil(2009,9,11).holidays(:es_ct)[0][:name]


{Date.civil(2007,1,1) => 'Jour de l\'an',
 Date.civil(2007,4,9) => 'Lundi de Pâques',
 Date.civil(2007,5,1) => 'Fête du travail',
 Date.civil(2007,5,8) => 'Victoire 1945',
 Date.civil(2007,5,17) => 'Ascension',
 Date.civil(2007,5,28) => 'Lundi de Pentecôte',
 Date.civil(2007,7,14) => 'Fête nationale',
 Date.civil(2007,8,15) => 'Assomption',
 Date.civil(2007,11,1) => 'Toussaint',
 Date.civil(2007,11,11) => 'Armistice 1918',
 Date.civil(2007,12,25) => 'Noël'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :fr)[0] || {})[:name]
end
{Date.civil(2007,4,8) => 'Pâques',
 Date.civil(2007,5,27) => 'Pentecôte'}.each do |date, name|
  assert_nil (Holidays.on(date, :fr)[0] || {})[:name]
  assert_equal name, (Holidays.on(date, :fr, :informal)[0] || {})[:name]
end


{Date.civil(2008,3,21) => 'Good Friday',
 Date.civil(2008,3,23) => 'Easter Sunday',
 Date.civil(2008,5,5) => 'May Day',
 Date.civil(2008,5,26) => 'Bank Holiday',
 Date.civil(2008,11,5) => 'Guy Fawkes Day',
 Date.civil(2008,12,25) => 'Christmas Day',
 Date.civil(2008,12,26) => 'Boxing Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :gb, :informal)[0] || {})[:name]
end

assert_equal 'St. Patrick\'s Day', Date.civil(2008,3,17).holidays(:gb_nir, :informal)[0][:name]
assert_equal 'St. Andrew\'s Day', Date.civil(2008,11,30).holidays(:gb_sct, :informal)[0][:name]

assert_equal 'Christmas Day', Date.civil(2008,12,25).holidays(:gb_, :observed)[0][:name]
assert_equal 'Christmas Day', Date.civil(2009,12,25).holidays(:gb_, :observed)[0][:name]
assert_equal 'Christmas Day', Date.civil(2010,12,27).holidays(:gb_, :observed)[0][:name]

assert_equal 'Boxing Day', Date.civil(2008,12,26).holidays(:gb_, :observed)[0][:name]
assert_equal 'Boxing Day', Date.civil(2009,12,28).holidays(:gb_, :observed)[0][:name]
assert_equal 'Boxing Day', Date.civil(2010,12,28).holidays(:gb_, :observed)[0][:name]
assert_equal 'Boxing Day', Date.civil(2011,12,27).holidays(:gb_, :observed)[0][:name]

assert_equal 'New Year\'s Day', Date.civil(2010,1,1).holidays(:gb, :observed)[0][:name]
assert_equal 'New Year\'s Day', Date.civil(2011,1,3).holidays(:gb, :observed)[0][:name]
assert_equal 'New Year\'s Day', Date.civil(2012,1,2).holidays(:gb, :observed)[0][:name]

assert_equal '2nd January', Date.civil(2010,1,4).holidays(:gb_sct, :observed)[0][:name]
assert_equal '2nd January', Date.civil(2011,1,4).holidays(:gb_sct, :observed)[0][:name]
assert_equal '2nd January', Date.civil(2012,1,3).holidays(:gb_sct, :observed)[0][:name]
assert_equal '2nd January', Date.civil(2013,1,2).holidays(:gb_sct, :observed)[0][:name]
assert_equal '2nd January', Date.civil(2014,1,2).holidays(:gb_sct, :observed)[0][:name]

[:gb_wls, :gb_eng, :gb_nir, :gb_eaw, :gb_].each do |r|
  assert_equal 'Easter Monday', Date.civil(2008,3,24).holidays(r)[0][:name]
  assert_equal 'Bank Holiday', Date.civil(2008,8,25).holidays(r)[0][:name]
end


{Date.civil(2012,1,1) => 'Nova godina', 
 Date.civil(2012,1,6) => 'Sveta tri kralja', 
 Date.civil(2012,5,1) => 'Međunarodni praznik rada',
 Date.civil(2012,6,22) => 'Dan antifašističke borbe',
 Date.civil(2012,6,25) => 'Dan državnosti',
 Date.civil(2012,8,5) => 'Dan pobjede i domovinske zahvalnosti i dan hrvatskih branitelja',
 Date.civil(2012,8,15) => 'Velika Gospa',
 Date.civil(2012,10,8) => 'Dan neovisnosti',
 Date.civil(2012,11,1) => 'Dan svih svetih',
 Date.civil(2012,12,25) => 'Božić',
 Date.civil(2012,12,26) => 'Sveti Stjepan'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :hr, :informal)[0] || {})[:name]
end

# Tijelovo
[Date.civil(2008,5,22), Date.civil(2009,6,11), Date.civil(2010,6,3),
 Date.civil(2012,6,7), Date.civil(2013,5,30), Date.civil(2014,6,19)].each do |date|
  assert_equal 'Tijelovo', Holidays.on(date, :hr)[0][:name]
end


{Date.civil(2012,1,1) => 'Újév', 
 Date.civil(2011,1,1) => 'Újév', 
 Date.civil(2012,3,15) => '1848/49-es forradalom és szabadságharc ünnepe',
 Date.civil(2011,4,25) => 'Húsvét hétfő',
 Date.civil(2012,4,9) => 'Húsvét hétfő',
 Date.civil(2012,5,1) => 'A munka ünnepe',
 Date.civil(2011,6,13) => 'Pünkösd hétfő',
 Date.civil(2012,5,28) => 'Pünkösd hétfő',
 Date.civil(2012,8,20) => 'Az államalapítás ünnepe',
 Date.civil(2012,10,23) => '1956-os forradalom és szabadságharc ünnepe',
 Date.civil(2012,11,1) => 'Mindenszentek',
 Date.civil(2012,12,25) => 'Karácsony',
 Date.civil(2012,12,26) => 'Karácsony',}.each do |date, name|
  assert_equal name, (Holidays.on(date, :hu, :informal)[0] || {})[:name]
end

assert !Date.civil(2012,3,14).holiday?(:hu), '2012-03-14 is not a holiday in Hungary'


{Date.civil(2008,1,1) => 'New Year\'s Day', 
 Date.civil(2008,3,17) => 'St. Patrick\'s Day',
 Date.civil(2008,3,24) => 'Easter Monday',
 Date.civil(2008,5,5) => 'May Day',
 Date.civil(2008,6,2) => 'June Bank Holiday',
 Date.civil(2008,8,4) => 'August Bank Holiday',
 Date.civil(2008,10,27) => 'October Bank Holiday',
 Date.civil(2008,12,25) => 'Christmas Day',
 Date.civil(2008,12,26) => 'St. Stephen\'s Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ie)[0] || {})[:name]
end
{Date.civil(2012,1,2) => 'New Year\'s Day', 
 Date.civil(2012,3,19) => 'St. Patrick\'s Day',
 Date.civil(2012,4,9) => 'Easter Monday',
 Date.civil(2012,5,7) => 'May Day',
 Date.civil(2012,6,4) => 'June Bank Holiday',
 Date.civil(2012,8,6) => 'August Bank Holiday',
 Date.civil(2012,10,29) => 'October Bank Holiday',
 Date.civil(2011,12,26) => 'Christmas Day',
 Date.civil(2011,12,27) => 'St. Stephen\'s Day',
 Date.civil(2012,12,25) => 'Christmas Day',
 Date.civil(2012,12,26) => 'St. Stephen\'s Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ie, :observed)[0] || {})[:name]
end


{Date.civil(2007,1,1) => 'Nýársdagur', 
 Date.civil(2007,1,6) => 'Þrettándinn',
 Date.civil(2007,1,19) => 'Bóndadagur',
 Date.civil(2007,2,18) => 'Konudagur',
 Date.civil(2007,4,5) => 'Skírdagur',
 Date.civil(2007,4,6) => 'Föstudaginn langi',
 Date.civil(2007,4,8) => 'Páskadagur',
 Date.civil(2007,4,9) => 'Annar í páskum',
 Date.civil(2007,4,19) => 'Sumardagurinn fyrsti',
 Date.civil(2007,5,1) => 'Verkalýðsdagurinn',
 Date.civil(2007,5,17) => 'Uppstigningardagur',
 Date.civil(2007,5,27) => 'Hvítasunnudagur',
 Date.civil(2007,5,28) => 'Annar í hvítasunnu',
 Date.civil(2007,6,3) => 'Sjómannadagurinn',
 Date.civil(2007,6,17) => 'Lýðveldisdagurinn',
 Date.civil(2007,8,6) => 'Frídagur verslunarmanna',
 Date.civil(2007,12,24) => 'Jól',
 Date.civil(2007,12,25) => 'Jól',
 Date.civil(2007,12,26) => 'Jól',
 Date.civil(2007,12,31) => 'Gamlárskvöld'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :is, :informal)[0] || {})[:name]
end

{Date.civil(2007,1,1) => 'Capodanno', 
 Date.civil(2007,1,6) => 'Epifania',
 Date.civil(2007,4,8) => 'Pasqua',
 Date.civil(2007,4,9) => 'Lunedì dell\'Angelo',
 Date.civil(2007,4,25) => 'Festa della Liberazione',
 Date.civil(2007,5,1) => 'Festa dei Lavoratori',
 Date.civil(2007,6,2) => 'Festa della Repubblica',
 Date.civil(2007,8,15) => 'Assunzione',
 Date.civil(2007,11,1) => 'Ognissanti',
 Date.civil(2007,12,8) => 'Immacolata Concezione',
 Date.civil(2007,12,25) => 'Natale',
 Date.civil(2007,12,26) => 'Santo Stefano'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :it, :informal)[0] || {})[:name]
end

{Date.civil(2009,1,1) => 'Neujahrstag', 
 Date.civil(2011,3,8) => 'Fasnachtsdienstag',
 Date.civil(2009,4,10) => 'Karfreitag',
 Date.civil(2009,4,12) => 'Ostern',
 Date.civil(2009,4,13) => 'Ostermontag',
 Date.civil(2009,5,21) => 'Auffahrt',
 Date.civil(2009,6,1) => 'Pfingstmontag',
 Date.civil(2009,12,25) => 'Weihnachten',
 Date.civil(2009,12,26) => 'Stefanstag'}.each do |date, name|
  assert_equal name, Holidays.on(date, :li, :informal)[0][:name]
end

[:li].each do |r|
  assert_equal 'Fronleichnam', Date.civil(2009,6,11).holidays(r)[0][:name]
end

[:li].each do |r|
  assert_equal 'Staatsfeiertag', Date.civil(2009,8,15).holidays(r)[0][:name]
end

[:li].each do |r|
  assert_equal 'Allerheiligen', Date.civil(2009,11,1).holidays(r)[0][:name]
end


{Date.civil(2008,1,1) => 'Naujieji metai',
 Date.civil(2008,2,16) => 'Valstybės atkūrimo diena',
 Date.civil(2008,3,11) => 'Nepriklausomybės atkūrimo diena',
 Date.civil(2008,3,23) => 'Šv. Velykos',
 Date.civil(2008,3,24) => 'Antroji Velykų diena',
 Date.civil(2008,5,1) => 'Darbininkų diena',
 Date.civil(2008,6,24) => 'Joninės',
 Date.civil(2008,7,6) => 'Valstybės diena',
 Date.civil(2008,8,15) => 'Žolinė',
 Date.civil(2008,11,1) => 'Visų šventųjų diena',
 Date.civil(2008,12,24) => 'Šv. Kūčios',
 Date.civil(2008,12,25) => 'Šv. Kalėdos',
 Date.civil(2008,12,26) => 'Antroji Kalėdų diena'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :lt)[0] || {})[:name]
end
{Date.civil(2012,1,1) => 'Naujieji metai',
 Date.civil(2012,2,16) => 'Valstybės atkūrimo diena',
 Date.civil(2012,3,11) => 'Nepriklausomybės atkūrimo diena',
 Date.civil(2012,4,8) => 'Šv. Velykos',
 Date.civil(2012,4,9) => 'Antroji Velykų diena',
 Date.civil(2012,5,1) => 'Darbininkų diena',
 Date.civil(2012,6,24) => 'Joninės',
 Date.civil(2012,7,6) => 'Valstybės diena',
 Date.civil(2012,8,15) => 'Žolinė',
 Date.civil(2012,11,1) => 'Visų šventųjų diena',
 Date.civil(2012,12,24) => 'Šv. Kūčios',
 Date.civil(2012,12,25) => 'Šv. Kalėdos',
 Date.civil(2012,12,26) => 'Antroji Kalėdų diena'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :lt)[0] || {})[:name]
end


{Date.civil(2008,1,1) => 'Nieuwjaar',
 Date.civil(2008,3,21) => 'Goede Vrijdag',
 Date.civil(2008,3,23) => 'Pasen',
 Date.civil(2008,3,24) => 'Pasen',
 Date.civil(2008,4,27) => 'Koningsdag',
 Date.civil(2008,5,1) => 'Hemelvaartsdag', # Ascension, Easter+39
 Date.civil(2008,5,5) => 'Bevrijdingsdag',
 Date.civil(2008,5,11) => 'Pinksteren', # Pentecost, Easter+49
 Date.civil(2008,5,12) => 'Pinksteren', # Pentecost, Easter+50
 Date.civil(2008,12,25) => 'Kerstmis',
 Date.civil(2008,12,26) => 'Kerstmis'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :nl, :informal)[0] || {})[:name]
end

{Date.civil(2010,1,1) => 'Nyttårsdag',
 Date.civil(2010,5,1) => '1. mai',
 Date.civil(2010,5,17) => '17. mai',
 Date.civil(2010,12,24) => 'Julaften',
 Date.civil(2010,12,25) => '1. juledag',
 Date.civil(2010,12,26) => '2. juledag',
 Date.civil(2010,12,31) => 'Nyttårsaften',
 Date.civil(2010,2,14) => 'Fastelavn',
 Date.civil(2010,3,28) => 'Palmesøndag',
 Date.civil(2010,4,1) => 'Skjærtorsdag',
 Date.civil(2010,4,2) => 'Langfredag',
 Date.civil(2010,4,4) => '1. påskedag',
 Date.civil(2010,4,5) => '2. påskedag',
 Date.civil(2010,5,13) => 'Kristi Himmelfartsdag',
 Date.civil(2010,5,23) => '1. pinsedag',
 Date.civil(2010,5,24) => '2. pinsedag'}.each do |date, name|
   assert_equal name, (Holidays.on(date, :no, :informal)[0] || {})[:name]
 end

{Date.civil(2011,1,1) => 'Nowy Rok',
Date.civil(2011,5,1) => 'Święto Państwowe (Święto Pracy)',
Date.civil(2011,5,3) => 'Święto Narodowe Trzeciego Maja',
Date.civil(2011,11,1) => 'Wszystkich Świętych',
Date.civil(2011,11,11) => 'Narodowe Święto Niepodległości',
Date.civil(2011,12,25) => 'pierwszy dzień Bożego Narodzenia',
Date.civil(2011,12,26) => 'drugi dzień Bożego Narodzenia'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :pl)[0] || {})[:name]
end

# informal
{Date.civil(2011,1,21) => 'Dzień Babci',
Date.civil(2011,1,22) => 'Dzień Dziadka',
Date.civil(2011,2,2) => 'Ofiarowanie Pańskie (Matki Boskiej Gromnicznej)',
Date.civil(2011,2,14) => 'Dzień Zakochanych (Walentynki)',
Date.civil(2010,3,8) => 'Dzień Kobiet',
Date.civil(2011,3,10) => 'Dzień Mężczyzn',
Date.civil(2011,4,1) => 'Prima Aprilis',
Date.civil(2010,4,22) => 'Międzynarodowy Dzień Ziemi',
Date.civil(2011,5,2) => 'Dzień Flagi Rzeczpospolitej Polskiej',
Date.civil(2010,6,23) => 'Dzień Ojca',
Date.civil(2011,9,30) => 'Dzień Chłopaka',
Date.civil(2011,10,14) => 'Dzień Nauczyciela (Dzień Edukacji Narodowej)',
Date.civil(2011,11,2) => 'Dzień Zaduszny',
Date.civil(2011,11,29) => 'Andrzejki',
Date.civil(2011,12,4) => 'Barbórka (Dzień Górnika, Naftowca i Gazownika)',
Date.civil(2011,12,6) => 'Mikołajki',
Date.civil(2011,12,24) => 'Wigilia Bożego Narodzenia',
Date.civil(2011,12,31) => 'Sylwester'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end

# informal
{Date.civil(2011,1,21) => 'Dzień Babci',
Date.civil(2011,1,22) => 'Dzień Dziadka',
Date.civil(2011,2,2) => 'Ofiarowanie Pańskie (Matki Boskiej Gromnicznej)',
Date.civil(2011,2,14) => 'Dzień Zakochanych (Walentynki)',
Date.civil(2010,3,8) => 'Dzień Kobiet',
Date.civil(2011,3,10) => 'Dzień Mężczyzn',
Date.civil(2011,4,1) => 'Prima Aprilis',
Date.civil(2010,4,22) => 'Międzynarodowy Dzień Ziemi',
Date.civil(2011,5,2) => 'Dzień Flagi Rzeczpospolitej Polskiej',
Date.civil(2010,6,23) => 'Dzień Ojca',
Date.civil(2011,9,30) => 'Dzień Chłopaka',
Date.civil(2011,10,14) => 'Dzień Nauczyciela (Dzień Edukacji Narodowej)',
Date.civil(2011,11,2) => 'Dzień Zaduszny',
Date.civil(2011,11,29) => 'Andrzejki',
Date.civil(2011,12,4) => 'Barbórka (Dzień Górnika, Naftowca i Gazownika)',
Date.civil(2011,12,6) => 'Mikołajki',
Date.civil(2011,12,24) => 'Wigilia Bożego Narodzenia',
Date.civil(2011,12,31) => 'Sylwester'}.each do |date, name|
  assert_equal nil, (Holidays.on(date, :pl)[0] || {})[:name]
end

# Objawienie Pańskie (święto Trzech Króli) -- formal since 2011
[Date.civil(2008,1,6), Date.civil(2009,1,6), Date.civil(2010,1,6)].each do |date|
  assert_equal nil, (Holidays.on(date, :pl)[0] || {})[:name]
end
[Date.civil(2008,1,6), Date.civil(2009,1,6), Date.civil(2010,1,6)].each do |date|
  assert_equal 'Objawienie Pańskie (święto Trzech Króli)', (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end
[Date.civil(2011,1,6), Date.civil(2012,1,6), Date.civil(2013,1,6)].each do |date|
  assert_equal 'Objawienie Pańskie (święto Trzech Króli)', (Holidays.on(date, :pl)[0] || {})[:name]
end

# Tłusty Czwartek
[Date.civil(2008,1,31), Date.civil(2009,2,19), Date.civil(2010,2,11),
 Date.civil(2011,3,3), Date.civil(2012,2,16)].each do |date|
  assert_equal 'Tłusty Czwartek', (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end

# Ostatki
[Date.civil(2008,2,5), Date.civil(2009,2,24), Date.civil(2010,2,16),
 Date.civil(2011,3,8), Date.civil(2012,2,21)].each do |date|
  assert_equal 'Ostatki', (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end

# Środa Popielcowa
[Date.civil(2008,2,6), Date.civil(2009,2,25), Date.civil(2010,2,17),
 Date.civil(2011,3,9), Date.civil(2012,2,22)].each do |date|
  assert_equal 'Środa Popielcowa', (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end

# Niedziela Palmowa
[Date.civil(2008,3,16), Date.civil(2009,4,5), Date.civil(2010,3,28),
 Date.civil(2011,4,17), Date.civil(2012,4,1)].each do |date|
  assert_equal 'Niedziela Palmowa', (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end

# Wielki Czwartek
[Date.civil(2008,3,20), Date.civil(2009,4,9), Date.civil(2010,4,1),
 Date.civil(2011,4,21), Date.civil(2012,4,5)].each do |date|
  assert_equal 'Wielki Czwartek', (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end

# Wielki Piątek
[Date.civil(2008,3,21), Date.civil(2009,4,10), Date.civil(2010,4,2),
 Date.civil(2011,4,22), Date.civil(2012,4,6)].each do |date|
  assert_equal 'Wielki Piątek', (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end

# Wielka Sobota
[Date.civil(2008,3,22), Date.civil(2009,4,11), Date.civil(2010,4,3),
 Date.civil(2011,4,23), Date.civil(2012,4,7)].each do |date|
  assert_equal 'Wielka Sobota', (Holidays.on(date, :pl, :informal)[0] || {})[:name]
end

# Niedziela Wielkanocna
[Date.civil(2008,3,23), Date.civil(2009,4,12), Date.civil(2010,4,4),
 Date.civil(2011,4,24), Date.civil(2012,4,8)].each do |date|
  assert_equal 'Niedziela Wielkanocna', (Holidays.on(date, :pl)[0] || {})[:name]
end

# Poniedziałek Wielkanocny (Lany Poniedziałek)
[Date.civil(2008,3,24), Date.civil(2009,4,13), Date.civil(2010,4,5),
 Date.civil(2011,4,25), Date.civil(2012,4,9)].each do |date|
  assert_equal 'Poniedziałek Wielkanocny (Lany Poniedziałek)', (Holidays.on(date, :pl)[0] || {})[:name]
end

# Zesłanie Ducha Świętego (Zielone Świątki)
[Date.civil(2008,5,11), Date.civil(2009,5,31), Date.civil(2010,5,23),
 Date.civil(2011,6,12), Date.civil(2012,5,27)].each do |date|
  assert_equal 'Zesłanie Ducha Świętego (Zielone Świątki)', (Holidays.on(date, :pl)[0] || {})[:name]
end

# Uroczystość Najświętszego Ciała i Krwi Pańskiej (Boże Ciało)
[Date.civil(2008,5,22), Date.civil(2009,6,11), Date.civil(2010,6,3),
 Date.civil(2011,6,23), Date.civil(2012,6,7)].each do |date|
  assert_equal 'Uroczystość Najświętszego Ciała i Krwi Pańskiej (Boże Ciało)', (Holidays.on(date, :pl)[0] || {})[:name]
end

# Wniebowzięcie Najświętszej Maryi Panny & Święto Wojska Polskiego
  assert_equal 'Wniebowzięcie Najświętszej Maryi Panny', (Holidays.on(Date.civil(2011,8,15), :pl)[0] || {})[:name]
  assert_equal 'Święto Wojska Polskiego', (Holidays.on(Date.civil(2011,8,15), :pl)[1] || {})[:name]

{Date.civil(2008,1,1) => 'Ano Novo',
 Date.civil(2005,2,8) => 'Carnaval',
 Date.civil(2006,2,28) => 'Carnaval',
 Date.civil(2007,2,20) => 'Carnaval',
 Date.civil(2008,2,5) => 'Carnaval',
 Date.civil(2008,3,21) => 'Sexta-feira Santa',
 Date.civil(2008,3,23) => 'Páscoa',
 Date.civil(2008,4,25) => 'Dia da Liberdade',
 Date.civil(2008,5,1) => 'Dia do Trabalhador',
 Date.civil(2008,6,10) => 'Dia de Portugal',
 Date.civil(2008,8,15) => 'Assunção de Nossa Senhora',
 Date.civil(2008,12,8) => 'Imaculada Conceição',
 Date.civil(2008,12,25) => 'Natal'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :pt, :informal)[0] || {})[:name]
end


{
 Date.civil(1961,4,9) => 'Paștele',
 Date.civil(1961,4,10) => 'Paștele',
 Date.civil(2013,5,5) => 'Paștele',
 Date.civil(2013,5,6) => 'Paștele',
 Date.civil(2027,5,2) => 'Paștele',
 Date.civil(2027,5,3) => 'Paștele',
 Date.civil(2012,6,4) => 'Rusaliile',
 Date.civil(2013,6,23) => 'Rusaliile',
 Date.civil(2013,6,24) => 'Rusaliile',
 Date.civil(1986,6,22) => 'Rusaliile',
 Date.civil(1986,6,23) => 'Rusaliile',
 Date.civil(2009,1,1) => 'Anul nou',
 Date.civil(2014,1,2) => 'Anul nou',
 Date.civil(2009,5,1) => 'Ziua muncii',
 Date.civil(2012,8,15) => 'Adormirea Maicii Domnului',
 Date.civil(2013,11,30) => 'Sfântul Apostol Andrei',
 Date.civil(2013,12,1) => 'Ziua Națională',
 Date.civil(2013,12,25) => 'Sărbătoarea Nașterii Domnului',
 Date.civil(2013,12,26) => 'Sărbătoarea Nașterii Domnului'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ro, :informal)[0] || {})[:name]
 end

 assert !Date.civil(2013,7,23).holiday?(:ro), '2010-07-23 is not a holiday in Romania'
 assert !Date.civil(2013,7,23).holiday?(:ro), '2010-07-23 is not a holiday in Romania'


{Date.civil(2013,1,1) => 'Nový rok',
 Date.civil(2013,1,6) => 'Zjavenie Pána (Traja králi)',
 Date.civil(2013,3,29) => 'Veľký piatok',
 Date.civil(2013,4,1) => 'Veľkonočný pondelok',
 Date.civil(2013,5,1) => 'Sviatok práce',
 Date.civil(2013,5,8) => 'Deň víťazstva nad fašizmom',
 Date.civil(2013,7,5) => 'Sviatok svätého Cyrila a svätého Metoda',
 Date.civil(2013,8,29) => 'Výročie Slovenského národného povstania',
 Date.civil(2013,9,1) => 'Deň Ústavy Slovenskej republiky',
 Date.civil(2013,9,15) => 'Sedembolestná Panna Mária',
 Date.civil(2013,11,1) => 'Sviatok všetkých svätých',
 Date.civil(2013,11,17) => 'Deň boja za slobodu a demokraciu',
 Date.civil(2013,12,24) => 'Štedrý deň',
 Date.civil(2013,12,25) => '1. sviatok vianočný',
 Date.civil(2013,12,26) => '2. sviatok vianočný'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :sk, :informal)[0] || {})[:name]
end


assert_equal 'velikonočna nedelja', Date.civil(2015,4,5).holidays(:si)[0][:name]
assert_equal 'velikonočna nedelja', Date.civil(2016,3,27).holidays(:si)[0][:name]

assert_equal 'velikonočni ponedeljek', Date.civil(2015,4,6).holidays(:si)[0][:name]
assert_equal 'velikonočni ponedeljek', Date.civil(2016,3,28).holidays(:si)[0][:name]

assert_equal 'binkošti', Date.civil(2015,5,24).holidays(:si)[0][:name]
assert_equal 'binkošti', Date.civil(2016,5,15).holidays(:si)[0][:name]

(2014..2020).each do |year|
  {Date.civil(year,1,1) => 'novo leto',
   Date.civil(year,2,8) => 'Prešernov dan, slovenski kulturni praznik',
   Date.civil(year,4,27) => 'dan upora proti okupatorju',
   Date.civil(year,5,1) => 'praznik dela',
   Date.civil(year,5,2) => 'praznik dela',
   Date.civil(year,6,25) => 'dan državnosti',
   Date.civil(year,8,15) => 'Marijino vnebovzetje',
   Date.civil(year,10,31) => 'dan reformacije',
   Date.civil(year,11,1) => 'dan spomina na mrtve',
   Date.civil(year,12,25) => 'božič',
   Date.civil(2008,12,26) => 'dan samostojnosti in enotnosti'}.each do |date, name|
    assert_equal name, (Holidays.on(date, :si, :informal)[0] || {})[:name]
  end
end

  end
end
