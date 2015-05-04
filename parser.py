#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
#парсер txt2gam файлов. необходимо сконвертировать в utf-8 и уалить корявый нулевой байт.


def main():
    gpp = open('main.qs', 'w')

    with open(sys.argv[1]) as f:
        for line in f:
            if '# ' == line[:2]:
                name = line[2:].strip() + '.qs'
                new = open(name, 'w')
                gpp.write('#include %s\n' % name)

            if new:
                new.write(line)

            if '---' in line[:3] and name in line:
                new.close()

if __name__ == '__main__':
    main()

