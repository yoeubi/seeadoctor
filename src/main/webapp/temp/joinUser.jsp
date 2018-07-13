<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/joinUser.css" />
<style>
	.form-group {
		position:relative;
	}
	.form-group > p {
		position: absolute;
		color:red;
		top: 10px;
		right: 10px;
	}
</style>
</head>
<body>
	<div class="container">

		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form">
					<h2>
						회원가입 <small>User</small>
					</h2>
					<hr class="colorgraph">
					<div class="form-group">
						<input type="text" name="id" id="id" class="form-control input-lg"
							placeholder="아이디" tabindex="1">
							<p>position absolute</p>
					</div>
					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password" id="password"
									class="form-control input-lg" placeholder="비밀번호" tabindex="2">
							</div>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password_confirmation"
									id="password_confirmation" class="form-control input-lg"
									placeholder="비밀번호 확인" tabindex="3">
							</div>
						</div>
					</div>

					<div class="form-group">
						<input type="text" name="name" id="name"
							class="form-control input-lg" placeholder="이름" tabindex="4">
					</div>
					<div class="form-group"
						style="font-size: 18px; color: rgb(175, 171, 171); border: 1px solid rgba(161, 160, 160, 0.76); height: 46px; border-radius: 6px; padding: 10px 16px; line-height: 22px; box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075)">
						성별 &nbsp;:&nbsp; <input type="radio" name="gender" id="gender"
							placeholder="성별" tabindex="5" checked /> <label for="female">여</label>
						&nbsp;&nbsp; <input type="radio" name="gender" id="gender"
							placeholder="성별" tabindex="5" /> <label for="male">남</label>
					</div>
					<div class="form-group">
						<input type="text" name="birth" id="birth"
							class="form-control input-lg" placeholder="생년월일 (6자리)"
							tabindex="6">
					</div>
					<div class="form-group">
						<input type="email" name="email" id="email"
							class="form-control input-lg" placeholder="Email Address"
							tabindex="7">
					</div>
					<div class="form-group">
						<input type="text" name="phone" id="phone"
							class="form-control input-lg" placeholder="핸드폰 번호" tabindex="8">
					</div>
					<div class="form-group">
						<input type="text" name="addr1" id="addr1"
							class="form-control input-lg" placeholder="주소" tabindex="9">
					</div>
					<div class="form-group">
						<input type="text" name="addr2" id="addr2"
							class="form-control input-lg" placeholder="상세주소" tabindex="10">
					</div>
					<div class="row"></div>

					<hr class="colorgraph">
					<div class="row">
						<div style="width: 100px; margin-left: 470px;">
							<input type="submit" value="Register"
								class="btn btn-primary btn-block btn-lg" tabindex="7">
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>