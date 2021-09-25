class IndexController < ApplicationController
    require 'rc4'

    def index
    end


    def encrypt 
        

        chave = params[:chave]
        mensagem = params[:mensagem]

       
        
        enc = RC4.new(chave)
        @encrypted = enc.encrypt(mensagem)


            
        @encrytped_utf8 = @encrypted.force_encoding('ISO-8859-1').encode('UTF-8')

    end


    def decrypt

        chave = params[:chave]
        mensagem = params[:mensagem]

        dec = RC4.new(chave)
       
        

        mensagem = mensagem.force_encoding('UTF-8').encode('ISO-8859-1')

        

        @decrypted = dec.decrypt(mensagem)


    end


end
