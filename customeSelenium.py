from bs4 import BeautifulSoup
from robot.api.deco import keyword


@keyword("Parse Html")
def parse_html(text):
    """
    Parse Html
    :param text: html text
    """
    return BeautifulSoup(text, 'html.parser')


@keyword("Get All Headers")
def get_all_text_source(text,tag_name,class_name):
    """
    Get all Text from Html
    """
    text_list=[]
    soup = BeautifulSoup(text, features="html.parser")
    for i in soup.find_all(tag_name, class_=class_name):
        text_list.append(i.text)
    return text_list