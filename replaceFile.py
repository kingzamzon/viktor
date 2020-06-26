#!/usr/bin/python3
"""
    Program to replace words in current directory
"""
import argparse
from pathlib import Path

# list all files
def search_replace_string(oldword, newword, file_extension):
    files_list = list(Path('.').glob('*.'+file_extension))
    print(files_list)
    for file in files_list:
        print(f'Applying Fix to :{file}')
        path = Path(file)
        text = path.read_text()
        text = text.replace(oldword, newword)
        path.write_text(text)

if __name__ == '__main__':
    argP = argparse.ArgumentParser()
    argP.add_argument('oldword', help="Previous word")
    argP.add_argument('newword', help="New word")
    argP.add_argument('extension', help="Extension e.g html, txt")

    argument = argP.parse_args()

    oldword = argument.oldword
    newword = argument.newword
    extension = argument.extension
    search_replace_string(oldword, newword, extension)
