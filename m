Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66BFB2BE5
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 17:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Th45oxlRS/olrlmmMsg3AcIFjE+KDeS2xEZRn7AHgTg=; b=g5kUtA4dxexJMdH0UlOzHCd2u
	FotEQI3fTqeHCYb+KzhD3hwFLUjuasEZzMpMk5o/g3LrTczFopgS5j/wezyB9KytaK9Qr/iM1ufLZ
	tp7z3GVHBAKB6pjvLSYGsUGgtmhdGHoNyOXR9fFgmnenyrU4fmLj3PySJcKkzqAaOe7a7/2exzZpG
	6cExkp4+MsXpb4sGIX2QRr6eboeTvUD6nYMM9+/ToIcForoMP/DJnU/n6myRTjaz4IluCqzl7ZGuC
	OUXZMvpg8xeliuG188aNxUgj5ooCjPBFwj2VTtPm+/2pAbaKOLgjo9zZy3IJhFbdzG9Wxpx7yIf/0
	JOsW44Ssw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9A31-0004Pz-1C; Sat, 14 Sep 2019 15:33:15 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9A2q-0004PU-HU
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 15:33:06 +0000
Received: by mail-ed1-x52c.google.com with SMTP id f2so23140636edw.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 08:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=qlLlVGoVMVDCVzwuSgoEImon0MJ+UnANW2fhVnqkBDE=;
 b=bg2j012LyBtWsFGFc9kE24lqoDiKLxIGSY6YJoP8SaO3T7MU9v3No0a7NB4TNV2418
 9OFk4zSh5qjkzR2PsIYvezGtnr7FrxJzLCnzbUALGhZ0xIfWX9BIMshPKPnCxDeUl9wI
 3dqU054ZyFw4GGdQRwAGFNG0qpbNDOrI5l7VgAexFWYrXeagDXsl93FB90cP4lPFQMVg
 XiqpSmMCZnMq/0iWRHZpwgNGmqI+kPYXsr4VcvE9wX1Zs7JnUcloVYJBgHvDd71ThujF
 Jr2bt/OmLq85TydWjZJNVj4RcHzJzFU+5pGzB/6l3Wc4CtQtel6G/MPYxRArZrh4Zmdy
 eFYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=qlLlVGoVMVDCVzwuSgoEImon0MJ+UnANW2fhVnqkBDE=;
 b=n7QzBRaaJO9Mf72Z6jnjfVXt+JrZNCGWswdrVijY0Z4shzqfMraqFtah5ydfP+Sc7E
 isPpI87nk95EuXeUdtSOZ3dj4A22HAxAobXpRymyImf9moG9phO9YTd7KY7LgzPt4s6Q
 /mI7habnGq5Bd96VH0StJSmUFt2RjKD4d5v8kjTHRs4vdn0DNTecGXZSK+0LGYmsNMY7
 3R9rQp1VQIYeaBGQkBdQMWyjh2wmSE2v++Z+U+CCUbyMclsI79xrM5hRGJHhAAB1E1Ys
 HTNEY84xahAtxVKDkIlvl+rjZqIOHzOsUcCFbCNgp7tFUnp5LTZFHhaG6CgwNLM13l1e
 ZZLw==
X-Gm-Message-State: APjAAAU/gFIUtvxNwhkWfrL+dnW1gjXiTQssiBA3II1EpAxxzvPaBzhX
 oS2bj/DBWu003pr5wSPSylJg38W8
X-Google-Smtp-Source: APXvYqwflVFG2EUn3zbChi9sEU0XawYCQT/MoggQq2ezF4ywrP+WwHEIPxSHdTVqq5NcrENu35ndDA==
X-Received: by 2002:a50:ee98:: with SMTP id f24mr43832671edr.52.1568475181164; 
 Sat, 14 Sep 2019 08:33:01 -0700 (PDT)
Received: from aarau.fritz.box ([81.221.232.148])
 by smtp.gmail.com with ESMTPSA id q18sm706309ejz.82.2019.09.14.08.33.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Sep 2019 08:33:00 -0700 (PDT)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
