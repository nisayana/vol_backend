class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'my_s3cr3t')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header
            begin
                JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nill
            end
        end
    end

    def logged_in_user
        if decoded_token && isOrganization?
            organization_id = decoded_token[0]['organization_id']
            @user = Organization.find_by(id: organization_id)
        else decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!logged_in_user
    end

    def check_user
        if decoded_token
            # byebug
            class_name = decoded_token[0]['role']
        end
    end

    def isOrganization?
        check_user == 'Organization'
    end

    def authorized
        render json: {error: 'Please log in'}, status: :unathorized unless logged_in?
    end

end
