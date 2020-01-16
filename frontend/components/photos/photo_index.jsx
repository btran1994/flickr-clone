import React, { useReducer } from 'react';

class PhotoIndex extends React.Component {
    constructor(props) {
        // console.log(props, 'photo index props');
        super(props);
        this.handleClick = this.handleClick.bind(this)
    }

    componentDidMount() {
        // console.log(this.props, 'jhgfchjk')
        this.props.fetchPhotos();
    }

    handleClick(e) {
        // console.log(this.props.history, 'history')
        this.props.history.push(`photos/${e.target.id}`)
        
    }

    render() {
        // console.log(this.props, 'props');
        // console.log(Object.values(this.props.photos))
        // let photosArray = Object.values(this.props.photos);
        // console.log(photosArray, 'henlo')
        // console.log(photosArray[0], 'first');
        // console.log(this.props.photos, 'henlo')
        let photos = this.props.photos;
        // console.log(photos, "photos");
        // photos.map((photo, idx) => {
        //     console.log(photo.imageUrl);
        // })
        


        // console.log(this.props.state, 'state');
        // console.log(stuff);
        // console.log(this.props.photos, 'why')
        // console.log(this.props.photos)
        if (photos.length === 0) {
            return null
        } else {
            // console.log(photos[0].title, 'title');
            // console.log(this, 'sample state')

            return (
                <ul className="photo-display">
                    {
                        photos.map((photo) => {
                            // console.log(photo.user.username, 'user')
                            return (
                                <li key={photo.id} className="bigphotocontainer">
                                    <div className="photo-info-container">
                                        <img className='hover' onClick={this.handleClick} id={photo.id} src={photo.imageUrl} alt=""/>
                                        <div onClick={this.handleClick} id={photo.id} className='photo-stuff'>
                                            {photo.title}
                                            <br/>
                                            <br/>
                                            {photo.user.username}
                                        </div>
                                        <div onClick={this.handleClick} id={photo.id} className="photo-info-background">a</div>
                                    </div>
                                </li>
                            )
                        })
                    }
                </ul>

            );
        }
        
    }

    // componentDidMount() {
    //     this.props.fetchPhotos();
    // }
}

export default PhotoIndex;