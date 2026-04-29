# Why Containerization Emerged

Before containers, teams often heard the same sentence: "it works on my machine." The application was not the only moving part. The environment also mattered:

- one developer had PHP 8.2 and another had PHP 8.3;
- one laptop had a required extension and another did not;
- one machine had a different system package;
- CI used a slightly different runtime;
- setup instructions in a wiki became stale.

This is dependency drift: the environment slowly becomes different on every machine.

Docker made the problem manageable by letting a team describe the runtime environment next to the project. Instead of asking every developer to remember the same manual setup, the project can describe the image, startup command, ports, volumes, and networks it needs.

Docker does not remove engineering discipline. It makes the environment visible and repeatable enough that the team can reason about it.
