import "../styles/globals.css";
import type { AppContext, AppInitialProps, AppLayoutProps } from "next/app";
import { NextComponentType } from "next";

const MyApp: NextComponentType<AppContext, AppInitialProps, AppLayoutProps> = ({
  Component,
  pageProps,
}) => {
  const getLayout = Component.getLayout || ((page: React.ReactNode) => page);

  return getLayout(<Component {...pageProps} />);
};

export default MyApp;
