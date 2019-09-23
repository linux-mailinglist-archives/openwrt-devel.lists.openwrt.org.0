Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5895DBBF31
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 01:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uTI9xix/KABWzLIIQF6pd/ko3qsWXqb/yfNmvztidNU=; b=csJWocA3Z+SJo4d9HXNa42hna
	H1Fqw2B3jHsbh4K9BenqjA8PRD65itv/M7q2M8elwunF/AkqOu0d1bjZ3ZFfwfGjsjkWZTxeBWfr/
	vl8HvpKlVe/73qAaMRrkmX+6gIzBqeJoSfGp9aDRn1p3rRe5GgVml0L5i+vj+5G5X8B+8ChJEf0sR
	aAHrnK7TYqcBMtRb8u5KNx/h5qVDhCoNgPxcQTKxStA5GcBJVCrtg4VKI/cPGHeIsbe/NM9ROWYnh
	l83esLh8z4M8x6nodYPuDiibeahyyY/oixpuSO89dEb2G5/IHBd7W4KGlOmTfIMiTJ76KQBQ9mRkW
	9PFTFcADA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCYCZ-0005sW-JU; Mon, 23 Sep 2019 23:57:07 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCYCS-0005s5-Mz
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 23:57:02 +0000
Received: by mail-vs1-xe33.google.com with SMTP id d204so87409vsc.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 16:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OFrPCimRfzPp4czj/LqTBTXoYVn3EqppNTWmJS89SbY=;
 b=vRmADHOLoKPSGchPpmkhd/dtZsE5gMcIuCZccq8mWNgz3avYnD5+SYVbURaX8TG1p1
 t6IA26MqgzGwRqcfOQjUutULaQqc/B8cFXHNFsEBx65fu0yihvOipWzrXmKZ12bgDChF
 4P/k0/r2vY8o1f+llhGI1bqp/7hVZs/sfmcIkU6p0+TnvS4bJV/EfuKxkUM8gGq4fh9V
 Ncd6BBPDMZGmg2lhTgAPX655yiwG4vELsvPsVDqsKNKyPf2V4OKmRjtjG404IWTgSBlk
 bbXLb+bKyKsqO71U+8ZZzlnK87Jwb65wkW8+LmiCfnfSxyme/AF1gxwNTiIM4JaiB11T
 q45w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OFrPCimRfzPp4czj/LqTBTXoYVn3EqppNTWmJS89SbY=;
 b=RbNR0A5ZJ+ZA+JdIqtWNb6jdQ5LMaaftHurihOfBZbAHIs9ZLKr/5USFiA7qoebV9l
 H9iBK+lkg5/N4jpyqEMP6DHR9RCunFhOTtStv0mc3AghZe/kH8XFUbjFEtzE7MLIeQ6/
 cVm5XV1zHT7fIrbXr9cCHtMCpkvFr/STx3W6fNQRjqYlEiZdu/eIur7qkLmEx5K9NdZo
 fQo3IHyU9Esucx3YnOsqWh5brP96NtChI/+mrZurPfRdIqKWQ8ecD8A/AF3GeqZOD+8q
 TC4olvNkdZzuOEduFzwcn4JRxsKksjWeLt5lwgU/fY1ikTzk1eBy08qmIMCnJbez+r8L
 qbhw==
X-Gm-Message-State: APjAAAX7Ntb99ZR2SuypwqBda6FGybLQe+nRA0NmWX45Z69f1JCi4hMi
 2Q/dXDtp7g1VjhpOPXnwqDLmh4DW9fBVKqPmbNGaig==
X-Google-Smtp-Source: APXvYqz6DA0G45tJFHeSCsAYmVAKzZfyTCYkOfMIvdFUYF80xB9h4meCFuQUtExqF+3W9CxgBYckcMGmNdgx3x4X748=
X-Received: by 2002:a67:f6c8:: with SMTP id v8mr4310vso.22.1569283018881; Mon,
 23 Sep 2019 16:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <87imprcybz.fsf@husum.klickitat.com> <1650711.Cc8WsVpOxL@debian64>
 <CAHP3WfPEfwWQDM0_Lc1GowbQXN3m5RKEEWuXi_vxoVxguk1fNw@mail.gmail.com>
 <875zlm58m8.fsf_-_@husum.klickitat.com>
In-Reply-To: <875zlm58m8.fsf_-_@husum.klickitat.com>
From: Russell Senior <russell@personaltelco.net>
Date: Mon, 23 Sep 2019 16:56:47 -0700
Message-ID: <CAHP3WfPpwHXYGRSX0VuRbSFDZuKw=Mdbx8hQkFrUGzyp2KE97Q@mail.gmail.com>
To: Chris Blake <chrisrblake93@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_165700_888909_F3172300 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e33 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCHv2] apm821xx: remove unnecessary kernel
 padding
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
Cc: openwrt-devel@lists.openwrt.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============7851358541826549637=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7851358541826549637==
Content-Type: multipart/alternative; boundary="000000000000e4956b0593412ce1"

--000000000000e4956b0593412ce1
Content-Type: text/plain; charset="UTF-8"

Chris,

Could you test v2 on a Meraki MX60?  I only have MR24's.

Thanks!

-- 
Russell Senior
russell@personaltelco.net

On Sat, Sep 21, 2019 at 1:58 AM Russell Senior <russell@personaltelco.net>
wrote:

