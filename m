Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB671EEB29
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 21:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xjODEEe8Lyxazr3RVEbd0VP7+A/mcU0gZmtjhzC+XKE=; b=JtuTo3Zve7/si5fPGmYynyuYq
	et0U46y8NZzvObW3WHobZ4fGIhVcRKknVUX5DwBs6Jzs+RQvL4qls2rgI/E/SDMJdOJgBQqUXd2zA
	Y6K7kzxg3PrApLAGCu7U/c1A3QSgg5epp/7elCSki8n8INigdhPJnmGBCVP+5bNntlNezAjEpW7PQ
	Ws2KsEy1oGYXwOt/WpKxGj1uoMpkVPYcBPu8/7POui5XP5dLkuWTNGCDGOS3M120TmkyvnzqSfGJt
	evTBB3CrGOR9FultFSwgDIBsZhvpE/LQ7kO1Ga9d174ALawwWSx9O2nAhe/8kWqLDW+HG61Qvq66f
	Vw5wzXQEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgvYh-0001Ar-MV; Thu, 04 Jun 2020 19:29:47 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgvYY-00015U-6i
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 19:29:39 +0000
Received: by mail-lf1-x142.google.com with SMTP id d7so4314574lfi.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 12:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IwaCm+Y2Rqq3M8W1AdRU6tSwbik7lCe7QLclhiQ/bFg=;
 b=D8dALE5pg0fCQncp3SsiyDAFloeerkXaZWtExuJjT09P7f3gLcdHg9484YKBH7cFEf
 FmBSawhFthh32PSJq2WnxhssAFupQ2vBz8YCqTBizybrgTHbP9q2fVKs14hJghQkSncR
 +qoIw/7Qs04vdeuqBdhLeLJPnu1Dc0ulVoGacE696eLxC/Znhq0B/cLiNBKyAXBXc9d8
 M9O+7lGaQpyHbmu6iReTXzy7qKA7GpfAK0B87u+HZrDQ4dDxC/kbt7g3f8DkLy4u4M09
 hke0lyfAUnsnW3UVi4N1qwH7Ct7z0tKeGeJVOIGtwFpLAOfCVQo5038b6h59E5YNk/8v
 b/Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IwaCm+Y2Rqq3M8W1AdRU6tSwbik7lCe7QLclhiQ/bFg=;
 b=o3aLBA2WkEO3LPaBrmNBs9VmRULj9+iwkAmKaePzJB2Na7Thp86e0eJhjPmxpkRkiz
 /8aH1tJ1vYVrW2/CrPHIa79GjUl7ed50gnvytiDB/u9466aQBD/Ygg5JbijTnElD5m9H
 QKzbC80URWMAwRQGILcPzD5RfJ3M+JXhiDaPEccANQWOxZBm4vkInA844A0wWRNTuQMD
 7QtcNq1KuKPQPOO2S5HAl+0/fif1CQPtELWKM9hea9zUjQWO0fBn35npSFV/ZOhalLXq
 IcyF+4ImuTuo8j7VXdr6S9RrtGkGDowXSgceklLJ1zf37D2+JcU9wgLRLyAfulYdrq1K
 dkGQ==
X-Gm-Message-State: AOAM530okVKonGDwcCQWMPIsiBjMuKCHWSQDUbIJcvfj3IV6+fXA7mem
 oFtOqgQiru2dBeB00N7Ie24oVf59Se5/wj/GINnJgzWC
X-Google-Smtp-Source: ABdhPJxO0o+E29vaRKtzo+5THWWTgAziEtens7zkAkjGDWl6RrnyJ/C+NcneZxZFKOfz+3cc+yX0U+3MK/KqsNSinWg=
X-Received: by 2002:a19:5056:: with SMTP id z22mr3256600lfj.195.1591298971184; 
 Thu, 04 Jun 2020 12:29:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200601153226.15229-1-roman@advem.lv>
 <CAJQUmm5aVrkZ_UQOx-2Yk_jUreZOqCG5wt+S7+b3p9sqAyJY2g@mail.gmail.com>
 <6406348b-1e10-5e6d-0c20-9e2716099833@nbd.name>
 <CAJQUmm7kmKh-yNdHWWLVRwbVKhc7RXXZQhOo3+9vhWX+1taSdA@mail.gmail.com>
 <c6e9c91c03ca90ca6e2b7e1a92aaa86b@advem.lv>
In-Reply-To: <c6e9c91c03ca90ca6e2b7e1a92aaa86b@advem.lv>
From: Michael Jones <mike@meshplusplus.com>
Date: Thu, 4 Jun 2020 14:29:20 -0500
Message-ID: <CAJQUmm5-TujhXEt9OJWnfyueC_7_y1DfTTUa8yaBos0J80Qhcw@mail.gmail.com>
To: Roman Yeryomin <roman@advem.lv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_122938_258267_95171D08 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] build: improve ccache support
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============2650753873688975253=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2650753873688975253==
Content-Type: multipart/alternative; boundary="000000000000e9246605a747295a"

--000000000000e9246605a747295a
Content-Type: text/plain; charset="UTF-8"

> I agree with Felix. Having one ccache directory for multiple repos
> doesn't make much sense to me as most probably they are for different
> platforms. And even if they are for same platform there are more chances
> for ccache corruption and deleting it will affect all those repos. So it
> still can be done with symlink but IMO should be done manually to make
> sure you know what you are doing.
> Also BASEDIR should be changed too, probably, if we want to go that way.
>
>
I am already using a shared ccache directory for multiple builds in my
continuous integration system. I'm accomplishing this by patching the build
system to change the directory for the ccache directory.

If it were a .config option, your use-case would be directly supported, as
well as my use-case, without as much custom patching.

I imagine that there are plenty of other organizations which would use the
.config based functionality to customize things to their liking.

If ccache is corrupted there are much larger problems than slowing down
other builds.

--000000000000e9246605a747295a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
I agree with Felix. Having one ccache directory for multiple repos <br>
doesn&#39;t make much sense to me as most probably they are for different <=
br>
platforms. And even if they are for same platform there are more chances <b=
r>
for ccache corruption and deleting it will affect all those repos. So it <b=
r>
still can be done with symlink but IMO should be done manually to make <br>
sure you know what you are doing.<br>
Also BASEDIR should be changed too, probably, if we want to go that way.<br=
>
<br></blockquote><div><br></div><div>I am already using a shared ccache dir=
ectory for multiple builds in my continuous integration system. I&#39;m acc=
omplishing this by patching the build system to change the directory for th=
e ccache directory.<br></div><div><br></div><div>If it were a .config optio=
n, your use-case would be directly supported, as well as my use-case, witho=
ut as much custom patching.<br></div><div><br></div><div>I imagine that the=
re are plenty of other organizations which would use the .config based func=
tionality to customize things to their liking.</div><div><br></div><div>If =
ccache is corrupted there are much larger problems than slowing down other =
builds.<br></div></div></div>

--000000000000e9246605a747295a--


--===============2650753873688975253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2650753873688975253==--

