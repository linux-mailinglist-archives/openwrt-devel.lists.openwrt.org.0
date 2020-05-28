Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F6C1E6E45
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 00:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-ID:To:From:Date:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NTefb4sw28AkkxTbV7AVapmGgMz78ahsuSX6fF0wfF8=; b=r+EPXTWO5QJk5lryKujxoGofz
	97aj/SoKBGWrKNjN5/GxF8fx9DWoawnDd1IpIL2OerEfJd0eJNcQeLrUKDhDdoXT6fH89g3r8uwSZ
	2uTYK88aUr0rSJmdwMlm5ulY+R5mX0tmgB9bHAWKwRintTrp29fmchuS260mVvrOoYUEu/tiNkxaz
	FWiMAYJh1p68iSs8kEsPgGsKz5JqT40TCP0Ls/ynieN4sU58G68csgKkbonE3ez8/M0UbnakmOZo3
	TTZ7lwq9Lp7H1tISGj3SUHIQIimibMYXSYKDZus1+P9NLuv1DfkdJq0eV8u1Srnlwkg32MhnKEMwI
	hNRVBMMbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQZs-00009a-On; Thu, 28 May 2020 22:00:40 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQZn-00008y-EY
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 22:00:37 +0000
Received: (wp-smtpd smtp.tlen.pl 1075 invoked from network);
 29 May 2020 00:00:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1590703231; bh=WS8NErAVRxL1Bne7CW8O6+WSIkIT/Jpoh3ibMAi2IBo=;
 h=Subject:From:To;
 b=AAv9/ZyjlkQdZyqEYCBQLVondjQaOO3kasv/Hs80Pxkf8/aWeDbJrw/ac1l5TC4nO
 wpDC+DeMWATKim1HU5usWBWvHiJ/xt05ZNMTKzDTXOqZAFimy9sMw1co9FLYM0bRl6
 xhh0VRgwY+pkM55TXTR5YO0GFRgVfUb7NZppPB5I=
Received: from localhost.localdomain (HELO localhost) ([81.97.86.206])
 (envelope-sender <penteljapan@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with SMTP
 for <penteljapan@o2.pl>; 29 May 2020 00:00:31 +0200
MIME-Version: 1.0
User-Agent: GWP-Draft
X-Originator: 81.97.86.206
X-FactoryStamp: H---
Date: Fri, 29 May 2020 00:00:31 +0200
X-Draft-Variant: reply
X-Draft-Parentmailid: c324cb7e7abfd4b4f01561c2
X-Draft-Contenttype: text/html
Priority: normal
From: a <penteljapan@o2.pl>
To: a <penteljapan@o2.pl>, =?UTF-8?Q?openwrt-devel=40lists=2Eopenwrt=2Eorg?=
 <openwrt-devel@lists.openwrt.org>
Message-ID: <ebcc71ade2c74c779e395cbac88ddeb4@grupawp.pl>
In-Reply-To: <<4c2954f1f3ae44f9bf162e36654bbbef@grupawp.pl>>
References: <4c2954f1f3ae44f9bf162e36654bbbef@grupawp.pl>
X-WP-MailID: 0a4df42af5196966d96e9a29148fe6df
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000012 [4bH2]                               
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_150035_808958_75199AF9 
X-CRM114-Status: UNSURE (   1.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [193.222.135.158 listed in psbl.surriel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.158 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [penteljapan[at]o2.pl]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?193.222.135.158>]
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
Content-Type: multipart/mixed; boundary="===============3671426598892164504=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3671426598892164504==
Content-Type: multipart/alternative; boundary="2XGDXHEPJRSPPSPRPOASLnhgwp"

--2XGDXHEPJRSPPSPRPOASLnhgwp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

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

--2XGDXHEPJRSPPSPRPOASLnhgwp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8


          <div>what about fingerprints how to save them?</div>
          <br>
          
    <div class=3D"nh_extra">
      
      <p>
        Dnia 28 maja 2020 13:37 a &lt;penteljapan@o2.pl&gt; napisa=C5=82(a)=
:
      </p>
    
      <blockquote class=3D"nh_quote" style=3D"border-left: 2px solid #999; =
padding-left: 8px; margin: 0;">
        <div id=3D"gwped033837"><div id=3D"gwped033837h"><div class=3D"gwpe=
d033837b" data-message-body=3D"true"><div>1. /etc/config/znc doesnt support=
 hiding password sha + salt or if its supporting that=C2=A0 whats the patte=
rn.<br/></div><div>2. It is required to type network name to join=C2=A0 tha=
t network which is not mentioned under documentation <a href=3D"https://ope=
nwrt.org/docs/guide-user/services/proxy/znc" target=3D"_blank" rel=3D"noope=
ner noreferrer" nh-safe-redirect data-saferedirecturl=3D"https://zasobygwp.=
pl/redirect?sig=3D575f370e6ce46615d644f08bf3727e645bcacca69bffa966c52f6fd77=
e197154&url=3DaHR0cHM6Ly9vcGVud3J0Lm9yZy9kb2NzL2d1aWRlLXVzZXIvc2VydmljZXMvc=
HJveHkvem5j&platform=3Ddesktop&brand=3Do2">https://openwrt.org/docs/guide-u=
ser/services/proxy/znc</a>=C2=A0/quote PASS username/Default:password<br/><=
/div><div>3. how to generate ssl cert NOT as root ?<br/></div><div>4. Varia=
ble channel ``<span class=3D"gwped033837_highlight" style=3D"background-col=
or:rgb(238, 238, 238)"><span class=3D"gwped033837_colour" style=3D"color:rg=
b(51, 51, 51)"><span class=3D"gwped033837_font" style=3D"font-family:Arial,=
 sans-serif"><span class=3D"gwped033837_size" style=3D"font-size:14px">Spec=
ifies one or more channels to join on connect. The required format is =E2=
=80=9C&lt;channelname&gt; [&lt;password&gt;]=E2=80=9D.``=C2=A0</span></span=
></span></span><br/></div><div><span class=3D"gwped033837_highlight" style=
=3D"background-color:rgb(238, 238, 238)"><span class=3D"gwped033837_colour"=
 style=3D"color:rgb(51, 51, 51)"><span class=3D"gwped033837_font" style=3D"=
font-family:Arial, sans-serif"><span class=3D"gwped033837_size" style=3D"fo=
nt-size:14px">leaving that in state=C2=A0 </span></span></span></span><br/>=
</div><div>list &#39;channel&#39;    &#39;#test &#39;=C2=A0 =C2=A0// with e=
mpty string=C2=A0<br/></div><div>causing=C2=A0<br/></div><div>Thu May 28 13=
:29:36 2020 daemon.info procd: Instance znc::instance1 s in a crash loop 6 =
crashes, 0 seconds since last crash<br/></div><div>5. In general its hard t=
o debug for me , all i can do its service start/stop without any output, th=
eres any way to get more verbose data?</div><p><br/></p><p style=3D"-qt-par=
agraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; marg=
in-right:0px; -qt-block-indent:0; text-indent:0px;"><br/></p><p><br/></p><p=
 style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; marg=
in-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"></p><d=
iv><br/></div><div><br/></div></div></div></div>
      </blockquote>
    </div>
  
        
--2XGDXHEPJRSPPSPRPOASLnhgwp--


--===============3671426598892164504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3671426598892164504==--

