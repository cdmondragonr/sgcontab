from flask import Blueprint

transactions = Blueprint('transaction', __name__)

@transactions.route('/transaction')
def get_transactions():
    return '<p>Congratulations, you have got a route from transaction</p>'