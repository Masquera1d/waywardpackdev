
# unpower it
#execute if block ~ ~ ~ lever[powered=false] run playsound minecraft:block.lever.click ambient @a[distance=..15] ~ ~ ~ 1 .5

#fill ~ ~ ~ ~ ~ ~ lever[face=ceiling,powered=false] replace lever[face=ceiling,powered=true]
#fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=east,powered=false] replace lever[face=wall,facing=east,powered=true]
#fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=north,powered=false] replace lever[face=wall,facing=north,powered=true]
#fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=south,powered=false] replace lever[face=wall,facing=south,powered=true]
#fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=west,powered=false] replace lever[face=wall,facing=west,powered=true]
#fill ~ ~ ~ ~ ~ ~ lever[face=floor,powered=false] replace lever[face=floor,powered=true]






# power it
execute if block ~ ~ ~ lever[powered=false] run playsound minecraft:block.lever.click ambient @a[distance=..15] ~ ~ ~ 1 .6

fill ~ ~ ~ ~ ~ ~ lever[face=ceiling,powered=true] replace lever[face=ceiling,powered=false]
fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=east,powered=true] replace lever[face=wall,facing=east,powered=false]
fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=north,powered=true] replace lever[face=wall,facing=north,powered=false]
fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=south,powered=true] replace lever[face=wall,facing=south,powered=false]
fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=west,powered=true] replace lever[face=wall,facing=west,powered=false]
fill ~ ~ ~ ~ ~ ~ lever[face=floor,powered=true] replace lever[face=floor,powered=false]


