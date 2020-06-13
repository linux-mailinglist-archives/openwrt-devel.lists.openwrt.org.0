Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA7C1F857F
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 23:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fS5qT/xOa/4IUT94XUIaq/3QUGlP+22Chwd7FqaSAWU=; b=Uwq
	KgWaGd9XfHm6AklnFHCeE4vHs6Xi84B/OW+2XtHY+eHnIvUbLW3QfUVFiD+e1C6ySkwdhq/Dz7f2C
	jtauXDLypTSs/5RJ0FcMQeBMRVT+8PIXyILggfexnuSFpNde5iJeUhQiiWAglW6CaoxvmJ5QquCGP
	jf3voaSyYwUzyK7vkJ+6OEZcanPSBsgQTRBMTKcIMaf57SybZ6fRbN6ZApB8ySPRItDSctia8U+by
	I3Oc5ZvTDbFD/PNGUWLAUjN1H1pjlznqV3ks1+xpaBNH9Aw7aBMfAit1AHmYXHISkt+6u7sE6EqYf
	6fxHOFnDkBvIuXwpIZ2sxbQEm8Fr1VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkE5s-0000KU-QH; Sat, 13 Jun 2020 21:53:40 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkE5m-0000K4-HW
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 21:53:36 +0000
Received: by mail-lf1-x136.google.com with SMTP id 82so7415368lfh.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jun 2020 14:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=o/XKQsgvuYi0UyX/AdKTUnkdZ6bE6TiTkrvqzIMcqWg=;
 b=XuIM/xeARSdWiS390MAMfUa77ihjO4CwWOCkBfMn2fNRbIOJAE6v4E9L7lu1TDpeUt
 aeoZwvtadQrd106tkMv+4s21dV4hxKczyceIzrEK5AZbwmREJWllgUqCTVlc9xYFcj9k
 3qU3UnyapMxeCvh4qzNkIwqEOdz4jmpbmU3Sivkmbn2kWhG6WRjyS/Ye4dgfZt+ayPyO
 l3nwI2Xw8QDIESdh4wFp+xC5e6yk/DcuRgL/lHL/eVwLMhAmd532TbsgXuqxHHQTPpWH
 s38Zfb0GRuxwFJegcXIVgxNu8YxnwINJxS5OgPvnxgp7cpX+dlG2RlkcYcMvesmsaP5C
 o/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=o/XKQsgvuYi0UyX/AdKTUnkdZ6bE6TiTkrvqzIMcqWg=;
 b=GL0v9yWRkz0ULHGZQhn5y/K5kXtajnrNeFzMGQcxDY5f+/qIHuj+5ezW0qMt1yLW92
 +23kQ6LVXTM8LIKb/erVOHNyEhrITCIHPhrLA2zfB3LeKIhjjdT+QrN4M9EKyuQynuEI
 7ne+/tCnK/rKkt9ihXHb3da+EZbJkNm/f0bkRPgeoNrBd0/wv3Dc8ISHga6Lp3jGfRKF
 urHeGSg/E8VfjBhEuJV5M1T6JPUVPj2PU26C0ckgQLNImyeVJ1bbi1/rZEAFx2P+xCfY
 +7dP+a79xDZzE3khkIniqU1H2cbY1zpjNyZW9ffhqLHfekGHBuY14QAvbnD4eWrAhpOz
 b0ww==
X-Gm-Message-State: AOAM531c2QIBhPyRYpHMAOpZFgTF7kjIduVoF2Jl1SvbIh2l3gaU4q28
 QIqZ1UKr3x+XZU6Y72E1PoF76T8XrcXPrVWMl0P5WXLmG0U=
X-Google-Smtp-Source: ABdhPJyS5VJgVeFyvO5vDUHboHhlL3tuEb162sCeVOcNohsNVKwwqzFeET6rvetgnzc5D1sLxBxAo22V9uugnL7B9ec=
X-Received: by 2002:a19:5206:: with SMTP id m6mr9928164lfb.144.1592085208471; 
 Sat, 13 Jun 2020 14:53:28 -0700 (PDT)
MIME-Version: 1.0
From: Michael Jones <mike@meshplusplus.com>
Date: Sat, 13 Jun 2020 16:53:17 -0500
Message-ID: <CAJQUmm6N_vrJGBd6Vs-PfeYkWAucX79t1JXATmnHzLy317nAEQ@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_145334_639245_9C278288 
X-CRM114-Status: UNSURE (   3.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] /usr/share/libubox/jshn.sh and piping json text to
 json_load
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
Content-Type: multipart/mixed; boundary="===============4367057747462099139=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4367057747462099139==
Content-Type: multipart/alternative; boundary="0000000000004dda5a05a7fe392d"

--0000000000004dda5a05a7fe392d
Content-Type: text/plain; charset="UTF-8"

Hi List,

I'm looking to load some json text that's being piped through grep / sed /
awk into the json handling capabilities provided by
/usr/share/libubox/jshn.sh

Looking here:
https://git.openwrt.org/?p=project/libubox.git;a=blob;f=jshn.c;h=1b685e5fb0d853c4053389242b92c34967beb94f;hb=HEAD

I don't see any kind of handling of stdin. So I'm guessing that piping data
into the shell json handling code isn't an expected use case.

Does anyone have any suggestions beyond the obvious solution of loading the
data into a shell variable first?

--0000000000004dda5a05a7fe392d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi List,</div><div><br></div><div>I&#39;m looking to =
load some json text that&#39;s being piped through grep / sed / awk into th=
e json handling capabilities provided by /usr/share/libubox/jshn.sh</div><d=
iv><br></div><div>Looking here: <a href=3D"https://git.openwrt.org/?p=3Dpro=
ject/libubox.git;a=3Dblob;f=3Djshn.c;h=3D1b685e5fb0d853c4053389242b92c34967=
beb94f;hb=3DHEAD">https://git.openwrt.org/?p=3Dproject/libubox.git;a=3Dblob=
;f=3Djshn.c;h=3D1b685e5fb0d853c4053389242b92c34967beb94f;hb=3DHEAD</a></div=
><div><br></div><div>I don&#39;t see any kind of handling of stdin. So I&#3=
9;m guessing that piping data into the shell json handling code isn&#39;t a=
n expected use case.</div><div><br></div><div>Does anyone have any suggesti=
ons beyond the obvious solution of loading the data into a shell variable f=
irst?<br></div></div>

--0000000000004dda5a05a7fe392d--


--===============4367057747462099139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4367057747462099139==--

