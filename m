Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E009F1BA21A
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 13:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f+B+bDA6PyOzcv/4W2JNyVDU4Iucg8pnL+RA3VAb38A=; b=kjeyre/hZd/OnIY0DF/RokdcO
	b2D2QAQtXfQbd0t6kG3LE6522ncSab6NqX6uztnpgnFc2tRUflvuqhD0nMGG2YuvLpTfiOGqX8D1z
	zxrx5FmDRGWFwYAi2vxabmMcpb3o5/K88umwkxCR+F3abnNvUQcQD/dZ1l13WbRUfHt7M7Y/dUgV3
	HFy+T5+0KjxH/llRTMMimgYgtB/NWD9lKY7rbmLtauoDyV0FWCXfdMwVhMeIegoQF7LFHLlchGoWJ
	rScnA/RkNA7FuZywKacnKGq23BUJko9uxRQp3xtWD4cKI3mDfiAfOfUxtchmkBLvfnhFDUD4FSAQv
	mM1sArRTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1ip-0000a6-7f; Mon, 27 Apr 2020 11:14:47 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1ih-0000Yw-Gz
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 11:14:40 +0000
Received: by mail-ej1-x62b.google.com with SMTP id q8so13774659eja.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 04:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r2ZlKZaWSoufwnn8ad2KwpXEcvq/yS5EWdLrZ6VRSao=;
 b=bZ1k5yMrjgE6q7XfoufItif+zfFN3RjcLsOejzxs9o8CIqWzgf5a1reYd0g9wh6S6+
 PLqyvnzLm1xHGEYGYjTuK94Zf0aajeZUM+w8dd6FYneNg4bDucHz/Qqs6PzjvWu/Dsck
 w0yE179Ekl5xrAaGuY4EL3vYdO6G76XSTyBJET6l6TdQRgnyLBbb1dfgrQhp/jBD9omp
 Te6oYEw2riTUJ4BStSajrkFu71rvI/qESwZjH3L0kSoxZeEjA9akc80KqQx7TiHv72y8
 CewWuPOs+MLMzEHCC+lye5nYJ93Ih4//W7ONVN5iQYp0ziX4AieyRynp17zDGs+voj0I
 m+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r2ZlKZaWSoufwnn8ad2KwpXEcvq/yS5EWdLrZ6VRSao=;
 b=SL+KsTfRn9NGf9Wy4iEo4Cl89TaDflbbt5Vb6s4KwBgi5SV5vRxFWrS80Urr8CFEOC
 kcDONMl0CfguDfoDFpv9K0r2VSwPXSZ0qSh+EMkqDqVT+3CH635HDsKU+GZfSCCCnX9+
 lQHAwX0yrP0jfok/Qu9M8pBVYQmCrOVzQ4l6AreMubX5XtJOnmSBQ8scjF5GDSKN66Kn
 ybLwbkLh4RF3HDSn+jjn14JdIuR7B4BClRXkn32kM1GFUOUDS5Nkb6N8P8Kp3fqOFuTQ
 USKfFuEow6d/jsngjlu6yLRYsd10lqz8BITkEJ6/Tn9zkbbReTA0w7p4EdzJhBelEvqF
 +nkg==
X-Gm-Message-State: AGi0PuaYpq9qv3D851o3xADCXtimuetOOvt4GpasiA4r1pwf1QKA9aha
 jtO0e0k7atQRD5EPeg/i/gJ8q6l+rU+EBhkkvuszREsVzq4=
X-Google-Smtp-Source: APiQypKjIXG1wQmoqEBeEIp0mlKUrFwzOYsn+zsdTpNzAg6yOCEjL01mRPDMmBZlFTzbpWdCvfAEY0j6vKkDtpxkCsc=
X-Received: by 2002:a17:906:704c:: with SMTP id
 r12mr18734898ejj.105.1587986077536; 
 Mon, 27 Apr 2020 04:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 <alpine.LNX.2.22.413.2004271242270.636@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.22.413.2004271242270.636@localhost.localdomain>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Mon, 27 Apr 2020 20:14:25 +0900
Message-ID: <CALYKT1i9HKgEz2T1ncgkMqqiHcjpxxi6=rtvd4Xx9oYO05pOKw@mail.gmail.com>
To: Enrico Mioso <mrkiko.rs@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_041439_594057_50225F18 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============0532794955548365776=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0532794955548365776==
Content-Type: multipart/alternative; boundary="0000000000000f555b05a443d2ba"

--0000000000000f555b05a443d2ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Enrico,

Thank you for your email!

I couldn't find what upstream connection manager is but there was
ModemManager in my googling result.
But studying about ModemManager would make my work something that must
start from scratch.

I think studying UCI interface / libraries, and ubus would be good approach
for me. The CM I have anyway makes the interface wwan0 work. So I will try
to whoot problems one by one. So that I believe I can make my CM work well.

Thank you for your interest. I love OpenWRT, Lua & Luci.

Thank you!
Jeonghum



2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 7:45, E=
nrico Mioso <mrkiko.rs@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> Hello!
> And thank you for your interest in OpenWRt.
>
> In general, in OpenWRt, pieces work togeter because they are developed to
> do so.
> A connection manager duty is not, arguably, to set up firewall rules.
> you can surely inspect a lot of the informations you would need from the
> UCI interface / libraries, and ubus itself.
> If the modem is QMI based, you may switch to upstream connection manager
> solutions, which would help in some regards.
> Or maybe using a ModemManager-based solution?
>
> Thanks,
> Enrico
>

--0000000000000f555b05a443d2ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Enrico,</div><div><br></div><div>Thank you for =
your email!</div><div><br></div><div>I couldn&#39;t find what upstream conn=
ection manager is but there was ModemManager in my googling result.</div><d=
iv>But studying about ModemManager would make my work something that must s=
tart from scratch.</div><div><br></div><div>I think studying UCI interface =
/ libraries, and ubus would be good approach for me. The CM I have anyway m=
akes the interface wwan0 work. So I will try to whoot problems one by one. =
So that I believe I can make my CM work well.</div><div><br></div><div>Than=
k you for your interest. I love OpenWRT, Lua &amp; Luci.</div><div><br></di=
v><div>Thank you!</div><div>Jeonghum</div><div><br></div><div><br></div><di=
v><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 7:45,=
 Enrico Mioso &lt;<a href=3D"mailto:mrkiko.rs@gmail.com">mrkiko.rs@gmail.co=
m</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hello!<br>
And thank you for your interest in OpenWRt.<br>
<br>
In general, in OpenWRt, pieces work togeter because they are developed to d=
o so.<br>
A connection manager duty is not, arguably, to set up firewall rules.<br>
you can surely inspect a lot of the informations you would need from the UC=
I interface / libraries, and ubus itself.<br>
If the modem is QMI based, you may switch to upstream connection manager so=
lutions, which would help in some regards.<br>
Or maybe using a ModemManager-based solution?<br>
<br>
Thanks,<br>
Enrico<br>
</blockquote></div></div>

--0000000000000f555b05a443d2ba--


--===============0532794955548365776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0532794955548365776==--

