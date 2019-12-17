Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469461226DF
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 09:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZM3Y/wRb+q3G7yAFcPt8G5WXMbrrRX/6ByzWQM5BxAE=; b=XwA
	t1nRxYOY8y+vXWK/LOWv5qKjpTAVmH7WJBgtLdSbxGiDhVUOmyYQ4NLVNjrCPgQtXABcloMvZMnPk
	jccu3aGU5JWh7uS8eW9BGjwLuYTGmSsuIRVIuhQEUvVmztpknPeIspBORtNJQ5sZlQ8TZ0frpBls0
	aO5B2O7XvRclXcN4pDxT/7UG6rc029UfGlUU0bUW2xhHH8MfH6tGh17FIqbMpBGIZGT/4+iG1s2Aa
	Rffw9+2xDQXhooypx+oS05HaFenqorlTP/cxbY0rwxkZXPXapgCnoQ1fiMGzApekliSce8q/zAMTT
	5NjXIK7T0M/8oErlaVTmZraI3OYOC3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8Sp-0001Xd-6g; Tue, 17 Dec 2019 08:44:19 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8Sh-0001XD-0R
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 08:44:12 +0000
Received: by mail-yb1-xb41.google.com with SMTP id x14so132719ybr.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Dec 2019 00:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=00C1+UUSgq4G1TUy6kzFUzoCxtpaHbCnK5hyI228tAo=;
 b=gqOXMdQLCXC0kdO6Z0TD7ZJ6ragAGMNE29MYgPuX6cgE6wOkD9e5DMF0LE9eFNihui
 2V4dBKUVvZG38b+iUk2QJmn/1gGL/YH4QeTzJTSGFtsUlKv+ccI90FImbAMauaAqaZnt
 Vmu0hxXJjPtFVVUSAz3q+PcChiaRMiU7ZydclH9izBtKFAbbozYCbRzZ9KOUs6cmZmQF
 5U8By9GxGLjfpq4xQe6RXoi6Zo/9jhBSUIkOrG5VFsX0BB5Vq60D+hGqLMtXZcpU02kc
 LdnVSGTveIESdjny8YrkArTn+kAnZCSQSX9pjLFJermbFa03km94qgS1zqNm88YqxJLX
 rVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=00C1+UUSgq4G1TUy6kzFUzoCxtpaHbCnK5hyI228tAo=;
 b=Rf77sq85c2B3EQAq+GQ/JHrUGCCz75pdmkaLr0x3gGKJ//o16SjP7MyVraCYh11Hmg
 bEax1K1wPuwT+B7xfugZtU/8T7xgdfRGLIdo1sL8e9dlqrCadRWiFc7GRqma8wCzroLa
 b7Pd78jp09EecKmw2KHaiDkjuNg066OPwtpOl3Dh7EfAoT3tGrrp7P4+qbzDg1h9LcPR
 ozFTFNO0KvkexaCKM2qCZ/dHrqIZTjHnrSgl3JqEwIRFir8Pa1VSKgIw6qRFyOlaRSNG
 7JeRU6yZYRDxzb0KW+FcMlpQ88YWL4aPhyYdKxisvKmg1c2DLWlLQIu53KDLp50m6XGy
 /0JQ==
X-Gm-Message-State: APjAAAWuTC6eq7N5xnXm/HxYL6t+QvcIXb0batQs9rWyl7Ylqgf4Mc8y
 gxhNFVnXUJH9d2u6prvcaOeAlNUBmSm2bux1oLUW0pe1nlw=
X-Google-Smtp-Source: APXvYqy4CksfMRDK2MRA1fCbXD5hlFXH7AvkvkcT45P85CHNe3JXQcfpHkp8ca69oBcutmMO2aBYi3zQRZgocKi+ZRs=
X-Received: by 2002:a25:4246:: with SMTP id p67mr17697790yba.211.1576572249424; 
 Tue, 17 Dec 2019 00:44:09 -0800 (PST)
