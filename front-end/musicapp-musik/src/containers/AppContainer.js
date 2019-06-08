import {connect} from 'react-redux';
import App from '../App';
import {withRouter} from 'react-router-dom';
import { loadCurrentUser, saveFavCat } from '../actions/AuthentcationAction';
import { getRecommendedSongs } from '../actions/SongAction';
import { getPlaylistsByUserId } from '../actions/PlayListsAction';

var mapStateToProp = state =>{
    return {
        authentication: state.authentication
    }
}

var mapDispatchToProps = dispatch =>{
    return {
        loadCurrentlyLoggedInUser: ()=>{
            dispatch(loadCurrentUser());
        },
        saveFavCat : (data)=>{
            dispatch(saveFavCat(data));
        },
        getPlayListsByUserId: (userId)=>{
            dispatch(getPlaylistsByUserId(userId));
        },
        getRecommendedSongs : (ids)=>{
            dispatch(getRecommendedSongs(ids));
        }
    }
}

export default withRouter(connect(mapStateToProp,mapDispatchToProps)(App));