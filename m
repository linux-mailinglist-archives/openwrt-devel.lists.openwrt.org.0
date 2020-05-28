Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB791E5C0E
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 11:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SdUIvzEymHyL0K/bOVqRnbDO7Z1o25oeTNVCyuYiDG8=; b=Kzc
	2KVCbQwpA3BIm45LBHGFOEqAjlcMvli8fX3wdOvCUuV9S3XXXMeCfPmEsQWKWsdCUkSfFFPSs/Oz6
	ZiNK11+XZFvK6+MB4DIpgRZuWHb2agLmdLKcQPWhna3c7ehwK1sUD8HBktRcP3IugzhIvNCpa61+z
	aYjCuh2a1h8blWzP5dyLggtDEB9WnM9WpJWH0K0i++IN9eiQQWLyvDhQockDdSJo2UlBzQTNEjxFK
	dzRyu1Yfvzcjc6fFQ72CEonTcoNtEzDGEfSWzjjGci5edd8SlDaiUccL8NrddpxaelLPrb4iKP0xa
	+amyy+AyjAbFH2jIgsO3NZ7Y+TUooGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEwB-0001Yu-Ti; Thu, 28 May 2020 09:34:55 +0000
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 28 May 2020 11:34:36 +0200
MIME-Version: 1.0
Message-ID: <mailman.18108.1590658491.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Logistics Manager via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Logistics Manager <info@delivers-solutions.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Goods Specification Inquiry
Content-Type: multipart/mixed; boundary="===============7351703792363025588=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format

--===============7351703792363025588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7351703792363025588==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from merlin.infradead.org ([205.233.59.134])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEw6-0001Yh-7m
	for openwrt-devel@bombadil.infradead.org; Thu, 28 May 2020 09:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=merlin.20170209; h=Message-Id:Date:MIME-Version:
	Content-Type:To:Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=SFZT271z4wDg/Z++npGUj9uUkcltm26jFRhjGQEMluI=; b=TH68mCK20/oiQLekEc226aFyWk
	EgY8iRBIvAVgFXTD7QW0gKVAqEFr+XqIsbQC8VEzZy8COK9Qi2oj6ZNijutx2EIe1C+EbpeYb3ant
	G28f6kx/h6TEVkwLXqF/InLvXGqGXWf9yMHJowRZI1n4CJuuOUY2KFZqjHjRcBAsYriMM5JWYifrB
	yxgNy8X1ODURX++YCe1olBqwiYSUqh336+qn1/KKHBIF7vECCjc4a2FfP6tBkCig3IxcL6nlNdk4A
	0yKvKoYbcWGLM64LVejL73SpTo46IZKE3eieZpuot+vzWgljt0m/RLOh0a8sqJohjNrMnp1h82PdG
	IcwSNOnA==;
Received: from rdns5.delivers-solutions.com ([147.135.99.11])
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEw3-0001zD-Uc
	for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 09:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=delivers-solutions.com;
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id; i=info@delivers-solutions.com;
 bh=9YJb8v0cgXiioGHT3gUuwF/Fa84=;
 b=vdemhXSciMlNjqbCyF/ns7kx3cQkd2D+MnIdACcDg/n6HUnIBRD72JAyWz5rkZfWQAjhwE+ZX7q2
   a89PAVAm6Iy5ZDC0i+jwMsQj4nsffKxqu/72bu+pnLr59pGen9l88Z8GiRyKivvFxyqpKAkgyHK+
   C6GPUSm9ZmgHVeeakOU=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=delivers-solutions.com;
 b=iZ3+rpp5DNizxs1VEX0M0C5ZNg3Rl2FjCMWCdrgKb5vB72ArBuHA1rUAGc7t2N82O6IeDihx+j7W
   4pRyk1qo2WgNKBPrWJwzFPnygDgL41pb3p1oicHLXKR+Xzm4GJwX3FtJIGhM9RaGTmet0a5eaIyR
   M1o/KeQ3mVQeYa0mAuE=;
