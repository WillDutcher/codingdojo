const express = require('express');
const app = express();
const cors = require('cors');
const port = 8000;
const socket = require('socket.io');

const server = app.listen(port, () =>
    console.log(`Server running on port ${ port }`)
);

const io = socket(server, {
    cors: {
        origin: 'http://localhost:3000',
        methods: [' GET', 'POST' ],
        allowedHeaders: [ '*' ],
        credentials: true
    }
});

io.on("connection", (socket) => {
    console.log(`on the server side - socket id: ${ socket.id } `);
    console.log("Nice to meet you. (shake hand)");

    socket.emit('your_socket_id', socket.id);

    socket.on("welcome_msg", () => {
        console.log("Welcome. Things seem to be working!")
    });

    socket.on("welcome_msg_chat", (data) => {
        console.log("Welcome to the Chat App!");
        console.log(data);
    })


    // socket.on("event_from_client", data => {
    //     socket.broadcast.emit("send_data_to_all_other_clients", data);
    // });
});