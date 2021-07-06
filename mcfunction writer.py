import pandas as pd
easy = 'Overworld Blocks (Easy)'
normal = '+ Nether'
hard = '+ Overworld Blocks (Hard)'
insane = '+ End'
four = 430
five = [430,516]
six = [516,606]
with open('announce-block/6.mcfunction','a') as fhand:
    for i in range(607,636):
        constant = six[1]
        readcell = i-constant
        data = pd.read_excel(io="1.17 Block List Final.xlsx", sheet_name=insane,index_col=None, usecols = "B", header = readcell, nrows=0)
        blockString = data.columns.values[0]
        fhand.write('execute if score #block bs.dummy matches '+str(i)+' run tellraw @a [{"text":"You must find and stand on ","color":"dark_green"},{"text":"'+blockString+'","color":"green"}]\n')

        #'execute if score #block bs.dummy matches '+str(i)+' run execute at @s if block ~ ~ ~ '+blockString+' run tag @s add found\n'+'execute if score #block bs.dummy matches '+str(i)+' run execute at @s if block ~ ~-1 ~ '+blockString+' run tag @s add found\n'