from setuptools import setup, find_packages

setup(
    name="kaalin-brew",
    version="1.0.0",
    description="Latin-to-Cyrillic converter CLI for the Karakalpak language",
    author="Turdıbek Jumabaev",
    author_email="turdibekjumabaev05@gmail.com",
    packages=find_packages(),
    entry_points={
        'console_scripts': [
            "cyr2lat=cli.converter:cyr2lat",
            "lat2cyr=cli.converter:lat2cyr",
        ],
    },
    install_requires=[
        'kaalin==3.1.0',
    ],
    python_requires='>=3.6',
)
