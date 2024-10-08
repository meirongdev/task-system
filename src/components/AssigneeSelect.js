"use client";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useEffect, useRef, useState } from "react";

export function AssigneeSelect({
  tenant,
  onValueChanged,
  initialValue,
  disabled,
}) {
  const [users, setUsers] = useState(null);
  const supabase = getSupabaseBrowserClient();
  const ref = useRef(initialValue??"");

  useEffect(() => {
    supabase
      .rpc("get_tenant_userlist", {
        tenant_id: tenant,
      })
      .then(({ data }) => {
        setUsers(data ?? []);
      });
  }, []);

  return (
    <select
      name="assignee"
      value={initialValue ?? ""}
      ref={ref}
      disabled={users === null || disabled}
      onChange={(e) => {
        console.log(e.target.value);
        onValueChanged(e.target.value);
      }}
    >
      <option value="">{users === null ? "Loading..." : "No assignee"}</option>
      {users &&
        users.map((user) => {
          return (
            <option key={user.id} value={user.id}>
              {user.full_name}
            </option>
          );
        })}
    </select>
  );
}