From: "Logistics Manager" <info@delivers-solutions.com>
Subject: Re: Goods Specification Inquiry
To: <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/alternative; boundary="9SNSxFpaefmHCA4xtRw2vbuXmL=_0zlctH"
MIME-Version: 1.0
Date: Thu, 28 May 2020 11:34:36 +0200
Priority: urgent
X-Priority: 1
Importance: high
Documents: Shipping Docment Notice
Message-Id: <28352020053411C2CFB57A7B$83D4E11FBC@OVODRKWE>
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (1.4 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [gringold.int[at]gmail.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or
                             Formatted Colors in HTML
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different

This is a multi-part message in MIME format

--9SNSxFpaefmHCA4xtRw2vbuXmL=_0zlctH
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


openwrt-devel@lists.openwrt.org,

I'm Sequel to the inquiry i made on Alibaba, Sorry I've been silent fo=
r quiet sometime now its simply because we don't have much work then. =
But now we have commenced and on a bigger platform now

I actually saw the pictures on alibaba website and we seems to be inte=
rested on it because it looks unique, If you could check and advise th=
e possible making of same specification.

http://alibaba.com/zhanc-trade_en/item10/picture231 https://$@@@oxintr=
ade.com/Alibaba_1/?login=3Dopenwrt-devel@lists.openwrt.org

Best regards.

Benson Xu | Business Director

LeYiDi International Medical Devices (Beijing) Co., LTD.

Add: Room 511, 5/F, No. 1 Building, No. 10 Yard, Zhuo Xiu Bei Street, =
Fangshan District, 102446,

Beijing, China.

Web:=20

http://en.leyidi-intmed. http://en.leyidi-intmed.com/

com/

E-mail:=20

gringold.int@gmail.com mailto:gringold.int@gmail.com

info@delivers-solutions.com mailto:info@delivers-solutions.com

Tel: +1 (303) 500-7386 4431;=20

MOB/WeChat/WhatsApp: +1 (303) 500-7386

Skype: chocolate1746

--9SNSxFpaefmHCA4xtRw2vbuXmL=_0zlctH
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-=
8859-1">
  <META name=3DGenerator content=3D10.81> <title>Re: Goods Specificati=
on Inquiry</title>
 </head>
 <body><span style=3D"mso-hide:all;display:none !important;font-size:0=
;max-height:0;line-height:0;visibility:hidden;overflow:hidden;opacity:=
0;color:transparent;height:0;width:0;">openwrt-devel@lists.openwrt.org=
</span> <DIV style=3D"FONT-SIZE: 13px; BORDER-TOP: 0px; FONT-FAMILY: V=
erdana, Geneva, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TE=
XT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(51,51,51); FONT-STYLE=
: normal; PADDING-TOP: 0px; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: nor=
mal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-varian=
t-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-style: initial; text-decoration-color: initi=
al"> <DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"> <DIV styl=
e=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"><SPAN style=3D"COLOR: rgb(51,5=
1,153)">openwrt-devel@lists.openwrt.org,</SPAN></DIV><SPAN style=3D"CO=
LOR: rgb(51,51,153)"> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"=
><BR>I'm Sequel to the inquiry i made on Alibaba, Sorry I've been sile=
nt for quiet sometime now its simply because we don't have much work t=
hen. But now we have commenced and on a bigger platform now</DIV> <DIV=
 style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"><BR>I actually saw the pi=
ctures on alibaba website&nbsp;and we seems to be interested on it bec=
ause it looks unique, If you could check and advise the possible makin=
g of same specification.</DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-=
TOP: 0px">&nbsp;</DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px=
"><A href=3D"https://$@@@oxintrade.com/Alibaba_1/?login=3Dopenwrt-deve=
l@lists.openwrt.org">http://alibaba.com/zhanc-trade_en/item10/picture2=
31</A><BR></DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px">&nbs=
p;</DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"><BR></SPAN>&=
nbsp;</DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px">&nbsp;</D=
IV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px">&nbsp;</DIV> <DIV=
><SPAN style=3D"COLOR: rgb(51,51,153)">Best regards.</SPAN></DIV></DIV=
></DIV></DIV> <DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Verdana, Gen=
eva, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFOR=
M: none; FONT-WEIGHT: 400; COLOR: rgb(51,51,51); FONT-STYLE: normal; O=
RPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(25=
5,255,255); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-var=
iant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-sty=
le: initial; text-decoration-color: initial"> <DIV style=3D"BORDER-TOP=
: 0px; PADDING-TOP: 0px">&nbsp;</DIV> <DIV>&nbsp;</DIV> <DIV>&nbsp;</D=
IV> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">Benson Xu | Business Di=
rector</SPAN></DIV> <DIV>&nbsp;</DIV> <DIV>&nbsp;</DIV> <DIV>&nbsp;</D=
IV> <DIV><STRONG><SPAN style=3D"COLOR: rgb(51,51,153)">LeYiDi Internat=
ional Medical Devices (Beijing) Co., LTD.</SPAN></STRONG></DIV> <DIV><=
SPAN style=3D"COLOR: rgb(51,51,153)">Add: Room&nbsp;511,&nbsp;5/F,&nbs=
p;No.&nbsp;1 Building,&nbsp;No.&nbsp;10 Yard,&nbsp;Zhuo&nbsp;Xiu&nbsp;=
Bei&nbsp;Street,&nbsp;<WBR>Fangshan&nbsp;District, 102446,</SPAN></DIV=
> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">Beijing,&nbsp;China.</SPA=
N></DIV> <DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"><SPAN =
style=3D"COLOR: rgb(51,51,153)">Web:&nbsp;<A style=3D"COLOR: rgb(1,134=
,186)" href=3D"http://en.leyidi-intmed.com/" rel=3Dnoreferrer target=3D=
_blank>http://en.leyidi-intmed.<WBR>com/</A></SPAN></DIV> <DIV><SPAN s=
tyle=3D"COLOR: rgb(51,51,153)">E-mail:<SPAN style=3D"COLOR: rgb(51,102=
,255)">&nbsp;<A href=3D"mailto:gringold.int@gmail.com">gringold.int@gm=
ail.com</A></SPAN>&nbsp;</SPAN></DIV> <DIV><SPAN style=3D"COLOR: rgb(5=
1,51,153)"><A href=3D"mailto:info@delivers-solutions.com">info@deliver=
s-solutions.com</A></SPAN></DIV> <DIV><SPAN style=3D"COLOR: rgb(51,51,=
153)">Tel: +1 (303) 500-7386 4431;&nbsp;</SPAN></DIV> <DIV><SPAN style=
=3D"COLOR: rgb(51,51,153)">MOB/WeChat/WhatsApp:&nbsp;+1 (303) 500-7386=
</SPAN></DIV> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">Skype:&nbsp;c=
hocolate1746</SPAN></DIV></DIV></DIV></body>
 </html>

--9SNSxFpaefmHCA4xtRw2vbuXmL=_0zlctH--



--===============7351703792363025588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7351703792363025588==--


