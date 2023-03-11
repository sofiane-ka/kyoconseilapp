const express= require('express')
const app= express()
const nodemailer=require('nodemailer')
const multer=require('multer')
const fs=require('fs')
const storage=multer.diskStorage({
    destination:function (req, file, cb){
        if(!fs.existsSync(__dirname+'/temp')){
            fs.mkdirSync(__dirname+'/temp')
        }
        cb(null,'./temp')
    },
    filename:function(req,file,cb){
        cb(null,file.originalname)
    }
})
const transporter= nodemailer.createTransport({
    host:'smtp.gmail.com',
    port:('465'),
    sender:'gmail',
    auth : {
        user:'youxxraa@gmail.com',
        pass:'wvxyvoxkfzuiqicu'
    }
})
app.get('/sendEmail',upload.array('attachments'), (req,res) => {
    let attachements=[]
    for (let i=0; i<req.files.length; i++){
        let fileDetails={
            filename:req.files[i].filename,
            path: req.files[i].path
        }
        attachements.push(fileDetails)
    }
    var mailOptions={
        from:'youxxraa@gmail.com',
        to:'bouhanna.yousra@gmail.com',
        subject: 'Feedback From Client ',
        text:'jndjcndjncdjcn',// here you will replace it with the text that you get from the front end, i mean the text written by the client 
        attachements: attachements
    }
 transporter.sendMail(mailOptions,(err,info)=>{
    if(!err) {
        res.json({status:'ok', data:info })
    }else {
        res.json({status:'error', data:"something went wrong "})
     }})

})


app.listen(3000,(err)=>{
    if(!err){
        console.log('App is listening')
    }
})