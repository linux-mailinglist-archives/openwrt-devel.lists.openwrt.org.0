Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2539C180D72
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 02:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yijoTzFtcic1h5K1BarzMCKtmVRMxkX3C+ScZKZebdY=; b=mRiUXk5tGEU8KfZdW0uaPQoIP
	QUpmST+4vGvHgjibLljbyNaF7qS8x4G4xS0DjKro/DBwRdPfkVYzjHqhaR9YSiDH7KxooK8Pqj8h1
	HOBog5lQaTaDdNL6rcI3r6ry7iBQRMUWz080GAI4H6BGxxHxIgx5mjEYhSltIN2lEtMoE6oVoYeDV
	+Ky99eDRJjOm2DTEP1qpRSKnx2nYy9QyCol+VYy5K03wtGMY4wqNkECbAjqU8yn3BxTnOPQHsCFHk
	aGfEUSI3WY+DgVAj6mmwJB+nPoGyOXVkhzPaDvTrrICg0Gj8OKBj61NQgNyIMufHc4HWMFoDaFTQd
	IUch7BLgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBq79-0005v8-2T; Wed, 11 Mar 2020 01:24:51 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBq71-0005ue-Ur
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 01:24:45 +0000
Received: by mail-vk1-xa44.google.com with SMTP id o124so81573vkc.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 18:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NO05iH5izswQHk9DNaMs+KancTsKUaZqJPQ+mVcwtfg=;
 b=d07LC+GpO6U3S8edTV8jMvoxEVHwz/1WAEnDCZHk9HNrko9S95iL+d1tMZbXUzsS+G
 K+bJzUUlLm7/CQfIv7P2zDowuDM62IjRrKnIb0Hj+5mJnp96Pq7wk1NfFW6E34bb/ueV
 gcN0tQ+XO2SJIFVppwkYo43cG+Xu1zi5BhH5C1G9hLJkaR/GdvAvIhsdwqHrHQ2VuoZR
 V+F1SvSp+6vyMDxONo+SLqMUmxZ9TIYjWpkIdNEE8BDXMACwOc0ODniVdBsyMNqRWEXy
 K8Mn249SWKle/TBZ64q8o9flVnH9Mp2S54/h+aloEsuQe2JYzvMd+3S2URKmqhhvyPzW
 8YcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NO05iH5izswQHk9DNaMs+KancTsKUaZqJPQ+mVcwtfg=;
 b=YeyOj+CVzf9oIlAx8mjXaskq0Z8Bb6HZKfBS++jGS+/7g23KA6q5QoC9csXpC07ZqS
 7ZyJp6C+Obg1WtaJm8MeYavY3Dj0NhEe349DhgFfX1zhbNPYrVdergGnBZlALDrC9q28
 O0lieUONVQ8AHYVpsTF8VSqoJwuQy4kQj1reeNE1XeRtgMmiixUXGC0kbQ7U9lzy9Ad3
 /xqmy0G6K/0Y8RlwcZ5eitwMx8hc248ko4NMqrkXZyzLOi5nk8CsdEVnZWCG/pGhyFXj
 xZF1MvzQBxJTi4+KBmlxW4eTuNWM8KREVN1Vhgcf0i2SUBYGOh1EvoKSdPF7mptQIzO8
 vxGA==
X-Gm-Message-State: ANhLgQ1mFO3q7CJLkgHL8B5H+ZWtITYEYQAw06Lke7C+cwYHNvjSb8BC
 P5AB3gcKIWnIMrG16Y409zEUoogjKRFEC1Kgm7mpN5AxCdc=
X-Google-Smtp-Source: ADFU+vtY2zpyAC5Ubpk40mm+adFgyeNMA7kIeym9k1X6k9Kuem/aT1pPneg+2huT7fdF0VrhIKv4AecW1WgMTPKwQNc=
X-Received: by 2002:a1f:2f4c:: with SMTP id v73mr618021vkv.12.1583889882015;
 Tue, 10 Mar 2020 18:24:42 -0700 (PDT)
