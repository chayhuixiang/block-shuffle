#announce skipping round
title @a title " "
title @a subtitle {"text":"Skipping round…","color":"#ffa33f"}

#clear recurring round functions
schedule clear sqweedy:bs/game/check-block
schedule clear sqweedy:bs/game/round-end

#round ends in 5s
schedule function sqweedy:bs/game/round-end 5s