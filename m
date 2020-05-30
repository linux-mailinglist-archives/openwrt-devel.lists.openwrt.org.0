Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF7E1E9097
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 12:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-ID:To:From:Date:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oUrvQmkjaeAW1sK6M260tOF6KjRK7bP9tG6zwyIHP5k=; b=KAMPHtrd8R4JFMzT6812aW6A/
	y1KCBOMfnYSzA426Cl8hTYsAfsTqhpV8oR5B85ysJ4+c2xURrZvcnjlHGZuT+aA/V73SildymvxFJ
	8kzCVpr8oAyf0H4tTLoYP+vuyv3xCmh6vWK3sH6plLlemnNcIerTUIdC4Ij9av1cnZq6sFHWqfc0T
	pTIj7xQB1+8dw9wgaap9w8dk7oVqSgTpOW4tuntKsdKHGnGBdIg5641cinbZv/6TXII7BpcQvxTsy
	Z2hqycDkCRwK6+qrQRKwAKqL0JkjdsAtMdnMwtYZcRsNhnGYyHRasXicH/wYx/Xg8MiIkNnEvyrLe
	Ol7HVkAQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeysz-0004Lh-5r; Sat, 30 May 2020 10:38:41 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyst-0004L6-Iz
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 10:38:37 +0000
Received: (wp-smtpd smtp.tlen.pl 25035 invoked from network);
 30 May 2020 12:31:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1590834714; bh=1kCvH5qhCz7tGSluLcnVNAi8uuX+tHUo8dNHVGrn450=;
 h=Subject:From:To;
 b=hAUPTvXf2phs0APc2AJzC0axEmx1qLvsWYmo+L14vDGnHhB1Yl0EioH/cHWWLBBJ5
 YerVFRLvI23b+O673WXsY+QFFnX4KfdfHp8UrMmmPx2J8OWTC9LLDg0BreqnQvofjO
 TUoW0Ubu8N6fvF3yGDJ7CWj536bTXNYqY2bbNRnY=