>
> The allocation of LEBs to ubi volumes is handled by the sysupgrade script:
>
>   package/base-files/files/lib/upgrade/nand.sh
>
> and the ubimkvol and or ubirsvol command. Therefore, padding of the
> kernel blob is not needed at all, so use cat instead of dd. The
> BLOCKSIZE variable was only used in the dd command.  In any case, 63k
> made no sense for the way BLOCKSIZE was being used.
>
> 63k (64512) does make sense for DTB_SIZE because of the offsets expected
> by u-boot given extant u-boot-env variables.
>
> Tested on Meraki MR24.
>
> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>
> v2: got rid of blocking the kernel blob altogether
>
>  target/linux/apm821xx/image/Makefile | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/target/linux/apm821xx/image/Makefile
> b/target/linux/apm821xx/image/Makefile
> index 8203de39c5..108f63cb7a 100644
> --- a/target/linux/apm821xx/image/Makefile
> +++ b/target/linux/apm821xx/image/Makefile
> @@ -58,7 +58,7 @@ define Build/MerakiAdd-dtb
>         $(call Image/BuildDTB,../dts/$(DEVICE_DTS).dts,$@.dtb)
>         ( \
>                 dd if=$@.dtb bs=$(DTB_SIZE) conv=sync; \
> -               dd if=$@ bs=$(BLOCKSIZE) conv=sync; \
> +               cat $@ ; \
>         ) > $@.new
>         @mv $@.new $@
>  endef
> @@ -127,7 +127,6 @@ define Device/meraki_mr24
>    DEVICE_PACKAGES := kmod-spi-gpio -swconfig
>    BOARD_NAME := mr24
>    DEVICE_DTS := meraki-mr24
> -  BLOCKSIZE := 63k
>    IMAGES := sysupgrade.bin
>    DTB_SIZE := 64512
>    IMAGE_SIZE := 8191k
> --
> 2.23.0
>
>
>
> --
> Russell Senior, President
> russell@personaltelco.net
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000e4956b0593412ce1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Chris, <br></div><div><br></div><div>Could you test v=
2 on a Meraki MX60?=C2=A0 I only have MR24&#39;s.</div><div><br></div><div>=
Thanks!</div><div><br></div><div>-- <br></div><div>Russell Senior</div><div=
><a href=3D"mailto:russell@personaltelco.net">russell@personaltelco.net</a>=
<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sat, Sep 21, 2019 at 1:58 AM Russell Senior &lt;<a href=3D"mailto:ru=
ssell@personaltelco.net">russell@personaltelco.net</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><br>
The allocation of LEBs to ubi volumes is handled by the sysupgrade script:<=
br>
<br>
=C2=A0 package/base-files/files/lib/upgrade/nand.sh<br>
<br>
and the ubimkvol and or ubirsvol command. Therefore, padding of the<br>
kernel blob is not needed at all, so use cat instead of dd. The<br>
BLOCKSIZE variable was only used in the dd command.=C2=A0 In any case, 63k<=
br>
made no sense for the way BLOCKSIZE was being used.<br>
<br>
63k (64512) does make sense for DTB_SIZE because of the offsets expected<br=
>
by u-boot given extant u-boot-env variables.<br>
<br>
Tested on Meraki MR24.<br>
<br>
Signed-off-by: Russell Senior &lt;<a href=3D"mailto:russell@personaltelco.n=
et" target=3D"_blank">russell@personaltelco.net</a>&gt;<br>
---<br>
<br>
v2: got rid of blocking the kernel blob altogether<br>
<br>
=C2=A0target/linux/apm821xx/image/Makefile | 3 +--<br>
=C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br>
<br>
diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/i=
mage/Makefile<br>
index 8203de39c5..108f63cb7a 100644<br>
--- a/target/linux/apm821xx/image/Makefile<br>
+++ b/target/linux/apm821xx/image/Makefile<br>
@@ -58,7 +58,7 @@ define Build/MerakiAdd-dtb<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(call Image/BuildDTB,../dts/$(DEVICE_DTS).dts,=
$@.dtb)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ( \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dd if=3D$@.dtb bs=
=3D$(DTB_SIZE) conv=3Dsync; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dd if=3D$@ bs=3D$(B=
LOCKSIZE) conv=3Dsync; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cat $@ ; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ) &gt; $@.new<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @mv $@.new $@<br>
=C2=A0endef<br>
@@ -127,7 +127,6 @@ define Device/meraki_mr24<br>
=C2=A0 =C2=A0DEVICE_PACKAGES :=3D kmod-spi-gpio -swconfig<br>
=C2=A0 =C2=A0BOARD_NAME :=3D mr24<br>
=C2=A0 =C2=A0DEVICE_DTS :=3D meraki-mr24<br>
-=C2=A0 BLOCKSIZE :=3D 63k<br>
=C2=A0 =C2=A0IMAGES :=3D sysupgrade.bin<br>
=C2=A0 =C2=A0DTB_SIZE :=3D 64512<br>
=C2=A0 =C2=A0IMAGE_SIZE :=3D 8191k<br>
-- <br>
2.23.0<br>
<br>
<br>
<br>
-- <br>
Russell Senior, President<br>
<a href=3D"mailto:russell@personaltelco.net" target=3D"_blank">russell@pers=
onaltelco.net</a><br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--000000000000e4956b0593412ce1--


--===============7851358541826549637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7851358541826549637==--

