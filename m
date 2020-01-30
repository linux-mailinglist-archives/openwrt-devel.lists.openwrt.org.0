Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D7414E35A
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 20:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iglN5kUgSVvrHhbuaddOLW/bD3daElKCa9fVrUdengY=; b=d63QZ54H1FaphnJvOIvAicQIB
	tWo8AvS7MN+hcpgn7VjKnBFFqai+yZcPF2gCJWhSaowYn8wPBBy9/SqnucWejj0qWTSvufm6iFTlx
	cUQ+zXio7LQgDXCuz7iNIykgWJf++AXfD31DRPZoMSbYY7i1cIRemprDcy/tB4VSsOxFfMjgs+0l+
	w8onfJZDxVT0n21NGYU0WBSG9otPJ0ZX7CHZpLlSI5rJMsJyrqgfWWuxLe71TaQFv6FSh8I0pAKUX
	AEHadcq8WR2dhZREgfN27DLskaIGSwCybZpDWW6eYez5LRjUXWdHkwcI4000vi5BH7JrJmVmMHz9Y
	EAIawg+6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixFnW-00036L-Gb; Thu, 30 Jan 2020 19:48:18 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixFnN-000360-Oh
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 19:48:11 +0000
Received: by mail-ua1-x941.google.com with SMTP id x16so1631151uao.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Jan 2020 11:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=j931Ze4hAjAs7cffTuxGed2AyXJbtqaGy/Niz76uKxg=;
 b=rt1R6xr0l8ihYieJL/hp3BFFNcP7cnEQ58qn9+B4xQGLUA8xAvgy9iiU08MPgo6JAv
 Fd0lc3jg3alO8uisptL8WD1uhZoE79yvF9wOLnGxukJRPtgpbHpg8QO+ztBoP6IMWtih
 ltuwuliRPnOBqv0QRu2bQ9zzWccs8f5yghZSunWmK5NgXMelRQvflMkJ3TkKTubDfboD
 Jqx0/9q7UIMi6qgiVe+O4LZ3OEA1gdtyndtlhjijLgmZjzE+NmqPr2Y0e4n4XLs1TXAd
 dJk/riUVLAsHxivoV1mW/uVtw50ZsTkpQ7J4KpbQ1yyqF9RJ5Wh0M72cOagCSCNkyXvp
 8cmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=j931Ze4hAjAs7cffTuxGed2AyXJbtqaGy/Niz76uKxg=;
 b=RLHrypKUKKTgGnjyXGb1l2rbnvZkelFD7tTnpskQWPQ/WKFSkHq3czlZcwtZ2NRqpd
 M5dWYk5nt/f9BRWod1gr1fyVCQDLYt8RGWPus1hPYRBh8eIwstNxrw4ezw/dFr4zU1Cj
 RE9G8rIFheVu1T/uwxOQM+74tBuQpe/PllnUPOuY1HBMKNH+7zhgoRCpnpf3gP23X2+N
 v/D6VSsXtjh9PmLOkI5pf5e03GA4iyHDrPaYggS2zc2PA53J9D0plDa8vOVn5KFsvFJN
 GuoJe29EH8SN0fctAi0DxfeOOPkbrCBnFHzi3HONiX/9/LKdmjxV4pgA5eU73dYyWgJa
 48kQ==
X-Gm-Message-State: APjAAAWfYp605SBl7svS9fuV1N3ofiTZDQhozOFIsFs1Ey3SBZJ2MRN2
 vVl9dTQQFqZkiW9Mu311pimRI58Aw9QsdlVwrim5
X-Google-Smtp-Source: APXvYqxybD6vLnVZrsnmopOWS46vfO/a2vJVmfwtIBhld2jgTEXp/hUc67XNxBFf67i+ZjkgN1wXSwlWujYg0qtu4ZU=
X-Received: by 2002:ab0:6902:: with SMTP id b2mr3698076uas.32.1580413688125;
 Thu, 30 Jan 2020 11:48:08 -0800 (PST)
MIME-Version: 1.0
References: <20200128125744.2378-1-rsalvaterra@gmail.com>
In-Reply-To: <20200128125744.2378-1-rsalvaterra@gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 30 Jan 2020 19:47:56 +0000
Message-ID: <CALjTZvYgsTxROb4Ac9fKTpQi6YyyvOgfRfEtH9r5kr64VrFHLw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_114809_806414_9859F3F6 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath9k: allow enabling hardware random
 number generator support.
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
Content-Type: multipart/mixed; boundary="===============6465735663534713209=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6465735663534713209==
Content-Type: multipart/alternative; boundary="0000000000007a9ef1059d60bc6c"

