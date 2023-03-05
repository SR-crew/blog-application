import classNames from "classnames";

import type { FC, PropsWithChildren } from "react";

export const Wrapper: FC<PropsWithChildren & { classname?: string }> = ({ children, classname }) => (
	<div className={classNames("flex flex-col h-full")}>{children}</div>
);
