import React from 'react';

class PhotoShow extends React.Component {
    constructor(props) {
        console.log(props, 'props');
        super(props);
    }

    componentDidMount() {
        console.log(this.props, 'jhgfchjk')
        let pic = this.props.fetchPhoto(this.props.id);
        // console.log(pic, 'picture')
    }

    render() {
        let photo = this.props.photo
        if (photo) {
            console.log(photo, 'photo')
            return(
                <div className="photo-show">
                    <div className="photo-info">
                        {photo.title}
                        <br/><br/>
                        {photo.description}
                    </div>
                    <img src={photo.imageLink} alt=""/>
                </div>
            )
        } else {
            return null;
        }
        
    }
}

export default PhotoShow;