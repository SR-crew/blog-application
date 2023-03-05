import React from "react";

import type { ReactElement } from "react";

import { Layout } from "@/layouts/default";


const Home: NextPageWithLayout = () => {
	return <div className=""></div>;
};

Home.getLayout = function getLayout(page: ReactElement) {
	return <Layout>{page}</Layout>;
};

export default Home;
