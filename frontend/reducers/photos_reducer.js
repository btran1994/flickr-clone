import { RECEIVE_PHOTO, RECEIVE_PHOTOS, REMOVE_PHOTO } from '../actions/photo_actions';

const _nullPhoto = Object.freeze({
    
});

const photoReducer = (state = _nullPhoto, action) => {
    // console.log(action, 'action');
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_PHOTO:
            console.log('hi')
            return { photo: action.photo};
        case RECEIVE_PHOTOS:
            return action.photos;
        case REMOVE_PHOTO:
            return _nullPhoto;
        default: 
            return state;
    }
};

export default photoReducer;