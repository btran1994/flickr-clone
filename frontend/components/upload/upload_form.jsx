import React from 'react';

class UploadForm extends React.Component {
    constructor(props) {
        super(props)
        this.state = this.props.photo
        console.log(this.props, 'props')
    }

    handleClick() {
        console.log('click')
        $('#file-upload').trigger('click')
    }

    handleSubmit(e) {
        e.preventDefault();
        const newPhoto = new FormData();
        newPhoto.append('photo[title]', this.state.title)
        newPhoto.append('photo[description]', this.state.description)
        newPhoto.append('photo[user_id]', this.props.photo.user_id)
        newPhoto.append('photo[image]', this.state.imageFile)
        this.props.processForm(newPhoto).then(photo => {
            console.log(photo, 'photo')
        })
        this.props.closeModal();
    }

    handleUpload(e) {
        e.preventDefault();
        const file = e.currentTarget.files[0];
        console.log(file, 'file')
        // console.log(this.state, 'state')
        const reader = new FileReader();
        reader.onloadend = () => {
            this.setState({imageUrl: reader.result, imageFile: file})
        }

        if (file) {
            // console.log(file, 'file')
            reader.readAsDataURL(file)
        } else {
            console.log(this.state, 'invalid?')
        }

        if (file) {
            console.log('hello')
        }
        console.log(this.state, 'state')
        this.forceUpdate();

    }

    update(field) {
        return e => this.setState({ [field]: e.currentTarget.value });
    }

    render() {
        console.log(this.state, 'imageurl')
        return (
            <div className="uploady">
                <form onSubmit={this.handleSubmit.bind(this)} className="upload-form">
                    <h1>Upload Photo:</h1>
                    <label>
                        Title:
                    </label>
                        <input onChange={this.update('title')} type="text" name="title-input"/>
                    <label>
                        Description:
                    </label>
                        <textarea onChange={this.update('description')} name="description-input" id="" cols="30" rows="10"></textarea>
                    <input type="submit" name="submit-photo" value="Upload Photo"/>
                </form>
                <div>
                    <img className="upload" onClick={this.handleClick} src={window.blackUpload} alt="" />
                    <input id="file-upload" type="file" onChange={this.handleUpload.bind(this)} />  
                </div>
                <div className="image-preview">
                    <h1>Image Preview:</h1>
                    <img className="img-preview" src={this.state.imageUrl} alt=""/>
                </div>
            </div>
            
        )
    }
}

export default UploadForm;