FROM sphinxdoc/sphinx:3.2.0
RUN pip install sphinxcontrib-fulltoc rst2pdf
RUN apt-get update -y
RUN mkdir /usr/share/man/man1/
RUN apt-get install -y pdftk
COPY mirantis.py /usr/local/lib/python3.8/site-packages/pygments/styles/mirantis.py


