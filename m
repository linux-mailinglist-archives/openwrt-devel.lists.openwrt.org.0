Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496E0800CD
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 21:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7Osa2mPsScIuIFSEU/CDk85Wqa7QYYNAsT5VjLbcbuc=; b=VmrRAeK0QoCwvUtbWgH2r8vv4
	KiBfkulRcMkSXuptC+wI+crIChTSvw9F7PjVeH1OAR10fGlbX4Bj8JtHzfqvpq6LgdrEeW/PCXjKy
	TL0GxEuGNMC/SAE0+jjhvvAC6leDwnafWHfj1LwKRHWfQmTHJI493cfGcUZovn90fno7/6wTOlzVS
	0qpfZvskY3EKuzxOazh4is7YldodGtlJHcS50+l7goOpWy7J8ktG+gujtXq7KhXlyyEXKe0bQVyG0
	PevED6rMmfnefi5oISQyfRVVhsXZ16xVcuA+dVmfXGRgxBvhKGZt71yiWGbN9OOwKnveEYL3I6PJR
	33MQ10xQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htd2F-0004N0-Kd; Fri, 02 Aug 2019 19:16:15 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htd20-0004II-65
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 19:16:02 +0000
Received: by mail-ua1-x943.google.com with SMTP id j2so3258176uaq.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 12:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=tQAVOr6+BDo8k8umg3BQIjiNU5WEu2NSlVGrQQprfoo=;
 b=sKJm30YoPTKghmG5GrwJxFLnoh+7UljXgukrM+sEIzKSlcuNG1VOZRCK1FAYYsG4BU
 dI62OpJKwylIQC3VQ91vhv0JJJyGe0XuQy6F3YYYOTzWJej3S4R+/l/XSFlpyamytOKz
 8crG978Qzo/duQ1mnxi536Mkm3Imy4Xq0A++Iq1BRrcR5bKBob8mLuFeJfnixAQ86+l4
 ww/fqSfw5lEzj/Wwr2nFnCaWc7Es1qLFV7ukXUPQtzC6+BKb834k6MNJM+TkFkWxngxH
 MT6JX0HoEVwOjmllqZBth/7GSIfUTpEKJCGYGsvrbm3yMoPbn6yy2RwGJzkdvzaMX/v6
 h3cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=tQAVOr6+BDo8k8umg3BQIjiNU5WEu2NSlVGrQQprfoo=;
 b=Tji5ycAJe0Q2+4Kju3+6waCpZiEjhXGcWWst0b0EuYs+dkrzp4wYi4owqfqIwpYjB5
 XtSOIYB+5ru0Y9RsmeMzGTAjgju9S6sFuPnYNHg/G1u0Thj/ieNt4YgKjhVcbmFfyPAg
 1+/4h2JHeSlh60d64SZGWnV9t2HZaTwPSN6onEpJ9mtT0mBycppwl2N0lRqoeicfnA1j
 VUUgd4DJHpzzQhN5KvEqxvjrprr2m9MXruK5i56NM70AjGZ3zrOOwA0o6swNOYcfQZdh
 7fTkyHrugArS2TtWrdChdYLYdkIkBgYLuPVDgEHeI+eAmkc5KaldwFH4RNcCv4yux/nF
 mnQQ==
X-Gm-Message-State: APjAAAWE2atdLUBYmZY37O6cVv0rQsBuK7H75GF+dGxzkeUeXKdVOHJw
 5UqE58B49xNROsDfTiSLH542PyCQ7OU2Vl12ScAd8w==
X-Google-Smtp-Source: APXvYqyvdMHKqcJA9bMuGcEPr/kAFjiaTAt+55f+Ozcxku0OD51cTY0JVMSvzuJ0AmE4U8bFAKVaWbNZeVnjrL4gip4=
X-Received: by 2002:ab0:67d6:: with SMTP id w22mr18747092uar.68.1564773358421; 
 Fri, 02 Aug 2019 12:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190515123152.27834-1-jeffery.to@gmail.com>
In-Reply-To: <20190515123152.27834-1-jeffery.to@gmail.com>
From: Jeffery To <jeffery.to@gmail.com>
Date: Sat, 3 Aug 2019 03:15:47 +0800
Message-ID: <CAJXyS=gU9aa_ZWj4DKk8K_KNRN4Ury__Si9U12vT=AHzUGnUAw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_121600_539171_B6188A44 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: include BUILD_VARIANT in
 PKG_BUILD_DIR
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
Content-Type: multipart/mixed; boundary="===============1585525590472688703=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1585525590472688703==
Content-Type: multipart/alternative; boundary="0000000000002ecc11058f2730e0"

--0000000000002ecc11058f2730e0
Content-Type: text/plain; charset="UTF-8"

On Wed, May 15, 2019 at 8:32 PM Jeffery To <jeffery.to@gmail.com> wrote:

> This changes the default PKG_BUILD_DIR to take BUILD_VARIANT into
> account (if set), so that packages do not need to manually override
> PKG_BUILD_DIR just to handle variants.
>
> This also updates most base packages with variants to use the updated
> default PKG_BUILD_DIR.
>
> Signed-off-by: Jeffery To <jeffery.to@gmail.com>
> ---
> v2: updated PKG_BUILD_DIR in include/kernel.mk, removed undefines
>

Can someone take a look at this patch? (I have un-delegated it in
patchwork.)

Thanks,
Jeff

--0000000000002ecc11058f2730e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 15, 2019 at 8:32 PM Jeffery T=
o &lt;<a href=3D"mailto:jeffery.to@gmail.com">jeffery.to@gmail.com</a>&gt; =
wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">This changes the default PKG_BUILD_DIR to take BUILD_VARI=
ANT into<br>
account (if set), so that packages do not need to manually override<br>
PKG_BUILD_DIR just to handle variants.<br>
<br>
This also updates most base packages with variants to use the updated<br>
default PKG_BUILD_DIR.<br>
<br>
Signed-off-by: Jeffery To &lt;<a href=3D"mailto:jeffery.to@gmail.com" targe=
t=3D"_blank">jeffery.to@gmail.com</a>&gt;<br>
---<br>
v2: updated PKG_BUILD_DIR in include/<a href=3D"http://kernel.mk" rel=3D"no=
referrer" target=3D"_blank">kernel.mk</a>, removed undefines<br></blockquot=
e><div><br></div><div>Can someone take a look at this patch? (I have un-del=
egated it in patchwork.)</div><div><br></div><div>Thanks,</div><div>Jeff</d=
iv><div><br></div></div></div>

--0000000000002ecc11058f2730e0--


--===============1585525590472688703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1585525590472688703==--

