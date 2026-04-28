# Docker Engineering Environment

## Onboarding Entry

This repository represents the reference environment for the course around `ecommerce-platform`.
The local environment is treated as part of the repository rather than as one developer's private setup.

## Minimal workflow

1. Copy `.env.example` to `.env`.
2. Read the environment contract in `docs/environment-contract.md`.
3. Use the repository structure and docs as the primary onboarding source.
4. Treat helper scripts and docs as part of the environment, not as optional extras.

## Principle

If a teammate cannot understand how to start and reason about the local environment from the repository alone, the environment contract is incomplete.


Эталонный практический репозиторий курса `Docker как инженерная среда разработки`.

## Назначение

Репозиторий используется как:
- стартовая база для домашних заданий;
- reference repository для mentor-review;
- набор эталонных веток, показывающих ожидаемый уровень артефактов.

## Соглашение по веткам

- `main` — стартовое состояние проекта;
- `homework-*` — эталонные решения домашних заданий;
- `exam-*` — экзаменационные сценарии и решения.

## Базовый проект

В рамках курса используется сквозной учебный контекст `ecommerce-platform`.
На ранних уроках репозиторий содержит в основном onboarding- и operational-артефакты.
Позже в нем появятся `Dockerfile`, `compose`-конфигурация, proxy-слой, IDE-настройки и production-подобная структура локальной среды.

## Правило качества

Каждая homework-ветка должна содержать не абстрактный текст, а проверяемые артефакты:
- markdown-документы;
- shell-скрипты;
- конфигурационные файлы;
- объяснения operational-решений.
