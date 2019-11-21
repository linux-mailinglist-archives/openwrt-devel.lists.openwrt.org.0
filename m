Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E65104D1C
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 09:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lFhOdFoKqQ8xHiAWi5/0LV1cfjtMxwkR4ca19GxNDlk=; b=txLSyfeyUg8jJr6w9lMVj74yY
	im0iDoJaF912pIBcUIt2uRuFH2a6XrhI34X2J7ik3LmPmf/b+tCG2SjmhyY+YnH/QyA/FDHXiUR2d
	Uo4NCAHuMWCHVhKnZHKyP2TLIYkkIDaO2CY5x6k+zFZ99yPs5Gbsx5py8KL20pIsxWJIGIeB1b7Q2
	cajaYRx8NHvNIlu0WaMFHbsZrWFEbsfOdfuEDQiXV7ZP0/xFIp5OBptFxA8lzFFp5In1GOQeu+kCY
	0F+r/5VV89WOc+vOLz1Mf7tC+x06elbSyEBDryv42ZnJPgHwNatIm8fdMEcB0vqi9emXbGD1LBn7s
	AhL8GHxOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXhPo-0006OW-9U; Thu, 21 Nov 2019 08:02:12 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXhPe-0006Nn-Q8
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 08:02:04 +0000
Received: by mail-il1-x12c.google.com with SMTP id q15so2369407ils.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 21 Nov 2019 00:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OcRyu2AhfeUwkcy+WizEm1rHcV+f6FBrIMVCokHT/g0=;
 b=vJNVq3HqyKQ12zEELnNJuy18ZqkgVw2LkNfzn75ImoYNqBZGWkDFbbkG/gy9hKD5te
 i/JsdDNrrMxsTl+HjRqMySp5u7gSUj5IDKIOQHZAkCVRwRoipzOxQD0xS1JDa5y+VAsR
 l417xgo3o5lc3ckYMddaNphWheXDkcrWj2YskteTJ0Mh9nxArGlnmsKIcxkcIuz2Sr4K
 Hpvcc/0QI5QBiiV1qBfAjJh1D1LDnn7JOhDVuUwpVWnB7wpRYBy1L/S1rqnu5c70c2d1
 cDfcDHk2qjZ/HGieqlaWigSEDcVsciMjPgjnVxpoDhxHAGs1duCf4TgWBQxhaDzGJioh
 ip4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OcRyu2AhfeUwkcy+WizEm1rHcV+f6FBrIMVCokHT/g0=;
 b=p6mCOBROYLwHQJ4ukfTIffbRHhDT9nJzPagna0dKtXGs8nH11OTNUAo8lbRKm9eXqv
 R5wU6oKnvg8NrZ9Pj+c2d+3RJSlJotNvIs96g8F9qfVFmb2IFnOLg6iUC9Dm75gVBbUc
 PgD9xD+KENMOH+XgzCv18pCV5XJPSfJws1JmJQA65leRg5MteXALg48yuewjx2pMZbv9
 RtQF8PCiTpYpBKU0rkhFeniur2y3NjGf+6AhiSJCOGitPpl2V5tsevDdhuvtoq+ERxcY
 cU/6fPr3eRRWZU+p+WMNqYkk4QkHx59yEv2bH+ayRwGOIW1AXvyF03Bjhww5l4vG5QYd
 5o8A==
X-Gm-Message-State: APjAAAWUVbzQeBvMOyvptFC4zPRzK7qsC4DmE6O8sTgp9XoYKLoFAO9J
 PIIOjH7XUIIjQwUh6IhPIba5WNJyYZeBgEKrMnGN5Gh13+E=
X-Google-Smtp-Source: APXvYqwydCnwJTGjb3ELt+xjp5yVgFbSolYCkQMPuMFdjS/ZtY0idroR16c6EnV1vZdv5XjTZNNkBTHPHIAxTLQqvek=
X-Received: by 2002:a92:2807:: with SMTP id l7mr8134899ilf.247.1574323321274; 
 Thu, 21 Nov 2019 00:02:01 -0800 (PST)
MIME-Version: 1.0
References: <20191120214353.27652-1-ynezz@true.cz>
 <20191120214353.27652-6-ynezz@true.cz>
 <CAJQUmm6==KXt9qfaMQ720ZKud=drFQuSKv+eBDqt-9COjG4ysQ@mail.gmail.com>
 <20191121061735.GH52387@meh.true.cz>
In-Reply-To: <20191121061735.GH52387@meh.true.cz>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 21 Nov 2019 02:02:39 -0600
Message-ID: <CAJQUmm6KiqcF2JEtoHkMmfdXEmO=euvzQKTZkXLQNxPOVyQOUA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_000202_986823_3E940076 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 libubox 05/10] add assert.h component
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
Content-Type: multipart/mixed; boundary="===============8567427365342104882=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8567427365342104882==
Content-Type: multipart/alternative; boundary="000000000000539ea60597d6b649"

--000000000000539ea60597d6b649
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 21, 2019 at 12:17 AM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Michael Jones <mike@meshplusplus.com> [2019-11-20 18:12:14]:
>
> > You may need #include_next, to avoid recursion.
>
> Is this some theoretical experience? Or you can provide me with some buil=
d
> breakage? Just wondering, because #include should work this out with "" a=
nd
> <>.
>
> BTW I would rather rename that include file to assert_internal.h, then
> using
> include_next. Anyway, as this builds fine on gcc 4.8,6,7,8,9 and with
> clang-7,8,9,10 I would say, that it should be fine as it is.
>
> -- ynezz
>

My experience with this was with MSVC in 2015 or so, and a heavily patched
version of STLPort.

It's not obvious to me that you would encounter the same problem with GCC /
Clang.

I'm personally instantly averse to possible recursion issues because of how
tricky they can be to debug, but if no one is concerned about it, it's not
really an issue.

--000000000000539ea60597d6b649
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 21, 2019 at 12:17 AM Petr =C5=
=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Michael Jones &=
lt;<a href=3D"mailto:mike@meshplusplus.com" target=3D"_blank">mike@meshplus=
plus.com</a>&gt; [2019-11-20 18:12:14]:<br>
<br>
&gt; You may need #include_next, to avoid recursion.<br>
<br>
Is this some theoretical experience? Or you can provide me with some build<=
br>
breakage? Just wondering, because #include should work this out with &quot;=
&quot; and<br>
&lt;&gt;.<br>
<br>
BTW I would rather rename that include file to assert_internal.h, then usin=
g<br>
include_next. Anyway, as this builds fine on gcc 4.8,6,7,8,9 and with<br>
clang-7,8,9,10 I would say, that it should be fine as it is.<br>
<br>
-- ynezz<br></blockquote><div><br></div>My experience with this was with MS=
VC in 2015 or so, and a heavily patched version of STLPort.<div><br></div><=
div>It&#39;s not obvious to me that you would encounter the same problem wi=
th GCC / Clang.</div><div><br></div><div>I&#39;m personally instantly avers=
e to possible recursion issues because of how tricky they can be to debug, =
but if no one is concerned about it, it&#39;s not really=C2=A0an issue.</di=
v><div><br></div><div>=C2=A0</div></div></div>

--000000000000539ea60597d6b649--


--===============8567427365342104882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8567427365342104882==--

