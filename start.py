import os
from app import create_app, db
from flask import g, render_template

app = create_app(os.getenv('FLASK_CONFIG') or 'default')


@app.errorhandler(404)
def page_not_found(e):
    return render_template('errors/404.html'), 404


if __name__ == '__main__':
    # asyncio.get_event_loop().run_until_complete(start_server)
    app.run(host="0.0.0.0", debug=True)
    # app.run()