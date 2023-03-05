import { useTranslation } from "@/hooks/useTranslation";

export const Top = () => {
	const { t } = useTranslation();
	return (
		<header className="bg-primary-color font-primary">
			<div>{t("BRAND_NAME")}</div>
		</header>
	);
};
