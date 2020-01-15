import { combineReducers } from 'redux';

import userReducer from './users_reducer';

import photoReducer from './photos_reducer';

export default combineReducers({
    users: userReducer,
    photos: photoReducer
})