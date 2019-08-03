Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3168680610
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 13:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mSeMrgMN0w6D4dxvwx5yl0foQBIm6ul3py88VllJx0s=; b=JXbt02QiL0GSyaDktqT0hWYK/
	XxnsSi24p6lWyOSlY76X4wi+yeCot8Vs2Zhudw46eOgKavIyMZEqM8dUzz79EuUJALaUy9tSjbDxS
	41mfQ9GOPiE8lpCJSIVHr3f5Ez9nkD4XNIzyL3fMvxmQ9go+4q4/wj6ylxs5XwWMgjdvfG0+OMl2i
	o6IIiuf0ltHaWhmvB15EFmBkdXCf56YOKv8BAUGfPK33gsjJRn9lNb4ZQQ7hDcnoAeBltRLl2oQjn
	tJ8kO4Y2cevcDuSuhrLjhWPzsXwADjJc4Prz+AOITOrbMCPJeXMlaCD4MmH/08ha03AOP7J6LwIVW
	ITZJiHAtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htsWR-00075S-IS; Sat, 03 Aug 2019 11:48:27 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htsW9-000756-9w
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 11:48:10 +0000
Received: by mail-vs1-xe41.google.com with SMTP id a186so51439392vsd.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 03 Aug 2019 04:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3oaHimOxJQqf9V7tlZGco1M9hZRFUNalVz9S5PAAEEw=;
 b=d7x1bogdXr+RJjrdNowTa7jKh+QNJ2PFwGP9tZFNWCUfscXlo7n7h1qjmRckGn0PEd
 +NveZA5YBM9KRx4ArzkyYcHf63MeZQ5k8vuQEo68v0q3uMSUqQJv2rdjpvn16sWItqDD
 BZ63HuoV3K939wOaP5XYcf0v51matT9ZyXJV0Xn8j7zhdMAOUZGOu9kaXyunaGAtAJKC
 t6qEWsLtmTvpN7qM678lkx+x+3meUlOuVkbE2v9e7VTGb/Yw40GcEsXOg5Ihje/uQdZZ
 OfoNG9/ra6yPc1P10Xrcjd5psbf64dRpSo+5Wae/Xj93dOHct4Ru3/5fk5ZawtiRb4zB
 TFVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3oaHimOxJQqf9V7tlZGco1M9hZRFUNalVz9S5PAAEEw=;
 b=Cx0BGKNFYbQPDHzopJN4ww3M4XBEFl0FhnyOz2Ly0qgIukweR00ovi7Jr2hg+nDuS3
 ROnlDnBu1krPScskYpHOFcopQTkwKm+/m6HOfCtaDkJJkz7U6AU+gn9E6TrSlLQGcWNr
 4HeHe/XvEMTuQnagBpjvQTK8ttOGXpbnlOzV2MCd1e73H8ocf50OurTFQVVhODkB56NV
 aNeGM/KCP08rGsFfoJNy3u78LI2R3yi7TZPnuTP9WvJFOPQrevSs7bJJMNjyV3VLeJdd
 TCdmS1Nr2CAY4vKx6stv1eU3wdL93H5df0D4wgkv4AaF1/UaLwmzk27qJ6bFa7l8u+Dj
 oTwg==
X-Gm-Message-State: APjAAAVsMjHRr26/ReRnRFp28vfE3C5WFI0WgtdzvfI96tV1JI2DnxaD
 x1hGsyId7V6eRvL5Urzytr7IH+5dumFB644c6crF2Q==
X-Google-Smtp-Source: APXvYqxyICeWfXAHWok58AQPMAW1EPHMtsu9kksGxV71m0d56KffrafJprFZaB6Ilh8wgh/yj7YhA0wyEgOAFFX9ttg=
X-Received: by 2002:a67:f355:: with SMTP id p21mr90693504vsm.204.1564832888129; 
 Sat, 03 Aug 2019 04:48:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190515123152.27834-1-jeffery.to@gmail.com>
 <CAJXyS=gU9aa_ZWj4DKk8K_KNRN4Ury__Si9U12vT=AHzUGnUAw@mail.gmail.com>
 <61932cbe-c1f8-a3db-db27-d1890cee4f32@aparcar.org>
In-Reply-To: <61932cbe-c1f8-a3db-db27-d1890cee4f32@aparcar.org>
From: Jeffery To <jeffery.to@gmail.com>
Date: Sat, 3 Aug 2019 19:47:56 +0800
Message-ID: <CAJXyS=h69O7+EChD2=aGMdeoOpBTZY0kygNLRqS39q3R9r6rVg@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_044809_342895_BDCADF30 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4870136182086934173=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4870136182086934173==
Content-Type: multipart/alternative; boundary="0000000000006e0e35058f350c36"

--0000000000006e0e35058f350c36
Content-Type: text/plain; charset="UTF-8"

On Sat, Aug 3, 2019 at 4:40 AM Paul Spooren <mail@aparcar.org> wrote:

> on commit 5e928acf22cdc956eabe6e4b2327b34eb0ee66da applying fails:
>
> error: patch failed: package/libs/ustream-ssl/Makefile:10
> error: package/libs/ustream-ssl/Makefile: patch does not apply
>
> However removing the ustream-ssl part of the patch results in a working
> version for (at least) all three openvpn variants!
>
Thanks for testing - I will rebase and post an update shortly :-)

Jeff

--0000000000006e0e35058f350c36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, Aug 3, 2019 at 4:40 AM Paul Spoor=
en &lt;<a href=3D"mailto:mail@aparcar.org">mail@aparcar.org</a>&gt; wrote:<=
br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF"><tt>on commit 5e928acf22cdc956eabe6e4b2327b34eb0=
ee66da applying
        fails:</tt>
    <p>error: patch failed: package/libs/ustream-ssl/Makefile:10<br>
      error: package/libs/ustream-ssl/Makefile: patch does not apply<br>
    </p>
    <p>However removing the ustream-ssl part of the patch results in a
      working version for (at least) all three openvpn variants!</p></div><=
/blockquote><div>Thanks for testing - I will rebase and post an update shor=
tly :-)</div><div><br></div><div>Jeff</div><div><br></div></div></div>

--0000000000006e0e35058f350c36--


--===============4870136182086934173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4870136182086934173==--

