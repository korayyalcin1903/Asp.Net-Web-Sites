<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="odeme.aspx.cs" Inherits="odeme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="anasayfa.aspx">Ana Sayfa</a></li>
							<li class="active">Ödeme Yap</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Fatura Bilgileriniz</h3>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="first-name" placeholder="Adınız">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="last-name" placeholder="Soyadınız">
							</div>
							<div class="form-group">
								<input class="input" type="email" name="email" placeholder="E-Postanız">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="address" placeholder="Adresiniz">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="city" placeholder="Semtiniz">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="country" placeholder="Ülkeniz">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="zip-code" placeholder="Posta Kodunuz">
							</div>
							<div class="form-group">
								<input class="input" type="tel" name="tel" placeholder="Telefonunuz">
							</div>
							<div class="form-group">
								<div class="input-checkbox">
									<input type="checkbox" id="create-account">
									<label for="create-account">
										<span></span>
										Yeni hesap oluşturmak ister misin?
									</label>
									<div class="caption">
										<p>Şifreniz en az 10 karakterden oluşmalıdır.</p>
										<input class="input" type="password" name="password" placeholder="Şifrenizi Giriniz">
									</div>
								</div>
							</div>
						</div>
						<!-- /Billing Details -->

						<!-- Shiping Details -->
						<div class="shiping-details">
							<div class="section-title">
								<h3 class="title">Adres Bilgileriniz</h3>
							</div>
							<div class="input-checkbox">
								<input type="checkbox" id="shiping-address">
								<label for="shiping-address">
									<span></span>
									Farklı Bir Adrese mi göndereceksiniz ?
								</label>
								<div class="caption">
									<div class="form-group">
										<input class="input" type="text" name="first-name" placeholder="First Name">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="last-name" placeholder="Last Name">
									</div>
									<div class="form-group">
										<input class="input" type="email" name="email" placeholder="Email">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="address" placeholder="Address">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="city" placeholder="City">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="country" placeholder="Country">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="zip-code" placeholder="ZIP Code">
									</div>
									<div class="form-group">
										<input class="input" type="tel" name="tel" placeholder="Telephone">
									</div>
								</div>
							</div>
						</div>
						<!-- /Shiping Details -->

						<!-- Order notes -->
						<div class="order-notes">
							<textarea class="input" placeholder="Siparişleriniz hakkında not ekleyebilirsiniz."></textarea>
						</div>
						<!-- /Order notes -->
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">Sipariş Hakkında</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>ÜRÜN</strong></div>
								<div><strong>FİYAT</strong></div>
							</div>
							<div class="order-products">
								<div class="order-col">
									<div>Düğmeli fitilli midi elbise</div>
									<div>83,95 TL</div>
								</div>
								<div class="order-col">
									<div>File kumaş spor ayakkabı</div>
									<div>99,95 TL</div>
								</div>
							</div>
							<div class="order-col">
								<div>Kargo</div>
								<div><strong>Ücretsiz</strong></div>
							</div>
							<div class="order-col">
								<div><strong>TOPLAM</strong></div>
								<div><strong class="order-total">183,90 TL</strong></div>
							</div>
						</div>
						<div class="payment-method">
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-1">
								<label for="payment-1">
									<span></span>
									Direct Bank Transfer
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-2">
								<label for="payment-2">
									<span></span>
									Cheque Payment
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-3">
								<label for="payment-3">
									<span></span>
									Paypal System
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="terms">
							<label for="terms">
								<span></span>
								<a href="#">Şartları ve koşulları </a> okudum kabul ediyorum.
							</label>
						</div>
						<a href="#" class="primary-btn order-submit">SİPARİŞ VER</a>
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
</asp:Content>