--0000000000007a9ef1059d60bc6c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please ignore this patch too. I'm going to send a more complete one
(against master), implementing ath9k-rng support for both AR5008 and AR9002
(in addition to the already supported AR9003).

A ter=C3=A7a, 28/01/2020, 12:58, Rui Salvaterra <rsalvaterra@gmail.com> esc=
reveu:

> Changes since RFC: keep the current entropy patch untouched. It will be
> modified in order to support older (AR5008 and AR9002) hardware.
>
> The ath9k driver is able to leverage the PHY ADC in order to provide a
> generic hardware random number generator to the kernel, filling up the
> entropy pool as required. Expose this feature in the build system.
>
> Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
> ---
>  config/Config-kernel.in        | 4 ++++
>  package/kernel/mac80211/ath.mk | 7 +++++++
>  2 files changed, 11 insertions(+)
>
> diff --git a/config/Config-kernel.in b/config/Config-kernel.in
> index 20930326ca..2f4cda4275 100644
> --- a/config/Config-kernel.in
> +++ b/config/Config-kernel.in
> @@ -220,6 +220,10 @@ config KERNEL_AIO
>         bool "Compile the kernel with asynchronous IO support"
>         default y if !SMALL_FLASH
>
> +config KERNEL_HW_RANDOM
> +       bool "Compile the kernel with support for hardware random number
> generators"
> +       default n
> +
>  config KERNEL_FHANDLE
>         bool "Compile the kernel with support for fhandle syscalls"
>         default y if !SMALL_FLASH
> diff --git a/package/kernel/mac80211/ath.mk b/package/kernel/mac80211/
> ath.mk
> index 788131b751..56859cd3c1 100644
> --- a/package/kernel/mac80211/ath.mk
> +++ b/package/kernel/mac80211/ath.mk
> @@ -8,6 +8,7 @@ PKG_CONFIG_DEPENDS +=3D \
>         CONFIG_PACKAGE_ATH_SPECTRAL \
>         CONFIG_PACKAGE_ATH_DYNACK \
>         CONFIG_ATH9K_SUPPORT_PCOEM \
> +       CONFIG_ATH9K_HWRNG \
>         CONFIG_ATH9K_TX99 \
>         CONFIG_ATH10K_LEDS \
>         CONFIG_ATH10K_THERMAL \
> @@ -45,6 +46,7 @@ config-$(CONFIG_TARGET_ipq40xx) +=3D ATH10K_AHB
>  config-$(CONFIG_PCI) +=3D ATH9K_PCI
>  config-$(CONFIG_ATH_USER_REGD) +=3D ATH_USER_REGD
>  config-$(CONFIG_ATH9K_SUPPORT_PCOEM) +=3D ATH9K_PCOEM
> +config-$(CONFIG_ATH9K_HWRNG) +=3D ATH9K_HWRNG
>  config-$(CONFIG_ATH9K_TX99) +=3D ATH9K_TX99
>  config-$(CONFIG_ATH9K_UBNTHSR) +=3D ATH9K_UBNTHSR
>  config-$(CONFIG_ATH10K_LEDS) +=3D ATH10K_LEDS
> @@ -211,6 +213,11 @@ define KernelPackage/ath9k/config
>                 bool "Support chips used in PC OEM cards"
>                 depends on PACKAGE_kmod-ath9k
>
> +       config ATH9K_HWRNG
> +               bool "Random number generator support"
> +               depends on PACKAGE_kmod-ath9k
> +               select KERNEL_HW_RANDOM
> +
>         config ATH9K_TX99
>                 bool "Enable TX99 support (WARNING: testing only, breaks
> normal operation!)"
>                 depends on PACKAGE_kmod-ath9k
> --
> 2.25.0
>
>

--0000000000007a9ef1059d60bc6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Please ignore this patch too. I&#39;m going to send a mor=
e complete one (against master), implementing ath9k-rng support for both AR=
5008 and AR9002 (in addition to the already supported AR9003).</div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">A ter=C3=A7a,=
 28/01/2020, 12:58, Rui Salvaterra &lt;<a href=3D"mailto:rsalvaterra@gmail.=