Received: from localhost.localdomain (HELO localhost) ([81.97.86.206])
 (envelope-sender <penteljapan@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with SMTP
 for <openwrt-devel@lists.openwrt.org>; 30 May 2020 12:31:54 +0200
MIME-Version: 1.0
User-Agent: GWP-Draft
X-Originator: 81.97.86.206
X-FactoryStamp: H---
Date: Sat, 30 May 2020 12:31:54 +0200
X-Draft-Variant: reply
X-Draft-Parentmailid: afe945e371e3c7073e76f768
X-Draft-Contenttype: text/html
Priority: normal
From: a <penteljapan@o2.pl>
To: =?UTF-8?Q?openwrt-devel=40lists=2Eopenwrt=2Eorg?=
 <openwrt-devel@lists.openwrt.org>
Message-ID: <52bba81c2a9d455aacb802d3afb0b252@grupawp.pl>
In-Reply-To: <<ebcc71ade2c74c779e395cbac88ddeb4@grupawp.pl>>
References: <ebcc71ade2c74c779e395cbac88ddeb4@grupawp.pl>
X-WP-MailID: d8118d0459e2c3ea9a028d43ac9d8fcd
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000010 [IYME]                               
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_033835_787896_ED201B75 
X-CRM114-Status: UNSURE (   0.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [penteljapan[at]o2.pl]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.145 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] =?utf-8?q?Odp=3A_ZNC_openwrt_variant?=
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3306339448809093215=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3306339448809093215==
Content-Type: multipart/alternative; boundary="2GXLMYVKIGGEXVPYHJAXTnhgwp"

--2GXLMYVKIGGEXVPYHJAXTnhgwp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

why its required to have that part=C2=A0 under /etc/config/znc  config  &#3=
9;znc&#39; 
	list  &#39;listener&#39; 	 &#39;192.168.1.1 1234&#39;  while i want to use=
 external=C2=A0 znc_config_path   ?  Next, znc --makeconf is generating in =
different way password comparing to znc -makepass which is causing problem =
under /etc/init.d/znc sript - in one word it doesnt work  
            
          
     
      
       
        Dnia 28 maja 2020 23:00 a &lt;penteljapan@o2.pl&gt; napisa=C5=82(a)=
:
       
    
       
         what about fingerprints how to save them? 
            

     

       
        Dnia 28 maja 2020 13:37 a &lt;penteljapan@o2.pl&gt; napisa=C5=82(a)=
:
       

       
         1. /etc/config/znc doesnt support hiding password sha + salt or if=
 its supporting that=C2=A0 whats the pattern.  2. It is required to type ne=
twork name to join=C2=A0 that network which is not mentioned under document=
ation  openwrt.org openwrt.org =C2=A0/quote PASS username/Default:password =
 3. how to generate ssl cert NOT as root ?  4. Variable channel `` Specifie=
s one or more channels to join on connect. The required format is =E2=80=9C=
&lt;channelname&gt; [&lt;password&gt;]=E2=80=9D.``=C2=A0  leaving that in s=
tate=C2=A0   list &#39;channel&#39;    &#39;#test &#39;=C2=A0 =C2=A0// with=
 empty string=C2=A0  causing=C2=A0  Thu May 28 13:29:36 2020 daemon.info pr=
ocd: Instance znc::instance1 s in a crash loop 6 crashes, 0 seconds since l=
ast crash  5. In general its hard to debug for me , all i can do its servic=
e start/stop without any output, theres any way to get more verbose data?=
=0D

--2GXLMYVKIGGEXVPYHJAXTnhgwp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8


          <div>why its required to have that part&nbsp; under /etc/config/z=
nc<br></div><pre class=3D"code bash" style=3D"margin: 0px 0px 1.4em; paddin=
g: 0.7em 1em; font-family: Consolas, &quot;Andale Mono WT&quot;, &quot;Anda=
le Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Nimbus Mono L&qu=
ot;, Monaco, &quot;Courier New&quot;, monospace; font-size: 14px; direction=
: ltr; text-align: left; color: rgb(51, 51, 51); border-radius: 2px; white-=
space: pre; overflow: auto; overflow-wrap: normal; border: 1px solid rgb(20=
4, 204, 204); box-shadow: rgb(204, 204, 204) 0px 0px 0.5em inset; backgroun=
d: rgba(255, 255, 255, 0.9); font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text=
-decoration-color: initial;">config <span class=3D"colour" style=3D"color:r=
gb(255, 0, 0)">'znc'</span>
	list <span class=3D"colour" style=3D"color:rgb(255, 0, 0)">'listener'</spa=
n>	<span class=3D"colour" style=3D"color:rgb(255, 0, 0)">'192.168.1.1 1234'=
</span><br></pre><div>while i want to use external&nbsp;<span class=3D"high=
light" style=3D"background-color:rgb(238, 238, 238)"><span class=3D"colour"=
 style=3D"color:rgb(85, 85, 85)"><span class=3D"font" style=3D"font-family:=
Consolas, &quot;Andale Mono WT&quot;, &quot;Andale Mono&quot;, &quot;Bitstr=
eam Vera Sans Mono&quot;, &quot;Nimbus Mono L&quot;, Monaco, &quot;Courier =
New&quot;, monospace"><span class=3D"size" style=3D"font-size:14px">znc_con=
fig_path</span></span></span></span><br></div><div><br></div><div>?<br></di=
v><div>Next, znc --makeconf is generating in different way password compari=
ng to znc -makepass which is causing problem under /etc/init.d/znc sript - =
in one word it doesnt work<br></div>
          <br>
          
    <div class=3D"nh_extra">
      
      <p>
        Dnia 28 maja 2020 23:00 a &lt;penteljapan@o2.pl&gt; napisa=C5=82(a)=
:
      </p>
    
      <blockquote class=3D"nh_quote" style=3D"border-left: 2px solid #999; =
padding-left: 8px; margin: 0;">
        <div id=3D"gwp0467ce43"><div id=3D"gwp0467ce43h"><div class=3D"gwp0=
467ce43b" data-message-body=3D"true"><div>what about fingerprints how to sa=
ve them?</div>
          <br/>

    <div class=3D"gwp0467ce43_nh_extra">

      <p>
        Dnia 28 maja 2020 13:37 a &lt;penteljapan@o2.pl&gt; napisa=C5=82(a)=
:
      </p>

      <blockquote is-minimized class=3D"gwp0467ce43_nh_quote" style=3D"bord=
er-left: 2px solid #999; padding-left: 8px; margin: 0;">
        <div id=3D"gwp0467ce43_gwped033837"><div id=3D"gwp0467ce43_gwped033=
837h"><div class=3D"gwp0467ce43_gwped033837b" data-message-body=3D"true"><d=
iv>1. /etc/config/znc doesnt support hiding password sha + salt or if its s=
upporting that=C2=A0 whats the pattern.<br/></div><div>2. It is required to=
 type network name to join=C2=A0 that network which is not mentioned under =
documentation <a href=3D"https://openwrt.org/docs/guide-user/services/proxy=
/znc" rel=3D"noopener noreferrer" target=3D"_blank" rel=3D"noopener norefer=
rer" nh-safe-redirect data-saferedirecturl=3D"https://zasobygwp.pl/redirect=
?sig=3D575f370e6ce46615d644f08bf3727e645bcacca69bffa966c52f6fd77e197154&url=
=3DaHR0cHM6Ly9vcGVud3J0Lm9yZy9kb2NzL2d1aWRlLXVzZXIvc2VydmljZXMvcHJveHkvem5j=
&platform=3Ddesktop&brand=3Do2">https://openwrt.org/docs/guide-user/service=
s/proxy/znc</a>=C2=A0/quote PASS username/Default:password<br/></div><div>3=
. how to generate ssl cert NOT as root ?<br/></div><div>4. Variable channel=
 ``<span class=3D"gwp0467ce43_gwped033837_highlight" style=3D"background-co=
lor:rgb(238, 238, 238)"><span class=3D"gwp0467ce43_gwped033837_colour" styl=
e=3D"color:rgb(51, 51, 51)"><span class=3D"gwp0467ce43_gwped033837_font" st=
yle=3D"font-family:Arial, sans-serif"><span class=3D"gwp0467ce43_gwped03383=
7_size" style=3D"font-size:14px">Specifies one or more channels to join on =
connect. The required format is =E2=80=9C&lt;channelname&gt; [&lt;password&=
gt;]=E2=80=9D.``=C2=A0</span></span></span></span><br/></div><div><span cla=
ss=3D"gwp0467ce43_gwped033837_highlight" style=3D"background-color:rgb(238,=
 238, 238)"><span class=3D"gwp0467ce43_gwped033837_colour" style=3D"color:r=
gb(51, 51, 51)"><span class=3D"gwp0467ce43_gwped033837_font" style=3D"font-=
family:Arial, sans-serif"><span class=3D"gwp0467ce43_gwped033837_size" styl=
e=3D"font-size:14px">leaving that in state=C2=A0 </span></span></span></spa=
n><br/></div><div>list &#39;channel&#39;    &#39;#test &#39;=C2=A0 =C2=A0//=
 with empty string=C2=A0<br/></div><div>causing=C2=A0<br/></div><div>Thu Ma=
y 28 13:29:36 2020 daemon.info procd: Instance znc::instance1 s in a crash =
loop 6 crashes, 0 seconds since last crash<br/></div><div>5. In general its=
 hard to debug for me , all i can do its service start/stop without any out=
put, theres any way to get more verbose data?</div><p><br/></p><p style=3D"=
-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0p=
x; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><br/></p><p><br/=
></p><p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0p=
x; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"=
></p><div><br/></div><div><br/></div></div></div></div>
      </blockquote>
    </div></div></div></div>
      </blockquote>
    </div>
  
        
--2GXLMYVKIGGEXVPYHJAXTnhgwp--


--===============3306339448809093215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3306339448809093215==--

