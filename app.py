from flask import Flask, render_template, request, session, flash, url_for, redirect, jsonify
import time, os, requests, urllib.parse, json
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 
import tensorflow as tf
from tensorflow import keras
from keras import backend as K


from utils import mapping
import librosa
import soundfile as sf
from werkzeug.utils import secure_filename
import numpy as np 
import subprocess




app = Flask(__name__)


app.config['upload path'] = r'C:\Users\limhu\Downloads\Speech-To-Text'
app.config['Model'] =tf.keras.models.load_model('RNN/soundlstm/' )

@app.route('/' , methods = ['GET'])
def homepage():
    return render_template('index.html')

# @app.route('/login', methods=['GET'])
# def login():
#     return render_template('login.html')

@app.route("/audio", methods=['POST'])
def setup():
    # if request.method== 'POST':
    files = request.files
    audio = files['audio']
    audio.seek(0)
    audio.save(os.path.join(app.config['upload path'] , secure_filename('file.webm' )))
    subprocess.run(['ffmpeg' , '-i' , os.path.join(app.config['upload path'] , secure_filename('file.webm' )) ,os.path.join(app.config['upload path'] , secure_filename('file.wav' ))  ] , shell=True)
    arr, _ =librosa.load(os.path.join(app.config['upload path'] , secure_filename('file.wav')))
    os.remove(os.path.join(app.config['upload path'] , 'file.webm'))
    os.remove(os.path.join(app.config['upload path'] , 'file.wav'))
    if len(arr) <16000:
        arr += [0]*(16000-len(arr))
        # print(arr)

    prediction = np.argmax(app.config['Model'].predict(arr.reshape(1,-1)))
    print(mapping(prediction))
    # if request.method== 'POST':
    return dict(text= mapping(prediction))
        



# @app.route("/login", methods=["GET", "POST"])
# def login():
#     if request.method == "POST":
#         uname = request.form.get('username')
#         pword = request.form.get('password')
#         user = Users.query.filter_by(username=uname).first()
#         if user and check_password_hash(user.password, pword):
#             login_user(user)
#             return redirect('/')
#         else:
#             flash('Please check your login details and try again.')
#             return redirect(url_for("login"))
#     else:
#         users = []
#         for user in Users.query.all():
#             users.append(user.__dict__)
#         if users ==[]:
#             return redirect(url_for('setup'))
#         else:
#             return render_template('login.html')

# # @app.route("/", methods=["GET"])
# # @login_required
# # def main():
# #     return "Dashboard"
# return_dash_app( app )


# @app.route("/config", methods=["GET", "POST"])
# @login_required
# def config():
#     if request.method == "POST":
#         requestData = request.get_json()
#         timings = requestData['timings']
#         medication = requestData['medication']
#         dose = requestData['dose']
#         cylinder = Mappings.query.filter_by(medicationName=medication).first().cylinderNum
#         try:
#             newDose = Medications(cylinder, timings, dose)
#             db.session.add(newDose)
#             db.session.commit()
#             return {"message": "success"}
#         except:
#             return{"message": "Error adding dosage and medication, please check input and try again."}
#             # flash("Error adding dosage and medication, please check input and try again.")
#             # return redirect(url_for('config'))
#     else:
#         try:
#             med1 = Mappings.query.filter_by(cylinderNum=1).first().medicationName
#             med2 = Mappings.query.filter_by(cylinderNum=2).first().medicationName
#             med3 = Mappings.query.filter_by(cylinderNum=3).first().medicationName
#             med4 = Mappings.query.filter_by(cylinderNum=4).first().medicationName
#         except:
#             med1 = med2 = med3 = med4 = "error"
        
#         return render_template('InsertConfig.html', med1=med1, med2=med2, med3=med3, med4=med4)

