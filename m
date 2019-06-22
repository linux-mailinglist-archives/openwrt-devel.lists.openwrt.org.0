Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64FA4F450
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 10:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80I28qd+BMvXp1WDNMr5XhhDJlXN74cqsAC7qKyXAmk=; b=IwtKn/++Ybxt6Z
	9qruah1iqgXMSfYAck/HpAoThnX3bgUkGlYTpbQY0kw6EWxX7lrhuBR3zrd+I/wp7VDgAMfHgjR86
	6wbwJQXHs3k2UQyM3IlzEs0mKIZfdQQTTOw/u+IHJRIhdgtovKH5+fiTfHNbPixF4nD2qbjmOQHW3
	1IfQDCkTD4ESRr5qWQU602YcaYKIie5dOD2aMnzYyqYH0kQfGvQaXq/2VUHzQgKLXcIPcwUkTmvkp
	Zr38NjaUTp3GKWc42RwnL8nGogcDkJQKGMSu9gHqKZ2TmM1SEa9C1+YFkZgC/AfqVUAR7smu/msry
	XtaIYX5lPMyIO93JmL7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hebMP-0005hz-Bo; Sat, 22 Jun 2019 08:26:57 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hebMI-0005hU-2N
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 08:26:51 +0000
Received: by mail-qk1-x741.google.com with SMTP id x18so6179125qkn.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 01:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x+dEtXFVhCGg8f/juFgN9eT0/yr4DYfdexOsPVyP+vY=;
 b=IE2IdH752D+8RJKZaTHSgt2pVCnM89Y5C5GXDlN2CNy/cP7YyRAdE2xBhsmF7hONYC
 3DNqrbVNteSOKFfZIPnYfPLA3GaZS8IOijxKkMTHWF8Z/yfkSF0oin50kKR1qsHmX0W6
 hNcq8ww8YgCaRkWYNLLk0KbTVqdG/vMojQrZeFvbr0LXlz/cgo/HAnWwAZgUVC4qN9rd
 1jD2BjW/nuR6iNT/3rxGlR2DCckpSvzJWOQ2JuPEo2rSPszqGbtQ96RXam0Pv11LIqS1
 pR5dwIHtq6VJIt5aUZmNz4wYWBQBoT/Vx7V12sm0pW/uwNg6HFEwOqXjiIMDIYBeeiDH
 2ISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x+dEtXFVhCGg8f/juFgN9eT0/yr4DYfdexOsPVyP+vY=;
 b=rmkxK3QGD8DKcQuchVo7mpX4jmziechRtXIQL8HyJQoR3bErRBwsPybcVYBd0VP7CC
 oE9FI+Om6XqfR6S6GS7raLYpAouGZB2QIx/FkuZ/2qOwNPxTWsrcWNmQcmN9kx9JfU0M
 DvDS+AA8rkjGEyDHx3D/VFueyyzdhJOQj5K/s/iuL/nSXJSn9MBUEkwDxaUS/xM9R8ci
 4FHEuXlT6i/+gyQISfxM5MI2grCyFNgTR6O0a8ynvoYrL6l8n6mQjrM1JTXkJoxYBVIx
 7WkUZB21bjYXhqn37g096xqX+kBN+lohKGYAX+rjxLjyxWP9GmN4803PMHyxNlwmkBBm
 wWoQ==
X-Gm-Message-State: APjAAAUmxF/XFxxwXW4yneP2eQlln8OhFxWI2+XkNLvfoTLi5DYtEIOt
 Hdst0nZUJICNbzS7yoFi5Ai9rZo84eBxWE0W0OM=
X-Google-Smtp-Source: APXvYqxsGV1iozYzWy4wyZwzxDH7lmIUZiVR3dZ8OZlGIMqIJCyVkvME4Va126MqdyqP97Bv9upe5DbFkAGC5z2t2a0=
X-Received: by 2002:a37:7ec1:: with SMTP id z184mr9118707qkc.491.1561192008408; 
 Sat, 22 Jun 2019 01:26:48 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.3988.1561122346.19300.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.3988.1561122346.19300.openwrt-devel@lists.openwrt.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 22 Jun 2019 10:26:37 +0200
Message-ID: <CAJLcKsH7iVcBnePG-X_5XviYNaSet8m1Ea1ZKWV3CGZgMxiJGA@mail.gmail.com>
To: Eneas U de Queiroz <cote2004-github@yahoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_012650_141296_AFE1BC43 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] nghttp2: deduplicate files in
 staging_dir
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Jun 21, 2019 at 3:05 PM Eneas U de Queiroz via openwrt-devel
<openwrt-devel@lists.openwrt.org> wrote:
>
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
>
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.
>
>
> ---------- Forwarded message ----------
> From: Eneas U de Queiroz <cote2004-github@yahoo.com>
> To: openwrt-devel@lists.openwrt.org
> Cc: Eneas U de Queiroz <cote2004-github@yahoo.com>
> Bcc:
> Date: Fri, 21 Jun 2019 10:05:23 -0300
> Subject: [PATCH] nghttp2: deduplicate files in staging_dir
> '38b22b1e: deduplicate files in libnghttp2' missed duplicates in
> staging_dir by Build/InstallDev.
>
> Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
Patch pushed to master; thx

Hans
>
> diff --git a/package/libs/nghttp2/Makefile b/package/libs/nghttp2/Makefile
> index b96ebd8acb..2f0b4bcabc 100644
> --- a/package/libs/nghttp2/Makefile
> +++ b/package/libs/nghttp2/Makefile
> @@ -35,7 +35,7 @@ define Build/InstallDev
>         $(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/nghttp2/*.h $(1)/usr/include/nghttp2/
>         $(INSTALL_DIR) $(1)/usr/lib/pkgconfig
>         $(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
> -       $(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/libnghttp2.so* $(1)/usr/lib/
> +       $(CP) $(PKG_INSTALL_DIR)/usr/lib/libnghttp2.so* $(1)/usr/lib/
>  endef
>
>  define Package/libnghttp2/install
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
