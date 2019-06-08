import React from 'react';
import TrackItemContainer from '../../tracks/TrackItemContainer';

export default class PlayListTrackList extends React.Component{
    render(){
        return(
            <div id="tracks" className="row item-list item-list-xs item-list-li m-b">
                    {this.props.list&&this.props.list.map(value => (
                        <TrackItemContainer playlistId={this.props.playlistId}
                        isInList={this.props.isInList}
                        type="track" key={value.songId} track={value} />
                    ))}
                </div>
        )
    }
}