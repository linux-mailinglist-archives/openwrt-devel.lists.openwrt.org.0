Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B221DC36F
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 02:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tw8jtCWgj3yL3zokYnNQEE1OjhLKsboe0ay40ym5bNM=; b=QUmLtGX82xedJvVTvHD5wWyyR
	bFdRNiAuNgqiljUrcx+5o6ZRIzTvl4AQSWAEM35uKUAFsz/tIKVhX68eG9oUGTmw+FIlfOh6iZk5H
	a5bTVzhnjNh8msG4PFyeb9TuhCezbHM/cxkaB29EAqmgFDCke4A3e4HmGynfssBrgzCg+ggQr2piQ
	xzPwzpbVAJi3rjZOX9OsfF53ce6xvtdrjlaDJ0F9AClFWtO35bNCazikbsrFqZKpj3M09NIElxXsN
	00QKhHPq+sHZGJPrwjGHvbOlChsX2BReNvlBz6diJ75dnRii7MLWNy6yXql87ukyFaLIzYWj3zyrq
	2xaMLaPrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYp8-0000Lu-5o; Thu, 21 May 2020 00:12:34 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYoy-0000L4-GH
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 00:12:27 +0000
Received: by mail-ej1-x62f.google.com with SMTP id x20so6603197ejb.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 17:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2GW0zj1aGkwXz4bQY6t1WE110ti4dISDjbKDLtXW8bQ=;
 b=iq9vinCZCCBe2cb2RFXTOKzScNMrTKR0JFzPJU5aPFMJCqzlhqNYZIoO4cSKHYCuSC
 eh6a9Grm4UnDdaknFNoLBRXrHqXo7SMpgu0X8GOn8mMYO3MnbdIggBsIxVToB8ERDBlV
 +cdD+DfrN0KCUZm7XNRhrXH7dmI2NG8KeXaKxyL8IMFH8ihWNEAAnPzHzgFLuSKR+bWl
 6tNX+2BaGByc8JKzxsZ+TiEiG4gkeVZsW8v3ruji0fHiy1EdGIVhS/wxKmpKKuk47FgX
 a3qCNEPDYQNA01IbSK2fKROmPTzAFt3RIz2sv5NEn1KGCH5RkOcL8sWzCtP623OSITYS
 Xvfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2GW0zj1aGkwXz4bQY6t1WE110ti4dISDjbKDLtXW8bQ=;
 b=hXeDnPN6mg+uFsVFpfXL71Cn7xmAXWqTxCzsWrdtP5eZUc83GFNn4Frmk463oIsQX6
 UqRnF6rzYdQ1y1WevpSIHk63pVhbcFisd5E9cxMZieL+ScgezS1nBfLkBP2j12ycUDU/
 hsnuC+nffWk4Vi2xgwWLORJcf2/SfFsE+UPFPqN1RHuSKlwPW6rPn/hin1rX+CsDCKk0
 L8IvMjLd7A4hLKBegGmtXpd2pbPh6y1NTlxRHmhwUjfDr2ajeo4sUxzIDARWMcHY9uZF
 cS7k1fyYykctilhAfxmeL3QfTs2pOSWJ5GMG6qVLAeK04DnAEW9cECKXA8aqP/PpWTxZ
 sW4g==
X-Gm-Message-State: AOAM532U6VzZVcwQkSLGECxh0p9Bn9131SnJVLh1QT9RnfXhFTwL4URw
 GW48qOqFXdFrdGQouNyRIOprLiZR7Ec3nx1hWUY=
X-Google-Smtp-Source: ABdhPJxf2zgYwBeSwM4fQlbYhocEkhoJPu6fGXl+xsf59HdZW1+i8IX9zShqXU9BH43g4M3IPKBnxcCN1SRymSfZsWg=
X-Received: by 2002:a17:906:d98:: with SMTP id
 m24mr1266833eji.553.1590019941281; 
 Wed, 20 May 2020 17:12:21 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
 <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
 <8a3e98a9-07e5-045d-d711-0a5833dcb5cc@web.de>
 <CALYKT1hqiBvcEQ+tqDdMh3tHznSt2NamLcVqzneU5TFJZxX1Ow@mail.gmail.com>
 <CALYKT1hAPtXGuKu5gGd5B6VccuEY1g6COyFK6T0FsaoG43Tt8Q@mail.gmail.com>
 <bb6a2cc5-b991-9c7f-3308-79932fd70c56@gmail.com>
 <CALYKT1j_YqguM=JWWh97S9HMJ-Kjt_BQecQFh5T_G-+hdfmXtw@mail.gmail.com>
 <2139729f-826f-e738-f560-e3268d2555a5@gmail.com>
 <CALYKT1hX6LRyq6S8iCSOtpgZUBQt6aN_qkYk=wLrfr7+5JUQjw@mail.gmail.com>
 <916b57f7-5c77-a3eb-3762-ea805b9a379b@gmail.com>
