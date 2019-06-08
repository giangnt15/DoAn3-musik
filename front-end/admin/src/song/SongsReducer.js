import * as actionConstants from '../constants/index'

const initialStateModal = {
    users: {
        id: 0,
        name: '',
        email: '',
        imageUrl: '',
        emailVerified: '',
        provider: '',
    },
    isLoading: false,
    error: null
}

const initialSate = {
    songList: [],
    isGettingSongList: false,
    isLoadingDelete: false,
    isUpdating: false,
    error: null
}

export const songListReducer = (state = initialSate, action) => {
    switch (action.type) {
        case actionConstants.GETTING_SONGS:
            return {
                ...state,
                isGettingSongList: true
            }
        case actionConstants.GET_SONGS_SUCCESS:
            return {
                ...state,
                isGettingSongList: false,
                songList: action.payload
            }
        case actionConstants.GET_SONGS_FAIL:
            return {
                ...state,
                isGettingSongList: false,
                error: state.error
            }
        case actionConstants.UPLOAD_SONG_SUCCESS:
            return {
                ...state,
                songList: [action.song, ...state.songList]
            }
        case actionConstants.DELETE_SONG_SUCCESS:
            let list = state.songList.filter(value => {
                return value.songId !== action.song.songId
            })
            return {
                ...state,
                songList: list
            }
        default:
            return state
    }
}