com">rsalvaterra@gmail.com</a>&gt; escreveu:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">Changes since RFC: keep the current entropy patch untouched. It w=
ill be<br>
modified in order to support older (AR5008 and AR9002) hardware.<br>
<br>
The ath9k driver is able to leverage the PHY ADC in order to provide a<br>
generic hardware random number generator to the kernel, filling up the<br>
entropy pool as required. Expose this feature in the build system.<br>
<br>
Signed-off-by: Rui Salvaterra &lt;<a href=3D"mailto:rsalvaterra@gmail.com" =
target=3D"_blank" rel=3D"noreferrer">rsalvaterra@gmail.com</a>&gt;<br>
---<br>
=C2=A0config/Config-kernel.in=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++++<br>
=C2=A0package/kernel/mac80211/<a href=3D"http://ath.mk" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">ath.mk</a> | 7 +++++++<br>
=C2=A02 files changed, 11 insertions(+)<br>
<br>
diff --git a/config/Config-kernel.in b/config/Config-kernel.in<br>
index 20930326ca..2f4cda4275 100644<br>
--- a/config/Config-kernel.in<br>
+++ b/config/Config-kernel.in<br>
@@ -220,6 +220,10 @@ config KERNEL_AIO<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;Compile the kernel with asynchronous=
 IO support&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default y if !SMALL_FLASH<br>
<br>
+config KERNEL_HW_RANDOM<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bool &quot;Compile the kernel with support for =
hardware random number generators&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0default n<br>
+<br>
=C2=A0config KERNEL_FHANDLE<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;Compile the kernel with support for =
fhandle syscalls&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default y if !SMALL_FLASH<br>
diff --git a/package/kernel/mac80211/<a href=3D"http://ath.mk" rel=3D"noref=
errer noreferrer" target=3D"_blank">ath.mk</a> b/package/kernel/mac80211/<a=
 href=3D"http://ath.mk" rel=3D"noreferrer noreferrer" target=3D"_blank">ath=
.mk</a><br>
index 788131b751..56859cd3c1 100644<br>
--- a/package/kernel/mac80211/<a href=3D"http://ath.mk" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">ath.mk</a><br>
+++ b/package/kernel/mac80211/<a href=3D"http://ath.mk" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">ath.mk</a><br>
@@ -8,6 +8,7 @@ PKG_CONFIG_DEPENDS +=3D \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CONFIG_PACKAGE_ATH_SPECTRAL \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CONFIG_PACKAGE_ATH_DYNACK \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CONFIG_ATH9K_SUPPORT_PCOEM \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0CONFIG_ATH9K_HWRNG \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CONFIG_ATH9K_TX99 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CONFIG_ATH10K_LEDS \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CONFIG_ATH10K_THERMAL \<br>
@@ -45,6 +46,7 @@ config-$(CONFIG_TARGET_ipq40xx) +=3D ATH10K_AHB<br>
=C2=A0config-$(CONFIG_PCI) +=3D ATH9K_PCI<br>
=C2=A0config-$(CONFIG_ATH_USER_REGD) +=3D ATH_USER_REGD<br>
=C2=A0config-$(CONFIG_ATH9K_SUPPORT_PCOEM) +=3D ATH9K_PCOEM<br>
+config-$(CONFIG_ATH9K_HWRNG) +=3D ATH9K_HWRNG<br>
=C2=A0config-$(CONFIG_ATH9K_TX99) +=3D ATH9K_TX99<br>
=C2=A0config-$(CONFIG_ATH9K_UBNTHSR) +=3D ATH9K_UBNTHSR<br>
=C2=A0config-$(CONFIG_ATH10K_LEDS) +=3D ATH10K_LEDS<br>
@@ -211,6 +213,11 @@ define KernelPackage/ath9k/config<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;Support =
chips used in PC OEM cards&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 depends on PACKAGE_=
kmod-ath9k<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0config ATH9K_HWRNG<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bool &quot;Random n=
umber generator support&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depends on PACKAGE_=
kmod-ath9k<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0select KERNEL_HW_RA=
NDOM<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 config ATH9K_TX99<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;Enable T=
X99 support (WARNING: testing only, breaks normal operation!)&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 depends on PACKAGE_=
kmod-ath9k<br>
-- <br>
2.25.0<br>
<br>
</blockquote></div>

--0000000000007a9ef1059d60bc6c--


--===============6465735663534713209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6465735663534713209==--

