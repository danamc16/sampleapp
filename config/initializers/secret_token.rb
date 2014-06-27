require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = 'fe702457ee82e4e3e2e17335bac5200f09bb3b3dd7f86111d5e868e22193f799285e84c060722dd0
3378f9b262598ca75a3335b61f950b0cd4ade63c06630e4f'
