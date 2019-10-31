Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551E8EB1AB
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 14:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HDXYjO2cB1XCKKAhKC11fLZAmgpkl8tU+ZLihKDCzEA=; b=i5T
	EUSC2Odw/nQcoKAxJD3+o0GInc7h/mIIM79WhHP2geTnEBaPZkz7PdFWpm3a0zwjqFf8DQHT6RCTo
	1XP57HUqaXUP34k9ksTdbzkHRY960ploBgHviJa2R4DIPIERvnx5uPfQdD+qB64kQ88gbVGWrntN9
	piERKacYbsN6Gz5ZdgPqhE+1GRA+1B80qi34BISbLHWSOd+ZPV7EgYdMsqOzr2qvolVV1c19NKmTG
	JZUaTHAahuRUrbAuJ2saLc4mX0l0yr2ngNMzv5f3vNqfXd68smaAQFB4j5PlZT7MAkICudGJzIua1
	6fZG73+o2e7ipD5GDKzdNTk3PPilWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAuG-0003ui-K9; Thu, 31 Oct 2019 13:54:32 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAu8-0003u5-6b
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 13:54:25 +0000
Received: by mail-il1-x143.google.com with SMTP id d83so5444322ilk.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 06:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=vER7yJWlAYG0HYdWD9MkuQ83uGPr11yY10DUIeQsTzY=;
 b=BpRcoJds0dsLz4F0vaN20LWnqI1UvCdLpbrxcubCv5HC3QQre0No95UgncaTdYDAC5
 7MLMqXOxXME59GIe5e+NHdsgcrtpH83Ns8UWH8IOwEsif0a25m67zR/pL9MY1gC46mG9
 5HaW4m/9SIukrqbQ4Ak8S9VrLBZc7jlkxi7d4OqL8907fSNPoEBt9mnz/rQ1+FXM7g+5
 WjIOPeN8U3X+3BAdMXEqdXjTuHraim4s8pT47b5/xcpw3vk0V/JcpwvWxMffgD1FZwNQ
 p3AU/SKgUT1yFy3bPvcdsvKZotMApgH8yYX+5xxbbNyrtamq1CgD2SIi8CJPtzTf3W/k
 Huag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vER7yJWlAYG0HYdWD9MkuQ83uGPr11yY10DUIeQsTzY=;
 b=S3CKQEDhaqeaQDYQ7tZC/Tvu31YWwiMFR42ZD6TQ+VKCQ9cynTWGZ2VICj4gKqV3e9
 p0cfFJ9kGRQB76aXhtnFKRDdYTIl+g2Mz+j9Ka8lYwQxE+GVgfOIzacDVJOPyWPA/TyC
 3ctvp3T8BOTxxI3Sw149go0exjqDDJBdM4+xKBNPkzi6nLJBXa8PVWq4zzk+YVv/9LUd
 duSQMwoxcUV5WlTuGDqHNqSwLbpHtkgZj/8qpXvG/2cGwNl4rpUOgMVwNpiQ9VqzlL4B
 EK14vmtGfLj1Ph8Mc9ae/TvlEroRL7HelJVr2ZfLahefgUCQDSaOpWbo7/3kCbRA3Ks1
 ngKA==
X-Gm-Message-State: APjAAAX9dtLPLfSQocgTifoYeovXB1w9iEyXEe2ZfMFkDCb3uhtuvM1G
 Gz8Ck2Gy38rKqU2Eu4Xi+ND4D0StztytXQIgKEvY8g5e8+I=
X-Google-Smtp-Source: APXvYqzOubcXomaFNtDf6lbxBJphiCnMy1Hu0XP0uni4DDWepQg1wggva3hYdT2JF7EZnIgA4U6Pcps1Z2cGHrt7WK4=
X-Received: by 2002:a92:8604:: with SMTP id g4mr3279642ild.50.1572530060876;
 Thu, 31 Oct 2019 06:54:20 -0700 (PDT)
