import React, { Component } from 'react'
import UserTrackItemLikeContainer from './UserTrackItemLikeContainer';
import uuid from "uuid";
export default class UserTrackListLike extends Component {
    render() {
        return (
            <div className={`tab-pane ${this.props.active&&'active'}`} id="like" aria-expanded="false">
                  <div className="row item-list item-list-by m-b">
                    {this.props.list.map(value => (
                        <UserTrackItemLikeContainer addSongToQueue={this.props.addSongToQueue}
                            key={uuid.v4()} track={value} />
                    ))}
                </div>
            </div>
        )
    }
}
