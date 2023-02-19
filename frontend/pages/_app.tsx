import "../styles/globals.css";
import type { NextComponentType } from "next";
import type { AppContext, AppInitialProps, AppLayoutProps } from "next/app";

const MyApp: NextComponentType<AppContext, AppInitialProps, AppLayoutProps> = ({
  Component,
  pageProps,
}) => {
  const getLayout = Component.getLayout || ((page: React.ReactNode) => page);

  return getLayout(<Component {...pageProps} />);
};

export default MyApp;
