import type { TinaField } from "tinacms";
export function blogFields() {
  return [
    {
      type: "string",
      name: "penulis",
      label: "penulis",
    },
    {
      type: "string",
      name: "ilustration",
      label: "ilustration",
    },
    {
      type: "datetime",
      name: "date",
      label: "date",
    },
    {
      type: "string",
      name: "description",
      label: "description",
    },
    {
      type: "string",
      name: "title",
      label: "title",
    },
    {
      type: "string",
      name: "youtube_id",
      label: "youtube_id",
    },
    {
      type: "string",
      name: "slug",
      label: "slug",
    },
  ] as TinaField[];
}
