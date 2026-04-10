"""
Split content/year_1/freshman/weeks/week_N.ink into per-day files under
content/year_1/freshman/weekN/MMDDYYYY_dayname.ink

Run from repo root: python scripts/split_freshman_weeks.py
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
WEEKS_DIR = ROOT / "content/year_1/freshman/weeks"
OUT_BASE = ROOT / "content/year_1/freshman"

DAY_MAP = {
    "Mon": "monday",
    "Tue": "tuesday",
    "Wed": "wednesday",
    "Thu": "thursday",
    "Fri": "friday",
    "Sat": "saturday",
    "Sun": "sunday",
}
MON_MAP = {
    "Jan": "01",
    "Feb": "02",
    "Mar": "03",
    "Apr": "04",
    "May": "05",
    "Jun": "06",
    "Jul": "07",
    "Aug": "08",
    "Sept": "09",
    "Sep": "09",
    "Oct": "10",
    "Nov": "11",
    "Dec": "12",
}

KNOT_RE = re.compile(r"^===\s+(\w+)\s+===\s*$", re.MULTILINE)
STORY_DATE_RE = re.compile(
    r'^~\s*story_date\s*=\s*"(\w+)\.\s+(\w+)\.\s+(\d+),\s+(\d+)"', re.MULTILINE
)
KNOT_NUM_RE = re.compile(r"^week_(\d+)_")


def parse_story_date_line(text: str) -> tuple[str, str, str, str] | None:
    m = STORY_DATE_RE.search(text)
    if not m:
        return None
    return m.group(1), m.group(2), m.group(3), m.group(4)


def file_slug(dabbr: str, month: str, day: str, year: str) -> str:
    dayn = DAY_MAP[dabbr]
    mm = MON_MAP[month]
    dd = day.zfill(2)
    return f"{mm}{dd}{year}_{dayn}"


def knot_target_week(knot_name: str) -> int:
    m = KNOT_NUM_RE.match(knot_name)
    if not m:
        raise ValueError(f"Cannot parse week from knot name: {knot_name}")
    return int(m.group(1))


def split_knots(content: str) -> list[tuple[str, str]]:
    matches = list(KNOT_RE.finditer(content))
    out: list[tuple[str, str]] = []
    for i, m in enumerate(matches):
        name = m.group(1)
        start = m.start()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(content)
        out.append((name, content[start:end].rstrip() + "\n"))
    return out


def split_week_1_thursday_friday(thursday_block: str) -> tuple[str, str]:
    marker = "= week_1_reflection\n"
    if marker not in thursday_block:
        return thursday_block, ""

    before, after = thursday_block.split(marker, 1)
    before = (
        before.rstrip()
        + "\n\n* [Continue to Friday]\n    -> week_1_friday\n"
    )
    friday = (
        "=== week_1_friday ===\n"
        '~ story_date = "Fri. Aug. 31, 2001"\n'
        "# Afternoon\n"
        "# End of first week\n\n"
        + after.lstrip()
    )
    return before, friday


def process_week_file(week_path: Path) -> list[tuple[int, Path]]:
    """Write day files; return [(week_num, path), ...] in chronological story order."""
    content = week_path.read_text(encoding="utf-8")
    knots = split_knots(content)
    if not knots:
        return []

    # (target_week, slug, text)
    segments: list[tuple[int, str, str]] = []

    for name, block in knots:
        if name == "week_1_thursday":
            thu, fri = split_week_1_thursday_friday(block)
            sd = parse_story_date_line(thu)
            if not sd:
                raise SystemExit("week_1_thursday missing story_date")
            segments.append((1, file_slug(*sd), thu))
            if fri.strip():
                segments.append((1, "08312001_friday", fri))
            continue

        tw = knot_target_week(name)
        sd = parse_story_date_line(block)
        if not sd:
            raise SystemExit(f"No story_date in knot {name} in {week_path}")
        slug = file_slug(*sd)
        segments.append((tw, slug, block))

    # Merge consecutive same (tw, slug)
    merged: list[tuple[int, str, str]] = []
    for tw, slug, text in segments:
        if merged and merged[-1][0] == tw and merged[-1][1] == slug:
            merged[-1] = (tw, slug, merged[-1][2].rstrip() + "\n\n" + text)
        else:
            merged.append((tw, slug, text))

    ordered: list[tuple[int, Path]] = []
    for tw, slug, text in merged:
        out_dir = OUT_BASE / f"week{tw}"
        out_dir.mkdir(parents=True, exist_ok=True)
        out_path = out_dir / f"{slug}.ink"
        out_path.write_text(text.rstrip() + "\n", encoding="utf-8")
        ordered.append((tw, out_path))

    return ordered


def write_aggregators(by_week: dict[int, list[Path]]) -> None:
    for week_num in sorted(by_week.keys()):
        paths = by_week[week_num]
        agg = OUT_BASE / f"week{week_num}" / f"week_{week_num}.ink"
        lines = [f"INCLUDE {p.relative_to(ROOT).as_posix()}" for p in paths]
        agg.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> None:
    by_week: dict[int, list[Path]] = {}
    for week_path in sorted(WEEKS_DIR.glob("week_*.ink")):
        for tw, path in process_week_file(week_path):
            by_week.setdefault(tw, []).append(path)

    write_aggregators(by_week)
    print("Wrote day files and weekN/week_N.ink aggregators.")


if __name__ == "__main__":
    main()
