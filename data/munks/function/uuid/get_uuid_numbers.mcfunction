$execute if score UUID.$(index) munks.var matches 0.. run function munks:uuid/get_uuid_numbers_pos {index:$(index),0:$(0),1:$(1),2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7)}
$execute if score UUID.$(index) munks.var matches ..-1 run function munks:uuid/get_uuid_numbers_neg {index:$(index),0:$(0),1:$(1),2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7)}
$data modify storage munks:variables UUID.$(0).id set value $(0)
$data modify storage munks:variables UUID.$(1).id set value $(1)
$data modify storage munks:variables UUID.$(2).id set value $(2)
$data modify storage munks:variables UUID.$(3).id set value $(3)
$data modify storage munks:variables UUID.$(4).id set value $(4)
$data modify storage munks:variables UUID.$(5).id set value $(5)
$data modify storage munks:variables UUID.$(6).id set value $(6)
$data modify storage munks:variables UUID.$(7).id set value $(7)

$function munks:uuid/hex_convert with storage munks:variables UUID.$(0)
$function munks:uuid/hex_convert with storage munks:variables UUID.$(1)
$function munks:uuid/hex_convert with storage munks:variables UUID.$(2)
$function munks:uuid/hex_convert with storage munks:variables UUID.$(3)
$function munks:uuid/hex_convert with storage munks:variables UUID.$(4)
$function munks:uuid/hex_convert with storage munks:variables UUID.$(5)
$function munks:uuid/hex_convert with storage munks:variables UUID.$(6)
$function munks:uuid/hex_convert with storage munks:variables UUID.$(7)