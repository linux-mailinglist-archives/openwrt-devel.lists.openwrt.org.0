Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F926133E8
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 21:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B9N4HckNOCS+jBKgyfA7bBRJbGbeFSWJau8WQih9l6I=; b=N2kPfHEd2ZBu+LWVKPer1frGJ
	k4oAc71DQys7rHU7uhEWoIqcs6jJyFxgv4mo1jyqsmpNSqja39pDSWLyLzhihVVkA+0YEbUOvm5YR
	JTni5v7KxVYNKQwwpqQ7jLOKCvWpejZXiuoeow+gtzxpKNCIHq5Hsq3fYCbsGod2UiMVHT1PuBYA/
	lOQuw03VVPLkSrNqjEby+KZWj+prs9ryp5+lKN1USJFw3Y4Q/K9J/jhAAJnVIge8I1QOtV9WYMYJ5
	9Ee2XEkGwwWA3GlgIDy7Ga5tA3y5Dq1/Q+y2LhVyGE0JF99M38GDUZgnH6atMwGWUY6sDXurzO1hh
	qzcj1Xh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdbC-0006KU-JO; Fri, 03 May 2019 19:11:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdb5-0006K1-4d
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 19:11:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so3331998pfn.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 May 2019 12:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=pCzmpgaraqOFjYqO28cJmTw35Sdn1wPUupLb/SFb2Cw=;
 b=W44/hSMZfCc7ho7mYiRaIMGGyvLTzN3644RzKGrEBezqGahBbiPW28LgLfzCYlJ4WS
 Kl9poGyjtBQp1FnM0yGfUaB34wFheY+VeaKRRPhbZ/DTUNlFU8mGycOtZfVfVFOYQpfJ
 qEL7LvmrzSXADumNKmi0W704FNipUAI+n98RyQOIAn7gsHqo/R62i0DajAa7lUUcUC+J
 qtOw+7DSA6+7Kn+aeGaMOVdL4K18qdqheq5ueBn+0ZwprUHZkEnUAzj/fICMm7XA2/OX
 2tvMvitn4kvPhrkVSvkWyQFiBSw4jaaSeYK2YIXRNG++9zfBurOiRfWq/GkJp7io8fs/
 mffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=pCzmpgaraqOFjYqO28cJmTw35Sdn1wPUupLb/SFb2Cw=;
 b=UqdBZdl3VovH8EBvENBWbl0qtRGcMYBAEMSLi/UimGV8am+AC440ggRRVa3hktc2TF
 IeEynKtpeBfzehE4p0JaoFAI88XEb3scFWc1nTEC1F+bhDUBJS6s1suMLH7lWH11d9oL
 mzHFGoKbf5gvbavTXNGg+nUMj2WpN2hSX2Xb7pmrp+Seg0jpU1bv/hhjO7DH2UCrI4GV
 7aZ27c6P2qhZ/D+0Zjuahwpy/5Mk2ctzl9q+D31ALWLigPNkcaSVQRUMVm//tMIhzO5Y
 FbRLi1HN9pfnhOYtxqAQbHi33PntA2geRfZq6I9CPe3Q4l/fyf8CCn8lHSAVaip+g/Oh
 lYhw==
X-Gm-Message-State: APjAAAVsM3r5xW134jvbJLIbWql9i9m5dnLRLT7vIG9tzQnlofLUfxmS
 RJNKImWeKfN8LlIkjLsZ0qlWK7Js3t0=
X-Google-Smtp-Source: APXvYqybfTZQ7wKzpOm4qEDDXdGsCkOFdB0Yr2h2LAhjFoZO5Jy8/Vic2k96fajp2Z6qljrXazzY+A==
X-Received: by 2002:a65:51c5:: with SMTP id i5mr12695950pgq.189.1556910709728; 
 Fri, 03 May 2019 12:11:49 -0700 (PDT)
Received: from [192.168.0.240] (76-14-106-140.rk.wavecable.com.
 [76.14.106.140])
 by smtp.gmail.com with ESMTPSA id b22sm7526918pgg.88.2019.05.03.12.11.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 12:11:49 -0700 (PDT)
