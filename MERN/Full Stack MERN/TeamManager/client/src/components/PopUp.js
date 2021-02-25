import React, { forwardRef, useState } from 'react';
// import Button from '@material-ui/core/Button';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Slide from '@material-ui/core/Slide';
import DeleteButton from './DeleteButton';

const Transition = forwardRef(function Transition(props, ref) {
    return <Slide direction="up" ref={ ref } { ...props } />;
})

const PopUp = (props) => {
    const [ open, setOpen ] = useState(false);

    const handleClickOpen = () => {
        setOpen(true);
    };

    const handleClickClose = () => {
        setOpen(false);
    };

    return (
        <>
            <div>
                <button id="delete-btn" className="btn btn-danger" onClick={ handleClickOpen }>
                    Delete
                </button>
                <Dialog
                    open={ open }
                    TransitionComponent={ Transition }
                    keepMounted
                    onClose={ handleClickClose }
                    aria-labelledby="alert-dialog-slide-title"
                    aria-describedby="alert-dialog-slide-description"
                >
                    <DialogTitle id="alert-dialog-slide-title">Deleting Player</DialogTitle>
                    <DialogContent>
                        <DialogContentText id="alert-dialog-slide-description">
                            Are you sure you want to delete { props.position } { props.name }?
                        </DialogContentText>
                    </DialogContent>
                    <DialogActions>
                        <button onClick={ handleClickClose } className="btn btn-sm btn-secondary">
                            Cancel
                        </button>
                        <DeleteButton id={ props.id } removeFromDom={() => props.removeFromDom(props.id) } closePopup={ handleClickClose }>
                            Delete Me
                        </DeleteButton>
                    </DialogActions>
                </Dialog>
            </div>
        </>
    );
}

export default PopUp;