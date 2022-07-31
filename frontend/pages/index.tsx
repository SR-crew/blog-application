import type { NextPage } from "next";
import React from "react";
import { Button } from "../src/components/elements/button";
import { Icon } from "../src/components/icons/icon";
import { DefaultLayout } from "../src/components/modules/layout";

const Home: NextPage & {
  getLayout: (page: React.ReactNode) => React.ReactNode;
} = () => {
  return (
    <div>
      <Button>
        <Button.Icon>
          <Icon />
        </Button.Icon>
        Button
      </Button>
      <Button>Button</Button>
      <Button.Group>
        <Button>Button</Button>
        <Button>Button</Button>
        <Button>Button</Button>
      </Button.Group>
    </div>
  );
};

Home.getLayout = function getLayout(page: React.ReactNode) {
  return <DefaultLayout>{page}</DefaultLayout>;
};

export default Home;