MIME-Version: 1.0
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <20200311010605.2818827-1-russell@personaltelco.net>
 <20200311010605.2818827-5-russell@personaltelco.net>
In-Reply-To: <20200311010605.2818827-5-russell@personaltelco.net>
From: Russell Senior <russell@personaltelco.net>
Date: Tue, 10 Mar 2020 18:24:30 -0700
Message-ID: <CAHP3WfM_6LbvyPf+FLoc3G5TieJ++-kuhajVynKiMupYYuDkRA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_182443_994579_9C61C6FC 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v4 4/4] ath79: add DEVICE_VARIANT for
 ubnt_bullet-m-xw
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: multipart/mixed; boundary="===============7618446255457882821=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7618446255457882821==
Content-Type: multipart/alternative; boundary="000000000000c7faea05a08a192a"

--000000000000c7faea05a08a192a
Content-Type: text/plain; charset="UTF-8"

Argh. That added line should be DEVICE_VARIANT, not DEVICE_MODEL. I'll hold
off sending a v5 until I hear back other feedback.

On Tue, Mar 10, 2020 at 6:06 PM Russell Senior <russell@personaltelco.net>
wrote:

> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>  target/linux/ath79/image/generic-ubnt.mk | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/target/linux/ath79/image/generic-ubnt.mk
> b/target/linux/ath79/image/generic-ubnt.mk
> index 5808d8f424..e8c8ebf30b 100644
> --- a/target/linux/ath79/image/generic-ubnt.mk
> +++ b/target/linux/ath79/image/generic-ubnt.mk
> @@ -136,6 +136,7 @@ TARGET_DEVICES += ubnt_bullet-m-ar7241
>  define Device/ubnt_bullet-m-xw
>    $(Device/ubnt-xw)
>    DEVICE_MODEL := Bullet-M
> +  DEVICE_MODEL := XW
>    DEVICE_PACKAGES += rssileds
>    SUPPORTED_DEVICES += bullet-m-xw
>  endef
> --
> 2.25.1
>
>

--000000000000c7faea05a08a192a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Argh. That added line should be DEVICE_VARIANT, not DEVICE=
_MODEL. I&#39;ll hold off sending a v5 until I hear back other feedback.<br=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Tue, Mar 10, 2020 at 6:06 PM Russell Senior &lt;<a href=3D"mailto:russe=
ll@personaltelco.net">russell@personaltelco.net</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Signed-off-by: Russell Senio=
r &lt;<a href=3D"mailto:russell@personaltelco.net" target=3D"_blank">russel=
l@personaltelco.net</a>&gt;<br>
---<br>
=C2=A0target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" rel=3D"no=
referrer" target=3D"_blank">generic-ubnt.mk</a> | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" re=
l=3D"noreferrer" target=3D"_blank">generic-ubnt.mk</a> b/target/linux/ath79=
/image/<a href=3D"http://generic-ubnt.mk" rel=3D"noreferrer" target=3D"_bla=
nk">generic-ubnt.mk</a><br>
index 5808d8f424..e8c8ebf30b 100644<br>
--- a/target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" rel=3D"no=
referrer" target=3D"_blank">generic-ubnt.mk</a><br>
+++ b/target/linux/ath79/image/<a href=3D"http://generic-ubnt.mk" rel=3D"no=
referrer" target=3D"_blank">generic-ubnt.mk</a><br>
@@ -136,6 +136,7 @@ TARGET_DEVICES +=3D ubnt_bullet-m-ar7241<br>
=C2=A0define Device/ubnt_bullet-m-xw<br>
=C2=A0 =C2=A0$(Device/ubnt-xw)<br>
=C2=A0 =C2=A0DEVICE_MODEL :=3D Bullet-M<br>
+=C2=A0 DEVICE_MODEL :=3D XW<br>
=C2=A0 =C2=A0DEVICE_PACKAGES +=3D rssileds<br>
=C2=A0 =C2=A0SUPPORTED_DEVICES +=3D bullet-m-xw<br>
=C2=A0endef<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div>

--000000000000c7faea05a08a192a--


--===============7618446255457882821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7618446255457882821==--

