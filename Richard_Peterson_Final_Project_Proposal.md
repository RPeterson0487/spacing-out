# Spacing Out / Shipping Out / PixelShip Project Proposal - Richard Peterson

1. Name of the game:
    - I haven’t really come up with a good name for the project yet. I’ve been throwing around terrible ideas such as “Shipping Out” or “Spacing Out,” because it’s a spaceship game… get it?  I even considered “PixelShip” just because I want to keep a sort of pixel like appearance. I’ll probably stick with “Spacing Out” if I can’t come up with a better idea.<br><br>

1. Short description of gameplay:
    - The game is planned to be a top-down space game with a mix of shooting at other ships, some simple trading, piracy, rescue, etc. If there’s time, I’d also like to add a relatively short set of story missions for the player to follow. The player will start with a basic ship and be able to upgrade after making money by taking missions, trading, or stealing. There will also be NPC ships of various types that will either appear to do their own thing or react to the player in some way (friendly, neutral, or hostile). I’m toying with the idea that the player can pick a “faction” at the beginning that would affect those ships’ reactions depending on the area the player finds themselves in and the actions they take.<br><br>

1. List of games that are similar or serve as inspiration:
    - This game takes inspiration from a few different space simulator type games. The gameplay idea comes from an older Mac game I used to play as a kid called Escape Velocity. I’m also taking inspiration from games such as Freelancer and Elite: Dangerous. I’m also planning on doing some research from the original Elite game from 1984, though I’ve never played that one.
    Here are a couple of references. This is the original [Escape Velocity](https://youtu.be/4VX6TZEfqf4) and this is the third installment, [Escape Velocity Nova](https://youtu.be/LKBRJ_CIWG4?t=2350).<br><br>

1. Win condition:
    - I haven’t decided if there is a “final” win condition or if it is just one of those endless “make as much money as you can” types. It’s likely that finishing the story missions would be the win but leave the game open ended beyond that. Much like Minecraft’s dragon fight. I’ve also been throwing an idea about giving the player an option to switch factions and start over, but keeping whatever resources they finished the previous story with.<br><br>

1. Lose condition:
    - If the player blows up, they lose and will have to start over. I think this game will end up being small enough that if the player does have to start over, it won’t hurt that much. If it did, then maybe they shouldn’t have died? Escape Velocity had the option to buy an escape pod that would give you one chance to continue, but you lost the ship you had and would have to rebuy it.<br><br>

1. How the player interacts with the game:
    - The ships will be flown with the keyboard in an Asteroids style flight. If turrets are used, the player can either lock onto the target for aiming or use the mouse to aim the turrets. The mouse will be used when the player interacts with other ships (outside of fighting) or the various planets and / or space stations through a series of menus. If I have the option for a pilot to walk around somewhere, that would also be done via keyboard.<br><br>

1. The game engine and other tools you plan to use to create the game:
    - I think I’m going to try to use Godot for this, but possibly HaxeFlixel. It’s the only two engines I know. I will likely also use some pixel art program like Piskel, some sound generating website or program, a website that offers ship models (if I don’t make my own), and possibly a program or website to make some basic music.<br><br>

1. List of Core Features:
    - Ship control
        - Shooting: One type of laser, ship determines how many lasers are equipped.
        - Movement: Asteroids style, with "down" rotating ship to face away from it's direction of travel.
    - Ship customization
        - Up to seven distinct ships
            - One starter (Transport Shuttle?)
            - Three fighters (Small, medium, large)
        - Each ship has a sprite appropriate to its size
    - Enemy Ships
        - Idle state, moving toward destination
        - Aggressive state, strafe player, fire lasers
        - Enemy becomes aggressive when:
            - Player hits enemy too many times (citizen)
                - Given a warning first, then they defend themselves.
            - When player gets close enough (pirate)
    - Environment
        - Stations and planets are statically positioned places, mechanically the same.
    - Trade
        - Player has money / score
        - Cost of different items are different between the various planets / stations, depending on the "type" of location, e.g., industrial, agriculture, etc.
        - When player is near station or planet, they can "land" (Pause game and bring up menu).
            - Trade menu: Buying and selling cargo.
            - Ship menu: Allow buying a different ship.
            - If saves are enabled, a hotel menu to save the game.
    - Player Death
        - Respawn at last station?
        - Back to title screen?
    - Saving?
<br><br>

1. List of Secondary Features:
    - A few friendly / neutral / hostile factions.
        - Each faction would have a bit of variety of ships.  At least in ship colors.
        - The player would have a reputation with each faction that would change based on actions taken by the player.
        - One faction would be hostile to everyone all the time.  Pirates?
    - Missions:
        - Random missions that the player can take for money.
        - Story missions that the player can take to advance the story or faction standing.
            - Raising standing in one faction would potentially lower the player’s standing with another faction.
    - Multiple sectors and star systems
        - Each star system would be made up of a few sectors, with each being controlled by a faction.
        - Each sector is a level, and each would have a few “landable” stations and/or planets.
        - Example: The Sol System would have a sector that included Earth, Luna, and maybe a space station.  The player could jump to another sector that would contain Mars and a space station.  Jumping to each sector involves an FTL jump and would act as a “loading screen.”
        - Each star system might contain a jump game to reach other star systems.
        - Throw in a couple of empty systems for random encounters.
<br><br>

1. List of Bonus Features
    - Different gameplay types (basic trade and combat are core features).
        - Rescue: Help random neutral or friendly ships repair or refuel, or something like rescuing a crew from a disabled ship before it explodes.
        - Bounty Hunting: Kill pirate ships for money and reputation.
        - Derelict ships:
            - Dead ships that can be interacted with for a variety of things like taking money, cargo, or fuel (if implemented).
            - Each action taken aboard the derelict could start a timer that gives the player a chance to escape before the derelict explodes.
        - Piracy: Instead of a hostile ship immediately exploding once its health reaches zero, have it become a derelict ship with a timer before the ship explodes, giving the player a chance to disable a ship and take the goodies.
    - Fuel system: Each FTL jump would take a percentage of fuel, limiting how many jumps could be performed before refueling.  If the player runs out of fuel in an uninhabited system, they may have to request a rescue.
<br><br>

1. Realistic goals/expectations for the ~4 weeks of work on the project:
    - I know that this project is already overly ambitious. I don’t know what I’m thinking saying I can do half of this as it is. I also have to consider the school load I’m already under as well as the outside of school stuff going on. Realistically, I imagine I’ll probably get partway through the core features before needing to reconsider what to have in the game. I hope to have a project I can be proud to show off, though. I also know that I am absolutely terrible at designing things, so that’s going to be a problem as well.