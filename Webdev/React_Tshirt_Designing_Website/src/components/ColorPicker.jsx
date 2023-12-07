import React from 'react'
import { SkethPicker } from 'react-color'
import { useSnapshot } from 'valtio'

import state from '../store';

const ColorPicker = () => {
	const snap = useSnapshot(state);
	return (
		<div className="absolute left-full m1-3">
			<SketchPicker color = {snap.color} disableAlpha 
				presetColors={['#512314', '#726DE8', '#FF96AD', '#FF8A65']}
				onChange={(color) => state.color = color.hex} />
		</div>
		)
}

export default ColorPicker