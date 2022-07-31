import { FC } from "react";
import { Footer } from "../footer";
import { Header } from "../header";

type Props = {
  children: React.ReactNode;
};

export const DefaultLayout: FC<Props> = ({ children }) => {
  return (
    <>
      <Header />
      {children}
      <Footer />
    </>
  );
};
