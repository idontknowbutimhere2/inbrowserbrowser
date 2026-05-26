const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;

/*

TEMP SESSION STORE

Later:
- one browser container per user
- auto cleanup
- session tracking

*/

const sessions = {};

app.use(express.static(__dirname));

app.get("/api/create-session", (req, res) => {

    // generate random session id

    const sessionId =
        Math.random()
        .toString(36)
        .substring(2, 12);

    // fake session for now

    sessions[sessionId] = {

        created: Date.now()
    };

    console.log(
        "Session created:",
        sessionId
    );

    // later:
    // create chromium container here

    res.json({

        success: true,

        sessionId: sessionId,

        url:
        "https://inbrowserbrowser.onrender.com"
    });
});

app.listen(PORT, () => {

    console.log(
        "Server running on port",
        PORT
    );
});
