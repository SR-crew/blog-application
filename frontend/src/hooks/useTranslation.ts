import { useRouter } from "next/router";

import { DICTIONARY } from "../../locales/_root";

export const useTranslation = () => {
	const { locales = [], defaultLocale = "en", ...nextRouter } = useRouter();
	const locale =
		locales.includes(nextRouter.locale || "") && nextRouter.locale !== undefined
			? nextRouter.locale
			: defaultLocale;

	return {
		t: (key: any) => {
			const translation = DICTIONARY[locale]?.[key];

			return translation ?? key;
		},
	};
};
