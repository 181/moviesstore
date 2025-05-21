from atexit import register
from django import template

register = template.Library()

@register.filter(name='get_quantity')
def get_cart_quantity(cart, movie_id):
    """
    Get the quantity of a specific movie in the cart.
    """
    return cart[str(movie_id)]

