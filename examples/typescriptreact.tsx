import React from "react";

const template = `${JSON.stringify({ something: "else" })}`;
JSON.stringify(a);
const Component = () => (
  <>
    <div>Something 1</div>
    <div>Something 2</div>
  </>
);

export const Main = () => (
  <div id="asd">
    <Component />
    {template}
    <Component />
  </div>
);
