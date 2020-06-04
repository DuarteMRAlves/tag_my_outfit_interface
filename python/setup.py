import setuptools

setuptools.setup(
    name='outfit-tagging-interface',
    description='grpc code for tag my outfit service',
    packages=setuptools.find_namespace_packages(include=['outfit_tagging.*']),
    version='0.0.1.dev1',
    python_requires='>=3.6',
    install_requires=['grpcio-tools>=1.16.1']
)
