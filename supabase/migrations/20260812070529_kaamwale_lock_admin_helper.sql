/*
# Lock down admin authorization helper

1. Security change
- Revoke direct EXECUTE access to public.is_admin() from anon and authenticated roles.
- The helper remains available internally to row-level security policies, but cannot be called as a public API function.

2. Data safety
- No tables or user data are changed.
*/
revoke execute on function public.is_admin() from anon, authenticated;