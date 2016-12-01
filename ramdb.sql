-- Note that this might be run multiple times on the same
-- database, so make it idempotent.
-- Also, use unlogged tables to bypass the WAL to increase performance
create unlogged table if not exists sessions (
    id uuid constraint session_pk primary key not null,
    data text not null);