MIME-Version: 1.0
From: Huan Peng <watchpeng168@gmail.com>
Date: Tue, 17 Dec 2019 16:43:57 +0800
Message-ID: <CAFbghhX+yd_YUnnd6rgWxMdjVJzyGfXXiLfOjMK-ziS_AW_mBA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_004411_080065_779F4EFD 
X-CRM114-Status: UNSURE (   1.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (watchpeng168[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (watchpeng168[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Please forward it to your purchasing manager
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
Content-Type: multipart/mixed; boundary="===============0199666442859304235=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0199666442859304235==
Content-Type: multipart/alternative; boundary="000000000000e3c6c00599e2541f"

--000000000000e3c6c00599e2541f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*Hello there.  Dear friends!  Thank you very much for checking my email, I
am very happy!  I hope that you can spend a minute to see the whole
email.  I believe it will be of great help to your business.  We are a
professional watch trading company.  Production of   Michael
Kors   watches,   Armani watches,     **Daniel Wellington*




















*   watches,   Hugo Boss   watches,   Calvin Klein   watches
and   Tissot   watches.  Our watches are sold in more than 10 countries,
and we will cooperate with you, you will get a lot of advantages in quality
and price, welcome wholesalers and retailers.Samples are welcome to be
sampled for quality inspection and a wholesale order is issued after that.
I hope we can build long-term business relationships. If you are interested
in our products, please feel free to contact us!About purchasing
samples:  You can purchase 1-5 samples at our wholesale price, which can be
paid via paypal and bank transfer.  About delivery time:  After the payment
is successful, we will mail the goods out within 3 working days.  About
logistics and transportation:  Our company will use DHL and FedEx will mail
the goods for you.  You will receive the goods within 4-7 days.  About the
issue of return:  If the watch has quality problems, we will replace it for
you for free!  Promotions:Our company will launch 1-2 models of watches
every month for special wholesale, which is 5%-10% lower than the normal
wholesale price.  If you are interested, or want to know more, please reply
to my  , we will reply you within 2 hours! *








*Please believe us=EF=BC=9AOur company's Facebook public
homepage:   @watchtradingcoltd  My Whatsapp: +86 18898596065  Give you the
best wishes, I hope to be your friend!  Xin Shangyi Trading Co., Ltd*

--000000000000e3c6c00599e2541f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><b style=3D"color:rgb(0,0,0)"><font color=3D"#4c1130"><fon=
t style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><=
font style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit=
">Hello there.=C2=A0=C2=A0</font></font></font></font></font><br><br><font =
style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><fo=
nt style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit">=
Dear friends!=C2=A0=C2=A0</font></font></font></font><br><br><font style=3D=
"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font style=
=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit">Thank yo=
u very much for checking my email, I am very happy!=C2=A0=C2=A0</font></fon=
t></font></font><br><br><font style=3D"vertical-align:inherit"><font style=
=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit">I hope that you can spend a minute to see th=
e whole email.=C2=A0=C2=A0</font></font></font></font><br><font color=3D"#f=
f0000"><font style=3D"vertical-align:inherit"><font style=3D"vertical-align=
:inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertical-al=
ign:inherit">I believe it will be of great help to your business.=C2=A0=C2=
=A0</font></font></font></font></font><br><br><font color=3D"#4c1130"><font=
 style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><f=
ont style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"=
>We are a professional watch trading company.=C2=A0=C2=A0</font></font></fo=
nt></font></font><br><br><font style=3D"vertical-align:inherit"><font style=
=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit">Production of=C2=A0=C2=A0=C2=A0</font></font=
></font></font><font color=3D"#ff0000" size=3D"4"><font style=3D"vertical-a=
lign:inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertica=
l-align:inherit"><font style=3D"vertical-align:inherit">Michael Kors</font>=
</font></font></font></font><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font=
 style=3D"vertical-align:inherit">=C2=A0=C2=A0=C2=A0watches,=C2=A0=C2=A0=C2=
=A0</font></font></font></font><font size=3D"4" color=3D"#ff0000"><font sty=
le=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font =
style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit">Arm=
ani</font></font></font></font></font><font style=3D"vertical-align:inherit=
"><font style=3D"vertical-align:inherit"><font style=3D"vertical-align:inhe=
rit"><font style=3D"vertical-align:inherit">=C2=A0watches,=C2=A0=C2=A0=C2=
=A0</font></font></font></font><font style=3D"vertical-align:inherit"><font=
 style=3D"vertical-align:inherit">=C2=A0=C2=A0<font style=3D"vertical-align=
:inherit"></font></font></font></b><font size=3D"4" color=3D"#ff0000"><b><f=
ont style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"=
><font style=3D"vertical-align:inherit"><font style=3D"vertical-align:inher=
it">Daniel Wellington</font></font></font></font></b></font><b style=3D"col=
or:rgb(0,0,0)"><font style=3D"vertical-align:inherit"><font style=3D"vertic=
al-align:inherit"><font style=3D"vertical-align:inherit"><font style=3D"ver=
tical-align:inherit">=C2=A0=C2=A0=C2=A0watches,=C2=A0=C2=A0=C2=A0</font></f=
ont></font></font><font size=3D"4" color=3D"#ff0000"><font style=3D"vertica=
l-align:inherit"><font style=3D"vertical-align:inherit"><font style=3D"vert=
ical-align:inherit"><font style=3D"vertical-align:inherit">Hugo Boss</font>=
</font></font></font></font><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font=
 style=3D"vertical-align:inherit">=C2=A0=C2=A0=C2=A0watches,=C2=A0=C2=A0=C2=
=A0</font></font></font></font><font size=3D"4" color=3D"#ff0000"><font sty=
le=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font =
style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit">Cal=
vin Klein</font></font></font></font></font><font style=3D"vertical-align:i=
nherit"><font style=3D"vertical-align:inherit"><font style=3D"vertical-alig=
n:inherit"><font style=3D"vertical-align:inherit">=C2=A0=C2=A0=C2=A0watches=
 and=C2=A0=C2=A0=C2=A0</font></font></font></font><font color=3D"#ff0000" s=
ize=3D"4"><font style=3D"vertical-align:inherit"><font style=3D"vertical-al=
ign:inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertical=
-align:inherit">Tissot=C2=A0</font></font></font></font></font><font style=
=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit">=C2=
=A0=C2=A0watches.=C2=A0=C2=A0</font></font></font></font><br><br><font colo=
r=3D"#4c1130"><font style=3D"vertical-align:inherit"><font style=3D"vertica=
l-align:inherit"><font style=3D"vertical-align:inherit"><font style=3D"vert=
ical-align:inherit">Our watches are sold in more than 10 countries, and we =
will cooperate with you, you will get a lot of advantages in quality and pr=
ice, welcome wholesalers and retailers.</font></font></font></font></font><=
br><font style=3D"vertical-align:inherit"><font style=3D"vertical-align:inh=
erit"><font style=3D"vertical-align:inherit"><font style=3D"vertical-align:=
inherit">Samples are welcome to be sampled for quality inspection and a who=
lesale order is issued after that. I hope we can build long-term business r=
elationships. If you are interested in our products, please feel free to co=
ntact us!</font></font></font></font><br><br><font style=3D"vertical-align:=
inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertical-ali=
gn:inherit"><font style=3D"vertical-align:inherit">About purchasing samples=
:=C2=A0=C2=A0</font></font></font></font><br><font style=3D"vertical-align:=
inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertical-ali=
gn:inherit"><font style=3D"vertical-align:inherit">You can purchase 1-5 sam=
ples at our wholesale price, which can be paid via paypal and bank transfer=
.=C2=A0=C2=A0</font></font></font></font><br><br><font color=3D"#0000ff"><f=
ont style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"=
><font style=3D"vertical-align:inherit"><font style=3D"vertical-align:inher=
it">About delivery time:=C2=A0=C2=A0</font></font></font></font></font><br>=
<font style=3D"vertical-align:inherit"><font style=3D"vertical-align:inheri=
t"><font style=3D"vertical-align:inherit"><font style=3D"vertical-align:inh=
erit">After the payment is successful, we will mail the goods out within 3 =
working days.=C2=A0=C2=A0</font></font></font></font><br><br><font color=3D=
"#0000ff"><font style=3D"vertical-align:inherit"><font style=3D"vertical-al=
ign:inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertical=
-align:inherit">About logistics and transportation:=C2=A0=C2=A0</font></fon=
t></font></font></font><br><font color=3D"#0000ff"><font style=3D"vertical-=
align:inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertic=
al-align:inherit"><font style=3D"vertical-align:inherit">Our company will u=
se DHL and FedEx will mail the goods for you.=C2=A0=C2=A0</font></font></fo=
nt></font></font><br><font color=3D"#0000ff"><font style=3D"vertical-align:=
inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertical-ali=
gn:inherit"><font style=3D"vertical-align:inherit">You will receive the goo=
ds within 4-7 days.=C2=A0=C2=A0</font></font></font></font></font><br><br><=
font color=3D"#0000ff"><font style=3D"vertical-align:inherit"><font style=
=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit">About the issue of return:=C2=A0=C2=A0</font=
></font></font></font></font><br><font color=3D"#0000ff"><font style=3D"ver=
tical-align:inherit"><font style=3D"vertical-align:inherit"><font style=3D"=
vertical-align:inherit"><font style=3D"vertical-align:inherit">If the watch=
 has quality problems, we will replace it for you for free!=C2=A0=C2=A0</fo=
nt></font></font></font></font><br><font color=3D"#0000ff"><br><font style=
=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit">Promo=
tions:</font></font></font></font></font><br><font style=3D"vertical-align:=
inherit"><font style=3D"vertical-align:inherit"><font style=3D"vertical-ali=
gn:inherit"><font style=3D"vertical-align:inherit">Our company will launch =
1-2 models of watches every month for special wholesale, which is 5%-10% lo=
wer than the normal wholesale price.=C2=A0=C2=A0</font></font></font></font=
><br><br><font color=3D"#4c1130"><font style=3D"vertical-align:inherit"><fo=
nt style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit">=
<font style=3D"vertical-align:inherit">If you are interested, or want to kn=
ow more, please reply to my=C2=A0=C2=A0</font></font></font></font></font><=
font style=3D"vertical-align:inherit"><font color=3D"#4c1130"><font style=
=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit">, we will reply you within 2 hours!</font></=
font></font></font></font><font color=3D"#0000ff">=C2=A0</font><font color=
=3D"#4c1130"><font style=3D"vertical-align:inherit"></font></font></b><div =
style=3D"color:rgb(0,0,0)"><b><br></b></div><div style=3D"color:rgb(0,0,0)"=
><b><font color=3D"#0000ff"><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font=
 style=3D"vertical-align:inherit">Please believe us=EF=BC=9A</font></font><=
/font></font></font><br><font style=3D"vertical-align:inherit"><font style=
=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font st=
yle=3D"vertical-align:inherit">Our company&#39;s Facebook public homepage:<=
/font></font></font></font><font style=3D"vertical-align:inherit"><font sty=
le=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font =
style=3D"vertical-align:inherit">=C2=A0=C2=A0=C2=A0@watchtradingcoltd=C2=A0=
=C2=A0</font></font></font></font><br><br><font color=3D"#ff0000"><font sty=
le=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><font =
style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit">My =
Whatsapp: +86 18898596065=C2=A0=C2=A0</font></font></font></font></font><br=
><br><font color=3D"#4c1130"><font style=3D"vertical-align:inherit"><font s=
tyle=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><fon=
t style=3D"vertical-align:inherit">Give you the best wishes, I hope to be y=
our friend!=C2=A0=C2=A0</font></font></font></font></font><br><font size=3D=
"6"><br><font color=3D"#ff0000"><font style=3D"vertical-align:inherit"><fon=
t style=3D"vertical-align:inherit"><font style=3D"vertical-align:inherit"><=
font style=3D"vertical-align:inherit">Xin Shangyi Trading Co., Ltd</font></=
font></font></font></font></font></b></div><img id=3D"snvTrackImg" src=3D"h=
ttps://signtr.online/tracker/open?dID=3D1576572237821&amp;eId=3D1a2f996bb86=
387bf580e39e6fb8230d1" width=3D"1" height=3D"1" border=3D"0"></div>

--000000000000e3c6c00599e2541f--


--===============0199666442859304235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0199666442859304235==--

