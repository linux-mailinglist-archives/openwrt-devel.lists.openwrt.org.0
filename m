Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A56617AF34
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 20:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMs6FNjASM3kj/Q7SP1eJk96cyho9OhpE+MFm8oLU8I=; b=KZB+1A3cCfcZat
	al1fNX1InGTQTWgjxbqISD59oQVAILGg3lk/RCc2wVCUakBNvVEIIp9JAl/FeoH6y+PFyps/xA9y6
	lXC6k+8m0K7z16qoaJbHR9vE+goZyIgzC+OXM5h+0zZmn8JN9KUhmeEjfBi/Cc3vs7EgRgO8rzQ9h
	K7yuz1YTEKFPC4k9wPo//sIckQakzWGNB3FRZM4x8gLbQk1/8I6dqy1b2Cgxgr/PgRGXMpdzwuo+B
	hfFD6vkoy+B103ZT3xCCsVab1zQC2ACqsRfhgW0UwOVpBuxgjnNjQX03BqyRzH61H2chR2rP3qPwk
	Yh8/1YCcsPK5G4r4xcJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9wXf-0002Im-CT; Thu, 05 Mar 2020 19:52:23 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9wXX-0002II-AV
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 19:52:17 +0000
Received: by mail-qt1-x843.google.com with SMTP id r6so5099974qtt.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 11:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dxfdxxAILudUNcgg4fR93m+01REMt9W+fnKzKoDjHU4=;
 b=E17A7iJqBHjTEMmn0ahR8OViULLXcl0T1e1LznyBAettKNi7DVXnLKTHJb3NAtDJf4
 eNaJAoTNCWghYCbsmTcdDMrghLWgq4bCgcMxCG/T3mpRBe+6W5np/Kv44SE1Nn6QMu5B
 S6B0DBue7BwBsWoCif0W0XRauVXNntILB8RxNvsomdLGSQ+rtE63uEEa4LlX5shS9my1
 OaYMc/PwH2/ryiKebmKcvseaGSuycUgDz5J/6/AvGuC1576bXN9FsGPhfLA86vD/gQBV
 uKyyY+UalRfcFUtIphW39UyNIajLQmfR++7cQR349wRLOzClWWqvni9G94IWC5VaZj0P
 NQNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dxfdxxAILudUNcgg4fR93m+01REMt9W+fnKzKoDjHU4=;
 b=sWx+S29Hv167++oyzTb3iJfmPVNCacsIwUYrdJjHjhhKvhI23zYnrl06KPs/RLZX7P
 rlJ5ehlSGrOc6Me/FUIqgVyUHJPpOqKJiHDvYkVhglqo7Wf/1XFtOb5iyR4JH5rIJZjp
 9zJcuwWZJWgqXIrgQGBU21sk9zc6iiqZHy2dIycMoZzwX6lez4fy8izXLxzNA336wquK
 2AF/cARaPnorrOp1AMeRoSuM4MvXTNcQFUTY0lqDAkqkaeBorjMuLMrDLyIqWS1KZSaU
 hb0REsuAhOOLAc6k4qQj1+vVuDjUQQqnNnj9uCTXCg73vlFyxMLtxMxgi6q0A2EcIKN1
 oo2w==
X-Gm-Message-State: ANhLgQ04tkLsUFO4YmqrK5JMlxrvt1Lr4fRbuoeWOl867BcS1L/24RB+
 fAXFsaQi35lzStOs4Q9N0Ku09WyEV2fy/U18ZdA=
X-Google-Smtp-Source: ADFU+vtFFl5nJ4ELF2MnWJMXyxTL1wlVSeO3+HSdtGFgF3GuH7oc1d3d6xEasribjAsUpo3DTTuhpaBvpHgm3z6WMK8=
X-Received: by 2002:aed:310d:: with SMTP id 13mr304152qtg.343.1583437933744;
 Thu, 05 Mar 2020 11:52:13 -0800 (PST)
MIME-Version: 1.0
References: <20200305193427.17434-1-dev@kresin.me>
In-Reply-To: <20200305193427.17434-1-dev@kresin.me>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 5 Mar 2020 20:52:02 +0100
Message-ID: <CAJLcKsHTGaBsRinNdn+xHn60CFg8kV3azYTusf3PqxEgty7W8w@mail.gmail.com>
To: Mathias Kresin <dev@kresin.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_115215_364885_42F1D5C5 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
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
Cc: Alin Nastac <alin.nastac@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Mar 5, 2020 at 8:34 PM Mathias Kresin <dev@kresin.me> wrote:
>
> This reverts commit a6da3f9ef746101b84a6f530f5a40de28341b69a.
>
> The libcap isn't as optional as the commit messages suggests. A hard
> dependency to the libcap package is added, which is only available in
> the external packages feed. Therefore it is impossible to package
> ip-full without having the external packages feed up and running, which
> is a regression to the former behaviour.
>
> Signed-off-by: Mathias Kresin <dev@kresin.me>
Acked-by: Hans Dedecker <dedeckeh@gmail.com>
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
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
