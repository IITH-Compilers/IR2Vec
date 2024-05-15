# Instructions
- Here, we lay out the instructions to update and generate a new Docker Image for the repository requirements.

- IR2Vec maintains its own [manylinux2014-llvm](https://github.com/IITH-Compilers/manylinux2014-llvm) repository for the relevant Docker images to be used in the compilation and testing processes. Create a local clone for the same.
- Make changes to the relevant Dockerfile, and then run the command `docker build -t your-image-name:1.0 -f Dockerfile .`
    - Replace your-image-name with the desired name for your Docker image.\
- Run `docker tag your-image-name:1.0 ghcr.io/OWNER/IMAGE_NAME:1.0`
    - Replace OWNER with your GitHub username or organization, and IMAGE_NAME with the desired image name.
    - Now, your local Docker image is tagged with the GitHub Container Registry URL.
- `docker login ghcr.io -u USERNAME -p TOKEN`
    - Replace USERNAME with your GitHub username and TOKEN with your personal access token.
- Thereafter, run `docker push ghcr.io/OWNER/IMAGE_NAME:1.0` to finally push the image to the Docker registry.
- Remember to replace placeholders like your-image-name, OWNER, IMAGE_NAME, 1.0, USERNAME, and TOKEN with your actual values.

After this, this docker image is ready for use.
