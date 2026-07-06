type Interval = { start: Date; end: Date };

function overlaps(a: Interval, b: Interval): boolean {
  return a.start < b.end && a.end > b.start;
}

describe('booking overlap rule', () => {
  it('rejects overlapping time intervals', () => {
    const existing = {
      start: new Date('2026-07-10T10:00:00Z'),
      end: new Date('2026-07-10T12:00:00Z'),
    };

    const incoming = {
      start: new Date('2026-07-10T11:00:00Z'),
      end: new Date('2026-07-10T13:00:00Z'),
    };

    expect(overlaps(existing, incoming)).toBe(true);
  });

  it('accepts non-overlapping time intervals', () => {
    const existing = {
      start: new Date('2026-07-10T10:00:00Z'),
      end: new Date('2026-07-10T12:00:00Z'),
    };

    const incoming = {
      start: new Date('2026-07-10T13:00:00Z'),
      end: new Date('2026-07-10T15:00:00Z'),
    };

    expect(overlaps(existing, incoming)).toBe(false);
  });
});
