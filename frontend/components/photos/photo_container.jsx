import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { fetchPhoto, fetchPhotos, clearPhotoErrors } from '../../actions/photo_actions';
import PhotoIndex from './photo_index';

const mapState = state => {
    //debugger;
    console.log(state, 'state')
    return {
        photos: Object.values(state.entities.photos)
    }
};

const mapDispatch = dispatch => {
    return {
        fetchPhoto: id => dispatch(fetchPhoto(id)),
        fetchPhotos: () => dispatch(fetchPhotos())
    }
};

export default connect(mapState, mapDispatch)(PhotoIndex);