In-Reply-To: <916b57f7-5c77-a3eb-3762-ea805b9a379b@gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Thu, 21 May 2020 09:12:08 +0900
Message-ID: <CALYKT1hrPTDQVmsV5mp_Ucon=Wj4EigP45p38pm22H=tm3LAQw@mail.gmail.com>
To: Magnus Kroken <mkroken@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_171224_560128_239D996C 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] How am I supposed to change settings in
 /etc/config/network of default root file system of OpenWRT?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1880041417835879814=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1880041417835879814==
Content-Type: multipart/alternative; boundary="000000000000c9311305a61d5d75"

--000000000000c9311305a61d5d75
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Magnus Kroken,

Thank you for clarifying the license.
I will use this one in the github gist.

Thank you so much!
Jeonghum

2020=EB=85=84 5=EC=9B=94 21=EC=9D=BC (=EB=AA=A9) =EC=98=A4=EC=A0=84 2:13, M=
agnus Kroken <mkroken@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> Hi
>
> On 20.05.2020 02:01, Jeonghum Joh wrote:
> > Hello Magnus Kroken,
> >
> > Thank you so much!
> > Your script works like a charm!
> >
> > I'd like to use this script in our board. This board would be our
> > customer's new product - 5G router.
> > We are Telesquare Inc. (www.telesquare.co.kr <
> http://www.telesquare.co.kr>)
> >
> > I'd like to write copyright to your name.
> > And I'd like you to clarify the license of this script.
> >
> > Please let me know your opinion.
> >
> > Thank you very much!
> > Jeonghum
>
> Appreciate the consideration, although I'm not sure this snippet is
> substantial enough to be copyrightable. No matter I suppose - if it is
> copyrightable I can license it, if it is too simple to be copyrightable
> any claim of copyright is invalid and it can safely be used by anyone.
>
> I have put a slightly clarified version as a Gist:
> https://gist.github.com/mkrkn/4ba4bef3f0d541aa1180bef4156b340c
>
> Regards
> Magnus Kroken
>

--000000000000c9311305a61d5d75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Magnus Kroken,<div><br></div><div>Thank you for clar=
ifying the license.</div><div>I will use this one in the github gist.</div>=
<div><br></div><div>Thank you so much!</div><div>Jeonghum</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=
=84 5=EC=9B=94 21=EC=9D=BC (=EB=AA=A9) =EC=98=A4=EC=A0=84 2:13, Magnus Krok=
en &lt;<a href=3D"mailto:mkroken@gmail.com">mkroken@gmail.com</a>&gt;=EB=8B=
=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hi<br>
<br>
On 20.05.2020 02:01, Jeonghum Joh wrote:<br>
&gt; Hello Magnus Kroken,<br>
&gt; <br>
&gt; Thank you so much!<br>
&gt; Your script works like a charm!<br>
&gt; <br>
&gt; I&#39;d like to use this script in our board. This board would be our =
<br>
&gt; customer&#39;s new product - 5G router.<br>
&gt; We are Telesquare Inc. (<a href=3D"http://www.telesquare.co.kr" rel=3D=
"noreferrer" target=3D"_blank">www.telesquare.co.kr</a> &lt;<a href=3D"http=
://www.telesquare.co.kr" rel=3D"noreferrer" target=3D"_blank">http://www.te=
lesquare.co.kr</a>&gt;)<br>
&gt; <br>
&gt; I&#39;d like to write copyright to your name.<br>
&gt; And I&#39;d like you to clarify the license of this script.<br>
&gt; <br>
&gt; Please let me know your opinion.<br>
&gt; <br>
&gt; Thank you very much!<br>
&gt; Jeonghum<br>
<br>
Appreciate the consideration, although I&#39;m not sure this snippet is <br=
>
substantial enough to be copyrightable. No matter I suppose - if it is <br>
copyrightable I can license it, if it is too simple to be copyrightable <br=
>
any claim of copyright is invalid and it can safely be used by anyone.<br>
<br>
I have put a slightly clarified version as a Gist: <br>
<a href=3D"https://gist.github.com/mkrkn/4ba4bef3f0d541aa1180bef4156b340c" =
rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/mkrkn/4ba4bef3=
f0d541aa1180bef4156b340c</a><br>
<br>
Regards<br>
Magnus Kroken<br>
</blockquote></div>

--000000000000c9311305a61d5d75--


--===============1880041417835879814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1880041417835879814==--

