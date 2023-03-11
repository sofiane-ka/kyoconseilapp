const express = require('express');
require('dotenv').config();
const { Configuration, OpenAIApi } = require("openai");

const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

const configuration = new Configuration({
    apiKey: process.env.OPEN_AI_KEY,
});

const openai = new OpenAIApi(configuration);

app.post("/find-complexity", async (req, res) => {
   try {
    const response = await openai.createCompletion({
        model : "text-davinci-003",
        prompt : `
        Who is Batman?
                    
                    `,
        max_tokens : 60,
        temperature : 0,
        top_p : 1.0,
        presence_penalty : 0.0,
        frequency_penalty : 0.0,
        stop : ["\n"],
    });


    return res.status(200).json({
        success : true,
        data : response.data.choices[0].text,
   });
}
    catch (err) {
       return res.status(400).json({
            success : false,
            error : err.response 
            ? err.response.data 
            :"there was an error"  
        });
    } 
});

app.listen(port, () => console.log(`Listening on port ${port}`));



