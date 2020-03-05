Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3546317B16D
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 23:30:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4hcK3B1uhnSTUesn7puy8gQmhA3OYEXJldYt6r/2gQ4=; b=Q1Kqy5GIazqb9fSnt+w6eXONQ0
	xYKn60GJ77ak59QBNrKU9pMHvxD9KLjm3/ufpTr1CsYGzHvfA1P8PNXjdytatHZ2kIQ7PJXHdeax6
	265705BGx7SY9i4nHefJ+fEq972P8I7GxnCvU1Bo7xdvGZbFvOPextPkY8CW1MugHcsiRujN2Gi6R
	N/Dh4FN15KDS6jFnaB97Dg7cqVcRXQjy88+4vaMklZIozcoPvB4teEK1Q4NCLq8sjmxXOR8/DC1f+
	QpNCBJY5Gof300BJGbhWjRprsWpD/0Kv1rzrpn/zW4pmZ8OHitiLNNDqGKQcHSRDqKgbbkttTwFtr
	VMowx8Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9z0B-00039A-4W; Thu, 05 Mar 2020 22:29:59 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9z01-00038U-Mi
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 22:29:51 +0000
Received: by mail-ua1-x941.google.com with SMTP id d19so2712772uak.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 14:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=gvcffdc+VHD2iJMDtVI+1k1kq0EXG7UwcwSlU6LJ/EU=;
 b=XFgwu+YtHnDSjEMyJ9JhrpSoovtsYs3UDDVyx7r+yiyvzPb0+aajSykqgDvgSIZFFF
 c34Y6dOajpCL1qcQ4yPcvr+c/QZd8WJgfgswei9IiWfvc3w8UZdW4oHV4Kr79wPwyiC8
 PKtYP/TmeJV9vqDonEef6r0KRU91hdZiLc4vrA2zXyb54Ozux4upVFpKWoHF14pxQbZO
 BkUJhs0fbKGmQr86+pP+tT3IiOPulsz2eK05k48KytchoNUuZP1AqQ/Ucu6hNgZdu7rl
 GKGtqpsJGQMwTuSsGPTuowI+pyvDAUn/bJYDR/KtbDT7plzr1NVJaDIjfk8ebmSEzrMz
 aDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=gvcffdc+VHD2iJMDtVI+1k1kq0EXG7UwcwSlU6LJ/EU=;
 b=A+HkyhwlH3YNwetLOSedSNtOxap18PNnCQsfZztIXoG1m6ZV3nwM7+w285XbgGidV2
 /A4tVqdnWoqqPXuAnJepu9TkSX+C2J49mnxxCekfiLUVxJ3XyCD5BFcYX/GpXGVwkDDo
 YNhmCoCedPwwWVT+a0zfCeQU0B00O5iMwAI2qUYXgnTqjEdQOLEPPjnVgLhITcWuV3Tw
 iV8LcRPPBuVL+lP43L/XRPX91E9njD7BVdJEGtWaxFcQrHWlYB2uu3qDJGsvedaEqPpf
 +qpjaYLn1o4rdd5ZW9fBVSwfhzT8j+0zhCDzbb8feWV+brpj4FSnskn59c4wOcI+bLcU
 aNPA==
X-Gm-Message-State: ANhLgQ3JKJvP23zcg4e+3Gk1TLS1z5H/3DGpgXwXO6XDC4S1ksEsGzC/
 0BDGvxr6hYjjMuRVb1GktCkcXf3mZRW6IFuWMGo=
X-Google-Smtp-Source: ADFU+vsKNgqGZcJhiIU0pSN3kBtOAnjwms5qT22a67chrWo7TociddSY67ebzN+kFxXm3/JuonocAYWxCjeu6dE+8zY=
X-Received: by 2002:ab0:704a:: with SMTP id v10mr58449ual.82.1583447388051;
 Thu, 05 Mar 2020 14:29:48 -0800 (PST)
