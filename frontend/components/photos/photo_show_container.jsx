import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { fetchPhoto, fetchPhotos, clearPhotoErrors } from '../../actions/photo_actions';
import PhotoShow from './photo_show';

const mapState = (state, ownProps) => {
    // debugger;
    console.log(state, 'photo show state')
    console.log(state.entities, 'ownprops')
    console.log(state.entities.photos.photo, 'state photo')
    return {
        photo: state.entities.photos.photo,
        id: ownProps.match.params.id
    }
};

const mapDispatch = dispatch => {
    return {
        fetchPhoto: id => dispatch(fetchPhoto(id)),
    }
};

export default connect(mapState, mapDispatch)(PhotoShow);