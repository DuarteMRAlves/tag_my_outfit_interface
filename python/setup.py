import setuptools

setuptools.setup(
    name='fashion-contract',
    description='grpc code for fashion service',
    packages=setuptools.find_packages(),
    version='0.0.1.dev1',
    python_requires='>=3.6',
    install_requires=['grpcio-tools>=1.16.1']
)
