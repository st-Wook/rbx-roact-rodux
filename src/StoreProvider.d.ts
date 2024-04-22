import React from "@rbxts/react";
import Rodux from "@rbxts/rodux";

declare interface StoreProviderProps {
	store: Rodux.Store<unknown>;
}

declare class StoreProvider extends React.Component<StoreProviderProps> {
	constructor(props: StoreProviderProps);
	public render(): React.Element;
}

export = StoreProvider;
