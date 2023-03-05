import { Bottom } from "../components/bottom";
import { Top } from "../components/top";
import { Wrapper } from "../components/wrapper";

import type { FC, PropsWithChildren } from "react";

export const Layout: FC<PropsWithChildren> = ({ children }) => {
	return (
		<Wrapper>
			<Top />
			<main className="container mx-auto px-3 grow bg-green-600">{children}</main>
			<Bottom />
		</Wrapper>
	);
};
