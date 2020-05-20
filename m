Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C98A1DA5FC
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 02:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hMdTSzjPs7O1rZkkycMWk9Rr9V4FhrzRG+hATwltmr4=; b=bOSWiLU1/+tedxqIKY1ROsbH/
	1379lfbAL2wFG6qDfxLsgx8K3izlo+rEqJdz62L9cd7uztvnv3Rk6MLrgDk/Dk/BQlxj/pycAOCKv
	leZpscC4bI7Qk9kBtQVuTR37o4DSKvnxrWx6fglsITYYvAZo6gm4w51BnsC53SHheqkH5xFukkcVl
	mGZ4T4RjhyufAaJG5w4qyi9tbQakPwTRyKDJ3g0lqZwDIOcYLaLHHRyq/B05NJjGTMiABdw/2HXvz
	POeEclDLpbswYm1/4/WCOlzmlpPcbySlSV562/i5Mx3gTqm8ezwfLcFbl8GSCwweqfxnjC5KvXgvp
	UcD4je/Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCBP-0005ru-8q; Wed, 20 May 2020 00:02:03 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCBH-0005rJ-65
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 00:01:56 +0000
Received: by mail-ej1-x632.google.com with SMTP id a2so1080151ejb.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 May 2020 17:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aGybnX13ILVKeM+4mRvY44od9f7vTMX5532hHSLE1vU=;
 b=lOXgSRwOxs0ZwyM1TQUXQ0sb/B9ieOismtRBzHHyjonN98gZxEMR6hBCt4MP3Xb8ay
 P3UcNY1A9ndNCa47nC9RPL0RYj1My9z7PrYdJ14FAfQFF5liv1sRC5VoEezUwmaXy1JJ
 z6enVrF4jAYAXDaPIpcVamiZrXHyZWNT7FYcJ9gWKqj1wqFC8DPe6FOQN43O3Jb0HgPc
 8ht4RcrOdr4VzFKaoY+/tTlIOBG0+Ew0BvgA7mNmWB/wnVvTuUZmTC5n1b9d2HJKu86E
 2nUDruLThfqHFhLlUZcWwhgtOHuYEeGx9gkJLlpanOEXMA/zM4Gz3aeQdVHalf7NLKL8
 VaSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aGybnX13ILVKeM+4mRvY44od9f7vTMX5532hHSLE1vU=;
 b=L3n/n+a/npzFAjrtQioBk5HgRHogNdRbulpFOz2yILePN0k8Ui3mrPVT3jj/1qvLGx
 +X6uJQLrvk7OP3CCnYx7wRmUBuszkoa3u2ltLTPOazW6lGq3WRCAyTCQPT+jbO2U4AiN
 c816U5uNdbkX7hKypbQCr3Q02eZoi86TCCZ01RjE77YkAj0cXK5i2N2xSmlcTJzEaOv+
 wibZ1dJP3rXts/4t4oCerzwR5CxOMhUYTjpkfZRv+Wp4F3Ai4swM/jYRLNEoDr1UOo0h
 7oNwfsmGKB0owk+dBUBapQP8r7fZtxAUKbaUqw1NowJiCxlOSp0NK5tB9W4jrEPHBxC1
 coFw==
X-Gm-Message-State: AOAM5339mAkm3etfZ5gdfGC1k54NyX6QVjN7Mdr5rVzfo81PZR3zNkzF
 +33+J8eY0hdsfNAuzTSvEN0uhBPPV+v0BHXIZJHprVQs
X-Google-Smtp-Source: ABdhPJzDzkOMiQa5hxO7o4UHTNYuatsZQFkozqOl/W4Hi/K3rrfB8PWelKhDgCCo5n22Qxs2w/Jg/o/1J6dTNPy/IIM=
X-Received: by 2002:a17:906:a415:: with SMTP id
 l21mr1694042ejz.100.1589932913549; 
 Tue, 19 May 2020 17:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
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
In-Reply-To: <2139729f-826f-e738-f560-e3268d2555a5@gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Wed, 20 May 2020 09:01:39 +0900
Message-ID: <CALYKT1hX6LRyq6S8iCSOtpgZUBQt6aN_qkYk=wLrfr7+5JUQjw@mail.gmail.com>
To: Magnus Kroken <mkroken@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_170155_241020_721440D5 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:632 listed in]
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
Content-Type: multipart/mixed; boundary="===============5730336444161333945=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5730336444161333945==
Content-Type: multipart/alternative; boundary="0000000000008765ae05a6091aec"

--0000000000008765ae05a6091aec
Content-Type: text/plain; charset="UTF-8"

Hello  Magnus Kroken,

Thank you so much!
Your script works like a charm!

I'd like to use this script in our board. This board would be our
customer's new product - 5G router.
We are Telesquare Inc. (www.telesquare.co.kr)

I'd like to write copyright to your name.
And I'd like you to clarify the license of this script.

Please let me know your opinion.

Thank you very much!
Jeonghum

--0000000000008765ae05a6091aec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0

Magnus Kroken,<div><br></div><div>Thank you so much!</div><div>Your script =
works like a charm!</div><div><br></div><div>I&#39;d like to use this scrip=
t in our board. This board would be our customer&#39;s new product - 5G rou=
ter.</div><div>We are Telesquare Inc. (<a href=3D"http://www.telesquare.co.=
kr">www.telesquare.co.kr</a>)</div><div><br></div><div>I&#39;d like to writ=
e copyright to your name.</div><div>And I&#39;d like you to clarify the lic=
ense of this script.</div><div><br></div><div>Please let me know your opini=
on.</div><div><br></div><div>Thank you very much!</div><div>Jeonghum</div><=
/div>

--0000000000008765ae05a6091aec--


--===============5730336444161333945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5730336444161333945==--