MIME-Version: 1.0
References: <20200305193427.17434-1-dev@kresin.me>
In-Reply-To: <20200305193427.17434-1-dev@kresin.me>
From: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>
Date: Thu, 5 Mar 2020 23:29:36 +0100
Message-ID: <CAF1oqRBVWHEHG37GTnUZ0vW-VsvK4pTp0rUBJq-MP3+wgCXOdw@mail.gmail.com>
To: Mathias Kresin <dev@kresin.me>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_142949_769501_0416CC29 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] iproute2: revert add libcap support,
 enabled in ip-full
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Mar 5, 2020 at 8:34 PM Mathias Kresin <dev@kresin.me> wrote:
>
> This reverts commit a6da3f9ef746101b84a6f530f5a40de28341b69a.

Not exactly a revert, since it keeps HAVE_CAP logic.

> The libcap isn't as optional as the commit messages suggests. A hard
> dependency to the libcap package is added, which is only available in
> the external packages feed. Therefore it is impossible to package
> ip-full without having the external packages feed up and running, which
> is a regression to the former behaviour.

The libcap support is by all means optional, otherwise iproute2 build
will fail when its missing. Besides,your commit actually removes this
dependency. If this is not a living proof of the facultative nature of
this dependency, I don't know what else is.

One would argue that ip-full should correspond to the full fledged
version of the packet. If the dependency of an external package is the
issue, how about making a different variant with HAVE_CAP support? It
could be called ip-really-full (or ip-fullest).

Anyway, I don't really need libcap support in my iproute2. As long as
iproute2 continues to build successfully in the presence of libcap, it
would be fine for me.

> Signed-off-by: Mathias Kresin <dev@kresin.me>
> ---
>  package/network/utils/iproute2/Makefile | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/package/network/utils/iproute2/Makefile b/package/network/utils/iproute2/Makefile
> index 34b768a906..cff582283c 100644
> --- a/package/network/utils/iproute2/Makefile
> +++ b/package/network/utils/iproute2/Makefile
> @@ -47,7 +47,7 @@ $(call Package/iproute2/Default)
>   VARIANT:=full
>   PROVIDES:=ip
>   ALTERNATIVES:=300:/sbin/ip:/usr/libexec/ip-full
> - DEPENDS:=+libnl-tiny +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl +libcap
> + DEPENDS:=+libnl-tiny +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl
>  endef
>
>  define Package/tc
> @@ -55,43 +55,43 @@ $(call Package/iproute2/Default)
>    TITLE:=Traffic control utility
>    VARIANT:=tc
>    PROVIDES:=tc
> -  DEPENDS:=+kmod-sched-core +libxtables +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl +PACKAGE_ip-full:libcap
> +  DEPENDS:=+kmod-sched-core +libxtables +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl
>  endef
>
>  define Package/genl
>  $(call Package/iproute2/Default)
>    TITLE:=General netlink utility frontend
> -  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
> +  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
>  endef
>
>  define Package/ip-bridge
>  $(call Package/iproute2/Default)
>    TITLE:=Bridge configuration utility from iproute2
> -  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
> +  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
>  endef
>
>  define Package/ss
>  $(call Package/iproute2/Default)
>    TITLE:=Socket statistics utility
> -  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
> +  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
>  endef
>
>  define Package/nstat
>  $(call Package/iproute2/Default)
>    TITLE:=Network statistics utility
> -  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
> +  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
>  endef
>
>  define Package/devlink
>  $(call Package/iproute2/Default)
>    TITLE:=Network devlink utility
> -  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
> +  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
>  endef
>
>  define Package/rdma
>  $(call Package/iproute2/Default)
>    TITLE:=Network rdma utility
> -  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
> +  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
>  endef
>
>  ifeq ($(BUILD_VARIANT),tiny)
> @@ -100,7 +100,7 @@ endif
>
>  ifeq ($(BUILD_VARIANT),full)
>    HAVE_ELF:=y
> -  HAVE_CAP:=y
> +  HAVE_CAP:=n
>  endif
>
>  ifeq ($(BUILD_VARIANT),tc)
> --
> 2.17.1
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
