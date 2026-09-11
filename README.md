> [!NOTE]
> This repository was recently cleaned up and reorganized. It's a personal project that may not be actively maintained going forward. Some improvements are still planned, but my time playing Minecraft has decreased, and I may eventually move on to Hytale.

<div align = "center">
  <img src = "./creative_dimension/pack.png" width = "200" height = "200"/>
</div>

# Table of contents

- [**Description**](#description)
- [**In-game commands**](#in-game-commands)
  - [**Non-operator command**](#non-operator-command)
  - [**Operator commands**](#operator-commands)
- [**Summary of versions and releases**](#summary-of-versions-and-releases)
  - [**Version status**](#version-status)
  - [**Release list**](#release-list)


<br />

# Description

**Creative Dimension is a Minecraft datapack that introduces an independent, flat creative dimension to your world.**

This dimension consists of a single grass layer at Y = 0 and remains **entirely free from structures, mobs, and weather effects**. Inside this dimension, each player maintains a separate **inventory, ender chest, experience level, and gamemode**, fully isolated from the other dimension of the world.


<br />

# In-game commands

## Non-operator command
### `/trigger cd`

**This command allows any player to switch between the Creative dimension and the regular world.**

It simply provides access to the *cd:change_dimension* function for non-operator players.
For more details about dimension switching, refer to the [description](#function-cdchange_dimension) of the *cd:change_dimension* function.


<br />

## Operator commands

> [!important]
> **Please only use functions from the `cd` namespace**. These are the functions intended for operator use.
> **Functions in the `creative_dimension` namespace are internal and should not be called directly**.


<br />

### `/function cd:change_dimension`

**This function switches the player between the Creative dimension and the regular world.**

When the function is used by a player, the datapack stores their current state, **including their inventory, ender chest, game mode, experience, and position**. The player then retrieves the state they previously had in the other dimension and is teleported accordingly. **New players receive a default state in the Creative Dimension when they first join**, with empty inventories, Creative mode, and no experience.

If players enter or leave the Creative dimension **without using this function** (for example, by teleporting to another player in a different dimension), **they are automatically resynchronized upon arrival**. Their state for that dimension is restored, and the datapack also stores their information, except for their position, since they are no longer in the origin dimension. Because no position was saved during this transition, the next time they switch between the Creative Dimension and the regular world, **the teleportation will use a default location**. For more details about default locations, refer to the [description](#function-cdset_default_location) of the cd:set_default_location function.


<br />

### `/function cd:load`

**This function loads the datapack and is called automatically by the game when the world is loaded if the datapack is enabled.**

It sets up the datapack environment by creating the necessary scoreboard objectives, ensuring that the chunk at (0, 0) in the Creative dimension is always loaded, and establishing the datapack detection loop to track player dimension changes.


<br />

### `/function cd:set_default_location`

**This function updates the default location associated with the dimension of the player.**

The datapack maintains two default locations :
- **Default creative location**, initially set to coordinates (0, 0, 0) in the Creative dimension
- **Default world location**, initially set to the position of the first player processed by the datapack (typically the Overworld spawn)

**These locations are used when a player switches dimensions outside the normal datapack process**, ensuring teleportation falls back to a consistent default location.


<br />

### `/function cd:unload`

**This function unloads the datapack and should be called before uninstalling it.**

It removes all stored information and deactivates the entire environment created by the datapack, including stopping the associated detection loop. Please note that the Creative dimension itself is not deleted.

> [!WARNING]
> If the datapack does not appear under the name `file/creative_dimension` or `file/creative_dimension.zip` in the `/datapack list` output command, **you must manually disable it using `/datapack disable <name>`**.
> This ensures that it will not automatically reload on world loading and that associated player data is correctly released.


<br />

# Summary of versions and releases

## Version status

<div align = center>
  <table>
    <thead>
      <tr>
        <th>Creative Dimension version</th>
        <th>Changes</th>
        <th>Retroactive</th>
        <th>Stable</th>
        <th>Datapack format supported</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>3.0</td>
        <td align = left>
          <ul>
            <li>
              <strong>Updated</strong> dimension and biome definitions. <em>(breaking changes)</em>
            </li>
            <li>
              <strong>Reworked</strong> internal storage system. <em>(breaking changes)</em>
            </li>
            <li>
              <strong>Improved</strong> overall performance.
            </li>
            <li>
              <strong>Renamed</strong> function <code>set_default_position</code> to <code>set_default_location</code>.
            </li>
          </ul>
        </td>
        <td>🔴</td>
        <td>🟢</td>
        <td>71, 80, 81</td>
      </tr>
      <tr>
        <td>2.1</td>
        <td align = left>
          <ul>
              <li>
                <strong>Added</strong> resynchronization system to the <code>change_dimension</code> function.
              </li>
              <li>
                <strong>Added</strong> <code>set_default_position</code> function.
              </li>
          </ul>
        </td>
        <td>🟢</td>
        <td>🟢</td>
        <td>71, 80, 81</td>
      </tr>
      <tr>
        <td>2.0</td>
        <td align = left>
          <ul>
              <li>
                <strong>Merged</strong> <code>dimension</code> and <code>teleport</code> namespaces into a new one named <code>creative_dimension</code>. <em>(breaking changes)</em>
              </li>
              <li>
                <strong>Added</strong> a new namespace <code>cd</code>.
              </li>
              <li>
                <strong>Removed</strong> <code>set_overworld_point</code>, <code>set_creative_point</code>, <code>overworld</code> and <code>creative</code> functions
              </li>
              <li>
                <strong>Added</strong> <code>unload</code> and <code>change_dimension</code> functions.
              </li>
          </ul>
        </td>
        <td>🔴</td>
        <td>🟡</td>
        <td>26, 41, 48, 57, 61, 71</td>
      </tr>
      <tr>
        <td>1.0</td>
        <td align = left>
          <ul>
            <li>
              <strong>Created</strong> a flat dimension <code>creative</code>.
            </li>
            <li>
              <strong>Created</strong> <code>load</code>, <code>set_overworld_point</code>, <code>set_creative_point</code>, <code>overworld</code> and <code>creative</code> functions.
            </li>
          </ul>
        </td>
        <td></td>
        <td>🔴</td>
        <td>26</td>
      </tr>
    </tbody>
  </table>
</div>

<br />

## Release list

<div align = "center">
  <table>
    <thead>
      <tr>
        <th>Minecraft version</th>
        <th>Datapack format</th>
        <th>Creative Dimension version</th>
        <th>Release</td>
      </tr>
    </thead>
    <tbody>
    <tr>
        <td rowspan = 2>
          1.21.8<br />
          1.21.7
        </td>
        <td rowspan = 2>81</td>
        <td>3.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v3.0.81">Creative Dimension 3.0.81</a></td>
      </tr>
      <tr>
        <td>2.1</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.1.81">Creative Dimension 2.1.81</a></td>
      </tr>
      <tr>
        <td rowspan = 2>
          1.21.6
        </td>
        <td rowspan = 2>80</td>
        <td>3.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v3.0.80">Creative Dimension 3.0.80</a></td>
      </tr>
      <tr>
        <td>2.1</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.1.80">Creative Dimension 2.1.80</a></td>
      </tr>
      <tr>
        <td rowspan = 3>
          1.21.5
        </td>
        <td rowspan = 3>71</td>
        <td>3.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v3.0.71">Creative Dimension 3.0.71</a></td>
      </tr>
      <tr>
        <td>2.1</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.1.71">Creative Dimension 2.1.71</a></td>
      </tr>
      <tr>
        <td>2.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.0.71">Creative Dimension 2.0.71</a></td>
      </tr>
      <tr>
        <td>
          1.21.4
        </td>
        <td>61</td>
        <td>2.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.0.61">Creative Dimension 2.0.61</a></td>
      </tr>
      <tr>
        <td>
          1.21.3<br />
          1.21.2
        </td>
        <td>57</td>
        <td>2.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.0.57">Creative Dimension 2.0.57</a></td>
      </tr>
      <tr>
        <td>
          1.21.1<br />
          1.21
        </td>
        <td>48</td>
        <td>2.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.0.48">Creative Dimension 2.0.48</a></td>
      </tr>
      <tr>
        <td>
          1.20.6<br />
          1.20.5
        </td>
        <td>41</td>
        <td>2.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.0.41">Creative Dimension 2.0.41</a></td>
      </tr>
      <tr>
        <td rowspan = 2>
          1.20.4<br />
          1.20.3
        </td>
        <td rowspan = 2>26</td>
        <td>2.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v2.0.26">Creative Dimension 2.0.26</a></td>
      </tr>
      <tr>
        <td>1.0</td>
        <td><a href = "https://github.com/Srymm/creative_dimension/releases/tag/v1.0.26">Creative Dimension 1.0.26</a></td>
      </tr>
    </tbody>
  </table>
</div>
