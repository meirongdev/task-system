"use client";
import { useRef } from "react";
import { useRouter, usePathname, useSearchParams } from "next/navigation";

export function TaskFilters({ tenant }) {
  const searchInputRef = useRef(null);

  const router = useRouter();
  const pathname = usePathname();
  const searchParams = useSearchParams();

  const onSubmit = (event) => {
    event.preventDefault();
    const search = searchInputRef.current.value;

    // should keep the original query params
    const updatedParams = new URLSearchParams(searchParams);
    updatedParams.set("search", search);
    updatedParams.set("page", 1);
    updatedParams.set("r", Math.random());
    router.push(pathname + "?" + updatedParams.toString());
  };
  return (
    <>
      <form onSubmit={onSubmit}>
        <div
          style={{
            alignContent: "center",
            display: "flex",
            gap: "10px",
          }}
        >
          <input
            type="search"
            ref={searchInputRef}
            id="search"
            name="search"
            placeholder="Search tasks..."
            required
            style={{ margin: 0, maxWidth: "350px" }}
          />
          <button type="submit" role="button" style={{ width: "auto" }}>
            Search
          </button>
        </div>
      </form>
    </>
  );
}
