class OrderedPitches extends React.Component {
	
	render() {
		let pitches = this.props.pitches.map((pitch, i) =>{
				return <Pitch data={pitch} key={i} rank={true} rankID ={i}/>
			})
		return (
			<div> 
				{pitches}
			</div>
		)
	}
}