# Creative Dimension
**Creative Dimension** is a **Minecraft datapack** that add a **flat creative dimension** to your world.

This dimension is only composed of **one layer** of grass block at coordinate **Y = 0**. 
There is no **structures**, no **monsters**, no **rains**, no **day-night cycle** and a **constant ambient light**.


## In game commands
### `/function teleport:load`

This function **loads the datapack** and is **called automatically** by the game when the datapack is added.

When the datapack is loaded, an **overworld point** and a **creative point** will be defined at the player's location in both of **minecraft:overworld** and **dimension:creative** dimension.

These two points are **always loaded** and defines the position where the player will be teleported when switching dimension.


### `/function teleport:set_overworld_point`

This function **sets a new overworld point** and can only be called by a player in the dimension **minecraft:overworld**.

Please note that in order to set a new point, the command removes the last point, **remove all forceloaded chunks** inside the dimension (by using the Minecraft command `/forceload remove all`) and **forceload** the chunk of the new point.


### `/function teleport:set_creative_point`

This function **sets a new creative point** and can only be called by a player in the dimension **dimension:creative**.

Please note that in order to set a new point, the command removes the last point, **remove all forceloaded chunks** inside the dimension (by using the minecraft command `/forceload remove all`) and **forceload** the chunk of the new point.


### `/function teleport:overworld`

This function sets the **nearest player** to **survival gamemode** and **teleport** him to the **overworld point** in the dimension **minecraft:overworld** if he is currently in the dimension **dimension:creative**.


### `/function teleport:creative`

This function sets the **nearest player** to **creative gamemode** and **teleport** him to the **creative point** in the dimension **dimension:creative** if he is not **already in**.


## Structure of the datapack

```mermaid
graph LR
PACK[(creative_dimension)]
PACK --> DATA(data)
         DATA --> CD((cd)) --> INTERFACE(functions)
                               INTERFACE --> A[change_dimension.mcfunction]
                               INTERFACE --> B[help.mcfunction]
                               INTERFACE --> C[load.mcfunction]
                               INTERFACE --> D[unload.mcfunction]
         DATA --> CREATIVE_DIMENSION((creative_dimension))
                  CREATIVE_DIMENSION --> DIMENSION(dimension) --> E[creative.json]
                  CREATIVE_DIMENSION --> DIMENSION_TYPE(dimension_type) --> F[creative.json]
                  CREATIVE_DIMENSION --> FUNCTIONS(functions)
                                         FUNCTIONS --> CHANGE_DIMENSION(change_dimension)
                                                       CHANGE_DIMENSION --> RESTORE(restore)
                                                                            RESTORE --> H[all.mcfunction]
                                                                            RESTORE --> I[clear_enderchest.mcfunction]
                                                                            RESTORE --> J[enderchest.mcfunction]
                                                                            RESTORE --> K[experience_levels.mcfunction]
                                                                            RESTORE --> L[experience_points.mcfunction]
                                                                            RESTORE --> M[inventory.mcfunction]
                                                       CHANGE_DIMENSION --> STORE(store)
                                                                            STORE --> N[all.mcfunction]
                                                                            STORE --> O[initialize.mcfunction]
                                                       CHANGE_DIMENSION --> P[main]
                                         FUNCTIONS --> HELP(help) --> Q[main.mcfunction]
                                         FUNCTIONS --> LOAD(load) --> R[main.mcfunction]
                                         FUNCTIONS --> UNLOAD(unload) --> S[main.mcfunction]
                                         FUNCTIONS --> T[tick.mcfunction]
                  CREATIVE_DIMENSION --> WORLDGEN(worldgen) --> BIOME(biome) --> G[creative.json]
         DATA --> MINECRAFT((minecraft)) --> TAGS(tags) --> AUTOMATICALLY(functions)
                                                            AUTOMATICALLY --> U[load.json]
                                                            AUTOMATICALLY --> V[tick.json]
PACK-->W[pack.mcmeta]
PACK-->X[pack.png]
```
