generic_npc_greeting:
    type: task
    script:
    - narrate "Hello, <player.name> It's nice to see you today"

click_harlot:
  type: assignment

  actions:
    on assignment:
    - trigger name:click toggle:true
    on click:
    - run generic_npc_greeting