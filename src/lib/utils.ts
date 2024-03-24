export const serializeNonPOJOs = (obj: object): object => {
	return structuredClone(obj);
};

/**
 * Get the base URL for the API from ENV
 */
export const getBaseAPIURL = (): string => {
	return import.meta.env.VITE_API_URL;
};