MIME-Version: 1.0
From: Jacqueline Bell <jacquelinebell199@gmail.com>
Date: Thu, 31 Oct 2019 21:54:11 +0800
Message-ID: <CAD0Vxth-T8VJkR03tj=LOKDXs6fDOps2ZzAW86fFfyu8aBKR7w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_065424_241925_0376D212 
X-CRM114-Status: UNSURE (   0.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jacquelinebell199[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacquelinebell199[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
 0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: [OpenWrt-Devel] I beg you to forward the mail to your purchasing
 manager
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
Content-Type: multipart/mixed; boundary="===============1032941740759451958=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1032941740759451958==
Content-Type: multipart/alternative; boundary="000000000000ad60970596352fcb"

--000000000000ad60970596352fcb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*hello there.Dear friends!Thank you very much for checking my email, I am
very happy!I hope that you can spend a minute to see the whole email.I
believe it will be of great help to your business.We are a professional
watch trading company.Production of Michael Kors watches, Armani
watches, **Daniel
Wellington*




















* watches, Hugo Boss watches, Calvin Klein watches and Tissot watches.Our
watches are sold in more than 10 countries, and we will cooperate with you,
you will get a lot of advantages in quality and price, welcome wholesalers
and retailers.Samples are welcome to be sampled for quality inspection and
a wholesale order is issued after that. I hope we can build long-term
business relationships. If you are interested in our products, please feel
free to contact us!About purchasing samples:You can purchase 1-5 samples at
our wholesale price, which can be paid via paypal and bank transfer.About
delivery time:After the payment is successful, we will mail the goods out
within 3 working days.About logistics and transportation:Our company will
use DHL and FedEx will mail the goods for you.You will receive the goods
within 4-7 days.About the issue of return:If the watch has quality
problems, we will replace it for you for free!Promotions:Our company will
launch 1-2 models of watches every month for special wholesale, which is
5%-10% lower than the normal wholesale price.If you are interested, or want
to know more, please reply to my email: ruby4657jon@gmail.com
<ruby4657jon@gmail.com>, we will reply you within 2 hours!*








*Please believe us=EF=BC=9AOur company's Facebook public
homepage: @watchtradingcoltdMy Whatsapp: +86 18378686888Give you the best
wishes, I hope to be your friend!Xin Shangyi Trading Co., Ltd*

--000000000000ad60970596352fcb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><b style=3D"color:rgb(0,0,0)"><font color=3D"#4c1130">hell=
o there.<br><br>Dear friends!<br><br>Thank you very much for checking my em=
ail, I am very happy!<br><br>I hope that you can spend a minute to see the =
whole email.</font><br><font color=3D"#ff0000">I believe it will be of grea=
t help to your business.</font><br><br><font color=3D"#4c1130">We are a pro=
fessional watch trading company.<br><br>Production of=C2=A0</font><font col=
or=3D"#ff0000" size=3D"4">Michael Kors</font>=C2=A0watches,=C2=A0<font size=
=3D"4" color=3D"#ff0000">Armani</font>=C2=A0watches,=C2=A0</b><font size=3D=
"4" color=3D"#ff0000"><b>Daniel Wellington</b></font><b style=3D"color:rgb(=
0,0,0)">=C2=A0watches,=C2=A0<font size=3D"4" color=3D"#ff0000">Hugo Boss</f=
ont>=C2=A0watches,=C2=A0<font size=3D"4" color=3D"#ff0000">Calvin Klein</fo=
nt>=C2=A0watches and=C2=A0<font color=3D"#ff0000" size=3D"4">Tissot=C2=A0</=
font>watches.<br><br><font color=3D"#4c1130">Our watches are sold in more t=
han 10 countries, and we will cooperate with you, you will get a lot of adv=
antages in quality and price, welcome wholesalers and retailers.<br>Samples=
 are welcome to be sampled for quality inspection and a wholesale order is =
issued after that. I hope we can build long-term business relationships. If=
 you are interested in our products, please feel free to contact us!</font>=
<br><br>About purchasing samples:<br>You can purchase 1-5 samples at our wh=
olesale price, which can be paid via paypal and bank transfer.<br><br><font=
 color=3D"#0000ff">About delivery time:<br>After the payment is successful,=
 we will mail the goods out within 3 working days.<br></font><br><font colo=
r=3D"#0000ff">About logistics and transportation:</font><br><font color=3D"=
#0000ff">Our company will use DHL and FedEx will mail the goods for you.</f=
ont><br><font color=3D"#0000ff">You will receive the goods within 4-7 days.=
</font><br><br><font color=3D"#0000ff">About the issue of return:</font><br=
><font color=3D"#0000ff">If the watch has quality problems, we will replace=
 it for you for free!</font><br><font color=3D"#0000ff"><br>Promotions:<br>=
Our company will launch 1-2 models of watches every month for special whole=
sale, which is 5%-10% lower than the normal wholesale price.</font><br><br>=
<font color=3D"#4c1130">If you are interested, or want to know more, please=
 reply to my</font><font color=3D"#0000ff">=C2=A0</font><font color=3D"#ff0=
000" size=3D"4">email:=C2=A0<a href=3D"mailto:ruby4657jon@gmail.com" target=
=3D"_blank">ruby4657jon@gmail.com</a></font><font color=3D"#4c1130">, we wi=
ll reply you within 2 hours!</font></b><div style=3D"color:rgb(0,0,0)"><b><=
br></b></div><div style=3D"color:rgb(0,0,0)"><b><font color=3D"#0000ff">Ple=
ase believe us=EF=BC=9A<br>Our company&#39;s Facebook public homepage:</fon=
t>=C2=A0@watchtradingcoltd<br><br><font color=3D"#ff0000">My Whatsapp: +86 =
18378686888<br></font><br><font color=3D"#4c1130">Give you the best wishes,=
 I hope to be your friend!</font><br><font size=3D"6"><br><font color=3D"#f=
f0000">Xin Shangyi Trading Co., Ltd</font></font></b></div></div>

--000000000000ad60970596352fcb--


--===============1032941740759451958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1032941740759451958==--

