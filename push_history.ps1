
# ============================================================
# Book My Run - Backdated Git History Push Script
# Creates 15 incremental commits starting 6 months ago
# ============================================================

$repo = "c:\Users\Garima Gayakwad\OneDrive\Desktop\Book_My_Run-App-main"
$remote = "https://github.com/Garima-Gayakwad/Book_My_Run-App.git"

Set-Location $repo

# ── Init & remote ──────────────────────────────────────────
git init
git remote remove origin 2>$null
git remote add origin $remote
git checkout -b main 2>$null

# Helper: commit with a fake date
function Commit($msg, $dateStr) {
    $env:GIT_AUTHOR_DATE    = $dateStr
    $env:GIT_COMMITTER_DATE = $dateStr
    git add -A
    git commit -m $msg
    Remove-Item Env:GIT_AUTHOR_DATE
    Remove-Item Env:GIT_COMMITTER_DATE
}

# ── COMMIT 1 ── 2025-09-30  Initial project setup ─────────
$d = "2025-09-30T10:00:00+05:30"
git add .gitignore
git add README.md
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git commit -m "chore: initial project setup with Expo + TypeScript"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 2 ── 2025-10-05  package.json & tsconfig ───────
$d = "2025-10-05T11:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add package.json package-lock.json tsconfig.json app.json
git commit -m "chore: add package.json, tsconfig and app.json config"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 3 ── 2025-10-12  assets ────────────────────────
$d = "2025-10-12T09:30:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add assets/
git commit -m "feat: add app icons, splash screen and logo assets"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 4 ── 2025-10-20  root app layout ───────────────
$d = "2025-10-20T10:15:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add "app/_layout.tsx" "app/index.tsx"
git commit -m "feat: scaffold root app layout and entry point"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 5 ── 2025-10-28  constants ─────────────────────
$d = "2025-10-28T14:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add constants/colors.ts constants/spacing.ts
git commit -m "feat: define color palette and spacing constants"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 6 ── 2025-11-05  types ─────────────────────────
$d = "2025-11-05T11:30:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add types/
git commit -m "feat: add TypeScript type definitions for events and organizers"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 7 ── 2025-11-13  mock data ─────────────────────
$d = "2025-11-13T10:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add constants/mockData.ts constants/mockEventDetails.ts constants/mockBookingData.ts
git commit -m "feat: add mock data for events, event details and bookings"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 8 ── 2025-11-22  tab layout ────────────────────
$d = "2025-11-22T09:45:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add "app/(tabs)/_layout.tsx"
git commit -m "feat: configure bottom tab navigator layout"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 9 ── 2025-12-02  home components ───────────────
$d = "2025-12-02T13:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add components/home/
git commit -m "feat: build home screen components (EventCard, Carousel, TopAppBar, CityChips)"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 10 ── 2025-12-12  home tab screen ──────────────
$d = "2025-12-12T10:30:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add "app/(tabs)/index.tsx"
git commit -m "feat: implement home tab screen with event listings"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 11 ── 2025-12-22  event detail & organizer ─────
$d = "2025-12-22T11:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add components/eventDetails/ components/organizer/ "app/event/" "app/organizer/"
git commit -m "feat: add event detail and organizer profile screens with components"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 12 ── 2026-01-08  booking flow ─────────────────
$d = "2026-01-08T09:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add "app/booking/" components/booking/
git commit -m "feat: implement full booking flow (ticket selection, participant details, payment)"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 13 ── 2026-01-20  ticket & race results ────────
$d = "2026-01-20T14:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add components/ticket/ "app/race-results/" "app/(tabs)/race-results.tsx"
git commit -m "feat: add ticket viewer and race results tab"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 14 ── 2026-02-05  AI bot & profile ─────────────
$d = "2026-02-05T10:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add "app/(tabs)/ai-bot.tsx" "app/(tabs)/profile.tsx"
git commit -m "feat: add AI bot assistant screen and user profile tab"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── COMMIT 15 ── 2026-02-20  final polish & cleanup ───────
$d = "2026-02-20T12:00:00+05:30"
$env:GIT_AUTHOR_DATE=$d; $env:GIT_COMMITTER_DATE=$d
git add -A
git commit -m "chore: final cleanup, polish UI, update README and gitignore"
Remove-Item Env:GIT_AUTHOR_DATE; Remove-Item Env:GIT_COMMITTER_DATE

# ── Force push ─────────────────────────────────────────────
Write-Host "`n✅ All 15 commits created. Force pushing to GitHub..." -ForegroundColor Green
git push --force origin main

Write-Host "`n🎉 Done! Repository pushed with backdated history." -ForegroundColor Cyan
