#clear recurring round functions
schedule clear sqweedy:bs/game/check-block
schedule clear sqweedy:bs/game/round-end

#reset scoreboard
scoreboard players set #doneChallengePys bs.dummy 0
bossbar set bs:timer visible false

title @a title {"text":" "}
title @a subtitle [{"text":"Round Restarting...","color":"#ffa33f"}]
scoreboard players set #countdown bs.start 15
function sqweedy:bs/game/start-countdown