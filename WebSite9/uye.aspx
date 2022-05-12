<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="uye.aspx.cs" Inherits="uye" %>

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
							<li class="active">Uye Ol  -  GIRIS Yap</li>
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

					<div class="col-md-6 order-details">
						<!-- Billing Details -->
						<div class="billing-details">
						    <div class="section-title text-center">
							    <h3 class="title">Üye Ol</h3>
						    </div>
							<div class="form-group">
                                <asp:TextBox ID="txtAd" runat="server" class="input" type="text" name="first-name" placeholder="Adınız"></asp:TextBox>
							</div>
							<div class="form-group">
                                <asp:TextBox ID="txtSoyad" runat="server" class="input" type="text" name="last-name" placeholder="Soyadınız"></asp:TextBox>
							</div>
							<div class="form-group">
                                <asp:TextBox ID="txtMail" runat="server" class="input" type="email" name="email" placeholder="E-Postanız"></asp:TextBox>
							</div>
							<div class="form-group">
                                <asp:TextBox ID="txtAdres" runat="server" class="input" type="text" name="address" placeholder="Adresiniz"></asp:TextBox>
							</div>
							<div class="form-group">
                                <asp:TextBox ID="txtSemt" runat="server" class="input" type="text" name="city" placeholder="Semtiniz"></asp:TextBox>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="country" placeholder="Ülkeniz">
							</div>
							<div class="form-group">
                                <asp:TextBox ID="txtPosta" runat="server" class="input" type="text" name="zip-code" placeholder="Posta Kodunuz"></asp:TextBox>
							</div>
							<div class="form-group">
                                <asp:TextBox ID="txtTel" runat="server" class="input" type="tel" name="tel" placeholder="Telefonunuz"></asp:TextBox>
							</div>
							<div class="caption">
                                <asp:TextBox ID="TextBox1" runat="server" class="input" type="password" name="password" placeholder="Şifrenizi Giriniz"></asp:TextBox>
						    </div>
                            <br />
						    <div class="input-checkbox">
							    <input type="checkbox" id="Checkbox2">
							    <label for="mert">
								    <span></span>
								    <a href="#">Şartları ve koşulları </a> okudum  kabul ediyorum.
							    </label>
						    </div>
                            <asp:Button ID="Button2" runat="server" class="primary-btn order-submit" Text="Üyel Ol" />
						</div>
					</div>
                    <div class="col-md-1"></div>
					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">Giris Yap</h3>
						</div>
							<div class="form-group">
                                <asp:TextBox ID="giris1" runat="server" class="input" type="text" name="first-name" placeholder="E-Posta"></asp:TextBox>
							</div>
							<div class="form-group">
                                <asp:TextBox ID="giris2" runat="server" class="input" type="password" name="last-name" placeholder="Şifre"></asp:TextBox>
							</div>
                            <asp:Label ID="Hata" runat="server" ForeColor="Red"></asp:Label><br />
						
                        <br /><div class="input-checkbox">
							<input type="checkbox" id="terms">
							<label for="terms">
								<span></span>
								Beni Hatırla
							</label>
						</div>
                        <asp:Button ID="Button1" runat="server" class="primary-btn order-submit" 
                            Text="Giriş Yap" onclick="Button1_Click" />
                        <br /><br />
                        E-Posta :  aybaylardan_06@gmail.com
                        <br />
                        Şifre   :  1234
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
</asp:Content>

