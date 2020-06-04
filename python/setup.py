import setuptools

setuptools.setup(
    name='outfit-tagging-interface',
    description='grpc code for tag my outfit service',
    packages=['outfit_tagging.interface'],
    version='0.0.1',
    python_requires='>=3.6',
    install_requires=['grpcio>=1.16.1']
)
