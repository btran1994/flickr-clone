import React from 'react';

class PhotoShow extends React.Component {
    constructor(props) {
        // console.log(props, 'props');
        super(props);
        console.log(this.state, 'show state')
        console.log(this.props, 'show props')
    }

    componentDidMount() {
        // console.log(this.props, 'jhgfchjk')
        // debugger;
        let pic = this.props.fetchPhoto(this.props.id);
        // console.log(pic, 'picture')
    }

    componentDidUpdate(prevProps) {
        if (prevProps.match.params.id !== this.props.match.params.id) {
            this.props.fetchPhoto(this.props.id);
        }
    }

    render() {
        let photo = this.props.photo
        if (photo) {
            // console.log(photo, 'photo')
            return(
                <ul className="photo-show">
                    <li className="photo-wrap">
                        <img src={photo.imageUrl} alt="" />
                    </li>
                    <li className="photo-title-description">
                        <div className="profile-pic">
                        </div>
                        <div className="photo-user">
                            <h1>{photo.user.username}</h1>
                            <br/>
                            {photo.description}
                        </div>
                    </li>
                </ul>
            )
        } else {
            return null;
        }
        
    }
}

export default PhotoShow;