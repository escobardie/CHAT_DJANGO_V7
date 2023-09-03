from django import template

register = template.Library()


@register.filter(name='initials')
def initials(value):
    initials = ''

    # for name in value.split(' '): # original
    #     if name and len(initials) < 3:
    #         initials += name[0].upper()
    for username in value.split(' '):
        if username and len(initials) < 3:
            initials += username[0].upper()

    return initials