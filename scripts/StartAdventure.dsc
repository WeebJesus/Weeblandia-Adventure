StartAdventure:

    type: assignment

    interact scripts:

    - 1 BeginAdventure




BeginAdventure:

    type: interact

    steps:

        1:

            click trigger:

                script:

                 - chat "Hello, <player.name> I've heard rumor of a town not too far from here and it sounds like there is work for hire"
                 - narrate " - say Tell me more or Maybe later"

            chat trigger:

                1:

                    trigger: /Tell me more/, I'm listening...

                    script:

                    - chat "The town is called L'manburg and rumor has it that that the sewers have become overrun with monsters and are in major need of repair, from what i hear there is a reward for the adventurer that can clear it out"
                    - narrate " - Say yes to begin your adventure or no if you would like to pass"
                    - narrate " - Saying yes will teleport you and begin the adventure, make sure your inventory is empty"
                    - zap step:2

                2:

                    trigger: /Maybe later/, not at this time.

                    script:

                    - random 3

                    - chat "Alright!"

                    - chat "Take Care!"

                    - chat "Be seeing you!"

                hello:

                    trigger: /regex:(?i)hello|hey|hi/

                    script:

                    - random 3

                    - chat "Hey there!"

                    - chat "Hello!"

                    - chat "Hi, <player.name>!"

                bye:

                    trigger: /regex:(?i)bye|see ya|goodbye|good bye|later/

                    script:

                    - random 3

                    - chat "See ya!"

                    - chat "Take Care!"

                    - chat "Be seeing you!"


                unknown:

                    trigger: /regex:.+/

                    script:

                    - chat "I'm sorry, I don't understand!"

        2:

            click trigger:

                script:

                - chat "Hello there <player.name>, Still interested in the rumors i was talking about?"
                - narrate " - say Tell me more or Maybe later"
                - zap step:1

            chat trigger:

                Adventure:

                    trigger: I confirm /yes/!

                    script:

                    - chat "Summoning portal, this will only take a second."

                    - wait 1

                    - animate <npc> animation:ARM_SWING

                    - wait 1

                    - run "tp <player.name> -45.441 75.000 -326.500"
                    - run as_server "effect give <player.name> minecraft:blindness 10 5"
                    - zap step:1

                cancel:

                    trigger: /No/ actaully, I change my mind.

                    script:

                    - chat "Not a problem, please let me know if I can be of any assistance!"

                    - zap step:1

                hello:

                    trigger: /regex:(?i)hello|hey|hi/

                    script:

                    - random 3

                    - chat "Hey there!"

                    - chat "Hello!"

                    - chat "Hi, <player.name>!"

                    - zap step:1

                bye:

                    trigger: /regex:(?i)bye|see ya|goodbye|good bye|later/

                    script:

                    - random 4

                    - chat "See ya!"

                    - chat "Take Care!"

                    - chat "Be seeing you!"

                    - chat "Go forth, for victory!"

                    - zap step:1

                unknown:

                    trigger: /regex:.+/

                    script:

                    - chat "I'm sorry, I don't understand!"