Message-Id: <606AF5C1-F1B8-41D3-B855-E72728FD5EE0@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Sat, 14 Sep 2019 17:32:59 +0200
In-Reply-To: <openwrt/openwrt/pull/2410/c531483862@github.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <openwrt/openwrt/pull/2410@github.com>
 <openwrt/openwrt/pull/2410/c531483862@github.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_083304_608819_F9192C4C 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ivanhoerler[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of
 words
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
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
Content-Type: multipart/mixed; boundary="===============8651686852494604779=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============8651686852494604779==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_716FB779-A87F-47B5-94CB-3D7A3EF5528E"


--Apple-Mail=_716FB779-A87F-47B5-94CB-3D7A3EF5528E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Adrian
Thanks for your patientness. Wasn=E2=80=99t aware it's so strict. I just =
added the --signedoff to the commit.
Good to know how to work clean. Now i redone it.=20
Is this fullfilling openWRT=E2=80=99s rules? =
https://github.com/openwrt/openwrt/pull/2411
Regards, Ivan=20

> Am 14.09.2019 um 16:27 schrieb Adrian Schmutzler =
<notifications@github.com>:
>=20
> Hi, if you haven't yet, please have a look at =
https://openwrt.org/submitting-patches =
<https://openwrt.org/submitting-patches>
> Specifically, please
>=20
> remove the two commits adding and removing the "wrong" version, so =
that only the correct commit survives (e.g. with git rebase -i @~3)
> add a "ramips: " prefix to your commit titles
> Your Signed-off-by has to contain a real name
> add a commit message describing what you change and why
> =E2=80=94
> You are receiving this because you authored the thread.
> Reply to this email directly, view it on GitHub =
<https://github.com/openwrt/openwrt/pull/2410?email_source=3Dnotifications=
&email_token=3DABOOK6G3ZRCYYHUGPDDZGA3QJTYDRA5CNFSM4IWXBPP2YY3PNVWWK3TUL52=
HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWSZGOD6W4ZVQ#issuecomment-53148386=
2>, or mute the thread =
<https://github.com/notifications/unsubscribe-auth/ABOOK6DBWEFJN6IA2OBL6BD=
QJTYDRANCNFSM4IWXBPPQ>.
>=20


--Apple-Mail=_716FB779-A87F-47B5-94CB-3D7A3EF5528E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
Adrian<div class=3D"">Thanks for your patientness. Wasn=E2=80=99t aware =
it's so strict. I just added the --signedoff to the commit.</div><div =
class=3D"">Good to know how to work clean. Now i redone =
it.&nbsp;</div><div class=3D"">Is this fullfilling openWRT=E2=80=99s =
rules?&nbsp;<a href=3D"https://github.com/openwrt/openwrt/pull/2411" =
class=3D"">https://github.com/openwrt/openwrt/pull/2411</a></div><div =
class=3D"">Regards, Ivan&nbsp;<br class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">Am =
14.09.2019 um 16:27 schrieb Adrian Schmutzler &lt;<a =
href=3D"mailto:notifications@github.com" =
class=3D"">notifications@github.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><p class=3D"">Hi, if =
you haven't yet, please have a look at <a =
href=3D"https://openwrt.org/submitting-patches" rel=3D"nofollow" =
class=3D"">https://openwrt.org/submitting-patches</a></p><p =
class=3D"">Specifically, please</p>
<ul class=3D"">
<li class=3D"">remove the two commits adding and removing the "wrong" =
version, so that only the correct commit survives (e.g. with <code =
class=3D"">git rebase -i @~3</code>)</li>
<li class=3D"">add a "ramips: " prefix to your commit titles</li>
<li class=3D"">Your Signed-off-by has to contain a real name</li>
<li class=3D"">add a commit message describing what you change and =
why</li>
</ul><p =
style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;" =
class=3D"">=E2=80=94<br class=3D"">You are receiving this because you =
authored the thread.<br class=3D"">Reply to this email directly, <a =
href=3D"https://github.com/openwrt/openwrt/pull/2410?email_source=3Dnotifi=
cations&amp;email_token=3DABOOK6G3ZRCYYHUGPDDZGA3QJTYDRA5CNFSM4IWXBPP2YY3P=
NVWWK3TUL52HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWSZGOD6W4ZVQ#issuecomme=
nt-531483862" class=3D"">view it on GitHub</a>, or <a =
href=3D"https://github.com/notifications/unsubscribe-auth/ABOOK6DBWEFJN6IA=
2OBL6BDQJTYDRANCNFSM4IWXBPPQ" class=3D"">mute the thread</a>.<img =
src=3D"https://github.com/notifications/beacon/ABOOK6DCVBX4WFFPBEYFTU3QJTY=
DRA5CNFSM4IWXBPP2YY3PNVWWK3TUL52HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWS=
ZGOD6W4ZVQ.gif" height=3D"1" width=3D"1" alt=3D"" class=3D""></p>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_716FB779-A87F-47B5-94CB-3D7A3EF5528E--


--===============8651686852494604779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8651686852494604779==--

