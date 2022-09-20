from flask import request, Flask
import json
app=Flask(__name__)

desc='''
    <!DOCTYPE html>
    <head>
        <title>API landing..</title>
    </head>
    <body>
        <h3>a simple API using</h3>
        <a href="http://localhost:5000/api?value=2">sample request</a>
    </body>
    <h1></h1>
    '''
@app.route('/', methods=['GET'])

def test():
    return desc

@app.route('/api',methods=['GET'])

def square():
    if not all(k in request.args for k in (["val"])):
        err_msg=f"\
                        Required parameters: 'value'<br>\
                        Supplied parameters: {[k for k in request.args]}\
                        "
        return err_msg

    else:
        val=int(request.args['val'])
        val=request.args.get('val',type=int)

        return json.dumps({'val squared',val**2})

if __name__ == "__main__":
    app.run(host='0.0.0.0',port=5000)
    
