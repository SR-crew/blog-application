import type { NextPage } from "next";
import type { ReactElement } from "react";

declare global {
	type NextPageWithLayout = NextPage & {
		getLayout: (p: ReactElement) => ReactElement;
	};

	type RequestError = {
		message: string;
	};
}
export {};
