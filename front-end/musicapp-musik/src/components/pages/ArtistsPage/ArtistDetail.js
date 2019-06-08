import React, { Fragment } from 'react';
import ArtistDetailHeader from './ArtistDetailHeader';
import TrackItemContainer from '../../tracks/TrackItemContainer';
import { BrowsePageFetchOnSrollContainer } from '../../../containers/FetchOnSrollContainer';
import { wipeFetchOnScrollSongs, getSongBySingerPaging } from '../../../actions/SongAction';
import AlbumItem from '../AlbumPage/AlbumItem';
import {withTranslation} from 'react-i18next';

class ArtistDetail extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            tracksVisible: false
        }
        let id = this.props.match.params.id;
        Promise.all([this.props.getSingerById(id), this.props.getTopPopular(id),
            this.props.getAlbumsBySingerId(id)]);
    }

    componentDidUpdate(prevProps) {
        if (prevProps.match.params.id !== this.props.match.params.id) {
            let id = this.props.match.params.id;
            Promise.all([this.props.getSingerById(id), this.props.getTopPopular(id),
                this.props.getAlbumsBySingerId(id)]);
        }
    }

    showTracks = ()=>{
        this.setState(
            {
                tracksVisible: true
            }
        )
    }

    hideTracks = ()=>{
        this.setState({
            tracksVisible: false
        })
    }

    render() {
        let { topPopular,albums,t } = this.props;
        return (
            <Fragment>
                <ArtistDetailHeader t={t} albumCount = {albums.albums.length}
                singer={this.props.singer} />
                <div className="nav-active-border b-primary bottom m-b-md">
                    <ul className="nav l-h-2x">
                        <li className="nav-item m-r inline">
                            <a className="nav-link active" href="#" data-toggle="tab" 
                            onClick={this.hideTracks}
                            data-target="#tab_1" aria-expanded="true">{t('overview')}</a>
                        </li>
                        <li className="nav-item m-r inline">
                            <a className="nav-link" href="#" data-toggle="tab"
                            onClick={this.showTracks}
                            data-target="#tab_2" aria-expanded="false">{t('tracks')}</a>
                        </li>
                        <li className="nav-item m-r inline">
                            <a className="nav-link" href="#" data-toggle="tab" 
                            onClick={this.hideTracks}
                            data-target="#tab_4" aria-expanded="false">{t('user:profile')}</a>
                        </li>
                    </ul>
                </div>
                <div className="tab-content">
                    <div className="tab-pane active" id="tab_1" aria-expanded="true">
                        <h5 className="m-b">{t('artist:popular')}</h5>
                        <div className="row item-list item-list-md item-list-li m-b" id="tracks">
                            {topPopular.map(value => (
                                <div className="col-md-12 col-lg-6" key={value.songId}>
                                    <TrackItemContainer type="track" track={value} />
                                </div>
                            ))}
                        </div>
                        <h5 className="m-b">{t('albums')}</h5>
                        <div className="row">
                            {albums.albums.length>0?albums.albums.map(value => (
                                <div className="col-xs-4 col-sm-4 col-md-3" key={value.id}>
                                    <AlbumItem album={value}
                                    />
                                </div>)):<div style={{width: '100%',textAlign: 'center'}}>{t('artist:noalbums')}</div>}
                        </div>
                    </div>
                    <div className="tab-pane" id="tab_2" aria-expanded="false">
                        {this.state.tracksVisible&&
                        <BrowsePageFetchOnSrollContainer type="track" wipeFunc={wipeFetchOnScrollSongs}
                            me="songs" func={getSongBySingerPaging} singerId={this.props.match.params.id} />}
                    </div>
                    <div className="tab-pane" id="tab_4" aria-expanded="false">
                        <div className="row-col m-b">
                            <div className="col-xs w-xs text-muted">Location</div>
                            <div className="col-xs">UK</div>
                        </div>
                        <div className="row-col m-b">
                            <div className="col-xs w-xs text-muted">Website</div>
                            <div className="col-xs"><a href="http://rachel-platten.com">http://rachel-platten.com</a></div>
                        </div>
                        <div className="row-col m-b">
                            <div className="col-xs w-xs text-muted" />
                            <div className="col-xs">
                                <a href className="btn btn-icon btn-social rounded white btn-sm">
                                    <i className="fa fa-facebook" />
                                    <i className="fa fa-facebook indigo" />
                                </a>
                                <a href className="btn btn-icon btn-social rounded white btn-sm">
                                    <i className="fa fa-twitter" />
                                    <i className="fa fa-twitter light-blue" />
                                </a>
                                <a href className="btn btn-icon btn-social rounded white btn-sm">
                                    <i className="fa fa-google-plus" />
                                    <i className="fa fa-google-plus red" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </Fragment>
        )
    }
}

export default withTranslation(['common','user','artist'])(ArtistDetail);