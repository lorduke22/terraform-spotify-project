# Project to Learn How to Use Terraform: Creating a Playlist on Spotify

## Steps

1. **Create a Spotify Developer App**  
   Create Spotify Developer App and add this as Redirect URIs http://localhost:27228/spotify_callback
   
   Create and save file .env with `client_id` and `client_secret`

2. **Run a Proxy Server Using Docker**  
   Use the `spotify_auth_proxy` module to allow Terraform to interact with Spotify:

    ```bash
    docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
    ```

3. **Save the API Key**  
   Copy the API key returned from the auth URL and save it in a variable by creating a `terraform.tfvars` file.

4. **Initialize Terraform**  
   Run the following command:

    ```bash
    terraform init
    ```

5. **Create a Playlist Resource in Terraform**  
   Specify the URLs of the songs you want to add to your playlist. Additionally, create another playlist that automatically adds songs from a specific artist to a second playlist using the Terraform Data Source.

6. **Plan and Apply Terraform Configuration**  
   Execute the following commands:

    ```bash
    terraform plan
    terraform apply
    ```