# @app.route("/settings", methods=["GET", "POST"])
# @login_required
# def medSettings():
#     if request.method == "POST":
#         try:
#             requestData = request.get_json()
#             phoneNumber = requestData['phoneNumber']
#             dosageData = requestData['dosage']
#             stockData = requestData['stock']
#             mappingData = requestData['mapping']
#             db.session.query(Medications).delete()
#             db.session.commit()
#             for dose in dosageData:
#                 query = Mappings.query.filter_by(medicationName=dose['medication']).first().cylinderNum
#                 tmp = Medications(cylinderNum=query, timings=dose['timings'], dosage=dose['dose'])
#                 db.session.add(tmp)
#                 db.session.commit()
#             update1 = Mappings.query.filter_by(cylinderNum=1).update(dict(stock=stockData['cyl1'], medicationName=mappingData['cyl1']))
#             update2 = Mappings.query.filter_by(cylinderNum=2).update(dict(stock=stockData['cyl2'], medicationName=mappingData['cyl2']))
#             update3 = Mappings.query.filter_by(cylinderNum=3).update(dict(stock=stockData['cyl3'], medicationName=mappingData['cyl3']))
#             update4 = Mappings.query.filter_by(cylinderNum=4).update(dict(stock=stockData['cyl4'], medicationName=mappingData['cyl4']))
#             update5 = Users.query.filter_by(username=current_user.username).update(dict(number=int(phoneNumber)))
#             db.session.commit()
#             return {"message": "success"}
#         except Exception as e:
#             print(e)
#             return {"message": "error"}
        
#     else:
#         dosage = Medications.query.all()
#         data = [i.__dict__ for i in dosage]
#         print(data)
#         cyl=Mappings.query.all()
#         cylinderdata=[i.__dict__ for i in cyl]
#         cylinder={}
#         for idx, i in enumerate(cylinderdata):
#             cylinder[idx+1]=i['medicationName']
#         print(cylinder)
#         phoneNumber=Users.query.filter_by(username=current_user.username).first().number

#         return render_template("updateconfig.html",
#         data=data,
#         cylinder=cylinder,
#         phoneNumber=phoneNumber,
#         stock1=Mappings.query.filter_by(cylinderNum=1).first().stock,
#         stock2=Mappings.query.filter_by(cylinderNum=2).first().stock,
#         stock3=Mappings.query.filter_by(cylinderNum=3).first().stock,
#         stock4=Mappings.query.filter_by(cylinderNum=4).first().stock,
#         mapping1=Mappings.query.filter_by(cylinderNum=1).first().medicationName,
#         mapping2=Mappings.query.filter_by(cylinderNum=2).first().medicationName,
#         mapping3=Mappings.query.filter_by(cylinderNum=3).first().medicationName,
#         mapping4=Mappings.query.filter_by(cylinderNum=4).first().medicationName,
#         zip=zip,
#         enumerate=enumerate)

# # Endpoint for raspberry
# @app.route("/retrconfig", methods=["GET"])
# @auth.login_required
# def retrconfig():
#     dosage = Medications.query.all()
#     data = [i.__dict__ for i in dosage]
#     for i in data:
#         del i['_sa_instance_state']
#     return {"data":str(data)}

# @app.route("/sendmessage", methods=["POST"])
# @auth.login_required
# def sendMessage():
#     number = Users.query.first().number
#     apikey = Users.query.first().apikey
#     message = request.args.get('message')
#     if apikey == "000000":
#         return {"No apikey found"}
#     else:
#         x = requests.get(f"https://api.callmebot.com/whatsapp.php?phone=+65{number}&text={urllib.parse.quote_plus(message)}&apikey={apikey}")
#         return {"message sent"}

# @app.route("/getstock", methods=["GET"])
# @auth.login_required
# def getStock():
#     stock = {
#         "cyl1": Mappings.query.filter_by(cylinderNum=1).first().stock,
#         "cyl2": Mappings.query.filter_by(cylinderNum=2).first().stock,
#         "cyl3": Mappings.query.filter_by(cylinderNum=3).first().stock,
#         "cyl4": Mappings.query.filter_by(cylinderNum=4).first().stock
#     }
#     print(stock)
#     return stock

# @app.route("/lowerStock", methods=["POST"])
# @auth.login_required
# def updateStock():
#     cylinder = request.args.get('cyl')
#     quantity = request.args.get('qty')
#     currentStock = int(Mappings.query.filter_by(cylinderNum=cylinder).first().stock)
#     update = Mappings.query.filter_by(cylinderNum=cylinder).update(dict(stock=currentStock-int(quantity)))
#     db.session.commit()
#     return {"message":"success"}

if __name__ == "__main__":
    app.run(debug=False, host="0.0.0.0", port=1234 )

