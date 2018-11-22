class KakaoController < ApplicationController
  def keyboard
    @msg = {type: "buttons",
            buttons: ["소개", "가입문의", "거래"]}
            render json: @msg, status: :ok
  end

  def message
    @result = params[:content]
    
    if @result.include? "소개" or @result.include? "순하리"
      @msg = {
        message: { text: ["안녕하세요 메이플스토리 제니스 서버 [순하리] 길드입니다!.","제니스 대표 길드입니다."].sample},
        keyboard: { type: "text"}
      }
      render json: @msg, status: :ok
      
    elsif
    @result.include? "가입문의" or @result.include? "가입"
      @msg = {
        message: { text: ["인겜닉 '포션좀사쥬' 로 연락주세요","인겜닉 '쁘띠정복자' 로 연락주세요"].sample},
        keyboard: { type: "text"}
      }
      render json: @msg, status: :ok
    elsif
    @result.include? "거래"
      @msg = {
        message: { text: "무슨 종류를 거래 하시나요? 1.메소거래를 원하시면 'ㅁㅅ' 2.ㅁㅌ 아이템 거래를 원하시면 'ㅁㅌ' "},
        keyboard: { type: "text"}
      }
      render json: @msg, status: :ok
    else 
     @msg = {
        message: { text: "??"},
        keyboard: { type: "text"}
      }
      render json: @msg, status: :ok
    end
  end
end