Date: Fri, 03 May 2019 12:11:47 -0700
From: Rosen Penev <rosenp@gmail.com>
To: Petr =?iso-8859-2?q?=A9tetiar?= <ynezz@true.cz>
Message-Id: <1556910707.1846.0@smtp.gmail.com>
In-Reply-To: <20190503185541.GG71477@meh.true.cz>
References: <20190501170445.4607-1-rosenp@gmail.com>
 <20190503171748.GA3101@meh.true.cz>
 <10C80B0A-E4F7-4619-85BE-B78580C58148@gmail.com>
 <20190503185541.GG71477@meh.true.cz>
X-Mailer: pantheon-mail/1.0.8
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_121151_209328_EF638477 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] libbsd: Fix compilation under ARC
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: multipart/mixed; boundary="===============2402873643777084513=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2402873643777084513==
Content-Type: multipart/alternative; boundary="=-gBKt2gePTsVVPPkgtgG6"

--=-gBKt2gePTsVVPPkgtgG6
Content-Type: text/plain; charset=iso-8859-2; format=flowed
Content-Transfer-Encoding: quoted-printable


On Fri, May 3, 2019 at 11:55 AM, Petr =A9tetiar <ynezz@true.cz> wrote:
> Rosen Penev <rosenp@gmail.com> [2019-05-03 10:49:54]:
>=20
>>  > On May 3, 2019, at 10:17, Petr =A9tetiar <ynezz@true.cz> wrote:
>>  >
>>  > Rosen Penev <rosenp@gmail.com> [2019-05-01 10:04:45]:
>>  >
>>  >> The 8 year old file does not have any ARC definitions.
>>  >
>>  > I'm wondering if we need to cary another patch forever, thus if=20
>> it wouldn't be
>>  > better to backport upstreamed patch and/or bump to fixed upstream=20
>> version.
>>=20
>>  As I said. This file has not been touched in 8 years. Upstream also=20
>> seems relatively dead.
>=20
> According to this https://gitlab.freedesktop.org/libbsd/libbsd it=20
> doesn't seem
> that much dead to me, as I wouldn't expect that much changes in such=20
> compat
> library anyway.
All of the merge requests (what GitLab calls pull requests) except one=20
have no comments. There are also none that have actually been merged.
>=20
>=20
> -- ynezz



=

--=-gBKt2gePTsVVPPkgtgG6
Content-Type: text/html; charset=iso-8859-2
Content-Transfer-Encoding: quoted-printable

<br>

On Fri, May 3, 2019 at 11:55 AM, Petr =A9tetiar &lt;ynezz@true.cz&gt; wrote=
:<br>
<blockquote type=3D"cite"><div class=3D"plaintext" style=3D"white-space: pr=
e-wrap;">Rosen Penev &lt;<a href=3D"mailto:rosenp@gmail.com">rosenp@gmail.c=
om</a>&gt; [2019-05-03 10:49:54]:

<blockquote> &gt; On May 3, 2019, at 10:17, Petr =A9tetiar &lt;<a href=3D"m=
ailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:
 &gt;=20
 &gt; Rosen Penev &lt;<a href=3D"mailto:rosenp@gmail.com">rosenp@gmail.com<=
/a>&gt; [2019-05-01 10:04:45]:
 &gt;=20
 &gt;&gt; The 8 year old file does not have any ARC definitions.
 &gt;=20
 &gt; I'm wondering if we need to cary another patch forever, thus if it wo=
uldn't be
 &gt; better to backport upstreamed patch and/or bump to fixed upstream ver=
sion.

 As I said. This file has not been touched in 8 years. Upstream also seems =
relatively dead.
</blockquote>
According to this <a href=3D"https://gitlab.freedesktop.org/libbsd/libbsd">=
https://gitlab.freedesktop.org/libbsd/libbsd</a> it doesn't seem
that much dead to me, as I wouldn't expect that much changes in such compat
library anyway.</div></blockquote>All of the merge requests (what GitLab ca=
lls pull requests) except one have no comments. There are also none that ha=
ve actually been merged.<br><blockquote type=3D"cite"><div class=3D"plainte=
xt" style=3D"white-space: pre-wrap;">

-- ynezz
</div></blockquote><br><br>
=

--=-gBKt2gePTsVVPPkgtgG6--



--===============2402873643777084513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2402873643777084513==--


